/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IProblemRequestor;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaElementDelta;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelOperation;

public class BecomeWorkingCopyOperation
extends JavaModelOperation {
    IProblemRequestor problemRequestor;

    public BecomeWorkingCopyOperation(CompilationUnit workingCopy, IProblemRequestor problemRequestor) {
        super(new IJavaElement[]{workingCopy});
        this.problemRequestor = problemRequestor;
    }

    protected void executeOperation() throws JavaModelException {
        CompilationUnit workingCopy = this.getWorkingCopy();
        JavaModelManager.getJavaModelManager().getPerWorkingCopyInfo(workingCopy, true, true, this.problemRequestor);
        workingCopy.openWhenClosed(workingCopy.createElementInfo(), this.progressMonitor);
        if (!workingCopy.isPrimary()) {
            JavaElementDelta delta = new JavaElementDelta(this.getJavaModel());
            delta.added(workingCopy);
            this.addDelta(delta);
        } else if (workingCopy.getResource().isAccessible()) {
            JavaElementDelta delta = new JavaElementDelta(this.getJavaModel());
            delta.changed(workingCopy, 65536);
            this.addDelta(delta);
        } else {
            JavaElementDelta delta = new JavaElementDelta(this.getJavaModel());
            delta.added(workingCopy, 65536);
            this.addDelta(delta);
        }
        this.resultElements = new IJavaElement[]{workingCopy};
    }

    protected CompilationUnit getWorkingCopy() {
        return (CompilationUnit)this.getElementToProcess();
    }

    public boolean isReadOnly() {
        return true;
    }
}

