/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jdt.core.Signature
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import com.ibm.icu.text.MessageFormat;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaPrimitiveValue;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.model.JDINullValue;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class Cast
extends CompoundInstruction {
    public static final String IS_INSTANCE = "isInstance";
    public static final String IS_INSTANCE_SIGNATURE = "(Ljava/lang/Object;)Z";
    private int fTypeTypeId;
    private String fBaseTypeName;
    private int fDimension;

    public Cast(int typeTypeId, String baseTypeName, int dimension, int start) {
        super(start);
        this.fTypeTypeId = typeTypeId;
        this.fBaseTypeName = baseTypeName;
        this.fDimension = dimension;
    }

    public void execute() throws CoreException {
        IJavaValue value = this.popValue();
        if (value instanceof IJavaPrimitiveValue) {
            IJavaPrimitiveValue primitiveValue = (IJavaPrimitiveValue)value;
            switch (this.fTypeTypeId) {
                case 8: {
                    this.push(this.newValue(primitiveValue.getDoubleValue()));
                    break;
                }
                case 9: {
                    this.push(this.newValue(primitiveValue.getFloatValue()));
                    break;
                }
                case 7: {
                    this.push(this.newValue(primitiveValue.getLongValue()));
                    break;
                }
                case 10: {
                    this.push(this.newValue(primitiveValue.getIntValue()));
                    break;
                }
                case 4: {
                    this.push(this.newValue(primitiveValue.getShortValue()));
                    break;
                }
                case 3: {
                    this.push(this.newValue(primitiveValue.getByteValue()));
                    break;
                }
                case 2: {
                    this.push(this.newValue(primitiveValue.getCharValue()));
                }
            }
        } else if (value instanceof JDINullValue) {
            this.push(value);
        } else {
            IJavaObject classObject = this.fDimension == 0 ? this.getClassObject(this.getType(this.fBaseTypeName)) : this.getClassObject(this.getArrayType(Signature.createTypeSignature((String)this.fBaseTypeName, (boolean)true), this.fDimension));
            if (classObject == null) {
                throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, MessageFormat.format((String)InstructionsEvaluationMessages.Cast_No_class_object, (Object[])new String[]{this.typeName()}), null));
            }
            IJavaPrimitiveValue resultValue = (IJavaPrimitiveValue)classObject.sendMessage(IS_INSTANCE, IS_INSTANCE_SIGNATURE, new IJavaValue[]{value}, this.getContext().getThread(), false);
            if (!resultValue.getBooleanValue()) {
                throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, MessageFormat.format((String)InstructionsEvaluationMessages.Cast_ClassCastException__Cannot_cast__0__as__1___1, (Object[])new String[]{value.toString(), this.typeName()}), null));
            }
            this.push(value);
        }
    }

    private String typeName() {
        String result = this.fBaseTypeName;
        int i = 0;
        while (i < this.fDimension) {
            result = String.valueOf(result) + "[]";
            ++i;
        }
        return result;
    }

    public String toString() {
        return InstructionsEvaluationMessages.Cast_cast_3;
    }
}

