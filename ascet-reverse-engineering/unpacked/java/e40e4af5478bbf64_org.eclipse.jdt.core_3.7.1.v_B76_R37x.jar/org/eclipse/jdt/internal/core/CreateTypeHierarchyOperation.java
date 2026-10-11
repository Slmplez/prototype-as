/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IRegion;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeHierarchy;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.internal.core.JavaModelOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.hierarchy.RegionBasedTypeHierarchy;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;

public class CreateTypeHierarchyOperation
extends JavaModelOperation {
    protected TypeHierarchy typeHierarchy;

    public CreateTypeHierarchyOperation(IRegion region, ICompilationUnit[] workingCopies, IType element, boolean computeSubtypes) {
        super(element);
        this.typeHierarchy = new RegionBasedTypeHierarchy(region, workingCopies, element, computeSubtypes);
    }

    public CreateTypeHierarchyOperation(IType element, ICompilationUnit[] workingCopies, IJavaSearchScope scope, boolean computeSubtypes) {
        super(element);
        ICompilationUnit[] copies;
        if (workingCopies != null) {
            int length = workingCopies.length;
            copies = new ICompilationUnit[length];
            System.arraycopy(workingCopies, 0, copies, 0, length);
        } else {
            copies = null;
        }
        this.typeHierarchy = new TypeHierarchy(element, copies, scope, computeSubtypes);
    }

    public CreateTypeHierarchyOperation(IType element, ICompilationUnit[] workingCopies, IJavaProject project, boolean computeSubtypes) {
        super(element);
        ICompilationUnit[] copies;
        if (workingCopies != null) {
            int length = workingCopies.length;
            copies = new ICompilationUnit[length];
            System.arraycopy(workingCopies, 0, copies, 0, length);
        } else {
            copies = null;
        }
        this.typeHierarchy = new TypeHierarchy(element, copies, project, computeSubtypes);
    }

    protected void executeOperation() throws JavaModelException {
        this.typeHierarchy.refresh(this);
    }

    public ITypeHierarchy getResult() {
        return this.typeHierarchy;
    }

    public boolean isReadOnly() {
        return true;
    }

    public IJavaModelStatus verify() {
        IJavaElement elementToProcess = this.getElementToProcess();
        if (elementToProcess == null && !(this.typeHierarchy instanceof RegionBasedTypeHierarchy)) {
            return new JavaModelStatus(968);
        }
        if (elementToProcess != null && !elementToProcess.exists()) {
            return new JavaModelStatus(969, elementToProcess);
        }
        IJavaProject project = this.typeHierarchy.javaProject();
        if (project != null && !project.exists()) {
            return new JavaModelStatus(969, project);
        }
        return JavaModelStatus.VERIFIED_OK;
    }
}

