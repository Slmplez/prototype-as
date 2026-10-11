/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.model.IVariable
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import com.ibm.icu.text.MessageFormat;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.model.IVariable;
import org.eclipse.jdt.debug.core.IJavaArrayType;
import org.eclipse.jdt.debug.core.IJavaClassObject;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaFieldVariable;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.eval.ast.engine.IRuntimeContext;
import org.eclipse.jdt.internal.debug.eval.ast.engine.Interpreter;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.RuntimeSignature;

public abstract class Instruction {
    private Interpreter fInterpreter;
    public static final int T_undefined = 0;
    public static final int T_Object = 1;
    public static final int T_char = 2;
    public static final int T_byte = 3;
    public static final int T_short = 4;
    public static final int T_boolean = 5;
    public static final int T_void = 6;
    public static final int T_long = 7;
    public static final int T_double = 8;
    public static final int T_float = 9;
    public static final int T_int = 10;
    public static final int T_String = 11;
    public static final int T_null = 12;
    private static final int[][] fTypeTable;

    static {
        int[][] nArrayArray = new int[13][];
        nArrayArray[0] = new int[13];
        int[] nArray = new int[13];
        nArray[11] = 11;
        nArrayArray[1] = nArray;
        int[] nArray2 = new int[13];
        nArray2[2] = 10;
        nArray2[3] = 10;
        nArray2[4] = 10;
        nArray2[7] = 7;
        nArray2[8] = 8;
        nArray2[9] = 9;
        nArray2[10] = 10;
        nArray2[11] = 11;
        nArrayArray[2] = nArray2;
        int[] nArray3 = new int[13];
        nArray3[2] = 10;
        nArray3[3] = 10;
        nArray3[4] = 10;
        nArray3[7] = 7;
        nArray3[8] = 8;
        nArray3[9] = 9;
        nArray3[10] = 10;
        nArray3[11] = 11;
        nArrayArray[3] = nArray3;
        int[] nArray4 = new int[13];
        nArray4[2] = 10;
        nArray4[3] = 10;
        nArray4[4] = 10;
        nArray4[7] = 7;
        nArray4[8] = 8;
        nArray4[9] = 9;
        nArray4[10] = 10;
        nArray4[11] = 11;
        nArrayArray[4] = nArray4;
        int[] nArray5 = new int[13];
        nArray5[5] = 5;
        nArray5[11] = 11;
        nArrayArray[5] = nArray5;
        nArrayArray[6] = new int[13];
        int[] nArray6 = new int[13];
        nArray6[2] = 7;
        nArray6[3] = 7;
        nArray6[4] = 7;
        nArray6[7] = 7;
        nArray6[8] = 8;
        nArray6[9] = 9;
        nArray6[10] = 7;
        nArray6[11] = 11;
        nArrayArray[7] = nArray6;
        int[] nArray7 = new int[13];
        nArray7[2] = 8;
        nArray7[3] = 8;
        nArray7[4] = 8;
        nArray7[7] = 8;
        nArray7[8] = 8;
        nArray7[9] = 8;
        nArray7[10] = 8;
        nArray7[11] = 11;
        nArrayArray[8] = nArray7;
        int[] nArray8 = new int[13];
        nArray8[2] = 9;
        nArray8[3] = 9;
        nArray8[4] = 9;
        nArray8[7] = 9;
        nArray8[8] = 8;
        nArray8[9] = 9;
        nArray8[10] = 9;
        nArray8[11] = 11;
        nArrayArray[9] = nArray8;
        int[] nArray9 = new int[13];
        nArray9[2] = 10;
        nArray9[3] = 10;
        nArray9[4] = 10;
        nArray9[7] = 7;
        nArray9[8] = 8;
        nArray9[9] = 9;
        nArray9[10] = 10;
        nArray9[11] = 11;
        nArrayArray[10] = nArray9;
        int[] nArray10 = new int[13];
        nArray10[1] = 11;
        nArray10[2] = 11;
        nArray10[3] = 11;
        nArray10[4] = 11;
        nArray10[5] = 11;
        nArray10[7] = 11;
        nArray10[8] = 11;
        nArray10[9] = 11;
        nArray10[10] = 11;
        nArray10[11] = 11;
        nArray10[12] = 11;
        nArrayArray[11] = nArray10;
        int[] nArray11 = new int[13];
        nArray11[11] = 11;
        nArrayArray[12] = nArray11;
        fTypeTable = nArrayArray;
    }

    public abstract int getSize();

    public void setInterpreter(Interpreter interpreter) {
        this.fInterpreter = interpreter;
    }

    public void setLastValue(IJavaValue value) {
        this.fInterpreter.setLastValue(value);
    }

    public void stop() {
        this.fInterpreter.stop();
    }

    public static int getBinaryPromotionType(int left, int right) {
        return fTypeTable[left][right];
    }

    public abstract void execute() throws CoreException;

    protected IRuntimeContext getContext() {
        return this.fInterpreter.getContext();
    }

    protected IJavaDebugTarget getVM() {
        return this.getContext().getVM();
    }

    protected IVariable getInternalVariable(String name) {
        return this.fInterpreter.getInternalVariable(name);
    }

    protected IVariable createInternalVariable(String name, IJavaType referencType) {
        return this.fInterpreter.createInternalVariable(name, referencType);
    }

    protected IJavaObject getClassObject(IJavaType type) throws CoreException {
        if (type instanceof IJavaReferenceType) {
            return ((IJavaReferenceType)type).getClassObject();
        }
        return null;
    }

    protected void jump(int offset) {
        this.fInterpreter.jump(offset);
    }

    protected void push(Object object) {
        this.fInterpreter.push(object);
    }

    protected Object pop() {
        return this.fInterpreter.pop();
    }

    protected IJavaValue popValue() throws CoreException {
        Object element = this.fInterpreter.pop();
        if (element instanceof IJavaVariable) {
            return (IJavaValue)((IJavaVariable)element).getValue();
        }
        return (IJavaValue)element;
    }

    protected void pushNewValue(boolean value) {
        this.fInterpreter.push(this.newValue(value));
    }

    protected IJavaValue newValue(boolean value) {
        return this.getVM().newValue(value);
    }

    protected void pushNewValue(byte value) {
        this.fInterpreter.push(this.newValue(value));
    }

    protected IJavaValue newValue(byte value) {
        return this.getVM().newValue(value);
    }

    protected void pushNewValue(short value) {
        this.fInterpreter.push(this.newValue(value));
    }

    protected IJavaValue newValue(short value) {
        return this.getVM().newValue(value);
    }

    protected void pushNewValue(int value) {
        this.fInterpreter.push(this.newValue(value));
    }

    protected IJavaValue newValue(int value) {
        return this.getVM().newValue(value);
    }

    protected void pushNewValue(long value) {
        this.fInterpreter.push(this.newValue(value));
    }

    protected IJavaValue newValue(long value) {
        return this.getVM().newValue(value);
    }

    protected void pushNewValue(char value) {
        this.fInterpreter.push(this.newValue(value));
    }

    protected IJavaValue newValue(char value) {
        return this.getVM().newValue(value);
    }

    protected void pushNewValue(float value) {
        this.fInterpreter.push(this.newValue(value));
    }

    protected IJavaValue newValue(float value) {
        return this.getVM().newValue(value);
    }

    protected void pushNewValue(double value) {
        this.fInterpreter.push(this.newValue(value));
    }

    protected IJavaValue newValue(double value) {
        return this.getVM().newValue(value);
    }

    protected void pushNewValue(String value) {
        this.fInterpreter.push(this.newValue(value));
    }

    protected IJavaValue newValue(String value) {
        return this.getVM().newValue(value);
    }

    protected void pushNullValue() {
        this.fInterpreter.push(this.nullValue());
    }

    protected IJavaValue nullValue() {
        return this.getVM().nullValue();
    }

    public static int getUnaryPromotionType(int typeId) {
        return fTypeTable[typeId][10];
    }

    protected IJavaType getType(String qualifiedName) throws CoreException {
        IJavaClassObject classReference = this.getContext().classForName(qualifiedName);
        if (classReference == null) {
            throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, MessageFormat.format((String)InstructionsEvaluationMessages.Instruction_No_type, (Object[])new String[]{qualifiedName}), null));
        }
        return classReference.getInstanceType();
    }

    protected IJavaType getPrimitiveType(String name) throws CoreException {
        IJavaReferenceType type = null;
        if ("boolean".equals(name)) {
            type = (IJavaReferenceType)this.getType("java.lang.Boolean");
        } else if ("byte".equals(name)) {
            type = (IJavaReferenceType)this.getType("java.lang.Byte");
        } else if ("char".equals(name)) {
            type = (IJavaReferenceType)this.getType("java.lang.Character");
        } else if ("double".equals(name)) {
            type = (IJavaReferenceType)this.getType("java.lang.Double");
        } else if ("float".equals(name)) {
            type = (IJavaReferenceType)this.getType("java.lang.Float");
        } else if ("int".equals(name)) {
            type = (IJavaReferenceType)this.getType("java.lang.Integer");
        } else if ("long".equals(name)) {
            type = (IJavaReferenceType)this.getType("java.lang.Long");
        } else if ("short".equals(name)) {
            type = (IJavaReferenceType)this.getType("java.lang.Short");
        } else if ("void".equals(name)) {
            type = (IJavaReferenceType)this.getType("java.lang.Void");
        }
        if (type != null) {
            IJavaFieldVariable field = type.getField("TYPE");
            IJavaClassObject clazz = (IJavaClassObject)field.getValue();
            return clazz.getInstanceType();
        }
        throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, MessageFormat.format((String)InstructionsEvaluationMessages.Instruction_No_type, (Object[])new String[]{name}), null));
    }

    protected IJavaArrayType getArrayType(String typeSignature, int dimension) throws CoreException {
        String qualifiedName = RuntimeSignature.toString(typeSignature);
        String braces = "";
        int i = 0;
        while (i < dimension) {
            qualifiedName = String.valueOf(qualifiedName) + "[]";
            braces = String.valueOf(braces) + "[";
            ++i;
        }
        String signature = String.valueOf(braces) + typeSignature;
        IJavaClassObject classReference = this.getContext().classForName(signature);
        if (classReference == null) {
            throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, MessageFormat.format((String)InstructionsEvaluationMessages.Instruction_No_type, (Object[])new String[]{qualifiedName}), null));
        }
        IJavaType[] types = this.getVM().getJavaTypes(qualifiedName);
        this.checkTypes(types, qualifiedName);
        if (types.length == 1) {
            return (IJavaArrayType)types[0];
        }
        int i2 = 0;
        int length = types.length;
        while (i2 < length) {
            IJavaType type = types[i2];
            if (classReference.equals(this.getClassObject(type))) {
                return (IJavaArrayType)type;
            }
            ++i2;
        }
        throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, MessageFormat.format((String)InstructionsEvaluationMessages.Instruction_No_type, (Object[])new String[]{qualifiedName}), null));
    }

    protected void checkTypes(IJavaType[] types, String qualifiedName) throws CoreException {
        if (types == null || types.length == 0) {
            throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, MessageFormat.format((String)InstructionsEvaluationMessages.Instruction_No_type, (Object[])new String[]{qualifiedName}), null));
        }
    }
}

