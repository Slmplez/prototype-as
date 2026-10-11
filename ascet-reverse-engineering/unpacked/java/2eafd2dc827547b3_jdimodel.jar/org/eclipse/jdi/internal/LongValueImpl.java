/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.LongValue
 *  com.sun.jdi.Type
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.LongValue;
import com.sun.jdi.Type;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.PrimitiveValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class LongValueImpl
extends PrimitiveValueImpl
implements LongValue {
    public static final byte tag = 74;

    public LongValueImpl(VirtualMachineImpl vmImpl, Long value) {
        super("LongValue", vmImpl, value);
    }

    public byte getTag() {
        return 74;
    }

    public Type type() {
        return this.virtualMachineImpl().getLongType();
    }

    public long value() {
        return this.longValue();
    }

    public static LongValueImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        long value = target.readLong("longValue", in);
        return new LongValueImpl(vmImpl, new Long(value));
    }

    public void write(MirrorImpl target, DataOutputStream out) throws IOException {
        target.writeLong((Long)this.fValue, "longValue", out);
    }
}

