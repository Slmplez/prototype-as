/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.BooleanValue
 *  com.sun.jdi.Type
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.BooleanValue;
import com.sun.jdi.Type;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.PrimitiveValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class BooleanValueImpl
extends PrimitiveValueImpl
implements BooleanValue {
    public static final byte tag = 90;

    public BooleanValueImpl(VirtualMachineImpl vmImpl, Boolean value) {
        super("BooleanValue", vmImpl, value);
    }

    public byte getTag() {
        return 90;
    }

    public Type type() {
        return this.virtualMachineImpl().getBooleanType();
    }

    public boolean value() {
        return this.booleanValue();
    }

    public static BooleanValueImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        boolean value = target.readBoolean("booleanValue", in);
        return new BooleanValueImpl(vmImpl, value);
    }

    public void write(MirrorImpl target, DataOutputStream out) throws IOException {
        target.writeBoolean((Boolean)this.fValue, "booleanValue", out);
    }
}

