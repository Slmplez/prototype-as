/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaElementDelta;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelOperation;
import org.eclipse.jdt.internal.core.JavaProject;

public class DiscardWorkingCopyOperation
extends JavaModelOperation {
    public DiscardWorkingCopyOperation(IJavaElement workingCopy) {
        super(new IJavaElement[]{workingCopy});
    }

    protected void executeOperation() throws JavaModelException {
        CompilationUnit workingCopy = this.getWorkingCopy();
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        int useCount = manager.discardPerWorkingCopyInfo(workingCopy);
        if (useCount == 0) {
            IJavaProject javaProject = workingCopy.getJavaProject();
            if (" ".equals(javaProject.getElementName())) {
                manager.removePerProjectInfo((JavaProject)javaProject, true);
                manager.containerRemove(javaProject);
            }
            if (!workingCopy.isPrimary()) {
                JavaElementDelta delta = new JavaElementDelta(this.getJavaModel());
                delta.removed(workingCopy);
                this.addDelta(delta);
                this.removeReconcileDelta(workingCopy);
            } else if (workingCopy.getResource().isAccessible()) {
                JavaElementDelta delta = new JavaElementDelta(this.getJavaModel());
                delta.changed(workingCopy, 65536);
                this.addDelta(delta);
            } else {
                JavaElementDelta delta = new JavaElementDelta(this.getJavaModel());
                delta.removed(workingCopy, 65536);
                this.addDelta(delta);
            }
        }
    }

    protected CompilationUnit getWorkingCopy() {
        return (CompilationUnit)this.getElementToProcess();
    }

    public boolean isReadOnly() {
        return true;
    }
}

