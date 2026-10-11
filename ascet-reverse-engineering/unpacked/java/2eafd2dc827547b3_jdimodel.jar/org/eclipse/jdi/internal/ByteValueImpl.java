/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ByteValue
 *  com.sun.jdi.Type
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ByteValue;
import com.sun.jdi.Type;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.PrimitiveValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class ByteValueImpl
extends PrimitiveValueImpl
implements ByteValue {
    public static final byte tag = 66;

    public ByteValueImpl(VirtualMachineImpl vmImpl, Byte value) {
        super("ByteValue", vmImpl, value);
    }

    public byte getTag() {
        return 66;
    }

    public Type type() {
        return this.virtualMachineImpl().getByteType();
    }

    public byte value() {
        return this.byteValue();
    }

    public static ByteValueImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        byte value = target.readByte("byteValue", in);
        return new ByteValueImpl(vmImpl, new Byte(value));
    }

    public void write(MirrorImpl target, DataOutputStream out) throws IOException {
        target.writeByte((Byte)this.fValue, "byteValue", out);
    }
}

