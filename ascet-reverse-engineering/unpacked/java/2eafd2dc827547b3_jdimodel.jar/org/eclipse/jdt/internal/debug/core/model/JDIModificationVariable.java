/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ByteValue
 *  com.sun.jdi.InvalidTypeException
 *  com.sun.jdi.Value
 *  com.sun.jdi.VirtualMachine
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IValue
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ByteValue;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.Value;
import com.sun.jdi.VirtualMachine;
import java.util.ArrayList;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.jdi.internal.ValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;
import org.eclipse.jdt.internal.debug.core.model.JDIVariable;

public abstract class JDIModificationVariable
extends JDIVariable {
    private static final ArrayList fgValidSignatures = new ArrayList(9);

    static {
        fgValidSignatures.add("B");
        fgValidSignatures.add("C");
        fgValidSignatures.add("D");
        fgValidSignatures.add("F");
        fgValidSignatures.add("I");
        fgValidSignatures.add("J");
        fgValidSignatures.add("S");
        fgValidSignatures.add("Z");
        fgValidSignatures.add("Ljava/lang/String;");
    }

    public JDIModificationVariable(JDIDebugTarget target) {
        super(target);
    }

    public boolean supportsValueModification() {
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected Value generateVMValue(String expression) throws DebugException {
        VirtualMachine vm = this.getVM();
        if (vm == null) {
            this.requestFailed(JDIDebugModelMessages.JDIModificationVariable_Unable_to_generate_value___VM_disconnected__1, null);
        }
        String signature = this.getJavaType().getSignature();
        ByteValue vmValue = null;
        try {
            switch (signature.charAt(0)) {
                case 'Z': {
                    String flse = Boolean.FALSE.toString();
                    String tre = Boolean.TRUE.toString();
                    if (!expression.equals(tre)) {
                        if (!expression.equals(flse)) return vmValue;
                    }
                    boolean booleanValue = Boolean.valueOf(expression);
                    return vm.mirrorOf(booleanValue);
                }
                case 'B': {
                    byte byteValue = Byte.valueOf(expression);
                    return vm.mirrorOf(byteValue);
                }
                case 'C': {
                    if (expression.length() == 1) {
                        char charValue = expression.charAt(0);
                        return vm.mirrorOf(charValue);
                    }
                    if (expression.length() != 2) return vmValue;
                    if (expression.charAt(0) != '\\') {
                        return null;
                    }
                    switch (expression.charAt(1)) {
                        case 'b': {
                            char charValue = '\b';
                            return vm.mirrorOf(charValue);
                        }
                        case 'f': {
                            char charValue = '\f';
                            return vm.mirrorOf(charValue);
                        }
                        case 'n': {
                            char charValue = '\n';
                            return vm.mirrorOf(charValue);
                        }
                        case 'r': {
                            char charValue = '\r';
                            return vm.mirrorOf(charValue);
                        }
                        case 't': {
                            char charValue = '\t';
                            return vm.mirrorOf(charValue);
                        }
                        case '\'': {
                            char charValue = '\'';
                            return vm.mirrorOf(charValue);
                        }
                        case '\"': {
                            char charValue = '\"';
                            return vm.mirrorOf(charValue);
                        }
                        case '\\': {
                            char charValue = '\\';
                            return vm.mirrorOf(charValue);
                        }
                        default: {
                            return null;
                        }
                    }
                }
                case 'S': {
                    short shortValue = Short.valueOf(expression);
                    return vm.mirrorOf(shortValue);
                }
                case 'I': {
                    int intValue = Integer.valueOf(expression);
                    return vm.mirrorOf(intValue);
                }
                case 'J': {
                    long longValue = Long.valueOf(expression);
                    return vm.mirrorOf(longValue);
                }
                case 'F': {
                    float floatValue = Float.valueOf(expression).floatValue();
                    return vm.mirrorOf(floatValue);
                }
                case 'D': {
                    double doubleValue = Double.valueOf(expression);
                    return vm.mirrorOf(doubleValue);
                }
                case 'L': {
                    if (expression.equals("null")) {
                        return null;
                    }
                    if (!expression.equals("\"null\"")) return vm.mirrorOf(expression);
                    return vm.mirrorOf("null");
                }
            }
            return vmValue;
        }
        catch (NumberFormatException nfe) {
            this.requestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIModificationVariable_0, (Object[])new String[]{this.getJavaType().toString()}), nfe);
        }
        return vmValue;
    }

    public boolean verifyValue(String expression) throws DebugException {
        Value vmValue = this.generateVMValue(expression);
        JDIValue value = JDIValue.createValue(this.getJavaDebugTarget(), vmValue);
        return this.verifyValue(value);
    }

    public boolean verifyValue(IValue value) throws DebugException {
        if (value instanceof JDIValue && value.getDebugTarget().equals(this.getDebugTarget())) {
            JDIValue jv = (JDIValue)value;
            try {
                ValueImpl.checkValue(jv.getUnderlyingValue(), this.getUnderlyingType(), (VirtualMachineImpl)this.getVM());
                return true;
            }
            catch (InvalidTypeException invalidTypeException) {}
        }
        return false;
    }

    public final void setValue(String expression) throws DebugException {
        Value value = this.generateVMValue(expression);
        this.setJDIValue(value);
    }

    public final void setValue(IValue v) throws DebugException {
        if (v instanceof JDIValue) {
            JDIValue value = (JDIValue)v;
            this.setJDIValue(value.getUnderlyingValue());
        }
    }

    protected abstract void setJDIValue(Value var1) throws DebugException;
}

