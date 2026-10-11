/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.IntegerValue
 *  com.sun.jdi.Type
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.IntegerValue;
import com.sun.jdi.Type;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.PrimitiveValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class IntegerValueImpl
extends PrimitiveValueImpl
implements IntegerValue {
    public static final byte tag = 73;

    public IntegerValueImpl(VirtualMachineImpl vmImpl, Integer value) {
        super("IntegerValue", vmImpl, value);
    }

    public byte getTag() {
        return 73;
    }

    public Type type() {
        return this.virtualMachineImpl().getIntegerType();
    }

    public int value() {
        return this.intValue();
    }

    public static IntegerValueImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        int value = target.readInt("integerValue", in);
        return new IntegerValueImpl(vmImpl, new Integer(value));
    }

    public void write(MirrorImpl target, DataOutputStream out) throws IOException {
        target.writeInt((Integer)this.fValue, "intValue", out);
    }
}

