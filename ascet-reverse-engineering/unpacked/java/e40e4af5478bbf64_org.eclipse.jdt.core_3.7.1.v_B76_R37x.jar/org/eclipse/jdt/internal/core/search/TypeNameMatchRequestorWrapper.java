/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core.search;

import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.TypeNameMatchRequestor;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.search.AbstractJavaSearchScope;
import org.eclipse.jdt.internal.core.search.HierarchyScope;
import org.eclipse.jdt.internal.core.search.IRestrictedAccessTypeRequestor;
import org.eclipse.jdt.internal.core.search.JavaSearchTypeNameMatch;
import org.eclipse.jdt.internal.core.util.HandleFactory;
import org.eclipse.jdt.internal.core.util.HashtableOfArrayToObject;

public class TypeNameMatchRequestorWrapper
implements IRestrictedAccessTypeRequestor {
    TypeNameMatchRequestor requestor;
    private IJavaSearchScope scope;
    private HandleFactory handleFactory;
    private String lastPkgFragmentRootPath;
    private IPackageFragmentRoot lastPkgFragmentRoot;
    private HashtableOfArrayToObject packageHandles;
    private Object lastProject;
    private long complianceValue;

    public TypeNameMatchRequestorWrapper(TypeNameMatchRequestor requestor, IJavaSearchScope scope) {
        this.requestor = requestor;
        this.scope = scope;
        if (!(scope instanceof AbstractJavaSearchScope)) {
            this.handleFactory = new HandleFactory();
        }
    }

    public void acceptType(int modifiers, char[] packageName, char[] simpleTypeName, char[][] enclosingTypeNames, String path, AccessRestriction access) {
        try {
            IType type = null;
            if (this.handleFactory != null) {
                Openable openable = this.handleFactory.createOpenable(path, this.scope);
                if (openable == null) {
                    return;
                }
                switch (openable.getElementType()) {
                    case 5: {
                        ICompilationUnit cu = (ICompilationUnit)((Object)openable);
                        if (enclosingTypeNames != null && enclosingTypeNames.length > 0) {
                            type = cu.getType(new String(enclosingTypeNames[0]));
                            int j = 1;
                            int l = enclosingTypeNames.length;
                            while (j < l) {
                                type = type.getType(new String(enclosingTypeNames[j]));
                                ++j;
                            }
                            type = type.getType(new String(simpleTypeName));
                            break;
                        }
                        type = cu.getType(new String(simpleTypeName));
                        break;
                    }
                    case 6: {
                        type = ((IClassFile)((Object)openable)).getType();
                    }
                }
            } else {
                int separatorIndex = path.indexOf("|");
                IType iType = type = separatorIndex == -1 ? this.createTypeFromPath(path, new String(simpleTypeName), enclosingTypeNames) : this.createTypeFromJar(path, separatorIndex);
            }
            if (type != null && (!(this.scope instanceof HierarchyScope) || ((HierarchyScope)this.scope).enclosesFineGrained(type))) {
                JavaSearchTypeNameMatch match = new JavaSearchTypeNameMatch(type, modifiers);
                if (access != null) {
                    switch (access.getProblemId()) {
                        case 0x1000133: {
                            match.setAccessibility(1);
                            break;
                        }
                        case 0x1000118: {
                            match.setAccessibility(2);
                        }
                    }
                }
                this.requestor.acceptTypeNameMatch(match);
            }
        }
        catch (JavaModelException javaModelException) {}
    }

    private IType createTypeFromJar(String resourcePath, int separatorIndex) throws JavaModelException {
        Object[] pkgName;
        String classFilePath;
        String[] simpleNames;
        int length;
        if (this.lastPkgFragmentRootPath == null || this.lastPkgFragmentRootPath.length() > resourcePath.length() || !resourcePath.startsWith(this.lastPkgFragmentRootPath)) {
            String jarPath = resourcePath.substring(0, separatorIndex);
            IPackageFragmentRoot root = ((AbstractJavaSearchScope)this.scope).packageFragmentRoot(resourcePath, separatorIndex, jarPath);
            if (root == null) {
                return null;
            }
            this.lastPkgFragmentRootPath = jarPath;
            this.lastPkgFragmentRoot = root;
            this.packageHandles = new HashtableOfArrayToObject(5);
        }
        if ((length = (simpleNames = new Path(classFilePath = resourcePath.substring(separatorIndex + 1)).segments()).length - 1) > 0) {
            pkgName = new String[length];
            System.arraycopy(simpleNames, 0, pkgName, 0, length);
        } else {
            pkgName = CharOperation.NO_STRINGS;
        }
        IPackageFragment pkgFragment = (IPackageFragment)this.packageHandles.get(pkgName);
        if (pkgFragment == null) {
            pkgFragment = ((PackageFragmentRoot)this.lastPkgFragmentRoot).getPackageFragment((String[])pkgName);
            if (length == 5 && ((String)pkgName[4]).equals("enum")) {
                IJavaProject proj = (IJavaProject)pkgFragment.getAncestor(2);
                if (!proj.equals(this.lastProject)) {
                    String complianceStr = proj.getOption("org.eclipse.jdt.core.compiler.source", true);
                    this.complianceValue = CompilerOptions.versionToJdkLevel(complianceStr);
                    this.lastProject = proj;
                }
                if (this.complianceValue >= 0x310000L) {
                    return null;
                }
            }
            this.packageHandles.put(pkgName, pkgFragment);
        }
        return pkgFragment.getClassFile(simpleNames[length]).getType();
    }

    private IType createTypeFromPath(String resourcePath, String simpleTypeName, char[][] enclosingTypeNames) throws JavaModelException {
        String simpleName;
        Object[] pkgName;
        String[] simpleNames;
        int length;
        int rootPathLength = -1;
        if (this.lastPkgFragmentRootPath == null || !resourcePath.startsWith(this.lastPkgFragmentRootPath) || (rootPathLength = this.lastPkgFragmentRootPath.length()) <= 0 || resourcePath.charAt(rootPathLength) != '/') {
            PackageFragmentRoot root = (PackageFragmentRoot)((AbstractJavaSearchScope)this.scope).packageFragmentRoot(resourcePath, -1, null);
            if (root == null) {
                return null;
            }
            this.lastPkgFragmentRoot = root;
            this.lastPkgFragmentRootPath = root.internalPath().toString();
            this.packageHandles = new HashtableOfArrayToObject(5);
        }
        if ((length = (simpleNames = new Path(resourcePath = resourcePath.substring(this.lastPkgFragmentRootPath.length() + 1)).segments()).length - 1) > 0) {
            pkgName = new String[length];
            System.arraycopy(simpleNames, 0, pkgName, 0, length);
        } else {
            pkgName = CharOperation.NO_STRINGS;
        }
        IPackageFragment pkgFragment = (IPackageFragment)this.packageHandles.get(pkgName);
        if (pkgFragment == null) {
            pkgFragment = ((PackageFragmentRoot)this.lastPkgFragmentRoot).getPackageFragment((String[])pkgName);
            this.packageHandles.put(pkgName, pkgFragment);
        }
        if (org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(simpleName = simpleNames[length])) {
            IType type;
            ICompilationUnit unit = pkgFragment.getCompilationUnit(simpleName);
            int etnLength = enclosingTypeNames == null ? 0 : enclosingTypeNames.length;
            IType iType = type = etnLength == 0 ? unit.getType(simpleTypeName) : unit.getType(new String(enclosingTypeNames[0]));
            if (etnLength > 0) {
                int i = 1;
                while (i < etnLength) {
                    type = type.getType(new String(enclosingTypeNames[i]));
                    ++i;
                }
                type = type.getType(simpleTypeName);
            }
            return type;
        }
        if (Util.isClassFileName(simpleName)) {
            IClassFile classFile = pkgFragment.getClassFile(simpleName);
            return classFile.getType();
        }
        return null;
    }
}

