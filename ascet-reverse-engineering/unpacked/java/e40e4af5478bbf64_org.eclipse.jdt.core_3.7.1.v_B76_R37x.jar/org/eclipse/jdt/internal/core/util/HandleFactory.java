/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core.util;

import java.util.HashMap;
import java.util.HashSet;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.SourceRefElement;
import org.eclipse.jdt.internal.core.search.AbstractJavaSearchScope;
import org.eclipse.jdt.internal.core.util.HashtableOfArrayToObject;
import org.eclipse.jdt.internal.core.util.Util;

public class HandleFactory {
    private String lastPkgFragmentRootPath;
    private PackageFragmentRoot lastPkgFragmentRoot;
    private HashtableOfArrayToObject packageHandles;
    private JavaModel javaModel = JavaModelManager.getJavaModelManager().getJavaModel();

    public Openable createOpenable(String resourcePath, IJavaSearchScope scope) {
        String simpleName;
        Object[] pkgName;
        String[] simpleNames;
        int length;
        int separatorIndex = resourcePath.indexOf("|");
        if (separatorIndex > -1) {
            Object[] pkgName2;
            String classFilePath;
            String[] simpleNames2;
            int length2;
            int rootPathLength;
            if (this.lastPkgFragmentRootPath == null || (rootPathLength = this.lastPkgFragmentRootPath.length()) != resourcePath.length() || !resourcePath.regionMatches(0, this.lastPkgFragmentRootPath, 0, rootPathLength)) {
                String jarPath = resourcePath.substring(0, separatorIndex);
                PackageFragmentRoot root = this.getJarPkgFragmentRoot(resourcePath, separatorIndex, jarPath, scope);
                if (root == null) {
                    return null;
                }
                this.lastPkgFragmentRootPath = jarPath;
                this.lastPkgFragmentRoot = root;
                this.packageHandles = new HashtableOfArrayToObject(5);
            }
            if ((length2 = (simpleNames2 = new Path(classFilePath = resourcePath.substring(separatorIndex + 1)).segments()).length - 1) > 0) {
                pkgName2 = new String[length2];
                System.arraycopy(simpleNames2, 0, pkgName2, 0, length2);
            } else {
                pkgName2 = CharOperation.NO_STRINGS;
            }
            IPackageFragment pkgFragment = (IPackageFragment)this.packageHandles.get(pkgName2);
            if (pkgFragment == null) {
                pkgFragment = this.lastPkgFragmentRoot.getPackageFragment((String[])pkgName2);
                this.packageHandles.put(pkgName2, pkgFragment);
            }
            IClassFile classFile = pkgFragment.getClassFile(simpleNames2[length2]);
            return (Openable)((Object)classFile);
        }
        int rootPathLength = -1;
        if (this.lastPkgFragmentRootPath == null || !resourcePath.startsWith(this.lastPkgFragmentRootPath) || org.eclipse.jdt.internal.compiler.util.Util.isExcluded(resourcePath.toCharArray(), this.lastPkgFragmentRoot.fullInclusionPatternChars(), this.lastPkgFragmentRoot.fullExclusionPatternChars(), false) || (rootPathLength = this.lastPkgFragmentRootPath.length()) <= 0 || resourcePath.charAt(rootPathLength) != '/') {
            PackageFragmentRoot root = this.getPkgFragmentRoot(resourcePath);
            if (root == null) {
                return null;
            }
            this.lastPkgFragmentRoot = root;
            this.lastPkgFragmentRootPath = this.lastPkgFragmentRoot.internalPath().toString();
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
            pkgFragment = this.lastPkgFragmentRoot.getPackageFragment((String[])pkgName);
            this.packageHandles.put(pkgName, pkgFragment);
        }
        if (Util.isJavaLikeFileName(simpleName = simpleNames[length])) {
            ICompilationUnit unit = pkgFragment.getCompilationUnit(simpleName);
            return (Openable)((Object)unit);
        }
        if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(simpleName)) {
            IClassFile classFile = pkgFragment.getClassFile(simpleName);
            return (Openable)((Object)classFile);
        }
        return null;
    }

    public IJavaElement createElement(ClassScope scope, ICompilationUnit unit, HashSet existingElements, HashMap knownScopes) {
        return this.createElement(scope, scope.referenceContext.sourceStart, unit, existingElements, knownScopes);
    }

    private IJavaElement createElement(Scope scope, int elementPosition, ICompilationUnit unit, HashSet existingElements, HashMap knownScopes) {
        IJavaElement newElement = (IJavaElement)knownScopes.get(scope);
        if (newElement != null) {
            return newElement;
        }
        block0 : switch (scope.kind) {
            case 4: {
                newElement = unit;
                break;
            }
            case 3: {
                IJavaElement parentElement = this.createElement(scope.parent, elementPosition, unit, existingElements, knownScopes);
                switch (parentElement.getElementType()) {
                    case 5: {
                        newElement = ((ICompilationUnit)parentElement).getType(new String(scope.enclosingSourceType().sourceName));
                        break;
                    }
                    case 7: {
                        newElement = ((IType)parentElement).getType(new String(scope.enclosingSourceType().sourceName));
                        break;
                    }
                    case 8: 
                    case 9: 
                    case 10: {
                        IMember member = (IMember)parentElement;
                        if (member.isBinary()) {
                            return null;
                        }
                        newElement = member.getType(new String(scope.enclosingSourceType().sourceName), 1);
                        if (newElement == null) break;
                        while (!existingElements.add(newElement)) {
                            ++((SourceRefElement)newElement).occurrenceCount;
                        }
                        break;
                    }
                }
                if (newElement == null) break;
                knownScopes.put(scope, newElement);
                break;
            }
            case 2: {
                IType parentType = (IType)this.createElement(scope.parent, elementPosition, unit, existingElements, knownScopes);
                MethodScope methodScope = (MethodScope)scope;
                if (methodScope.isInsideInitializer()) {
                    TypeDeclaration type = methodScope.referenceType();
                    int occurenceCount = 1;
                    int length = type.fields == null ? 0 : type.fields.length;
                    int i = 0;
                    while (i < length) {
                        FieldDeclaration field = type.fields[i];
                        if (field.declarationSourceStart <= elementPosition && elementPosition <= field.declarationSourceEnd) {
                            switch (field.getKind()) {
                                case 1: 
                                case 3: {
                                    newElement = parentType.getField(new String(field.name));
                                    break;
                                }
                                case 2: {
                                    newElement = parentType.getInitializer(occurenceCount);
                                }
                            }
                            break block0;
                        }
                        if (field.getKind() == 2) {
                            ++occurenceCount;
                        }
                        ++i;
                    }
                    break;
                }
                AbstractMethodDeclaration method = methodScope.referenceMethod();
                newElement = parentType.getMethod(new String(method.selector), Util.typeParameterSignatures(method));
                if (newElement == null) break;
                knownScopes.put(scope, newElement);
                break;
            }
            case 1: {
                newElement = this.createElement(scope.parent, elementPosition, unit, existingElements, knownScopes);
            }
        }
        return newElement;
    }

    private PackageFragmentRoot getJarPkgFragmentRoot(String resourcePathString, int jarSeparatorIndex, String jarPathString, IJavaSearchScope scope) {
        IJavaProject[] projects;
        Path jarPath = new Path(jarPathString);
        Object target = JavaModel.getTarget((IPath)jarPath, false);
        if (target instanceof IFile) {
            IFile jarFile = (IFile)target;
            JavaProject javaProject = (JavaProject)this.javaModel.getJavaProject((IResource)jarFile);
            try {
                IClasspathEntry entry = javaProject.getClasspathEntryFor((IPath)jarPath);
                if (entry != null) {
                    return (PackageFragmentRoot)javaProject.getPackageFragmentRoot((IResource)jarFile);
                }
            }
            catch (JavaModelException javaModelException) {}
        }
        if (scope != null) {
            if (scope instanceof AbstractJavaSearchScope) {
                PackageFragmentRoot root = (PackageFragmentRoot)((AbstractJavaSearchScope)scope).packageFragmentRoot(resourcePathString, jarSeparatorIndex, jarPathString);
                if (root != null) {
                    return root;
                }
            } else {
                PackageFragmentRoot root;
                IPath[] enclosingProjectsAndJars = scope.enclosingProjectsAndJars();
                int length = enclosingProjectsAndJars.length;
                projects = new IJavaProject[length];
                int index = 0;
                int i = 0;
                while (i < length) {
                    IPath path = enclosingProjectsAndJars[i];
                    if (path.segmentCount() == 1) {
                        projects[index++] = this.javaModel.getJavaProject(path.segment(0));
                    }
                    ++i;
                }
                if (index < length) {
                    IJavaProject[] iJavaProjectArray = projects;
                    projects = new IJavaProject[index];
                    System.arraycopy(iJavaProjectArray, 0, projects, 0, index);
                }
                if ((root = this.getJarPkgFragmentRoot((IPath)jarPath, target, projects)) != null) {
                    return root;
                }
            }
        }
        try {
            projects = this.javaModel.getJavaProjects();
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
        return this.getJarPkgFragmentRoot((IPath)jarPath, target, projects);
    }

    private PackageFragmentRoot getJarPkgFragmentRoot(IPath jarPath, Object target, IJavaProject[] projects) {
        int i = 0;
        int projectCount = projects.length;
        while (i < projectCount) {
            try {
                JavaProject javaProject = (JavaProject)projects[i];
                IClasspathEntry classpathEnty = javaProject.getClasspathEntryFor(jarPath);
                if (classpathEnty != null) {
                    if (target instanceof IFile) {
                        return (PackageFragmentRoot)javaProject.getPackageFragmentRoot((IResource)((IFile)target));
                    }
                    return (PackageFragmentRoot)javaProject.getPackageFragmentRoot0(jarPath);
                }
            }
            catch (JavaModelException javaModelException) {}
            ++i;
        }
        return null;
    }

    private PackageFragmentRoot getPkgFragmentRoot(String pathString) {
        Path path = new Path(pathString);
        IProject[] projects = ResourcesPlugin.getWorkspace().getRoot().getProjects();
        int i = 0;
        int max = projects.length;
        while (i < max) {
            try {
                IProject project = projects[i];
                if (project.isAccessible() && project.hasNature("org.eclipse.jdt.core.javanature")) {
                    IJavaProject javaProject = this.javaModel.getJavaProject((IResource)project);
                    IPackageFragmentRoot[] roots = javaProject.getPackageFragmentRoots();
                    int j = 0;
                    int rootCount = roots.length;
                    while (j < rootCount) {
                        PackageFragmentRoot root = (PackageFragmentRoot)roots[j];
                        if (root.internalPath().isPrefixOf((IPath)path) && !Util.isExcluded((IPath)path, root.fullInclusionPatternChars(), root.fullExclusionPatternChars(), false)) {
                            return root;
                        }
                        ++j;
                    }
                }
            }
            catch (CoreException coreException) {}
            ++i;
        }
        return null;
    }
}

