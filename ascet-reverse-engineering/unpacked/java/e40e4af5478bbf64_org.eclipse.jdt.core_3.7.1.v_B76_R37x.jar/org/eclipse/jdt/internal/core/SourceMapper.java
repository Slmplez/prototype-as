/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.BasicCompilationUnit;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.util.ReferenceInfoAdapter;
import org.eclipse.jdt.internal.core.util.Util;

public class SourceMapper
extends ReferenceInfoAdapter
implements ISourceElementRequestor,
SuffixConstants {
    public static boolean VERBOSE = false;
    protected ArrayList rootPaths;
    protected BinaryType binaryType;
    protected IPath sourcePath;
    protected String rootPath = "";
    protected HashMap parameterNames;
    protected HashMap sourceRanges;
    protected HashMap categories;
    protected HashMap parametersRanges;
    protected HashSet finalParameters;
    public static final SourceRange UNKNOWN_RANGE = new SourceRange(-1, 0);
    protected int[] memberDeclarationStart;
    protected SourceRange[] memberNameRange;
    protected String[] memberName;
    protected char[][][] methodParameterNames;
    protected char[][][] methodParameterTypes;
    protected IJavaElement searchedElement;
    private HashMap importsTable;
    private HashMap importsCounterTable;
    IType[] types;
    int[] typeDeclarationStarts;
    SourceRange[] typeNameRanges;
    int[] typeModifiers;
    int typeDepth;
    int anonymousCounter;
    int anonymousClassName;
    String encoding;
    Map options;
    private boolean areRootPathsComputed = false;

    public SourceMapper() {
    }

    public SourceMapper(IPath sourcePath, String rootPath, Map options) {
        this.options = options;
        try {
            this.encoding = ResourcesPlugin.getWorkspace().getRoot().getDefaultCharset();
        }
        catch (CoreException coreException) {}
        if (rootPath != null) {
            this.rootPaths = new ArrayList();
            this.rootPaths.add(rootPath);
        }
        this.sourcePath = sourcePath;
        this.sourceRanges = new HashMap();
        this.parametersRanges = new HashMap();
        this.parameterNames = new HashMap();
        this.importsTable = new HashMap();
        this.importsCounterTable = new HashMap();
    }

    public void acceptImport(int declarationStart, int declarationEnd, int nameStart, int nameEnd, char[][] tokens, boolean onDemand, int modifiers) {
        int importsCounter;
        Object imports = (char[][])this.importsTable.get(this.binaryType);
        if (imports == null) {
            imports = new char[5][];
            importsCounter = 0;
        } else {
            importsCounter = (Integer)this.importsCounterTable.get(this.binaryType);
        }
        if (((char[][])imports).length == importsCounter) {
            Object object = imports;
            char[][] cArrayArray = new char[importsCounter * 2][];
            imports = cArrayArray;
            System.arraycopy(object, 0, cArrayArray, 0, importsCounter);
        }
        char[] name = CharOperation.concatWith(tokens, '.');
        if (onDemand) {
            int nameLength = name.length;
            char[] cArray = name;
            name = new char[nameLength + 2];
            System.arraycopy(cArray, 0, name, 0, nameLength);
            name[nameLength] = 46;
            name[nameLength + 1] = 42;
        }
        imports[importsCounter++] = name;
        this.importsTable.put(this.binaryType, imports);
        this.importsCounterTable.put(this.binaryType, new Integer(importsCounter));
    }

    public void acceptLineSeparatorPositions(int[] positions) {
    }

    public void acceptPackage(ImportReference importReference) {
    }

    public void acceptProblem(CategorizedProblem problem) {
    }

    private void addCategories(IJavaElement element, char[][] elementCategories) {
        if (elementCategories == null) {
            return;
        }
        if (this.categories == null) {
            this.categories = new HashMap();
        }
        this.categories.put(element, CharOperation.toStrings(elementCategories));
    }

    public void close() {
        this.sourceRanges = null;
        this.parameterNames = null;
        this.parametersRanges = null;
        this.finalParameters = null;
    }

    private String[] convertTypeNamesToSigs(char[][] typeNames) {
        if (typeNames == null) {
            return CharOperation.NO_STRINGS;
        }
        int n = typeNames.length;
        if (n == 0) {
            return CharOperation.NO_STRINGS;
        }
        String[] typeSigs = new String[n];
        int i = 0;
        while (i < n) {
            char[] typeSig = Signature.createCharArrayTypeSignature(typeNames[i], false);
            StringBuffer simpleTypeSig = null;
            int start = 0;
            int dot = -1;
            int length = typeSig.length;
            int j = 0;
            while (j < length) {
                switch (typeSig[j]) {
                    case 'Q': {
                        if (simpleTypeSig != null) {
                            simpleTypeSig.append(typeSig, start, j - start);
                        }
                        start = j;
                        break;
                    }
                    case '.': {
                        dot = j;
                        break;
                    }
                    case ';': 
                    case '<': {
                        if (dot <= start) break;
                        if (simpleTypeSig == null) {
                            simpleTypeSig = new StringBuffer().append(typeSig, 0, start);
                        }
                        simpleTypeSig.append('Q');
                        simpleTypeSig.append(typeSig, dot + 1, j - dot - 1);
                        start = j;
                    }
                }
                ++j;
            }
            if (simpleTypeSig == null) {
                typeSigs[i] = new String(typeSig);
            } else {
                simpleTypeSig.append(typeSig, start, length - start);
                typeSigs[i] = simpleTypeSig.toString();
            }
            ++i;
        }
        return typeSigs;
    }

    private synchronized void computeAllRootPaths(IType type) {
        long time;
        HashSet<Object> tempRoots;
        block46: {
            Object target;
            boolean containsJavaSource;
            boolean containsADefaultPackage;
            HashSet<String> firstLevelPackageNames;
            block44: {
                IStatus status;
                IJavaProject project;
                if (this.areRootPathsComputed) {
                    return;
                }
                IPackageFragmentRoot root = (IPackageFragmentRoot)type.getPackageFragment().getParent();
                IPath pkgFragmentRootPath = root.getPath();
                tempRoots = new HashSet<Object>();
                time = 0L;
                if (VERBOSE) {
                    System.out.println("compute all root paths for " + root.getElementName());
                    time = System.currentTimeMillis();
                }
                firstLevelPackageNames = new HashSet<String>();
                containsADefaultPackage = false;
                containsJavaSource = !pkgFragmentRootPath.equals((Object)this.sourcePath);
                String sourceLevel = null;
                String complianceLevel = null;
                if (root.isArchive()) {
                    JavaModelManager manager = JavaModelManager.getJavaModelManager();
                    ZipFile zip = null;
                    try {
                        try {
                            zip = manager.getZipFile(pkgFragmentRootPath);
                            Enumeration<? extends ZipEntry> entries = zip.entries();
                            while (entries.hasMoreElements()) {
                                ZipEntry entry = entries.nextElement();
                                String entryName = entry.getName();
                                if (entry.isDirectory()) continue;
                                if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(entryName)) {
                                    int index = entryName.indexOf(47);
                                    if (index != -1) {
                                        String firstLevelPackageName = entryName.substring(0, index);
                                        if (firstLevelPackageNames.contains(firstLevelPackageName)) continue;
                                        if (sourceLevel == null) {
                                            project = root.getJavaProject();
                                            sourceLevel = project.getOption("org.eclipse.jdt.core.compiler.source", true);
                                            complianceLevel = project.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                                        }
                                        if (!(status = JavaConventions.validatePackageName(firstLevelPackageName, sourceLevel, complianceLevel)).isOK() && status.getSeverity() != 2) continue;
                                        firstLevelPackageNames.add(firstLevelPackageName);
                                        continue;
                                    }
                                    containsADefaultPackage = true;
                                    continue;
                                }
                                if (containsJavaSource || !Util.isJavaLikeFileName(entryName)) continue;
                                containsJavaSource = true;
                            }
                        }
                        catch (CoreException coreException) {
                            manager.closeZipFile(zip);
                            break block44;
                        }
                    }
                    catch (Throwable throwable) {
                        manager.closeZipFile(zip);
                        throw throwable;
                    }
                    manager.closeZipFile(zip);
                } else {
                    IResource resource;
                    target = JavaModel.getTarget(root.getPath(), true);
                    if (target instanceof IResource && (resource = (IResource)target) instanceof IContainer) {
                        try {
                            IResource[] members = ((IContainer)resource).members();
                            int i = 0;
                            int max = members.length;
                            while (i < max) {
                                IResource member = members[i];
                                String resourceName = member.getName();
                                if (member.getType() == 2) {
                                    if (sourceLevel == null) {
                                        project = root.getJavaProject();
                                        sourceLevel = project.getOption("org.eclipse.jdt.core.compiler.source", true);
                                        complianceLevel = project.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                                    }
                                    if ((status = JavaConventions.validatePackageName(resourceName, sourceLevel, complianceLevel)).isOK() || status.getSeverity() == 2) {
                                        firstLevelPackageNames.add(resourceName);
                                    }
                                } else if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(resourceName)) {
                                    containsADefaultPackage = true;
                                } else if (!containsJavaSource && Util.isJavaLikeFileName(resourceName)) {
                                    containsJavaSource = true;
                                }
                                ++i;
                            }
                        }
                        catch (CoreException coreException) {}
                    }
                }
            }
            if (containsJavaSource) {
                target = JavaModel.getTarget(this.sourcePath, true);
                if (target instanceof IContainer) {
                    IContainer folder = (IContainer)target;
                    this.computeRootPath(folder, firstLevelPackageNames, containsADefaultPackage, tempRoots, folder.getFullPath().segmentCount());
                } else {
                    JavaModelManager manager = JavaModelManager.getJavaModelManager();
                    ZipFile zip = null;
                    try {
                        try {
                            zip = manager.getZipFile(this.sourcePath);
                            Enumeration<? extends ZipEntry> entries = zip.entries();
                            while (entries.hasMoreElements()) {
                                String entryName;
                                ZipEntry entry = entries.nextElement();
                                if (entry.isDirectory() || !Util.isJavaLikeFileName(entryName = entry.getName())) continue;
                                Path path = new Path(entryName);
                                int segmentCount = path.segmentCount();
                                if (segmentCount > 1) {
                                    int i = 0;
                                    int max = path.segmentCount() - 1;
                                    while (i < max) {
                                        if (firstLevelPackageNames.contains(path.segment(i))) {
                                            tempRoots.add(path.uptoSegment(i));
                                        }
                                        if (i == max - 1 && containsADefaultPackage) {
                                            tempRoots.add(path.uptoSegment(max));
                                        }
                                        ++i;
                                    }
                                    continue;
                                }
                                if (!containsADefaultPackage) continue;
                                tempRoots.add(new Path(""));
                            }
                        }
                        catch (CoreException coreException) {
                            manager.closeZipFile(zip);
                            break block46;
                        }
                    }
                    catch (Throwable throwable) {
                        manager.closeZipFile(zip);
                        throw throwable;
                    }
                    manager.closeZipFile(zip);
                }
            }
        }
        int size = tempRoots.size();
        if (this.rootPaths != null) {
            Iterator iterator = this.rootPaths.iterator();
            while (iterator.hasNext()) {
                tempRoots.add(new Path((String)iterator.next()));
            }
            this.rootPaths.clear();
        } else {
            this.rootPaths = new ArrayList(size);
        }
        size = tempRoots.size();
        if (size > 0) {
            ArrayList sortedRoots = new ArrayList(tempRoots);
            if (size > 1) {
                Collections.sort(sortedRoots, new Comparator(){

                    public int compare(Object o1, Object o2) {
                        IPath path1 = (IPath)o1;
                        IPath path2 = (IPath)o2;
                        return path1.segmentCount() - path2.segmentCount();
                    }
                });
            }
            Iterator iter = sortedRoots.iterator();
            while (iter.hasNext()) {
                IPath path = (IPath)iter.next();
                this.rootPaths.add(path.toString());
            }
        }
        this.areRootPathsComputed = true;
        if (VERBOSE) {
            System.out.println("Spent " + (System.currentTimeMillis() - time) + "ms");
            System.out.println("Found " + size + " root paths");
            int i = 0;
            Iterator iterator = this.rootPaths.iterator();
            while (iterator.hasNext()) {
                System.out.println("root[" + i + "]=" + (String)iterator.next());
                ++i;
            }
        }
    }

    private void computeRootPath(IContainer container, HashSet firstLevelPackageNames, boolean hasDefaultPackage, Set set, int sourcePathSegmentCount) {
        try {
            IResource[] resources = container.members();
            int i = 0;
            int max = resources.length;
            while (i < max) {
                IResource resource = resources[i];
                if (resource.getType() == 2) {
                    if (firstLevelPackageNames.contains(resource.getName())) {
                        IPath fullPath = container.getFullPath();
                        IPath rootPathEntry = fullPath.removeFirstSegments(sourcePathSegmentCount).setDevice(null);
                        if (rootPathEntry.segmentCount() >= 1) {
                            set.add(rootPathEntry);
                        }
                        this.computeRootPath((IContainer)((IFolder)resource), firstLevelPackageNames, hasDefaultPackage, set, sourcePathSegmentCount);
                    } else {
                        this.computeRootPath((IContainer)((IFolder)resource), firstLevelPackageNames, hasDefaultPackage, set, sourcePathSegmentCount);
                    }
                }
                if (i == max - 1 && hasDefaultPackage) {
                    boolean hasJavaSourceFile = false;
                    int j = 0;
                    while (j < max) {
                        if (Util.isJavaLikeFileName(resources[i].getName())) {
                            hasJavaSourceFile = true;
                            break;
                        }
                        ++j;
                    }
                    if (hasJavaSourceFile) {
                        IPath fullPath = container.getFullPath();
                        IPath rootPathEntry = fullPath.removeFirstSegments(sourcePathSegmentCount).setDevice(null);
                        set.add(rootPathEntry);
                    }
                }
                ++i;
            }
        }
        catch (CoreException e) {
            e.printStackTrace();
        }
    }

    public void enterType(ISourceElementRequestor.TypeInfo typeInfo) {
        ++this.typeDepth;
        if (this.typeDepth == this.types.length) {
            this.types = new IType[this.typeDepth * 2];
            System.arraycopy(this.types, 0, this.types, 0, this.typeDepth);
            this.typeNameRanges = new SourceRange[this.typeDepth * 2];
            System.arraycopy(this.typeNameRanges, 0, this.typeNameRanges, 0, this.typeDepth);
            this.typeDeclarationStarts = new int[this.typeDepth * 2];
            System.arraycopy(this.typeDeclarationStarts, 0, this.typeDeclarationStarts, 0, this.typeDepth);
            this.memberName = new String[this.typeDepth * 2];
            System.arraycopy(this.memberName, 0, this.memberName, 0, this.typeDepth);
            this.memberDeclarationStart = new int[this.typeDepth * 2];
            System.arraycopy(this.memberDeclarationStart, 0, this.memberDeclarationStart, 0, this.typeDepth);
            this.memberNameRange = new SourceRange[this.typeDepth * 2];
            System.arraycopy(this.memberNameRange, 0, this.memberNameRange, 0, this.typeDepth);
            char[][][] cArrayArray = new char[this.typeDepth * 2][][];
            this.methodParameterTypes = cArrayArray;
            System.arraycopy(this.methodParameterTypes, 0, cArrayArray, 0, this.typeDepth);
            char[][][] cArrayArray2 = new char[this.typeDepth * 2][][];
            this.methodParameterNames = cArrayArray2;
            System.arraycopy(this.methodParameterNames, 0, cArrayArray2, 0, this.typeDepth);
            this.typeModifiers = new int[this.typeDepth * 2];
            System.arraycopy(this.typeModifiers, 0, this.typeModifiers, 0, this.typeDepth);
        }
        if (typeInfo.name.length == 0) {
            ++this.anonymousCounter;
            this.types[this.typeDepth] = this.anonymousCounter == this.anonymousClassName ? this.getType(this.binaryType.getElementName()) : this.getType(new String(typeInfo.name));
        } else {
            this.types[this.typeDepth] = this.getType(new String(typeInfo.name));
        }
        this.typeNameRanges[this.typeDepth] = new SourceRange(typeInfo.nameSourceStart, typeInfo.nameSourceEnd - typeInfo.nameSourceStart + 1);
        this.typeDeclarationStarts[this.typeDepth] = typeInfo.declarationStart;
        IType currentType = this.types[this.typeDepth];
        if (typeInfo.typeParameters != null) {
            int i = 0;
            int length = typeInfo.typeParameters.length;
            while (i < length) {
                ISourceElementRequestor.TypeParameterInfo typeParameterInfo = typeInfo.typeParameters[i];
                ITypeParameter typeParameter = currentType.getTypeParameter(new String(typeParameterInfo.name));
                this.setSourceRange(typeParameter, new SourceRange(typeParameterInfo.declarationStart, typeParameterInfo.declarationEnd - typeParameterInfo.declarationStart + 1), new SourceRange(typeParameterInfo.nameSourceStart, typeParameterInfo.nameSourceEnd - typeParameterInfo.nameSourceStart + 1));
                ++i;
            }
        }
        this.typeModifiers[this.typeDepth] = typeInfo.modifiers;
        this.addCategories(currentType, typeInfo.categories);
    }

    public void enterCompilationUnit() {
    }

    public void enterConstructor(ISourceElementRequestor.MethodInfo methodInfo) {
        this.enterAbstractMethod(methodInfo);
    }

    public void enterField(ISourceElementRequestor.FieldInfo fieldInfo) {
        if (this.typeDepth >= 0) {
            String fieldName;
            this.memberDeclarationStart[this.typeDepth] = fieldInfo.declarationStart;
            this.memberNameRange[this.typeDepth] = new SourceRange(fieldInfo.nameSourceStart, fieldInfo.nameSourceEnd - fieldInfo.nameSourceStart + 1);
            this.memberName[this.typeDepth] = fieldName = new String(fieldInfo.name);
            IType currentType = this.types[this.typeDepth];
            IField field = currentType.getField(fieldName);
            this.addCategories(field, fieldInfo.categories);
        }
    }

    public void enterInitializer(int declarationSourceStart, int modifiers) {
    }

    public void enterMethod(ISourceElementRequestor.MethodInfo methodInfo) {
        this.enterAbstractMethod(methodInfo);
    }

    private void enterAbstractMethod(ISourceElementRequestor.MethodInfo methodInfo) {
        if (this.typeDepth >= 0) {
            this.memberName[this.typeDepth] = new String(methodInfo.name);
            this.memberNameRange[this.typeDepth] = new SourceRange(methodInfo.nameSourceStart, methodInfo.nameSourceEnd - methodInfo.nameSourceStart + 1);
            this.memberDeclarationStart[this.typeDepth] = methodInfo.declarationStart;
            IType currentType = this.types[this.typeDepth];
            int currenTypeModifiers = this.typeModifiers[this.typeDepth];
            char[][] parameterTypes = methodInfo.parameterTypes;
            if (methodInfo.isConstructor && currentType.getDeclaringType() != null && !Flags.isStatic(currenTypeModifiers)) {
                IType declaringType = currentType.getDeclaringType();
                String declaringTypeName = declaringType.getElementName();
                if (declaringTypeName.length() == 0) {
                    IClassFile classFile = declaringType.getClassFile();
                    int length = parameterTypes != null ? parameterTypes.length : 0;
                    char[][] newParameterTypes = new char[length + 1][];
                    declaringTypeName = classFile.getElementName();
                    declaringTypeName = declaringTypeName.substring(0, declaringTypeName.indexOf(46));
                    newParameterTypes[0] = declaringTypeName.toCharArray();
                    if (length != 0) {
                        System.arraycopy(parameterTypes, 0, newParameterTypes, 1, length);
                    }
                    this.methodParameterTypes[this.typeDepth] = newParameterTypes;
                } else {
                    int length = parameterTypes != null ? parameterTypes.length : 0;
                    char[][] newParameterTypes = new char[length + 1][];
                    newParameterTypes[0] = declaringTypeName.toCharArray();
                    if (length != 0) {
                        System.arraycopy(parameterTypes, 0, newParameterTypes, 1, length);
                    }
                    this.methodParameterTypes[this.typeDepth] = newParameterTypes;
                }
            } else {
                this.methodParameterTypes[this.typeDepth] = parameterTypes;
            }
            this.methodParameterNames[this.typeDepth] = methodInfo.parameterNames;
            IMethod method = currentType.getMethod(this.memberName[this.typeDepth], this.convertTypeNamesToSigs(this.methodParameterTypes[this.typeDepth]));
            if (methodInfo.typeParameters != null) {
                int i = 0;
                int length = methodInfo.typeParameters.length;
                while (i < length) {
                    ISourceElementRequestor.TypeParameterInfo typeParameterInfo = methodInfo.typeParameters[i];
                    ITypeParameter typeParameter = method.getTypeParameter(new String(typeParameterInfo.name));
                    this.setSourceRange(typeParameter, new SourceRange(typeParameterInfo.declarationStart, typeParameterInfo.declarationEnd - typeParameterInfo.declarationStart + 1), new SourceRange(typeParameterInfo.nameSourceStart, typeParameterInfo.nameSourceEnd - typeParameterInfo.nameSourceStart + 1));
                    ++i;
                }
            }
            if (methodInfo.parameterInfos != null) {
                int i = 0;
                int length = methodInfo.parameterInfos.length;
                while (i < length) {
                    ISourceElementRequestor.ParameterInfo parameterInfo = methodInfo.parameterInfos[i];
                    LocalVariableElementKey key = new LocalVariableElementKey(method, new String(parameterInfo.name));
                    SourceRange[] allRanges = new SourceRange[]{new SourceRange(parameterInfo.declarationStart, parameterInfo.declarationEnd - parameterInfo.declarationStart + 1), new SourceRange(parameterInfo.nameSourceStart, parameterInfo.nameSourceEnd - parameterInfo.nameSourceStart + 1)};
                    this.parametersRanges.put(key, allRanges);
                    if (parameterInfo.modifiers != 0) {
                        if (this.finalParameters == null) {
                            this.finalParameters = new HashSet();
                        }
                        this.finalParameters.add(key);
                    }
                    ++i;
                }
            }
            this.addCategories(method, methodInfo.categories);
        }
    }

    public void exitType(int declarationEnd) {
        if (this.typeDepth >= 0) {
            IType currentType = this.types[this.typeDepth];
            this.setSourceRange(currentType, new SourceRange(this.typeDeclarationStarts[this.typeDepth], declarationEnd - this.typeDeclarationStarts[this.typeDepth] + 1), this.typeNameRanges[this.typeDepth]);
            --this.typeDepth;
        }
    }

    public void exitCompilationUnit(int declarationEnd) {
    }

    public void exitConstructor(int declarationEnd) {
        this.exitAbstractMethod(declarationEnd);
    }

    public void exitField(int initializationStart, int declarationEnd, int declarationSourceEnd) {
        if (this.typeDepth >= 0) {
            IType currentType = this.types[this.typeDepth];
            this.setSourceRange(currentType.getField(this.memberName[this.typeDepth]), new SourceRange(this.memberDeclarationStart[this.typeDepth], declarationEnd - this.memberDeclarationStart[this.typeDepth] + 1), this.memberNameRange[this.typeDepth]);
        }
    }

    public void exitInitializer(int declarationEnd) {
    }

    public void exitMethod(int declarationEnd, Expression defaultValue) {
        this.exitAbstractMethod(declarationEnd);
    }

    private void exitAbstractMethod(int declarationEnd) {
        if (this.typeDepth >= 0) {
            IType currentType = this.types[this.typeDepth];
            SourceRange sourceRange = new SourceRange(this.memberDeclarationStart[this.typeDepth], declarationEnd - this.memberDeclarationStart[this.typeDepth] + 1);
            IMethod method = currentType.getMethod(this.memberName[this.typeDepth], this.convertTypeNamesToSigs(this.methodParameterTypes[this.typeDepth]));
            this.setSourceRange(method, sourceRange, this.memberNameRange[this.typeDepth]);
            this.setMethodParameterNames(method, this.methodParameterNames[this.typeDepth]);
        }
    }

    public char[] findSource(IType type, IBinaryType info) {
        if (!type.isBinary()) {
            return null;
        }
        String simpleSourceFileName = ((BinaryType)type).getSourceFileName(info);
        if (simpleSourceFileName == null) {
            return null;
        }
        return this.findSource(type, simpleSourceFileName);
    }

    public char[] findSource(IType type, String simpleSourceFileName) {
        char[] source;
        long time;
        block7: {
            time = 0L;
            if (VERBOSE) {
                time = System.currentTimeMillis();
            }
            PackageFragment pkgFrag = (PackageFragment)type.getPackageFragment();
            String name = Util.concatWith(pkgFrag.names, simpleSourceFileName, '/');
            source = null;
            JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
            try {
                javaModelManager.cacheZipFiles(this);
                if (this.rootPath != null) {
                    source = this.getSourceForRootPath(this.rootPath, name);
                }
                if (source != null) break block7;
                this.computeAllRootPaths(type);
                if (this.rootPaths == null) break block7;
                Iterator iterator = this.rootPaths.iterator();
                while (iterator.hasNext()) {
                    String currentRootPath = (String)iterator.next();
                    if (currentRootPath.equals(this.rootPath) || (source = this.getSourceForRootPath(currentRootPath, name)) == null) continue;
                    this.rootPath = currentRootPath;
                    break;
                }
            }
            finally {
                javaModelManager.flushZipFiles(this);
            }
        }
        if (VERBOSE) {
            System.out.println("spent " + (System.currentTimeMillis() - time) + "ms for " + type.getElementName());
        }
        return source;
    }

    private char[] getSourceForRootPath(String currentRootPath, String name) {
        String newFullName = !currentRootPath.equals("") ? (currentRootPath.endsWith("/") ? String.valueOf(currentRootPath) + name : String.valueOf(currentRootPath) + '/' + name) : name;
        return this.findSource(newFullName);
    }

    public char[] findSource(String fullName) {
        char[] source = null;
        Object target = JavaModel.getTarget(this.sourcePath, true);
        String charSet = null;
        if (target instanceof IContainer) {
            IResource res = ((IContainer)target).findMember(fullName);
            if (res instanceof IFile) {
                try {
                    source = Util.getResourceContentsAsCharArray((IFile)res);
                }
                catch (JavaModelException javaModelException) {}
            }
        } else {
            try {
                if (target instanceof IFile) {
                    charSet = ((IFile)target).getCharset();
                }
            }
            catch (CoreException coreException) {}
            ZipEntry entry = null;
            ZipFile zip = null;
            JavaModelManager manager = JavaModelManager.getJavaModelManager();
            try {
                try {
                    zip = manager.getZipFile(this.sourcePath);
                    entry = zip.getEntry(fullName);
                    if (entry != null) {
                        source = this.readSource(entry, zip, charSet);
                    }
                }
                catch (CoreException coreException) {
                    manager.closeZipFile(zip);
                    return null;
                }
            }
            catch (Throwable throwable) {
                manager.closeZipFile(zip);
                throw throwable;
            }
            manager.closeZipFile(zip);
        }
        return source;
    }

    public int getFlags(IJavaElement element) {
        switch (element.getElementType()) {
            case 14: {
                LocalVariableElementKey key = new LocalVariableElementKey(element.getParent(), element.getElementName());
                if (this.finalParameters == null || !this.finalParameters.contains(key)) break;
                return 16;
            }
        }
        return 0;
    }

    public SourceRange getNameRange(IJavaElement element) {
        switch (element.getElementType()) {
            case 9: {
                if (!((IMember)element).isBinary()) break;
                IJavaElement[] el = this.getUnqualifiedMethodHandle((IMethod)element, false);
                if (el[1] != null && this.sourceRanges.get(el[0]) == null) {
                    element = this.getUnqualifiedMethodHandle((IMethod)element, true)[0];
                    break;
                }
                element = el[0];
                break;
            }
            case 15: {
                IMethod method;
                IJavaElement parent = element.getParent();
                if (parent.getElementType() != 9 || !(method = (IMethod)parent).isBinary()) break;
                IJavaElement[] el = this.getUnqualifiedMethodHandle(method, false);
                method = el[1] != null && this.sourceRanges.get(el[0]) == null ? (IMethod)this.getUnqualifiedMethodHandle(method, true)[0] : (IMethod)el[0];
                element = method.getTypeParameter(element.getElementName());
                break;
            }
            case 14: {
                LocalVariableElementKey key = new LocalVariableElementKey(element.getParent(), element.getElementName());
                SourceRange[] ranges = (SourceRange[])this.parametersRanges.get(key);
                if (ranges == null) {
                    return UNKNOWN_RANGE;
                }
                return ranges[1];
            }
        }
        SourceRange[] ranges = (SourceRange[])this.sourceRanges.get(element);
        if (ranges == null) {
            return UNKNOWN_RANGE;
        }
        return ranges[1];
    }

    public char[][] getMethodParameterNames(IMethod method) {
        char[][] parameters;
        if (method.isBinary()) {
            IJavaElement[] el = this.getUnqualifiedMethodHandle(method, false);
            method = el[1] != null && this.parameterNames.get(el[0]) == null ? (IMethod)this.getUnqualifiedMethodHandle(method, true)[0] : (IMethod)el[0];
        }
        if ((parameters = (char[][])this.parameterNames.get(method)) == null) {
            return null;
        }
        return parameters;
    }

    public SourceRange getSourceRange(IJavaElement element) {
        switch (element.getElementType()) {
            case 9: {
                if (!((IMember)element).isBinary()) break;
                IJavaElement[] el = this.getUnqualifiedMethodHandle((IMethod)element, false);
                if (el[1] != null && this.sourceRanges.get(el[0]) == null) {
                    element = this.getUnqualifiedMethodHandle((IMethod)element, true)[0];
                    break;
                }
                element = el[0];
                break;
            }
            case 15: {
                IMethod method;
                IJavaElement parent = element.getParent();
                if (parent.getElementType() != 9 || !(method = (IMethod)parent).isBinary()) break;
                IJavaElement[] el = this.getUnqualifiedMethodHandle(method, false);
                method = el[1] != null && this.sourceRanges.get(el[0]) == null ? (IMethod)this.getUnqualifiedMethodHandle(method, true)[0] : (IMethod)el[0];
                element = method.getTypeParameter(element.getElementName());
                break;
            }
            case 14: {
                LocalVariableElementKey key = new LocalVariableElementKey(element.getParent(), element.getElementName());
                SourceRange[] ranges = (SourceRange[])this.parametersRanges.get(key);
                if (ranges == null) {
                    return UNKNOWN_RANGE;
                }
                return ranges[0];
            }
        }
        SourceRange[] ranges = (SourceRange[])this.sourceRanges.get(element);
        if (ranges == null) {
            return UNKNOWN_RANGE;
        }
        return ranges[0];
    }

    protected IType getType(String typeName) {
        if (typeName.length() == 0) {
            IJavaElement classFile = this.binaryType.getParent();
            String classFileName = classFile.getElementName();
            StringBuffer newClassFileName = new StringBuffer();
            int lastDollar = classFileName.lastIndexOf(36);
            int i = 0;
            while (i <= lastDollar) {
                newClassFileName.append(classFileName.charAt(i));
                ++i;
            }
            newClassFileName.append(Integer.toString(this.anonymousCounter));
            PackageFragment pkg = (PackageFragment)classFile.getParent();
            return new BinaryType(new ClassFile(pkg, newClassFileName.toString()), typeName);
        }
        if (this.binaryType.getElementName().equals(typeName)) {
            return this.binaryType;
        }
        return this.binaryType.getType(typeName);
    }

    protected IJavaElement[] getUnqualifiedMethodHandle(IMethod method, boolean noDollar) {
        boolean hasDollar = false;
        String[] qualifiedParameterTypes = method.getParameterTypes();
        String[] unqualifiedParameterTypes = new String[qualifiedParameterTypes.length];
        int i = 0;
        while (i < qualifiedParameterTypes.length) {
            StringBuffer unqualifiedTypeSig = new StringBuffer();
            this.getUnqualifiedTypeSignature(qualifiedParameterTypes[i], 0, qualifiedParameterTypes[i].length(), unqualifiedTypeSig, noDollar);
            unqualifiedParameterTypes[i] = unqualifiedTypeSig.toString();
            hasDollar |= unqualifiedParameterTypes[i].lastIndexOf(36) != -1;
            ++i;
        }
        IJavaElement[] result = new IJavaElement[2];
        result[0] = ((IType)method.getParent()).getMethod(method.getElementName(), unqualifiedParameterTypes);
        if (hasDollar) {
            result[1] = result[0];
        }
        return result;
    }

    /*
     * Enabled aggressive block sorting
     */
    private int getUnqualifiedTypeSignature(String qualifiedTypeSig, int start, int length, StringBuffer unqualifiedTypeSig, boolean noDollar) {
        char current;
        char firstChar = qualifiedTypeSig.charAt(start);
        int end = start + 1;
        boolean sigStart = false;
        int i = start;
        block16: while (i < length) {
            current = qualifiedTypeSig.charAt(i);
            switch (current) {
                case '+': 
                case '-': 
                case '[': {
                    unqualifiedTypeSig.append(current);
                    start = i + 1;
                    end = start + 1;
                    firstChar = qualifiedTypeSig.charAt(start);
                    break;
                }
                case 'L': 
                case 'Q': 
                case 'T': {
                    if (sigStart) break;
                    start = ++i;
                    sigStart = true;
                    break;
                }
                case ';': 
                case '<': {
                    end = i;
                    break block16;
                }
                case '*': {
                    unqualifiedTypeSig.append(current);
                    start = i + 1;
                    end = start + 1;
                    firstChar = qualifiedTypeSig.charAt(start);
                    break;
                }
                case '>': {
                    return i;
                }
                case '.': {
                    start = ++i;
                    break;
                }
                case 'B': 
                case 'C': 
                case 'D': 
                case 'F': 
                case 'I': 
                case 'J': 
                case 'S': 
                case 'Z': {
                    if (sigStart) break;
                    unqualifiedTypeSig.append(current);
                    return i + 1;
                }
            }
            ++i;
        }
        switch (firstChar) {
            case 'L': 
            case 'Q': 
            case 'T': {
                int lastDollar;
                unqualifiedTypeSig.append('Q');
                if (noDollar && (lastDollar = qualifiedTypeSig.lastIndexOf(36, end)) > start) {
                    start = lastDollar + 1;
                }
                i = start;
                while (i < length) {
                    current = qualifiedTypeSig.charAt(i);
                    switch (current) {
                        case '<': {
                            unqualifiedTypeSig.append(current);
                            ++i;
                            while (qualifiedTypeSig.charAt(i = this.getUnqualifiedTypeSignature(qualifiedTypeSig, i, length, unqualifiedTypeSig, noDollar)) != '>') {
                            }
                            unqualifiedTypeSig.append('>');
                            break;
                        }
                        case ';': {
                            unqualifiedTypeSig.append(current);
                            return i + 1;
                        }
                        default: {
                            unqualifiedTypeSig.append(current);
                        }
                    }
                    ++i;
                }
                return length;
            }
        }
        unqualifiedTypeSig.append(qualifiedTypeSig.substring(start, end));
        return end;
    }

    public void mapSource(IType type, char[] contents, IBinaryType info) {
        this.mapSource(type, contents, info, null);
    }

    public synchronized ISourceRange mapSource(IType type, char[] contents, IBinaryType info, IJavaElement elementToFind) {
        this.binaryType = (BinaryType)type;
        if (this.sourceRanges.get(type) != null) {
            return elementToFind != null ? this.getNameRange(elementToFind) : null;
        }
        this.importsTable.remove(this.binaryType);
        this.importsCounterTable.remove(this.binaryType);
        this.searchedElement = elementToFind;
        this.types = new IType[1];
        this.typeDeclarationStarts = new int[1];
        this.typeNameRanges = new SourceRange[1];
        this.typeModifiers = new int[1];
        this.typeDepth = -1;
        this.memberDeclarationStart = new int[1];
        this.memberName = new String[1];
        this.memberNameRange = new SourceRange[1];
        this.methodParameterTypes = new char[1][][];
        this.methodParameterNames = new char[1][][];
        this.anonymousCounter = 0;
        HashMap oldSourceRanges = null;
        if (elementToFind != null) {
            oldSourceRanges = (HashMap)this.sourceRanges.clone();
        }
        try {
            DefaultProblemFactory factory = new DefaultProblemFactory();
            SourceElementParser parser = null;
            this.anonymousClassName = 0;
            if (info == null) {
                try {
                    info = (IBinaryType)this.binaryType.getElementInfo();
                }
                catch (JavaModelException javaModelException) {
                    if (elementToFind != null) {
                        this.sourceRanges = oldSourceRanges;
                    }
                    this.binaryType = null;
                    this.searchedElement = null;
                    this.types = null;
                    this.typeDeclarationStarts = null;
                    this.typeNameRanges = null;
                    this.typeDepth = -1;
                    return null;
                }
            }
            boolean isAnonymousClass = info.isAnonymous();
            char[] fullName = info.getName();
            if (isAnonymousClass) {
                String eltName = this.binaryType.getParent().getElementName();
                eltName = eltName.substring(eltName.lastIndexOf(36) + 1, eltName.length());
                try {
                    this.anonymousClassName = Integer.parseInt(eltName);
                }
                catch (NumberFormatException numberFormatException) {}
            }
            boolean doFullParse = this.hasToRetrieveSourceRangesForLocalClass(fullName);
            parser = new SourceElementParser(this, factory, new CompilerOptions(this.options), doFullParse, true);
            parser.javadocParser.checkDocComment = false;
            IJavaElement javaElement = this.binaryType.getCompilationUnit();
            if (javaElement == null) {
                javaElement = this.binaryType.getParent();
            }
            parser.parseCompilationUnit(new BasicCompilationUnit(contents, null, this.binaryType.sourceFileName(info), javaElement), doFullParse, null);
            if (elementToFind != null) {
                SourceRange range;
                SourceRange sourceRange = range = this.getNameRange(elementToFind);
                return sourceRange;
            }
            return null;
        }
        finally {
            if (elementToFind != null) {
                this.sourceRanges = oldSourceRanges;
            }
            this.binaryType = null;
            this.searchedElement = null;
            this.types = null;
            this.typeDeclarationStarts = null;
            this.typeNameRanges = null;
            this.typeDepth = -1;
        }
    }

    private char[] readSource(ZipEntry entry, ZipFile zip, String charSet) {
        try {
            byte[] bytes = org.eclipse.jdt.internal.compiler.util.Util.getZipEntryByteContent(entry, zip);
            if (bytes != null) {
                return org.eclipse.jdt.internal.compiler.util.Util.bytesToChar(bytes, charSet == null ? this.encoding : charSet);
            }
        }
        catch (IOException iOException) {}
        return null;
    }

    protected void setMethodParameterNames(IMethod method, char[][] parameterNames) {
        if (parameterNames == null) {
            parameterNames = CharOperation.NO_CHAR_CHAR;
        }
        this.parameterNames.put(method, parameterNames);
    }

    protected void setSourceRange(IJavaElement element, SourceRange sourceRange, SourceRange nameRange) {
        this.sourceRanges.put(element, new SourceRange[]{sourceRange, nameRange});
    }

    public char[][] getImports(BinaryType type) {
        Object imports = (char[][])this.importsTable.get(type);
        if (imports != null) {
            int importsCounter = (Integer)this.importsCounterTable.get(type);
            if (((char[][])imports).length != importsCounter) {
                char[][] cArray = imports;
                char[][] cArrayArray = new char[importsCounter][];
                imports = cArrayArray;
                System.arraycopy(cArray, 0, cArrayArray, 0, importsCounter);
            }
            this.importsTable.put(type, imports);
        }
        return imports;
    }

    private boolean hasToRetrieveSourceRangesForLocalClass(char[] eltName) {
        if (eltName == null) {
            return false;
        }
        int length = eltName.length;
        int dollarIndex = CharOperation.indexOf('$', eltName, 0);
        while (dollarIndex != -1) {
            int nameStart = dollarIndex + 1;
            if (nameStart == length) {
                return false;
            }
            if (Character.isDigit(eltName[nameStart])) {
                return true;
            }
            dollarIndex = CharOperation.indexOf('$', eltName, nameStart);
        }
        return false;
    }

    public static class LocalVariableElementKey {
        String parent;
        String name;

        public LocalVariableElementKey(IJavaElement method, String name) {
            StringBuffer buffer = new StringBuffer();
            buffer.append(method.getParent().getHandleIdentifier()).append('#').append(method.getElementName()).append('(');
            if (method.getElementType() == 9) {
                String[] parameterTypes = ((IMethod)method).getParameterTypes();
                int i = 0;
                int max = parameterTypes.length;
                while (i < max) {
                    if (i > 0) {
                        buffer.append(',');
                    }
                    buffer.append(Signature.getSignatureSimpleName(parameterTypes[i]));
                    ++i;
                }
            }
            buffer.append(')');
            this.parent = String.valueOf(buffer);
            this.name = name;
        }

        public int hashCode() {
            int result = 1;
            result = 31 * result + (this.name == null ? 0 : this.name.hashCode());
            result = 31 * result + (this.parent == null ? 0 : this.parent.hashCode());
            return result;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            if (this.getClass() != obj.getClass()) {
                return false;
            }
            LocalVariableElementKey other = (LocalVariableElementKey)obj;
            if (this.name == null ? other.name != null : !this.name.equals(other.name)) {
                return false;
            }
            return !(this.parent == null ? other.parent != null : !this.parent.equals(other.parent));
        }

        public String toString() {
            StringBuffer buffer = new StringBuffer();
            buffer.append('(').append(this.parent).append('.').append(this.name).append(')');
            return String.valueOf(buffer);
        }
    }
}

