/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.internal.debug.eval.ast.engine;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.debug.core.IJavaStackFrame;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.internal.debug.eval.ast.engine.AbstractRuntimeContext;

public class RuntimeContext
extends AbstractRuntimeContext {
    private IJavaStackFrame fFrame;

    public RuntimeContext(IJavaProject project, IJavaStackFrame frame) {
        super(project);
        this.setFrame(frame);
    }

    public IJavaDebugTarget getVM() {
        return (IJavaDebugTarget)this.getFrame().getDebugTarget();
    }

    public IJavaObject getThis() throws CoreException {
        return this.getFrame().getThis();
    }

    public IJavaReferenceType getReceivingType() throws CoreException {
        IJavaObject rec = this.getThis();
        if (rec != null) {
            return (IJavaReferenceType)rec.getJavaType();
        }
        return this.getFrame().getReferenceType();
    }

    public IJavaVariable[] getLocals() throws CoreException {
        return this.getFrame().getLocalVariables();
    }

    protected IJavaStackFrame getFrame() {
        return this.fFrame;
    }

    private void setFrame(IJavaStackFrame frame) {
        this.fFrame = frame;
    }

    public IJavaThread getThread() {
        return (IJavaThread)this.getFrame().getThread();
    }

    public boolean isConstructor() throws CoreException {
        return this.getFrame().isConstructor();
    }
}

