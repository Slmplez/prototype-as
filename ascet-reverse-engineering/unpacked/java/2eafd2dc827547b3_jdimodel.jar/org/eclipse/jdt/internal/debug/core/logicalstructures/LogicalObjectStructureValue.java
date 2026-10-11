/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.IVariable
 */
package org.eclipse.jdt.internal.debug.core.logicalstructures;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IVariable;
import org.eclipse.jdt.debug.core.IJavaFieldVariable;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.IJavaVariable;

public class LogicalObjectStructureValue
implements IJavaObject {
    private IJavaObject fObject;
    private IJavaVariable[] fVariables;

    public LogicalObjectStructureValue(IJavaObject object, IJavaVariable[] variables) {
        this.fObject = object;
        this.fVariables = variables;
    }

    public IJavaValue sendMessage(String selector, String signature, IJavaValue[] args, IJavaThread thread, boolean superSend) throws DebugException {
        return this.fObject.sendMessage(selector, signature, args, thread, superSend);
    }

    public IJavaValue sendMessage(String selector, String signature, IJavaValue[] args, IJavaThread thread, String typeSignature) throws DebugException {
        return this.fObject.sendMessage(selector, signature, args, thread, typeSignature);
    }

    public IJavaFieldVariable getField(String name, boolean superField) throws DebugException {
        return this.fObject.getField(name, superField);
    }

    public IJavaFieldVariable getField(String name, String typeSignature) throws DebugException {
        return this.fObject.getField(name, typeSignature);
    }

    public String getSignature() throws DebugException {
        return this.fObject.getSignature();
    }

    public String getGenericSignature() throws DebugException {
        return this.fObject.getGenericSignature();
    }

    public IJavaType getJavaType() throws DebugException {
        return this.fObject.getJavaType();
    }

    public String getReferenceTypeName() throws DebugException {
        return this.fObject.getReferenceTypeName();
    }

    public String getValueString() throws DebugException {
        return this.fObject.getValueString();
    }

    public boolean isAllocated() throws DebugException {
        return this.fObject.isAllocated();
    }

    public IVariable[] getVariables() {
        return this.fVariables;
    }

    public boolean hasVariables() {
        return this.fVariables.length > 0;
    }

    public String getModelIdentifier() {
        return this.fObject.getModelIdentifier();
    }

    public IDebugTarget getDebugTarget() {
        return this.fObject.getDebugTarget();
    }

    public ILaunch getLaunch() {
        return this.fObject.getLaunch();
    }

    public Object getAdapter(Class adapter) {
        return this.fObject.getAdapter(adapter);
    }

    public IJavaThread[] getWaitingThreads() throws DebugException {
        return null;
    }

    public IJavaThread getOwningThread() throws DebugException {
        return null;
    }

    public IJavaObject[] getReferringObjects(long max) throws DebugException {
        return this.fObject.getReferringObjects(max);
    }

    public void disableCollection() throws DebugException {
        this.fObject.disableCollection();
    }

    public void enableCollection() throws DebugException {
        this.fObject.enableCollection();
    }

    public long getUniqueId() throws DebugException {
        return this.fObject.getUniqueId();
    }

    public boolean isNull() {
        return false;
    }
}

