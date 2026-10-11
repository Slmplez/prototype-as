/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core.search;

import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeHierarchy;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;
import org.eclipse.jdt.internal.core.search.AbstractSearchScope;

public class HierarchyScope
extends AbstractSearchScope
implements SuffixConstants {
    public IType focusType;
    private String focusPath;
    private WorkingCopyOwner owner;
    private ITypeHierarchy hierarchy;
    private HashSet resourcePaths;
    private IPath[] enclosingProjectsAndJars;
    protected IResource[] elements;
    protected int elementCount;
    public boolean needsRefresh;
    private HashSet subTypes = null;
    private IJavaProject javaProject = null;
    private boolean allowMemberAndEnclosingTypes = true;
    private boolean includeFocusType = true;

    public void add(IResource element) {
        if (this.elementCount == this.elements.length) {
            this.elements = new IResource[this.elementCount * 2];
            System.arraycopy(this.elements, 0, this.elements, 0, this.elementCount);
        }
        this.elements[this.elementCount++] = element;
    }

    public HierarchyScope(IJavaProject project, IType type, WorkingCopyOwner owner, boolean onlySubtypes, boolean noMembersOrEnclosingTypes, boolean includeFocusType) throws JavaModelException {
        this(type, owner);
        this.javaProject = project;
        if (onlySubtypes) {
            this.subTypes = new HashSet();
        }
        this.includeFocusType = includeFocusType;
        this.allowMemberAndEnclosingTypes = !noMembersOrEnclosingTypes;
    }

    public HierarchyScope(IType type, WorkingCopyOwner owner) throws JavaModelException {
        this.focusType = type;
        this.owner = owner;
        this.enclosingProjectsAndJars = this.computeProjectsAndJars(type);
        IPackageFragmentRoot root = (IPackageFragmentRoot)type.getPackageFragment().getParent();
        if (root.isArchive()) {
            String zipFileName;
            IPath jarPath = root.getPath();
            Object target = JavaModel.getTarget(jarPath, true);
            if (target instanceof IFile) {
                zipFileName = jarPath.toString();
            } else if (target instanceof File) {
                zipFileName = ((File)target).getPath();
            } else {
                return;
            }
            this.focusPath = String.valueOf(zipFileName) + "|" + type.getFullyQualifiedName().replace('.', '/') + ".class";
        } else {
            this.focusPath = type.getPath().toString();
        }
        this.needsRefresh = true;
    }

    private void buildResourceVector() {
        HashMap<IResource, IResource> resources = new HashMap<IResource, IResource>();
        HashMap<IPath, IType> paths = new HashMap<IPath, IType>();
        IType[] types = null;
        if (this.subTypes != null) {
            types = this.hierarchy.getAllSubtypes(this.focusType);
            if (this.includeFocusType) {
                int len = types.length;
                IType[] iTypeArray = types;
                types = new IType[len + 1];
                System.arraycopy(iTypeArray, 0, types, 0, len);
                types[len] = this.focusType;
            }
        } else {
            types = this.hierarchy.getAllTypes();
        }
        int i = 0;
        while (i < types.length) {
            block12: {
                IType type;
                block9: {
                    String zipFileName;
                    IPath jarPath;
                    block11: {
                        Object target;
                        block10: {
                            IPackageFragmentRoot root;
                            IResource resource;
                            type = types[i];
                            if (this.subTypes != null) {
                                this.subTypes.add(type);
                            }
                            if ((resource = ((JavaElement)((Object)type)).resource()) != null && resources.get(resource) == null) {
                                resources.put(resource, resource);
                                this.add(resource);
                            }
                            if (!((root = (IPackageFragmentRoot)type.getPackageFragment().getParent()) instanceof JarPackageFragmentRoot)) break block9;
                            JarPackageFragmentRoot jar = (JarPackageFragmentRoot)root;
                            jarPath = jar.getPath();
                            target = JavaModel.getTarget(jarPath, true);
                            if (!(target instanceof IFile)) break block10;
                            zipFileName = jarPath.toString();
                            break block11;
                        }
                        if (!(target instanceof File)) break block12;
                        zipFileName = ((File)target).getPath();
                    }
                    String resourcePath = String.valueOf(zipFileName) + "|" + type.getFullyQualifiedName().replace('.', '/') + ".class";
                    this.resourcePaths.add(resourcePath);
                    paths.put(jarPath, type);
                    break block12;
                }
                paths.put(type.getJavaProject().getProject().getFullPath(), type);
            }
            ++i;
        }
        this.enclosingProjectsAndJars = new IPath[paths.size()];
        i = 0;
        Iterator iter = paths.keySet().iterator();
        while (iter.hasNext()) {
            this.enclosingProjectsAndJars[i++] = (IPath)iter.next();
        }
    }

    private IPath[] computeProjectsAndJars(IType type) throws JavaModelException {
        HashSet<IPath> set = new HashSet<IPath>();
        IPackageFragmentRoot root = (IPackageFragmentRoot)type.getPackageFragment().getParent();
        if (root.isArchive()) {
            set.add(root.getPath());
            IPath rootPath = root.getPath();
            JavaModel model = JavaModelManager.getJavaModelManager().getJavaModel();
            IJavaProject[] projects = model.getJavaProjects();
            HashSet visited = new HashSet();
            int i = 0;
            while (i < projects.length) {
                JavaProject project = (JavaProject)projects[i];
                IClasspathEntry entry = project.getClasspathEntryFor(rootPath);
                if (entry != null) {
                    IPackageFragmentRoot[] roots = project.getAllPackageFragmentRoots();
                    set.add(project.getPath());
                    int k = 0;
                    while (k < roots.length) {
                        IPackageFragmentRoot pkgFragmentRoot = roots[k];
                        if (pkgFragmentRoot.getKind() == 2) {
                            set.add(pkgFragmentRoot.getPath());
                        }
                        ++k;
                    }
                    this.computeDependents(project, set, visited);
                }
                ++i;
            }
        } else {
            IJavaProject project = (IJavaProject)root.getParent();
            IPackageFragmentRoot[] roots = project.getAllPackageFragmentRoots();
            int i = 0;
            while (i < roots.length) {
                IPackageFragmentRoot pkgFragmentRoot = roots[i];
                if (pkgFragmentRoot.getKind() == 2) {
                    set.add(pkgFragmentRoot.getPath());
                } else {
                    set.add(pkgFragmentRoot.getParent().getPath());
                }
                ++i;
            }
            this.computeDependents(project, set, new HashSet());
        }
        IPath[] result = new IPath[set.size()];
        set.toArray(result);
        return result;
    }

    private void computeDependents(IJavaProject project, HashSet set, HashSet visited) {
        if (visited.contains(project)) {
            return;
        }
        visited.add(project);
        IProject[] dependents = project.getProject().getReferencingProjects();
        int i = 0;
        while (i < dependents.length) {
            try {
                IJavaProject dependent = JavaCore.create(dependents[i]);
                IPackageFragmentRoot[] roots = dependent.getPackageFragmentRoots();
                set.add(dependent.getPath());
                int j = 0;
                while (j < roots.length) {
                    IPackageFragmentRoot pkgFragmentRoot = roots[j];
                    if (pkgFragmentRoot.isArchive()) {
                        set.add(pkgFragmentRoot.getPath());
                    }
                    ++j;
                }
                this.computeDependents(dependent, set, visited);
            }
            catch (JavaModelException javaModelException) {}
            ++i;
        }
    }

    public boolean encloses(String resourcePath) {
        return this.encloses(resourcePath, null);
    }

    public boolean encloses(String resourcePath, IProgressMonitor progressMonitor) {
        int separatorIndex;
        if (this.hierarchy == null) {
            if (resourcePath.equals(this.focusPath)) {
                return true;
            }
            if (this.needsRefresh) {
                try {
                    this.initialize(progressMonitor);
                }
                catch (JavaModelException javaModelException) {
                    return false;
                }
            } else {
                return true;
            }
        }
        if (this.needsRefresh) {
            try {
                this.refresh(progressMonitor);
            }
            catch (JavaModelException javaModelException) {
                return false;
            }
        }
        if ((separatorIndex = resourcePath.indexOf("|")) != -1) {
            return this.resourcePaths.contains(resourcePath);
        }
        int i = 0;
        while (i < this.elementCount) {
            if (resourcePath.startsWith(this.elements[i].getFullPath().toString())) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean enclosesFineGrained(IJavaElement element) {
        if (this.subTypes == null && this.allowMemberAndEnclosingTypes) {
            return true;
        }
        return this.encloses(element, null);
    }

    public boolean encloses(IJavaElement element) {
        return this.encloses(element, null);
    }

    public boolean encloses(IJavaElement element, IProgressMonitor progressMonitor) {
        if (this.hierarchy == null) {
            if (this.includeFocusType && this.focusType.equals(element.getAncestor(7))) {
                return true;
            }
            if (this.needsRefresh) {
                try {
                    this.initialize(progressMonitor);
                }
                catch (JavaModelException javaModelException) {
                    return false;
                }
            } else {
                return true;
            }
        }
        if (this.needsRefresh) {
            try {
                this.refresh(progressMonitor);
            }
            catch (JavaModelException javaModelException) {
                return false;
            }
        }
        IType type = null;
        if (element instanceof IType) {
            type = (IType)element;
        } else if (element instanceof IMember) {
            type = ((IMember)element).getDeclaringType();
        }
        if (type != null) {
            if (this.focusType.equals(type)) {
                return this.includeFocusType;
            }
            if (this.enclosesType(type, this.allowMemberAndEnclosingTypes)) {
                return true;
            }
            if (this.allowMemberAndEnclosingTypes) {
                IType enclosing = type.getDeclaringType();
                while (enclosing != null) {
                    if (this.enclosesType(enclosing, false)) {
                        return true;
                    }
                    enclosing = enclosing.getDeclaringType();
                }
            }
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean enclosesType(IType type, boolean recurse) {
        IType original;
        if (this.subTypes != null) {
            if (this.subTypes.contains(type)) {
                return true;
            }
            IType iType = original = type.isBinary() ? null : (IType)type.getPrimaryElement();
            if (original != type && this.subTypes.contains(original)) {
                return true;
            }
        } else {
            if (this.hierarchy.contains(type)) {
                return true;
            }
            if (!type.isBinary() && (original = (IType)type.getPrimaryElement()) != null && this.hierarchy.contains(original)) {
                return true;
            }
        }
        if (!recurse) return false;
        try {
            IType[] memberTypes = type.getTypes();
            int i = 0;
            while (true) {
                if (i >= memberTypes.length) {
                    return false;
                }
                if (this.enclosesType(memberTypes[i], recurse)) {
                    return true;
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {
            return false;
        }
    }

    public IPath[] enclosingProjectsAndJars() {
        if (this.needsRefresh) {
            try {
                this.refresh(null);
            }
            catch (JavaModelException javaModelException) {
                return new IPath[0];
            }
        }
        return this.enclosingProjectsAndJars;
    }

    protected void initialize() throws JavaModelException {
        this.initialize(null);
    }

    protected void initialize(IProgressMonitor progressMonitor) throws JavaModelException {
        this.resourcePaths = new HashSet();
        this.elements = new IResource[5];
        this.elementCount = 0;
        this.needsRefresh = false;
        if (this.hierarchy == null) {
            this.hierarchy = this.javaProject != null ? this.focusType.newTypeHierarchy(this.javaProject, this.owner, progressMonitor) : this.focusType.newTypeHierarchy(this.owner, progressMonitor);
        } else {
            this.hierarchy.refresh(progressMonitor);
        }
        this.buildResourceVector();
    }

    public void processDelta(IJavaElementDelta delta, int eventType) {
        if (this.needsRefresh) {
            return;
        }
        this.needsRefresh = this.hierarchy == null ? false : ((TypeHierarchy)this.hierarchy).isAffected(delta, eventType);
    }

    protected void refresh() throws JavaModelException {
        this.refresh(null);
    }

    protected void refresh(IProgressMonitor progressMonitor) throws JavaModelException {
        if (this.hierarchy != null) {
            this.initialize(progressMonitor);
        }
    }

    public String toString() {
        return "HierarchyScope on " + ((JavaElement)((Object)this.focusType)).toStringWithAncestors();
    }
}

