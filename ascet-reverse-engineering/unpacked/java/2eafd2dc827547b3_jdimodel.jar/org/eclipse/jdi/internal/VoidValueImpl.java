/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.Type
 *  com.sun.jdi.VoidValue
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.Type;
import com.sun.jdi.VoidValue;
import java.io.DataOutputStream;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.VoidTypeImpl;

public class VoidValueImpl
extends ValueImpl
implements VoidValue {
    public static final byte tag = 86;

    public VoidValueImpl(VirtualMachineImpl vmImpl) {
        super("VoidValue", vmImpl);
    }

    public byte getTag() {
        return 86;
    }

    public Type type() {
        return new VoidTypeImpl(this.virtualMachineImpl());
    }

    public boolean equals(Object object) {
        return object != null && object.getClass().equals(this.getClass());
    }

    public int hashCode() {
        return 0;
    }

    public void write(MirrorImpl target, DataOutputStream out) {
    }

    public String toString() {
        return "(void)";
    }
}

