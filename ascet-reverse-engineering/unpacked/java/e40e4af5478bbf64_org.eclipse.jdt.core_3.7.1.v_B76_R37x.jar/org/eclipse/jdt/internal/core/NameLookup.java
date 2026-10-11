/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.IJavaElementRequestor;
import org.eclipse.jdt.internal.core.JavaElementRequestor;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.JavaProjectElementInfo;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.SingleTypeRequestor;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.util.HashtableOfArrayToObject;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class NameLookup
implements SuffixConstants {
    public static final int ACCEPT_CLASSES = 2;
    public static final int ACCEPT_INTERFACES = 4;
    public static final int ACCEPT_ENUMS = 8;
    public static final int ACCEPT_ANNOTATIONS = 16;
    public static final int ACCEPT_ALL = 30;
    public static boolean VERBOSE = false;
    private static final IType[] NO_TYPES = new IType[0];
    protected IPackageFragmentRoot[] packageFragmentRoots;
    protected HashtableOfArrayToObject packageFragments;
    protected Map rootToResolvedEntries;
    protected HashMap typesInWorkingCopies;
    public long timeSpentInSeekTypesInSourcePackage = 0L;
    public long timeSpentInSeekTypesInBinaryPackage = 0L;

    public NameLookup(IPackageFragmentRoot[] packageFragmentRoots, HashtableOfArrayToObject packageFragments, ICompilationUnit[] workingCopies, Map rootToResolvedEntries) {
        long start = -1L;
        if (VERBOSE) {
            Util.verbose(" BUILDING NameLoopkup");
            Util.verbose(" -> pkg roots size: " + (packageFragmentRoots == null ? 0 : packageFragmentRoots.length));
            Util.verbose(" -> pkgs size: " + (packageFragments == null ? 0 : packageFragments.size()));
            Util.verbose(" -> working copy size: " + (workingCopies == null ? 0 : workingCopies.length));
            start = System.currentTimeMillis();
        }
        this.packageFragmentRoots = packageFragmentRoots;
        if (workingCopies == null) {
            this.packageFragments = packageFragments;
        } else {
            try {
                this.packageFragments = (HashtableOfArrayToObject)packageFragments.clone();
            }
            catch (CloneNotSupportedException cloneNotSupportedException) {}
            this.typesInWorkingCopies = new HashMap();
            HashtableOfObjectToInt rootPositions = new HashtableOfObjectToInt();
            int i = 0;
            int length = packageFragmentRoots.length;
            while (i < length) {
                rootPositions.put(packageFragmentRoots[i], i);
                ++i;
            }
            i = 0;
            length = workingCopies.length;
            while (i < length) {
                ICompilationUnit workingCopy = workingCopies[i];
                PackageFragment pkg = (PackageFragment)workingCopy.getParent();
                IPackageFragmentRoot root = (IPackageFragmentRoot)pkg.getParent();
                int rootPosition = rootPositions.get(root);
                if (rootPosition != -1) {
                    HashMap<String, Object> typeMap = (HashMap<String, Object>)this.typesInWorkingCopies.get(pkg);
                    if (typeMap == null) {
                        typeMap = new HashMap<String, Object>();
                        this.typesInWorkingCopies.put(pkg, typeMap);
                    }
                    try {
                        IType[] types = workingCopy.getTypes();
                        int typeLength = types.length;
                        if (typeLength == 0) {
                            String typeName = Util.getNameWithoutJavaLikeExtension(workingCopy.getElementName());
                            typeMap.put(typeName, NO_TYPES);
                        } else {
                            int j = 0;
                            while (j < typeLength) {
                                IType type = types[j];
                                String typeName = type.getElementName();
                                Object existing = typeMap.get(typeName);
                                if (existing == null) {
                                    typeMap.put(typeName, type);
                                } else if (existing instanceof IType) {
                                    typeMap.put(typeName, new IType[]{(IType)existing, type});
                                } else {
                                    IType[] existingTypes = (IType[])existing;
                                    int existingTypeLength = existingTypes.length;
                                    IType[] iTypeArray = existingTypes;
                                    existingTypes = new IType[existingTypeLength + 1];
                                    System.arraycopy(iTypeArray, 0, existingTypes, 0, existingTypeLength);
                                    existingTypes[existingTypeLength] = type;
                                    typeMap.put(typeName, existingTypes);
                                }
                                ++j;
                            }
                        }
                    }
                    catch (JavaModelException javaModelException) {}
                    Object[] pkgName = pkg.names;
                    Object existing = this.packageFragments.get(pkgName);
                    if (existing == null || existing == JavaProjectElementInfo.NO_ROOTS) {
                        this.packageFragments.put(pkgName, root);
                        JavaProjectElementInfo.addSuperPackageNames((String[])pkgName, this.packageFragments);
                    } else if (existing instanceof PackageFragmentRoot) {
                        int exisitingPosition = rootPositions.get(existing);
                        if (rootPosition != exisitingPosition) {
                            IPackageFragmentRoot[] iPackageFragmentRootArray;
                            if (exisitingPosition < rootPosition) {
                                IPackageFragmentRoot[] iPackageFragmentRootArray2 = new IPackageFragmentRoot[2];
                                iPackageFragmentRootArray2[0] = (PackageFragmentRoot)existing;
                                iPackageFragmentRootArray = iPackageFragmentRootArray2;
                                iPackageFragmentRootArray2[1] = root;
                            } else {
                                IPackageFragmentRoot[] iPackageFragmentRootArray3 = new IPackageFragmentRoot[2];
                                iPackageFragmentRootArray3[0] = root;
                                iPackageFragmentRootArray = iPackageFragmentRootArray3;
                                iPackageFragmentRootArray3[1] = (PackageFragmentRoot)existing;
                            }
                            this.packageFragments.put(pkgName, iPackageFragmentRootArray);
                        }
                    } else {
                        IPackageFragmentRoot[] roots = (IPackageFragmentRoot[])existing;
                        int rootLength = roots.length;
                        int insertionIndex = 0;
                        int j = 0;
                        while (j < rootLength) {
                            int existingPosition = rootPositions.get(roots[j]);
                            if (rootPosition > existingPosition) {
                                insertionIndex = j;
                            } else {
                                if (rootPosition == existingPosition) {
                                    insertionIndex = -1;
                                    break;
                                }
                                if (rootPosition < existingPosition) break;
                            }
                            ++j;
                        }
                        if (insertionIndex != -1) {
                            IPackageFragmentRoot[] newRoots = new IPackageFragmentRoot[rootLength + 1];
                            System.arraycopy(roots, 0, newRoots, 0, insertionIndex);
                            newRoots[insertionIndex] = root;
                            System.arraycopy(roots, insertionIndex, newRoots, insertionIndex + 1, rootLength - insertionIndex);
                            this.packageFragments.put(pkgName, newRoots);
                        }
                    }
                }
                ++i;
            }
        }
        this.rootToResolvedEntries = rootToResolvedEntries;
        if (VERBOSE) {
            Util.verbose(" -> spent: " + (System.currentTimeMillis() - start) + "ms");
        }
    }

    protected boolean acceptType(IType type, int acceptFlags, boolean isSourceType) {
        if (acceptFlags == 0 || acceptFlags == 30) {
            return true;
        }
        try {
            int kind = isSourceType ? TypeDeclaration.kind(((SourceTypeElementInfo)((SourceType)type).getElementInfo()).getModifiers()) : TypeDeclaration.kind(((IBinaryType)((BinaryType)type).getElementInfo()).getModifiers());
            switch (kind) {
                case 1: {
                    return (acceptFlags & 2) != 0;
                }
                case 2: {
                    return (acceptFlags & 4) != 0;
                }
                case 3: {
                    return (acceptFlags & 8) != 0;
                }
            }
            return (acceptFlags & 0x10) != 0;
        }
        catch (JavaModelException javaModelException) {
            return false;
        }
    }

    private void findAllTypes(String prefix, boolean partialMatch, int acceptFlags, IJavaElementRequestor requestor) {
        int count = this.packageFragmentRoots.length;
        int i = 0;
        while (i < count) {
            block7: {
                if (requestor.isCanceled()) {
                    return;
                }
                IPackageFragmentRoot root = this.packageFragmentRoots[i];
                IJavaElement[] packages = null;
                try {
                    packages = root.getChildren();
                }
                catch (JavaModelException javaModelException) {
                    break block7;
                }
                if (packages != null) {
                    int j = 0;
                    int packageCount = packages.length;
                    while (j < packageCount) {
                        if (requestor.isCanceled()) {
                            return;
                        }
                        this.seekTypes(prefix, (IPackageFragment)packages[j], partialMatch, acceptFlags, requestor);
                        ++j;
                    }
                }
            }
            ++i;
        }
    }

    public ICompilationUnit findCompilationUnit(String qualifiedTypeName) {
        int pkgIndex;
        Object[] pkgName = CharOperation.NO_STRINGS;
        String cuName = qualifiedTypeName;
        int index = qualifiedTypeName.lastIndexOf(46);
        if (index != -1) {
            pkgName = Util.splitOn('.', qualifiedTypeName, 0, index);
            cuName = qualifiedTypeName.substring(index + 1);
        }
        if ((index = cuName.indexOf(36)) != -1) {
            cuName = cuName.substring(0, index);
        }
        if ((pkgIndex = this.packageFragments.getIndex(pkgName)) != -1) {
            Object value = this.packageFragments.valueTable[pkgIndex];
            pkgName = (String[])this.packageFragments.keyTable[pkgIndex];
            if (value instanceof PackageFragmentRoot) {
                return this.findCompilationUnit((String[])pkgName, cuName, (PackageFragmentRoot)value);
            }
            IPackageFragmentRoot[] roots = (IPackageFragmentRoot[])value;
            int i = 0;
            while (i < roots.length) {
                PackageFragmentRoot root = (PackageFragmentRoot)roots[i];
                ICompilationUnit cu = this.findCompilationUnit((String[])pkgName, cuName, root);
                if (cu != null) {
                    return cu;
                }
                ++i;
            }
        }
        return null;
    }

    private ICompilationUnit findCompilationUnit(String[] pkgName, String cuName, PackageFragmentRoot root) {
        if (!root.isArchive()) {
            PackageFragment pkg = root.getPackageFragment(pkgName);
            try {
                ICompilationUnit[] cus = pkg.getCompilationUnits();
                int j = 0;
                int length = cus.length;
                while (j < length) {
                    ICompilationUnit cu = cus[j];
                    if (Util.equalsIgnoreJavaLikeExtension(cu.getElementName(), cuName)) {
                        return cu;
                    }
                    ++j;
                }
            }
            catch (JavaModelException javaModelException) {}
        }
        return null;
    }

    /*
     * Enabled aggressive exception aggregation
     */
    public IPackageFragment findPackageFragment(IPath path) {
        if (!path.isAbsolute()) {
            throw new IllegalArgumentException(Messages.path_mustBeAbsolute);
        }
        IResource possibleFragment = ResourcesPlugin.getWorkspace().getRoot().findMember(path);
        if (possibleFragment == null) {
            int i = 0;
            while (i < this.packageFragmentRoots.length) {
                block22: {
                    IPath rootPath;
                    IPackageFragmentRoot root = this.packageFragmentRoots[i];
                    if (root.isExternal() && (rootPath = root.getPath()).isPrefixOf(path)) {
                        String name = path.toOSString();
                        name = name.substring(rootPath.toOSString().length() + 1, name.length());
                        name = name.replace(File.separatorChar, '.');
                        IJavaElement[] list = null;
                        try {
                            list = root.getChildren();
                        }
                        catch (JavaModelException javaModelException) {
                            break block22;
                        }
                        int elementCount = list.length;
                        int j = 0;
                        while (j < elementCount) {
                            IPackageFragment packageFragment = (IPackageFragment)list[j];
                            if (this.nameMatches(name, packageFragment, false)) {
                                return packageFragment;
                            }
                            ++j;
                        }
                    }
                }
                ++i;
            }
        } else {
            IJavaElement fromFactory = JavaCore.create(possibleFragment);
            if (fromFactory == null) {
                return null;
            }
            switch (fromFactory.getElementType()) {
                case 4: {
                    return (IPackageFragment)fromFactory;
                }
                case 2: {
                    JavaProject project = (JavaProject)fromFactory;
                    try {
                        IClasspathEntry entry = project.getClasspathEntryFor(path);
                        if (entry != null) {
                            IPackageFragmentRoot root = project.getPackageFragmentRoot(project.getResource());
                            Object defaultPkgRoot = this.packageFragments.get(CharOperation.NO_STRINGS);
                            if (defaultPkgRoot == null) {
                                return null;
                            }
                            if (defaultPkgRoot instanceof PackageFragmentRoot && defaultPkgRoot.equals(root)) {
                                return ((PackageFragmentRoot)root).getPackageFragment(CharOperation.NO_STRINGS);
                            }
                            IPackageFragmentRoot[] roots = (IPackageFragmentRoot[])defaultPkgRoot;
                            int i = 0;
                            while (i < roots.length) {
                                if (roots[i].equals(root)) {
                                    return ((PackageFragmentRoot)root).getPackageFragment(CharOperation.NO_STRINGS);
                                }
                                ++i;
                            }
                        }
                    }
                    catch (JavaModelException javaModelException) {
                        return null;
                    }
                    return null;
                }
                case 3: {
                    return ((PackageFragmentRoot)fromFactory).getPackageFragment(CharOperation.NO_STRINGS);
                }
            }
        }
        return null;
    }

    public IPackageFragment[] findPackageFragments(String name, boolean partialMatch) {
        return this.findPackageFragments(name, partialMatch, false);
    }

    public IPackageFragment[] findPackageFragments(String name, boolean partialMatch, boolean patternMatch) {
        boolean hasPatternChars;
        boolean isStarPattern = name.equals("*");
        boolean bl = hasPatternChars = isStarPattern || patternMatch && (name.indexOf(42) >= 0 || name.indexOf(63) >= 0);
        if (partialMatch || hasPatternChars) {
            String[] splittedName = Util.splitOn('.', name, 0, name.length());
            IPackageFragment[] oneFragment = null;
            ArrayList<PackageFragment> pkgs = null;
            char[] lowercaseName = hasPatternChars && !isStarPattern ? name.toLowerCase().toCharArray() : null;
            Object[][] keys = this.packageFragments.keyTable;
            int i = 0;
            int length = keys.length;
            while (i < length) {
                String[] pkgName = (String[])keys[i];
                if (pkgName != null) {
                    boolean match;
                    boolean bl2 = !isStarPattern && (hasPatternChars ? !CharOperation.match(lowercaseName, Util.concatCompoundNameToCharArray(pkgName), false) : !Util.startsWithIgnoreCase(pkgName, splittedName, partialMatch)) ? false : (match = true);
                    if (match) {
                        Object value = this.packageFragments.valueTable[i];
                        if (value instanceof PackageFragmentRoot) {
                            PackageFragment pkg = ((PackageFragmentRoot)value).getPackageFragment(pkgName);
                            if (oneFragment == null) {
                                oneFragment = new IPackageFragment[]{pkg};
                            } else {
                                if (pkgs == null) {
                                    pkgs = new ArrayList<PackageFragment>();
                                    pkgs.add((PackageFragment)oneFragment[0]);
                                }
                                pkgs.add(pkg);
                            }
                        } else {
                            IPackageFragmentRoot[] roots = (IPackageFragmentRoot[])value;
                            int j = 0;
                            int length2 = roots.length;
                            while (j < length2) {
                                PackageFragmentRoot root = (PackageFragmentRoot)roots[j];
                                PackageFragment pkg = root.getPackageFragment(pkgName);
                                if (oneFragment == null) {
                                    oneFragment = new IPackageFragment[]{pkg};
                                } else {
                                    if (pkgs == null) {
                                        pkgs = new ArrayList();
                                        pkgs.add((PackageFragment)oneFragment[0]);
                                    }
                                    pkgs.add(pkg);
                                }
                                ++j;
                            }
                        }
                    }
                }
                ++i;
            }
            if (pkgs == null) {
                return oneFragment;
            }
            int resultLength = pkgs.size();
            IPackageFragment[] result = new IPackageFragment[resultLength];
            pkgs.toArray(result);
            return result;
        }
        Object[] splittedName = Util.splitOn('.', name, 0, name.length());
        int pkgIndex = this.packageFragments.getIndex(splittedName);
        if (pkgIndex == -1) {
            return null;
        }
        Object value = this.packageFragments.valueTable[pkgIndex];
        String[] pkgName = (String[])this.packageFragments.keyTable[pkgIndex];
        if (value instanceof PackageFragmentRoot) {
            return new IPackageFragment[]{((PackageFragmentRoot)value).getPackageFragment(pkgName)};
        }
        IPackageFragmentRoot[] roots = (IPackageFragmentRoot[])value;
        IPackageFragment[] result = new IPackageFragment[roots.length];
        int i = 0;
        while (i < roots.length) {
            result[i] = ((PackageFragmentRoot)roots[i]).getPackageFragment(pkgName);
            ++i;
        }
        return result;
    }

    private IType findSecondaryType(String packageName, String typeName, IJavaProject project, boolean waitForIndexes, IProgressMonitor monitor) {
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        try {
            IType type;
            Map types;
            IJavaProject javaProject = project;
            Map secondaryTypePaths = manager.secondaryTypes(javaProject, waitForIndexes, monitor);
            if (secondaryTypePaths.size() > 0 && (types = (Map)secondaryTypePaths.get(packageName == null ? "" : packageName)) != null && types.size() > 0 && (type = (IType)types.get(typeName)) != null) {
                if (JavaModelManager.VERBOSE) {
                    Util.verbose("NameLookup FIND SECONDARY TYPES:");
                    Util.verbose(" -> pkg name: " + packageName);
                    Util.verbose(" -> type name: " + typeName);
                    Util.verbose(" -> project: " + project.getElementName());
                    Util.verbose(" -> type: " + type.getElementName());
                }
                return type;
            }
        }
        catch (JavaModelException javaModelException) {}
        return null;
    }

    public Answer findType(String typeName, String packageName, boolean partialMatch, int acceptFlags, boolean checkRestrictions) {
        return this.findType(typeName, packageName, partialMatch, acceptFlags, true, false, checkRestrictions, null);
    }

    public Answer findType(String typeName, String packageName, boolean partialMatch, int acceptFlags, boolean considerSecondaryTypes, boolean waitForIndexes, boolean checkRestrictions, IProgressMonitor monitor) {
        if (packageName == null || packageName.length() == 0) {
            packageName = "";
        } else if (typeName.length() > 0 && ScannerHelper.isLowerCase(typeName.charAt(0)) && this.findPackageFragments(String.valueOf(packageName) + "." + typeName, false) != null) {
            return null;
        }
        JavaElementRequestor elementRequestor = new JavaElementRequestor();
        this.seekPackageFragments(packageName, false, elementRequestor);
        IPackageFragment[] packages = elementRequestor.getPackageFragments();
        IType type = null;
        int length = packages.length;
        HashSet<IJavaProject> projects = null;
        IJavaProject javaProject = null;
        Answer suggestedAnswer = null;
        int i = 0;
        while (i < length) {
            type = this.findType(typeName, packages[i], partialMatch, acceptFlags);
            if (type != null) {
                Answer answer;
                AccessRestriction accessRestriction = null;
                if (checkRestrictions) {
                    accessRestriction = this.getViolatedRestriction(typeName, packageName, type, accessRestriction);
                }
                if (!(answer = new Answer(type, accessRestriction)).ignoreIfBetter()) {
                    if (answer.isBetter(suggestedAnswer)) {
                        return answer;
                    }
                } else if (answer.isBetter(suggestedAnswer)) {
                    suggestedAnswer = answer;
                }
            } else if (suggestedAnswer == null && considerSecondaryTypes) {
                if (javaProject == null) {
                    javaProject = packages[i].getJavaProject();
                } else if (projects == null) {
                    if (!javaProject.equals(packages[i].getJavaProject())) {
                        projects = new HashSet<IJavaProject>(3);
                        projects.add(javaProject);
                        projects.add(packages[i].getJavaProject());
                    }
                } else {
                    projects.add(packages[i].getJavaProject());
                }
            }
            ++i;
        }
        if (suggestedAnswer != null) {
            return suggestedAnswer;
        }
        if (considerSecondaryTypes && javaProject != null) {
            if (projects == null) {
                type = this.findSecondaryType(packageName, typeName, javaProject, waitForIndexes, monitor);
            } else {
                Iterator allProjects = projects.iterator();
                while (type == null && allProjects.hasNext()) {
                    type = this.findSecondaryType(packageName, typeName, (IJavaProject)allProjects.next(), waitForIndexes, monitor);
                }
            }
        }
        return type == null ? null : new Answer(type, null);
    }

    private AccessRestriction getViolatedRestriction(String typeName, String packageName, IType type, AccessRestriction accessRestriction) {
        AccessRuleSet accessRuleSet;
        PackageFragmentRoot root = (PackageFragmentRoot)type.getAncestor(3);
        ClasspathEntry entry = (ClasspathEntry)this.rootToResolvedEntries.get(root);
        if (entry != null && (accessRuleSet = entry.getAccessRuleSet()) != null) {
            char[][] packageChars = CharOperation.splitOn('.', packageName.toCharArray());
            char[] typeChars = typeName.toCharArray();
            accessRestriction = accessRuleSet.getViolatedRestriction(CharOperation.concatWith(packageChars, typeChars, '/'));
        }
        return accessRestriction;
    }

    public IType findType(String name, IPackageFragment pkg, boolean partialMatch, int acceptFlags, boolean considerSecondaryTypes) {
        IType type = this.findType(name, pkg, partialMatch, acceptFlags);
        if (type == null && considerSecondaryTypes) {
            type = this.findSecondaryType(pkg.getElementName(), name, pkg.getJavaProject(), false, null);
        }
        return type;
    }

    public IType findType(String name, IPackageFragment pkg, boolean partialMatch, int acceptFlags) {
        if (pkg == null) {
            return null;
        }
        SingleTypeRequestor typeRequestor = new SingleTypeRequestor();
        this.seekTypes(name, pkg, partialMatch, acceptFlags, typeRequestor);
        return typeRequestor.getType();
    }

    public IType findType(String name, boolean partialMatch, int acceptFlags) {
        Answer answer = this.findType(name, partialMatch, acceptFlags, false);
        return answer == null ? null : answer.type;
    }

    public Answer findType(String name, boolean partialMatch, int acceptFlags, boolean checkRestrictions) {
        return this.findType(name, partialMatch, acceptFlags, true, true, checkRestrictions, null);
    }

    public Answer findType(String name, boolean partialMatch, int acceptFlags, boolean considerSecondaryTypes, boolean waitForIndexes, boolean checkRestrictions, IProgressMonitor monitor) {
        int index = name.lastIndexOf(46);
        String className = null;
        String packageName = null;
        if (index == -1) {
            packageName = "";
            className = name;
        } else {
            packageName = name.substring(0, index);
            className = name.substring(index + 1);
        }
        return this.findType(className, packageName, partialMatch, acceptFlags, considerSecondaryTypes, waitForIndexes, checkRestrictions, monitor);
    }

    private IType getMemberType(IType type, String name, int dot) {
        while (dot != -1) {
            int start;
            String typeName = name.substring(start, (dot = name.indexOf(46, start = dot + 1)) == -1 ? name.length() : dot);
            type = type.getType(typeName);
        }
        return type;
    }

    public boolean isPackage(String[] pkgName) {
        return this.packageFragments.get(pkgName) != null;
    }

    protected boolean nameMatches(String searchName, IJavaElement element, boolean partialMatch) {
        if (partialMatch) {
            return element.getElementName().toLowerCase().startsWith(searchName);
        }
        return element.getElementName().equals(searchName);
    }

    protected boolean nameMatches(String searchName, ICompilationUnit cu, boolean partialMatch) {
        if (partialMatch) {
            return cu.getElementName().toLowerCase().startsWith(searchName);
        }
        return Util.equalsIgnoreJavaLikeExtension(cu.getElementName(), searchName);
    }

    public void seekPackageFragments(String name, boolean partialMatch, IJavaElementRequestor requestor) {
        block10: {
            String[] pkgName;
            Object value;
            block11: {
                block9: {
                    if (!partialMatch) break block9;
                    String[] splittedName = Util.splitOn('.', name, 0, name.length());
                    Object[][] keys = this.packageFragments.keyTable;
                    int i = 0;
                    int length = keys.length;
                    while (i < length) {
                        if (requestor.isCanceled()) {
                            return;
                        }
                        String[] pkgName2 = (String[])keys[i];
                        if (pkgName2 != null && Util.startsWithIgnoreCase(pkgName2, splittedName, partialMatch)) {
                            Object value2 = this.packageFragments.valueTable[i];
                            if (value2 instanceof PackageFragmentRoot) {
                                PackageFragmentRoot root = (PackageFragmentRoot)value2;
                                requestor.acceptPackageFragment(root.getPackageFragment(pkgName2));
                            } else {
                                IPackageFragmentRoot[] roots = (IPackageFragmentRoot[])value2;
                                int j = 0;
                                int length2 = roots.length;
                                while (j < length2) {
                                    if (requestor.isCanceled()) {
                                        return;
                                    }
                                    PackageFragmentRoot root = (PackageFragmentRoot)roots[j];
                                    requestor.acceptPackageFragment(root.getPackageFragment(pkgName2));
                                    ++j;
                                }
                            }
                        }
                        ++i;
                    }
                    break block10;
                }
                Object[] splittedName = Util.splitOn('.', name, 0, name.length());
                int pkgIndex = this.packageFragments.getIndex(splittedName);
                if (pkgIndex == -1) break block10;
                value = this.packageFragments.valueTable[pkgIndex];
                pkgName = (String[])this.packageFragments.keyTable[pkgIndex];
                if (!(value instanceof PackageFragmentRoot)) break block11;
                requestor.acceptPackageFragment(((PackageFragmentRoot)value).getPackageFragment(pkgName));
                break block10;
            }
            IPackageFragmentRoot[] roots = (IPackageFragmentRoot[])value;
            if (roots == null) break block10;
            int i = 0;
            int length = roots.length;
            while (i < length) {
                if (requestor.isCanceled()) {
                    return;
                }
                PackageFragmentRoot root = (PackageFragmentRoot)roots[i];
                requestor.acceptPackageFragment(root.getPackageFragment(pkgName));
                ++i;
            }
        }
    }

    public void seekTypes(String name, IPackageFragment pkg, boolean partialMatch, int acceptFlags, IJavaElementRequestor requestor) {
        String matchName;
        String string = matchName = partialMatch ? name.toLowerCase() : name;
        if (pkg == null) {
            this.findAllTypes(matchName, partialMatch, acceptFlags, requestor);
            return;
        }
        PackageFragmentRoot root = (PackageFragmentRoot)pkg.getParent();
        try {
            int firstDot = -1;
            String topLevelTypeName = null;
            int packageFlavor = root.internalKind();
            if (this.typesInWorkingCopies != null || packageFlavor == 1) {
                firstDot = matchName.indexOf(46);
                if (!partialMatch) {
                    String string2 = topLevelTypeName = firstDot == -1 ? matchName : matchName.substring(0, firstDot);
                }
            }
            if (this.typesInWorkingCopies != null && this.seekTypesInWorkingCopies(matchName, pkg, firstDot, partialMatch, topLevelTypeName, acceptFlags, requestor)) {
                return;
            }
            switch (packageFlavor) {
                case 2: {
                    matchName = matchName.replace('.', '$');
                    this.seekTypesInBinaryPackage(matchName, pkg, partialMatch, acceptFlags, requestor);
                    break;
                }
                case 1: {
                    this.seekTypesInSourcePackage(matchName, pkg, firstDot, partialMatch, topLevelTypeName, acceptFlags, requestor);
                    break;
                }
                default: {
                    return;
                }
            }
        }
        catch (JavaModelException javaModelException) {
            return;
        }
    }

    protected void seekTypesInBinaryPackage(String name, IPackageFragment pkg, boolean partialMatch, int acceptFlags, IJavaElementRequestor requestor) {
        block16: {
            long start = -1L;
            if (VERBOSE) {
                start = System.currentTimeMillis();
            }
            try {
                if (!partialMatch) {
                    IType type;
                    if (requestor.isCanceled()) {
                        return;
                    }
                    ClassFile classFile = new ClassFile((PackageFragment)pkg, name);
                    if (classFile.existsUsingJarTypeCache() && this.acceptType(type = classFile.getType(), acceptFlags, false)) {
                        requestor.acceptType(type);
                    }
                    break block16;
                }
                IJavaElement[] classFiles = null;
                try {
                    classFiles = pkg.getChildren();
                }
                catch (JavaModelException javaModelException) {
                    if (VERBOSE) {
                        this.timeSpentInSeekTypesInBinaryPackage += System.currentTimeMillis() - start;
                    }
                    return;
                }
                int length = classFiles.length;
                String unqualifiedName = name;
                int index = name.lastIndexOf(36);
                if (index != -1) {
                    unqualifiedName = Util.localTypeName(name, index, name.length());
                }
                int matchLength = name.length();
                int i = 0;
                if (i < length) {
                }
            }
            finally {
                if (VERBOSE) {
                    this.timeSpentInSeekTypesInBinaryPackage += System.currentTimeMillis() - start;
                }
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected void seekTypesInSourcePackage(String name, IPackageFragment pkg, int firstDot, boolean partialMatch, String topLevelTypeName, int acceptFlags, IJavaElementRequestor requestor) {
        long start = -1L;
        if (VERBOSE) {
            start = System.currentTimeMillis();
        }
        try {
            if (!partialMatch) {
                try {
                    IJavaElement[] compilationUnits = pkg.getChildren();
                    int i = 0;
                    int length = compilationUnits.length;
                    if (i >= length) return;
                }
                catch (JavaModelException javaModelException) {
                    return;
                }
                {
                }
            }
            try {
                String cuPrefix = firstDot == -1 ? name : name.substring(0, firstDot);
                IJavaElement[] compilationUnits = pkg.getChildren();
                int i = 0;
                int length = compilationUnits.length;
                if (i >= length) return;
            }
            catch (JavaModelException javaModelException) {
                return;
            }
            {
            }
        }
        finally {
            if (VERBOSE) {
                this.timeSpentInSeekTypesInSourcePackage += System.currentTimeMillis() - start;
            }
        }
    }

    protected boolean seekTypesInType(String prefix, int firstDot, IType type, IJavaElementRequestor requestor, int acceptFlags) {
        IType[] types = null;
        try {
            types = type.getTypes();
        }
        catch (JavaModelException javaModelException) {
            return false;
        }
        int length = types.length;
        if (length == 0) {
            return false;
        }
        String memberPrefix = prefix;
        boolean isMemberTypePrefix = false;
        if (firstDot != -1) {
            memberPrefix = prefix.substring(0, firstDot);
            isMemberTypePrefix = true;
        }
        int i = 0;
        while (i < length) {
            if (requestor.isCanceled()) {
                return false;
            }
            IType memberType = types[i];
            if (memberType.getElementName().toLowerCase().startsWith(memberPrefix)) {
                if (isMemberTypePrefix) {
                    String subPrefix = prefix.substring(firstDot + 1, prefix.length());
                    return this.seekTypesInType(subPrefix, subPrefix.indexOf(46), memberType, requestor, acceptFlags);
                }
                if (this.acceptType(memberType, acceptFlags, true)) {
                    requestor.acceptMemberType(memberType);
                    return true;
                }
            }
            ++i;
        }
        return false;
    }

    protected boolean seekTypesInTopLevelType(String prefix, int firstDot, IType topLevelType, IJavaElementRequestor requestor, int acceptFlags) {
        if (!topLevelType.getElementName().toLowerCase().startsWith(prefix)) {
            return false;
        }
        if (firstDot == -1) {
            if (this.acceptType(topLevelType, acceptFlags, true)) {
                requestor.acceptType(topLevelType);
                return true;
            }
        } else {
            return this.seekTypesInType(prefix, firstDot, topLevelType, requestor, acceptFlags);
        }
        return false;
    }

    protected boolean seekTypesInWorkingCopies(String name, IPackageFragment pkg, int firstDot, boolean partialMatch, String topLevelTypeName, int acceptFlags, IJavaElementRequestor requestor) {
        block12: {
            block11: {
                Object object;
                block13: {
                    if (partialMatch) break block11;
                    HashMap typeMap = this.typesInWorkingCopies == null ? null : this.typesInWorkingCopies.get(pkg);
                    if (typeMap == null) break block12;
                    object = typeMap.get(topLevelTypeName);
                    if (!(object instanceof IType)) break block13;
                    IType type = this.getMemberType((IType)object, name, firstDot);
                    if (this.acceptType(type, acceptFlags, true)) {
                        requestor.acceptType(type);
                        return true;
                    }
                    break block12;
                }
                if (!(object instanceof IType[])) break block12;
                if (object == NO_TYPES) {
                    String packageInfoName = String.valueOf(TypeConstants.PACKAGE_INFO_NAME);
                    if (packageInfoName.equals(name)) {
                        requestor.acceptType(pkg.getCompilationUnit(packageInfoName.concat(".java")).getType(name));
                    }
                    return true;
                }
                IType[] topLevelTypes = (IType[])object;
                int i = 0;
                int length = topLevelTypes.length;
                while (i < length) {
                    if (requestor.isCanceled()) {
                        return false;
                    }
                    IType type = this.getMemberType(topLevelTypes[i], name, firstDot);
                    if (this.acceptType(type, acceptFlags, true)) {
                        requestor.acceptType(type);
                        return true;
                    }
                    ++i;
                }
                break block12;
            }
            HashMap typeMap = this.typesInWorkingCopies == null ? null : this.typesInWorkingCopies.get(pkg);
            if (typeMap != null) {
                Iterator iterator = typeMap.values().iterator();
                while (iterator.hasNext()) {
                    if (requestor.isCanceled()) {
                        return false;
                    }
                    Object object = iterator.next();
                    if (object instanceof IType) {
                        this.seekTypesInTopLevelType(name, firstDot, (IType)object, requestor, acceptFlags);
                        continue;
                    }
                    if (!(object instanceof IType[])) continue;
                    IType[] topLevelTypes = (IType[])object;
                    int i = 0;
                    int length = topLevelTypes.length;
                    while (i < length) {
                        this.seekTypesInTopLevelType(name, firstDot, topLevelTypes[i], requestor, acceptFlags);
                        ++i;
                    }
                }
            }
        }
        return false;
    }

    public static class Answer {
        public IType type;
        AccessRestriction restriction;

        Answer(IType type, AccessRestriction restriction) {
            this.type = type;
            this.restriction = restriction;
        }

        public boolean ignoreIfBetter() {
            return this.restriction != null && this.restriction.ignoreIfBetter();
        }

        public boolean isBetter(Answer otherAnswer) {
            if (otherAnswer == null) {
                return true;
            }
            if (this.restriction == null) {
                return true;
            }
            return otherAnswer.restriction != null && this.restriction.getProblemId() < otherAnswer.restriction.getProblemId();
        }
    }
}

