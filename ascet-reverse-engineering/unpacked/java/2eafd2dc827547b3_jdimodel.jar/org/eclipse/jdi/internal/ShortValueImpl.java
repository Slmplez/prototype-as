/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ShortValue
 *  com.sun.jdi.Type
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ShortValue;
import com.sun.jdi.Type;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.PrimitiveValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class ShortValueImpl
extends PrimitiveValueImpl
implements ShortValue {
    public static final byte tag = 83;

    public ShortValueImpl(VirtualMachineImpl vmImpl, Short value) {
        super("ShortValue", vmImpl, value);
    }

    public byte getTag() {
        return 83;
    }

    public Type type() {
        return this.virtualMachineImpl().getShortType();
    }

    public short value() {
        return this.shortValue();
    }

    public static ShortValueImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        short value = target.readShort("shortValue", in);
        return new ShortValueImpl(vmImpl, new Short(value));
    }

    public void write(MirrorImpl target, DataOutputStream out) throws IOException {
        target.writeShort((Short)this.fValue, "shortValue", out);
    }
}

