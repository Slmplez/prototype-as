/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core.hierarchy;

import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IRegion;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.Region;
import org.eclipse.jdt.internal.core.TypeVector;
import org.eclipse.jdt.internal.core.hierarchy.HierarchyBuilder;
import org.eclipse.jdt.internal.core.hierarchy.RegionBasedHierarchyBuilder;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;

public class RegionBasedTypeHierarchy
extends TypeHierarchy {
    protected IRegion region;

    public RegionBasedTypeHierarchy(IRegion region, ICompilationUnit[] workingCopies, IType type, boolean computeSubtypes) {
        super(type, workingCopies, (IJavaSearchScope)null, computeSubtypes);
        Region newRegion = new Region(){

            public void add(IJavaElement element) {
                if (!this.contains(element)) {
                    this.removeAllChildren(element);
                    this.rootElements.add(element);
                    if (element.getElementType() == 2) {
                        try {
                            IPackageFragmentRoot[] roots = ((IJavaProject)element).getPackageFragmentRoots();
                            int i = 0;
                            int length = roots.length;
                            while (i < length) {
                                if (roots[i].isArchive() && !this.rootElements.contains(roots[i])) {
                                    this.rootElements.add(roots[i]);
                                }
                                ++i;
                            }
                        }
                        catch (JavaModelException javaModelException) {}
                    }
                    this.rootElements.trimToSize();
                }
            }
        };
        IJavaElement[] elements = region.getElements();
        int i = 0;
        int length = elements.length;
        while (i < length) {
            newRegion.add(elements[i]);
            ++i;
        }
        this.region = newRegion;
        if (elements.length > 0) {
            this.project = elements[0].getJavaProject();
        }
    }

    protected void initializeRegions() {
        super.initializeRegions();
        IJavaElement[] roots = this.region.getElements();
        int i = 0;
        while (i < roots.length) {
            IJavaElement root = roots[i];
            if (root instanceof IOpenable) {
                this.files.put(root, new ArrayList());
            } else {
                Openable o = (Openable)((JavaElement)root).getOpenableParent();
                if (o != null) {
                    this.files.put(o, new ArrayList());
                }
            }
            this.checkCanceled();
            ++i;
        }
    }

    protected void compute() throws JavaModelException, CoreException {
        RegionBasedHierarchyBuilder builder = new RegionBasedHierarchyBuilder(this);
        ((HierarchyBuilder)builder).build(this.computeSubtypes);
    }

    protected boolean isAffectedByOpenable(IJavaElementDelta delta, IJavaElement element, int eventType) {
        if (element instanceof CompilationUnit && ((CompilationUnit)element).isWorkingCopy()) {
            return super.isAffectedByOpenable(delta, element, eventType);
        }
        if (this.focusType == null) {
            return this.region.contains(element);
        }
        return super.isAffectedByOpenable(delta, element, eventType);
    }

    public IJavaProject javaProject() {
        return this.project;
    }

    public void pruneDeadBranches() {
        this.pruneDeadBranches(this.getRootClasses());
        this.pruneDeadBranches(this.getRootInterfaces());
    }

    private boolean pruneDeadBranches(IType type) {
        TypeVector subtypes = (TypeVector)this.typeToSubtypes.get(type);
        if (subtypes == null) {
            return true;
        }
        this.pruneDeadBranches(subtypes.copy().elements());
        subtypes = (TypeVector)this.typeToSubtypes.get(type);
        return subtypes == null || subtypes.size == 0;
    }

    private void pruneDeadBranches(IType[] types) {
        int i = 0;
        int length = types.length;
        while (i < length) {
            IType type = types[i];
            if (this.pruneDeadBranches(type) && !this.region.contains(type)) {
                this.removeType(type);
            }
            ++i;
        }
    }

    protected void removeType(IType type) {
        IType[] superinterfaces;
        TypeVector types;
        IType superclass;
        IType[] subtypes = this.getSubtypes(type);
        this.typeToSubtypes.remove(type);
        if (subtypes != null) {
            int i = 0;
            while (i < subtypes.length) {
                this.removeType(subtypes[i]);
                ++i;
            }
        }
        if ((superclass = (IType)this.classToSuperclass.remove(type)) != null && (types = (TypeVector)this.typeToSubtypes.get(superclass)) != null) {
            types.remove(type);
        }
        if ((superinterfaces = (IType[])this.typeToSuperInterfaces.remove(type)) != null) {
            int i = 0;
            int length = superinterfaces.length;
            while (i < length) {
                IType superinterface = superinterfaces[i];
                TypeVector types2 = (TypeVector)this.typeToSubtypes.get(superinterface);
                if (types2 != null) {
                    types2.remove(type);
                }
                ++i;
            }
        }
        this.interfaces.remove(type);
    }
}

