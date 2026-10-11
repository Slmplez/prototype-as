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
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.internal.debug.eval.ast.engine.AbstractRuntimeContext;

public class JavaObjectRuntimeContext
extends AbstractRuntimeContext {
    private IJavaObject fThisObject;
    private IJavaThread fThread;

    public JavaObjectRuntimeContext(IJavaObject thisObject, IJavaProject javaProject, IJavaThread thread) {
        super(javaProject);
        this.fThisObject = thisObject;
        this.fThread = thread;
    }

    public IJavaDebugTarget getVM() {
        return (IJavaDebugTarget)this.fThisObject.getDebugTarget();
    }

    public IJavaObject getThis() {
        return this.fThisObject;
    }

    public IJavaReferenceType getReceivingType() throws CoreException {
        return (IJavaReferenceType)this.getThis().getJavaType();
    }

    public IJavaVariable[] getLocals() {
        return new IJavaVariable[0];
    }

    public IJavaThread getThread() {
        return this.fThread;
    }

    public boolean isConstructor() {
        return false;
    }
}

