/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.IValue
 */
package org.eclipse.jdt.internal.debug.eval.ast.engine;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.internal.debug.eval.ast.engine.EvaluationEngineMessages;

public class InterpreterVariable
implements IJavaVariable {
    private IJavaType fReferenceType;
    private String fName;
    private IValue fValue;
    private IDebugTarget fDebugTarget;

    public InterpreterVariable(String name, IJavaType referenceType, IDebugTarget debugTarget) {
        this.fName = name;
        this.fReferenceType = referenceType;
        this.fDebugTarget = debugTarget;
    }

    public IValue getValue() {
        return this.fValue;
    }

    public String getName() {
        return this.fName;
    }

    public String getReferenceTypeName() throws DebugException {
        return this.fReferenceType.getName();
    }

    public boolean hasValueChanged() {
        return false;
    }

    public String getModelIdentifier() {
        return JDIDebugModel.getPluginIdentifier();
    }

    public IDebugTarget getDebugTarget() {
        return this.fDebugTarget;
    }

    public ILaunch getLaunch() {
        return this.fDebugTarget.getLaunch();
    }

    public void setValue(String expression) throws DebugException {
        throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5011, EvaluationEngineMessages.InterpreterVariable_setValue_String__not_supported_for_interpreter_variable_1, null));
    }

    public void setValue(IValue value) {
        this.fValue = value;
    }

    public boolean supportsValueModification() {
        return false;
    }

    public boolean verifyValue(IValue value) throws DebugException {
        throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5011, EvaluationEngineMessages.InterpreterVariable_verifyValue_IValue__not_supported_for_interpreter_variable_2, null));
    }

    public boolean verifyValue(String expression) throws DebugException {
        throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5011, EvaluationEngineMessages.InterpreterVariable_verifyValue_String__not_supported_for_interpreter_variable_3, null));
    }

    public Object getAdapter(Class adapter) {
        return null;
    }

    public IJavaType getJavaType() {
        return this.fReferenceType;
    }

    public String getSignature() throws DebugException {
        return this.fReferenceType.getSignature();
    }

    public boolean isFinal() {
        return false;
    }

    public boolean isPackagePrivate() {
        return false;
    }

    public boolean isPrivate() {
        return false;
    }

    public boolean isProtected() {
        return false;
    }

    public boolean isPublic() {
        return true;
    }

    public boolean isStatic() {
        return false;
    }

    public boolean isSynthetic() {
        return true;
    }

    public boolean isLocal() {
        return false;
    }

    public String getGenericSignature() throws DebugException {
        return this.getSignature();
    }
}

