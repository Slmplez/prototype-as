/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.FloatValue
 *  com.sun.jdi.Type
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.FloatValue;
import com.sun.jdi.Type;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.PrimitiveValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class FloatValueImpl
extends PrimitiveValueImpl
implements FloatValue {
    public static final byte tag = 70;

    public FloatValueImpl(VirtualMachineImpl vmImpl, Float value) {
        super("FloatValue", vmImpl, value);
    }

    public byte getTag() {
        return 70;
    }

    public Type type() {
        return this.virtualMachineImpl().getFloatType();
    }

    public float value() {
        return this.floatValue();
    }

    public static FloatValueImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        float value = target.readFloat("floatValue", in);
        return new FloatValueImpl(vmImpl, new Float(value));
    }

    public void write(MirrorImpl target, DataOutputStream out) throws IOException {
        target.writeFloat(((Float)this.fValue).floatValue(), "floatValue", out);
    }
}

