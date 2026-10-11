/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.VirtualMachine
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.model.IValue
 *  org.eclipse.debug.core.model.IVariable
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.VirtualMachine;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.debug.core.model.IVariable;
import org.eclipse.jdi.internal.PrimitiveTypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIType;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.RuntimeSignature;

public class LocalVariableCreation
extends CompoundInstruction {
    private boolean fIsPrimitiveType;
    private String fName;
    private String fTypeSignature;
    private int fDimension;
    private boolean fHasInitializer;

    public LocalVariableCreation(String name, String typeSignature, int dimension, boolean isPrimitiveType, boolean hasInitializer, int start) {
        super(start);
        this.fName = name;
        this.fTypeSignature = typeSignature.replace('/', '.');
        this.fIsPrimitiveType = isPrimitiveType;
        this.fHasInitializer = hasInitializer;
        this.fDimension = dimension;
    }

    public void execute() throws CoreException {
        IJavaType type;
        if (this.fIsPrimitiveType) {
            JDIDebugTarget debugTarget = (JDIDebugTarget)this.getVM();
            VirtualMachine vm = debugTarget.getVM();
            if (vm == null) {
                debugTarget.requestFailed(InstructionsEvaluationMessages.LocalVariableCreation_Execution_failed___VM_disconnected__1, null);
            }
            type = JDIType.createType(debugTarget, PrimitiveTypeImpl.create((VirtualMachineImpl)vm, this.fTypeSignature));
        } else {
            type = this.fDimension == 0 ? this.getType(RuntimeSignature.toString(this.fTypeSignature)) : this.getArrayType(this.fTypeSignature, this.fDimension);
        }
        IVariable var = this.createInternalVariable(this.fName, type);
        if (this.fHasInitializer) {
            var.setValue((IValue)this.popValue());
        }
    }

    public String toString() {
        return MessageFormat.format((String)InstructionsEvaluationMessages.LocalVariableCreation_create_local_variable__0___1___1, (Object[])new String[]{this.fName, this.fTypeSignature});
    }
}

