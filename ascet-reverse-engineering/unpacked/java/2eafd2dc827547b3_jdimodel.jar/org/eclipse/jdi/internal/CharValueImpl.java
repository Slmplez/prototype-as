/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.CharValue
 *  com.sun.jdi.Type
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.CharValue;
import com.sun.jdi.Type;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.PrimitiveValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class CharValueImpl
extends PrimitiveValueImpl
implements CharValue {
    public static final byte tag = 67;

    public CharValueImpl(VirtualMachineImpl vmImpl, Character value) {
        super("CharValue", vmImpl, value);
    }

    public byte getTag() {
        return 67;
    }

    public Type type() {
        return this.virtualMachineImpl().getCharType();
    }

    public char value() {
        return this.charValue();
    }

    public static CharValueImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        char value = target.readChar("charValue", in);
        return new CharValueImpl(vmImpl, new Character(value));
    }

    public void write(MirrorImpl target, DataOutputStream out) throws IOException {
        target.writeChar(((Character)this.fValue).charValue(), "charValue", out);
    }
}

