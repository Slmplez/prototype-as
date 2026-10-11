/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core.search;

import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeHierarchy;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.builder.ReferenceCollection;
import org.eclipse.jdt.internal.core.builder.State;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MethodPattern;

public class IndexSelector {
    IJavaSearchScope searchScope;
    SearchPattern pattern;
    IPath[] indexLocations;

    public IndexSelector(IJavaSearchScope searchScope, SearchPattern pattern) {
        this.searchScope = searchScope;
        this.pattern = pattern;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static boolean canSeeFocus(SearchPattern pattern, IPath projectOrJarPath) {
        try {
            JavaModel model = JavaModelManager.getJavaModelManager().getJavaModel();
            IJavaProject project = IndexSelector.getJavaProject(projectOrJarPath, model);
            IJavaElement[] focuses = IndexSelector.getFocusedElementsAndTypes(pattern, project, null);
            if (focuses.length == 0) {
                return false;
            }
            if (project != null) {
                return IndexSelector.canSeeFocus(focuses, (JavaProject)project, null);
            }
            IJavaProject[] allProjects = model.getJavaProjects();
            int i = 0;
            int length = allProjects.length;
            while (true) {
                if (i >= length) {
                    return false;
                }
                JavaProject otherProject = (JavaProject)allProjects[i];
                IClasspathEntry entry = otherProject.getClasspathEntryFor(projectOrJarPath);
                if (entry != null && entry.getEntryKind() == 1 && IndexSelector.canSeeFocus(focuses, otherProject, null)) {
                    return true;
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {
            return false;
        }
    }

    private static boolean canSeeFocus(IJavaElement[] focuses, JavaProject javaProject, char[][][] focusQualifiedNames) {
        int length = focuses.length;
        int i = 0;
        while (i < length) {
            if (IndexSelector.canSeeFocus(focuses[i], javaProject, focusQualifiedNames)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    /*
     * Enabled aggressive exception aggregation
     */
    private static boolean canSeeFocus(IJavaElement focus, JavaProject javaProject, char[][][] focusQualifiedNames) {
        try {
            if (focus == null) {
                return false;
            }
            if (focus.equals(javaProject)) {
                return true;
            }
            if (focus instanceof JarPackageFragmentRoot) {
                IPath focusPath = focus.getPath();
                IClasspathEntry[] entries = javaProject.getExpandedClasspath();
                int i = 0;
                int length = entries.length;
                while (i < length) {
                    IClasspathEntry entry = entries[i];
                    if (entry.getEntryKind() == 1 && entry.getPath().equals((Object)focusPath)) {
                        return true;
                    }
                    ++i;
                }
                return false;
            }
            IPath focusPath = ((JavaProject)focus).getProject().getFullPath();
            IClasspathEntry[] entries = javaProject.getExpandedClasspath();
            int i = 0;
            int length = entries.length;
            while (i < length) {
                IClasspathEntry entry = entries[i];
                if (entry.getEntryKind() == 2 && entry.getPath().equals((Object)focusPath)) {
                    State projectState;
                    if (focusQualifiedNames != null && (projectState = (State)JavaModelManager.getJavaModelManager().getLastBuiltState(javaProject.getProject(), null)) != null) {
                        Object[] values = projectState.getReferences().valueTable;
                        int vLength = values.length;
                        int j = 0;
                        while (j < vLength) {
                            ReferenceCollection references;
                            if (values[j] != null && (references = (ReferenceCollection)values[j]).includes(focusQualifiedNames, null, null)) {
                                return true;
                            }
                            ++j;
                        }
                        return false;
                    }
                    return true;
                }
                ++i;
            }
            return false;
        }
        catch (JavaModelException javaModelException) {
            return false;
        }
    }

    private static IJavaElement[] getFocusedElementsAndTypes(SearchPattern pattern, IJavaElement focusElement, ObjectVector superTypes) throws JavaModelException {
        if (pattern instanceof MethodPattern) {
            IType type = (IType)pattern.focus.getAncestor(7);
            MethodPattern methodPattern = (MethodPattern)pattern;
            String selector = new String(methodPattern.selector);
            int parameterCount = methodPattern.parameterCount;
            ITypeHierarchy superHierarchy = type.newSupertypeHierarchy(null);
            IType[] allTypes = superHierarchy.getAllSupertypes(type);
            int length = allTypes.length;
            SimpleSet focusSet = new SimpleSet(length + 1);
            if (focusElement != null) {
                focusSet.add(focusElement);
            }
            int i = 0;
            while (i < length) {
                IMethod[] methods = allTypes[i].getMethods();
                int mLength = methods.length;
                int m = 0;
                while (m < mLength) {
                    if (parameterCount == methods[m].getNumberOfParameters() && methods[m].getElementName().equals(selector)) {
                        IPackageFragmentRoot root = (IPackageFragmentRoot)allTypes[i].getAncestor(3);
                        IJavaElement element = root.isArchive() ? root : root.getParent();
                        focusSet.add(element);
                        if (superTypes == null) break;
                        superTypes.add(allTypes[i]);
                        break;
                    }
                    ++m;
                }
                ++i;
            }
            IJavaElement[] focuses = new IJavaElement[focusSet.elementSize];
            Object[] values = focusSet.values;
            int count = 0;
            int i2 = values.length;
            while (--i2 >= 0) {
                if (values[i2] == null) continue;
                focuses[count++] = (IJavaElement)values[i2];
            }
            return focuses;
        }
        if (focusElement == null) {
            return new IJavaElement[0];
        }
        return new IJavaElement[]{focusElement};
    }

    private void initializeIndexLocations() {
        IPath[] projectsAndJars = this.searchScope.enclosingProjectsAndJars();
        IndexManager manager = JavaModelManager.getIndexManager();
        SimpleSet locations = new SimpleSet();
        IJavaElement focus = MatchLocator.projectOrJarFocus(this.pattern);
        if (focus == null) {
            int i = 0;
            while (i < projectsAndJars.length) {
                IPath path = projectsAndJars[i];
                Object target = JavaModel.getTarget(path, false);
                if (target instanceof IFolder) {
                    path = ((IFolder)target).getFullPath();
                }
                locations.add(manager.computeIndexLocation(path));
                ++i;
            }
        } else {
            try {
                int length = projectsAndJars.length;
                JavaProject[] projectsCanSeeFocus = new JavaProject[length];
                SimpleSet visitedProjects = new SimpleSet(length);
                int projectIndex = 0;
                SimpleSet externalLibsToCheck = new SimpleSet(length);
                ObjectVector superTypes = new ObjectVector();
                IJavaElement[] focuses = IndexSelector.getFocusedElementsAndTypes(this.pattern, focus, superTypes);
                char[][][] focusQualifiedNames = null;
                boolean isAutoBuilding = ResourcesPlugin.getWorkspace().getDescription().isAutoBuilding();
                if (isAutoBuilding && focus instanceof IJavaProject) {
                    focusQualifiedNames = this.getQualifiedNames(superTypes);
                }
                JavaModel model = JavaModelManager.getJavaModelManager().getJavaModel();
                int i = 0;
                while (i < length) {
                    IPath path = projectsAndJars[i];
                    JavaProject project = (JavaProject)IndexSelector.getJavaProject(path, model);
                    if (project != null) {
                        visitedProjects.add(project);
                        if (IndexSelector.canSeeFocus(focuses, project, focusQualifiedNames)) {
                            locations.add(manager.computeIndexLocation(path));
                            projectsCanSeeFocus[projectIndex++] = project;
                        }
                    } else {
                        externalLibsToCheck.add(path);
                    }
                    ++i;
                }
                i = 0;
                while (i < projectIndex && externalLibsToCheck.elementSize > 0) {
                    IClasspathEntry[] entries = projectsCanSeeFocus[i].getResolvedClasspath();
                    int j = entries.length;
                    while (--j >= 0) {
                        IPath path;
                        IClasspathEntry entry = entries[j];
                        if (entry.getEntryKind() != 1 || externalLibsToCheck.remove(path = entry.getPath()) == null) continue;
                        Object target = JavaModel.getTarget(path, false);
                        if (target instanceof IFolder) {
                            path = ((IFolder)target).getFullPath();
                        }
                        locations.add(manager.computeIndexLocation(path));
                    }
                    ++i;
                }
                if (externalLibsToCheck.elementSize > 0) {
                    IJavaProject[] allProjects = model.getJavaProjects();
                    int i2 = 0;
                    int l = allProjects.length;
                    while (i2 < l && externalLibsToCheck.elementSize > 0) {
                        JavaProject project = (JavaProject)allProjects[i2];
                        if (!visitedProjects.includes(project)) {
                            IClasspathEntry[] entries = project.getResolvedClasspath();
                            int j = entries.length;
                            while (--j >= 0) {
                                IPath path;
                                IClasspathEntry entry = entries[j];
                                if (entry.getEntryKind() != 1 || externalLibsToCheck.remove(path = entry.getPath()) == null) continue;
                                Object target = JavaModel.getTarget(path, false);
                                if (target instanceof IFolder) {
                                    path = ((IFolder)target).getFullPath();
                                }
                                locations.add(manager.computeIndexLocation(path));
                            }
                        }
                        ++i2;
                    }
                }
            }
            catch (JavaModelException javaModelException) {}
        }
        this.indexLocations = new IPath[locations.elementSize];
        Object[] values = locations.values;
        int count = 0;
        int i = values.length;
        while (--i >= 0) {
            if (values[i] == null) continue;
            this.indexLocations[count++] = (IPath)values[i];
        }
    }

    public IPath[] getIndexLocations() {
        if (this.indexLocations == null) {
            this.initializeIndexLocations();
        }
        return this.indexLocations;
    }

    private static IJavaProject getJavaProject(IPath path, IJavaModel model) {
        IJavaProject project = model.getJavaProject(path.lastSegment());
        if (project.exists()) {
            return project;
        }
        return null;
    }

    private char[][][] getQualifiedNames(ObjectVector types) {
        IType primaryType;
        int size = types.size;
        Object focusQualifiedNames = null;
        IJavaElement javaElement = this.pattern.focus;
        int index = 0;
        while (javaElement != null && !(javaElement instanceof ITypeRoot)) {
            javaElement = javaElement.getParent();
        }
        if (javaElement != null && (primaryType = ((ITypeRoot)javaElement).findPrimaryType()) != null) {
            focusQualifiedNames = new char[size + 1][][];
            focusQualifiedNames[index++] = CharOperation.splitOn('.', primaryType.getFullyQualifiedName().toCharArray());
        }
        if (focusQualifiedNames == null) {
            focusQualifiedNames = new char[size][][];
        }
        int i = 0;
        while (i < size) {
            focusQualifiedNames[index++] = CharOperation.splitOn('.', ((IType)types.elementAt(i)).getFullyQualifiedName().toCharArray());
            ++i;
        }
        return ((char[][][])focusQualifiedNames).length == 0 ? null : ReferenceCollection.internQualifiedNames(focusQualifiedNames, true);
    }
}

