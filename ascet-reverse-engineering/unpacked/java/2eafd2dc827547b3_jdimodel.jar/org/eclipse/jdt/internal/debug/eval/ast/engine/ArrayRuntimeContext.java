/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.internal.debug.eval.ast.engine;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.debug.core.IJavaArray;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.logicalstructures.JDIPlaceholderVariable;
import org.eclipse.jdt.internal.debug.eval.ast.engine.AbstractRuntimeContext;
import org.eclipse.jdt.internal.debug.eval.ast.engine.EvaluationEngineMessages;

public class ArrayRuntimeContext
extends AbstractRuntimeContext {
    public static String ARRAY_THIS_VARIABLE = "_a_t";
    private IJavaArray fArray = null;
    private IJavaReferenceType fReceivingType = null;
    private IJavaThread fThread = null;
    private IJavaVariable fLocalArray = null;

    public ArrayRuntimeContext(IJavaArray arrayObject, IJavaThread thread, IJavaProject project) {
        super(project);
        this.fArray = arrayObject;
        this.fThread = thread;
        this.fLocalArray = new JDIPlaceholderVariable(ARRAY_THIS_VARIABLE, arrayObject);
    }

    public IJavaDebugTarget getVM() {
        return (IJavaDebugTarget)this.fArray.getDebugTarget();
    }

    public IJavaObject getThis() throws CoreException {
        return null;
    }

    public IJavaReferenceType getReceivingType() throws CoreException {
        if (this.fReceivingType == null) {
            IJavaType[] javaTypes = this.getVM().getJavaTypes("java.lang.Object");
            if (javaTypes.length > 0) {
                this.fReceivingType = (IJavaReferenceType)javaTypes[0];
            } else {
                Status status = new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 125, EvaluationEngineMessages.ArrayRuntimeContext_0, null);
                throw new CoreException((IStatus)status);
            }
        }
        return this.fReceivingType;
    }

    public IJavaVariable[] getLocals() throws CoreException {
        return new IJavaVariable[]{this.fLocalArray};
    }

    public IJavaThread getThread() {
        return this.fThread;
    }

    public boolean isConstructor() throws CoreException {
        return false;
    }
}

