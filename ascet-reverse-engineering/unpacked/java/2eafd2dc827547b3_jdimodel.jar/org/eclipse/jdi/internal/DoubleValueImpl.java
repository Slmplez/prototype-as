/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.DoubleValue
 *  com.sun.jdi.Type
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.DoubleValue;
import com.sun.jdi.Type;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.PrimitiveValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class DoubleValueImpl
extends PrimitiveValueImpl
implements DoubleValue {
    public static final byte tag = 68;

    public DoubleValueImpl(VirtualMachineImpl vmImpl, Double value) {
        super("DoubleValue", vmImpl, value);
    }

    public byte getTag() {
        return 68;
    }

    public Type type() {
        return this.virtualMachineImpl().getDoubleType();
    }

    public double value() {
        return this.doubleValue();
    }

    public static DoubleValueImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        double value = target.readDouble("doubleValue", in);
        return new DoubleValueImpl(vmImpl, new Double(value));
    }

    public void write(MirrorImpl target, DataOutputStream out) throws IOException {
        target.writeDouble((Double)this.fValue, "doubleValue", out);
    }
}

