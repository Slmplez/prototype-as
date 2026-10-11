/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.jdt.internal.core.hierarchy;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.IPathRequestor;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.Member;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.hierarchy.HierarchyBinaryType;
import org.eclipse.jdt.internal.core.hierarchy.HierarchyBuilder;
import org.eclipse.jdt.internal.core.hierarchy.HierarchyResolver;
import org.eclipse.jdt.internal.core.hierarchy.IndexBasedHierarchyBuilder;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.JavaSearchParticipant;
import org.eclipse.jdt.internal.core.search.SubTypeSearchJob;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.SuperTypeReferencePattern;
import org.eclipse.jdt.internal.core.util.HandleFactory;
import org.eclipse.jdt.internal.core.util.Util;

public class IndexBasedHierarchyBuilder
extends HierarchyBuilder
implements SuffixConstants {
    public static final int MAXTICKS = 800;
    protected Map cuToHandle = new HashMap(5);
    protected IJavaSearchScope scope;
    protected Map binariesFromIndexMatches = new HashMap(10);

    public IndexBasedHierarchyBuilder(TypeHierarchy hierarchy, IJavaSearchScope scope) throws JavaModelException {
        super(hierarchy);
        this.scope = scope;
    }

    public void build(boolean computeSubtypes) {
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        try {
            manager.cacheZipFiles(this);
            if (computeSubtypes) {
                IType focusType = this.getType();
                boolean focusIsObject = focusType.getElementName().equals(new String(IIndexConstants.OBJECT));
                int amountOfWorkForSubtypes = focusIsObject ? 5 : 80;
                SubProgressMonitor possibleSubtypesMonitor = this.hierarchy.progressMonitor == null ? null : new SubProgressMonitor(this.hierarchy.progressMonitor, amountOfWorkForSubtypes);
                HashSet localTypes = new HashSet(10);
                String[] allPossibleSubtypes = ((Member)((Object)focusType)).getOuterMostLocalContext() == null ? this.determinePossibleSubTypes(localTypes, (IProgressMonitor)possibleSubtypesMonitor) : CharOperation.NO_STRINGS;
                if (allPossibleSubtypes != null) {
                    SubProgressMonitor buildMonitor = this.hierarchy.progressMonitor == null ? null : new SubProgressMonitor(this.hierarchy.progressMonitor, 100 - amountOfWorkForSubtypes);
                    this.hierarchy.initialize(allPossibleSubtypes.length);
                    this.buildFromPotentialSubtypes(allPossibleSubtypes, localTypes, (IProgressMonitor)buildMonitor);
                }
            } else {
                this.hierarchy.initialize(1);
                this.buildSupertypes();
            }
        }
        finally {
            manager.flushZipFiles(this);
        }
    }

    private void buildForProject(JavaProject project, ArrayList potentialSubtypes, org.eclipse.jdt.core.ICompilationUnit[] workingCopies, HashSet localTypes, IProgressMonitor monitor) throws JavaModelException {
        int openablesLength = potentialSubtypes.size();
        if (openablesLength > 0) {
            Openable[] openables = new Openable[openablesLength];
            potentialSubtypes.toArray(openables);
            IPackageFragmentRoot[] roots = project.getPackageFragmentRoots();
            int rootsLength = roots.length;
            final HashtableOfObjectToInt indexes = new HashtableOfObjectToInt(openablesLength);
            int i = 0;
            while (i < openablesLength) {
                IJavaElement root = openables[i].getAncestor(3);
                int index = 0;
                while (index < rootsLength) {
                    if (roots[index].equals(root)) break;
                    ++index;
                }
                indexes.put(openables[i], index);
                ++i;
            }
            Arrays.sort(openables, new Comparator(){

                public int compare(Object a, Object b) {
                    int bIndex;
                    int aIndex = indexes.get(a);
                    if (aIndex != (bIndex = indexes.get(b))) {
                        return aIndex - bIndex;
                    }
                    return ((Openable)b).getElementName().compareTo(((Openable)a).getElementName());
                }
            });
            IType focusType = this.getType();
            boolean inProjectOfFocusType = focusType != null && focusType.getJavaProject().equals(project);
            org.eclipse.jdt.core.ICompilationUnit[] unitsToLookInside = null;
            if (inProjectOfFocusType) {
                org.eclipse.jdt.core.ICompilationUnit unitToLookInside = focusType.getCompilationUnit();
                if (unitToLookInside != null) {
                    int wcLength;
                    int n = wcLength = workingCopies == null ? 0 : workingCopies.length;
                    if (wcLength == 0) {
                        unitsToLookInside = new org.eclipse.jdt.core.ICompilationUnit[]{unitToLookInside};
                    } else {
                        unitsToLookInside = new org.eclipse.jdt.core.ICompilationUnit[wcLength + 1];
                        unitsToLookInside[0] = unitToLookInside;
                        System.arraycopy(workingCopies, 0, unitsToLookInside, 1, wcLength);
                    }
                } else {
                    unitsToLookInside = workingCopies;
                }
            }
            SearchableEnvironment searchableEnvironment = project.newSearchableNameEnvironment(unitsToLookInside);
            this.nameLookup = searchableEnvironment.nameLookup;
            Map options = project.getOptions(true);
            options.put("org.eclipse.jdt.core.compiler.taskTags", "");
            this.hierarchyResolver = new HierarchyResolver(searchableEnvironment, options, this, new DefaultProblemFactory());
            if (focusType != null) {
                Member declaringMember = ((Member)((Object)focusType)).getOuterMostLocalContext();
                if (declaringMember == null) {
                    String[] packageName;
                    char[] typeQualifiedName;
                    if (!inProjectOfFocusType && searchableEnvironment.findType(typeQualifiedName = focusType.getTypeQualifiedName('.').toCharArray(), Util.toCharArrays(packageName = ((PackageFragment)focusType.getPackageFragment()).names)) == null) {
                        return;
                    }
                } else {
                    Openable openable = declaringMember.isBinary() ? (Openable)((Object)declaringMember.getClassFile()) : (Openable)((Object)declaringMember.getCompilationUnit());
                    localTypes = new HashSet<String>();
                    localTypes.add(openable.getPath().toString());
                    this.hierarchyResolver.resolve(new Openable[]{openable}, localTypes, monitor);
                    return;
                }
            }
            this.hierarchyResolver.resolve(openables, localTypes, monitor);
        }
    }

    private void buildFromPotentialSubtypes(String[] allPotentialSubTypes, HashSet localTypes, IProgressMonitor monitor) {
        int wcLength;
        IType focusType = this.getType();
        HashMap<String, org.eclipse.jdt.core.ICompilationUnit> wcPaths = new HashMap<String, org.eclipse.jdt.core.ICompilationUnit>();
        org.eclipse.jdt.core.ICompilationUnit[] workingCopies = this.hierarchy.workingCopies;
        if (workingCopies != null && (wcLength = workingCopies.length) > 0) {
            String[] newPaths = new String[wcLength];
            int i = 0;
            while (i < wcLength) {
                org.eclipse.jdt.core.ICompilationUnit workingCopy = workingCopies[i];
                String path = workingCopy.getPath().toString();
                wcPaths.put(path, workingCopy);
                newPaths[i] = path;
                ++i;
            }
            int potentialSubtypesLength = allPotentialSubTypes.length;
            String[] stringArray = allPotentialSubTypes;
            allPotentialSubTypes = new String[potentialSubtypesLength + wcLength];
            System.arraycopy(stringArray, 0, allPotentialSubTypes, 0, potentialSubtypesLength);
            System.arraycopy(newPaths, 0, allPotentialSubTypes, potentialSubtypesLength, wcLength);
        }
        int length = allPotentialSubTypes.length;
        Openable focusCU = (Openable)((Object)focusType.getCompilationUnit());
        String focusPath = null;
        if (focusCU != null) {
            focusPath = focusCU.getPath().toString();
            if (length > 0) {
                String[] stringArray = allPotentialSubTypes;
                allPotentialSubTypes = new String[length + 1];
                System.arraycopy(stringArray, 0, allPotentialSubTypes, 0, length);
                allPotentialSubTypes[length] = focusPath;
            } else {
                allPotentialSubTypes = new String[]{focusPath};
            }
            ++length;
        }
        Arrays.sort(allPotentialSubTypes);
        ArrayList<IJavaElement> potentialSubtypes = new ArrayList<IJavaElement>();
        try {
            HandleFactory factory = new HandleFactory();
            IJavaProject currentProject = null;
            if (monitor != null) {
                monitor.beginTask("", length * 2);
            }
            int i = 0;
            while (i < length) {
                block30: {
                    try {
                        Openable handle;
                        String resourcePath = allPotentialSubTypes[i];
                        if (i > 0 && resourcePath.equals(allPotentialSubTypes[i - 1])) break block30;
                        org.eclipse.jdt.core.ICompilationUnit workingCopy = (org.eclipse.jdt.core.ICompilationUnit)wcPaths.get(resourcePath);
                        if (workingCopy != null) {
                            handle = (Openable)((Object)workingCopy);
                        } else {
                            Openable openable = handle = resourcePath.equals(focusPath) ? focusCU : factory.createOpenable(resourcePath, this.scope);
                            if (handle == null) break block30;
                        }
                        IJavaProject project = handle.getJavaProject();
                        if (currentProject == null) {
                            currentProject = project;
                            potentialSubtypes = new ArrayList(5);
                        } else if (!currentProject.equals(project)) {
                            this.buildForProject((JavaProject)currentProject, potentialSubtypes, workingCopies, localTypes, monitor);
                            currentProject = project;
                            potentialSubtypes = new ArrayList(5);
                        }
                        potentialSubtypes.add(handle);
                    }
                    catch (JavaModelException javaModelException) {}
                }
                ++i;
            }
            try {
                if (currentProject == null) {
                    currentProject = focusType.getJavaProject();
                    if (focusType.isBinary()) {
                        potentialSubtypes.add(focusType.getClassFile());
                    } else {
                        potentialSubtypes.add(focusType.getCompilationUnit());
                    }
                }
                this.buildForProject((JavaProject)currentProject, potentialSubtypes, workingCopies, localTypes, monitor);
            }
            catch (JavaModelException javaModelException) {}
            if (!this.hierarchy.contains(focusType)) {
                try {
                    currentProject = focusType.getJavaProject();
                    potentialSubtypes = new ArrayList();
                    if (focusType.isBinary()) {
                        potentialSubtypes.add(focusType.getClassFile());
                    } else {
                        potentialSubtypes.add(focusType.getCompilationUnit());
                    }
                    this.buildForProject((JavaProject)currentProject, potentialSubtypes, workingCopies, localTypes, monitor);
                }
                catch (JavaModelException javaModelException) {}
            }
            if (!this.hierarchy.contains(focusType)) {
                this.hierarchy.addRootClass(focusType);
            }
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
        }
    }

    protected ICompilationUnit createCompilationUnitFromPath(Openable handle, IFile file) {
        ICompilationUnit unit = super.createCompilationUnitFromPath(handle, file);
        this.cuToHandle.put(unit, handle);
        return unit;
    }

    protected IBinaryType createInfoFromClassFile(Openable classFile, IResource file) {
        String documentPath = classFile.getPath().toString();
        IBinaryType binaryType = (IBinaryType)this.binariesFromIndexMatches.get(documentPath);
        if (binaryType != null) {
            this.infoToHandle.put(binaryType, classFile);
            return binaryType;
        }
        return super.createInfoFromClassFile(classFile, file);
    }

    protected IBinaryType createInfoFromClassFileInJar(Openable classFile) {
        String filePath = String.valueOf(((ClassFile)classFile).getType().getFullyQualifiedName('$').replace('.', '/')) + ".class";
        PackageFragmentRoot root = classFile.getPackageFragmentRoot();
        IPath path = root.getPath();
        String rootPath = path.getDevice() == null ? path.toString() : path.toOSString();
        String documentPath = String.valueOf(rootPath) + "|" + filePath;
        IBinaryType binaryType = (IBinaryType)this.binariesFromIndexMatches.get(documentPath);
        if (binaryType != null) {
            this.infoToHandle.put(binaryType, classFile);
            return binaryType;
        }
        return super.createInfoFromClassFileInJar(classFile);
    }

    private String[] determinePossibleSubTypes(HashSet localTypes, IProgressMonitor monitor) {
        class PathCollector
        implements IPathRequestor {
            HashSet paths;
            final /* synthetic */ IndexBasedHierarchyBuilder this$0;
            private final /* synthetic */ HashSet val$localTypes;

            PathCollector(IndexBasedHierarchyBuilder indexBasedHierarchyBuilder, HashSet hashSet) {
                this.this$0 = indexBasedHierarchyBuilder;
                this.val$localTypes = hashSet;
                this.paths = new HashSet<E>(10);
            }

            public void acceptPath(String path, boolean containsLocalTypes) {
                this.paths.add(path);
                if (containsLocalTypes) {
                    this.val$localTypes.add(path);
                }
            }
        }
        PathCollector collector = new PathCollector(this, localTypes);
        try {
            if (monitor != null) {
                monitor.beginTask("", 800);
            }
            IndexBasedHierarchyBuilder.searchAllPossibleSubTypes(this.getType(), this.scope, this.binariesFromIndexMatches, collector, 3, monitor);
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
        }
        HashSet paths = collector.paths;
        int length = paths.size();
        String[] result = new String[length];
        int count = 0;
        Iterator iter = paths.iterator();
        while (iter.hasNext()) {
            result[count++] = (String)iter.next();
        }
        return result;
    }

    public static void searchAllPossibleSubTypes(IType type, IJavaSearchScope scope, final Map binariesFromIndexMatches, final IPathRequestor pathRequestor, int waitingPolicy, final IProgressMonitor progressMonitor) {
        int superRefKind;
        final Queue queue = new Queue();
        final HashtableOfObject foundSuperNames = new HashtableOfObject(5);
        IndexManager indexManager = JavaModelManager.getIndexManager();
        IndexQueryRequestor searchRequestor = new IndexQueryRequestor(){

            public boolean acceptIndexMatch(String documentPath, SearchPattern indexRecord, SearchParticipant participant, AccessRuleSet access) {
                SuperTypeReferencePattern record = (SuperTypeReferencePattern)indexRecord;
                boolean isLocalOrAnonymous = record.enclosingTypeName == IIndexConstants.ONE_ZERO;
                pathRequestor.acceptPath(documentPath, isLocalOrAnonymous);
                char[] typeName = record.simpleName;
                if (documentPath.toLowerCase().endsWith(".class")) {
                    int suffix = documentPath.length() - ".class".length();
                    HierarchyBinaryType binaryType = (HierarchyBinaryType)binariesFromIndexMatches.get(documentPath);
                    if (binaryType == null) {
                        char[] enclosingTypeName = record.enclosingTypeName;
                        if (isLocalOrAnonymous) {
                            int lastSlash = documentPath.lastIndexOf(47);
                            int lastDollar = documentPath.lastIndexOf(36);
                            if (lastDollar == -1) {
                                enclosingTypeName = null;
                                typeName = documentPath.substring(lastSlash + 1, suffix).toCharArray();
                            } else {
                                enclosingTypeName = documentPath.substring(lastSlash + 1, lastDollar).toCharArray();
                                typeName = documentPath.substring(lastDollar + 1, suffix).toCharArray();
                            }
                        }
                        binaryType = new HierarchyBinaryType(record.modifiers, record.pkgName, typeName, enclosingTypeName, record.typeParameterSignatures, record.classOrInterface);
                        binariesFromIndexMatches.put(documentPath, binaryType);
                    }
                    binaryType.recordSuperType(record.superSimpleName, record.superQualification, record.superClassOrInterface);
                }
                if (!isLocalOrAnonymous && !foundSuperNames.containsKey(typeName)) {
                    foundSuperNames.put(typeName, typeName);
                    queue.add(typeName);
                }
                return true;
            }
        };
        try {
            superRefKind = type.isClass() ? 2 : 0;
        }
        catch (JavaModelException javaModelException) {
            superRefKind = 0;
        }
        SuperTypeReferencePattern pattern = new SuperTypeReferencePattern(null, null, superRefKind, 8);
        MatchLocator.setFocus(pattern, type);
        SubTypeSearchJob job = new SubTypeSearchJob(pattern, new JavaSearchParticipant(), scope, searchRequestor);
        int ticks = 0;
        queue.add(type.getElementName().toCharArray());
        try {
            while (queue.start <= queue.end) {
                if (progressMonitor != null && progressMonitor.isCanceled()) {
                    return;
                }
                char[] currentTypeName = queue.retrieve();
                if (CharOperation.equals(currentTypeName, IIndexConstants.OBJECT)) {
                    currentTypeName = null;
                }
                pattern.superSimpleName = currentTypeName;
                indexManager.performConcurrentJob(job, waitingPolicy, (IProgressMonitor)(progressMonitor == null ? null : new NullProgressMonitor(){

                    public void setCanceled(boolean value) {
                        progressMonitor.setCanceled(value);
                    }

                    public boolean isCanceled() {
                        return progressMonitor.isCanceled();
                    }

                    public void subTask(String name) {
                        progressMonitor.subTask(name);
                    }
                }));
                if (progressMonitor != null && ++ticks <= 800) {
                    progressMonitor.worked(1);
                }
                if (currentTypeName != null) continue;
                break;
            }
        }
        finally {
            job.finished();
        }
    }

    static class Queue {
        public char[][] names = new char[10][];
        public int start = 0;
        public int end = -1;

        Queue() {
        }

        public void add(char[] name) {
            if (++this.end == this.names.length) {
                this.end -= this.start;
                char[][] cArrayArray = new char[this.end * 2][];
                this.names = cArrayArray;
                System.arraycopy(this.names, this.start, cArrayArray, 0, this.end);
                this.start = 0;
            }
            this.names[this.end] = name;
        }

        public char[] retrieve() {
            if (this.start > this.end) {
                return null;
            }
            char[] name = this.names[this.start++];
            if (this.start > this.end) {
                this.start = 0;
                this.end = -1;
            }
            return name;
        }

        public String toString() {
            StringBuffer buffer = new StringBuffer("Queue:\n");
            int i = this.start;
            while (i <= this.end) {
                buffer.append(this.names[i]).append('\n');
                ++i;
            }
            return buffer.toString();
        }
    }
}

