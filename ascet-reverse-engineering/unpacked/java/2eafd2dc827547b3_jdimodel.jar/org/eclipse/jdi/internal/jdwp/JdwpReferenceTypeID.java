/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.internal.jdwp;

import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpID;

public class JdwpReferenceTypeID
extends JdwpID {
    public JdwpReferenceTypeID(VirtualMachineImpl vmImpl) {
        super(vmImpl);
    }

    public int getSize() {
        return this.fVirtualMachine.referenceTypeIDSize();
    }

    public boolean isNull() {
        return this.fValue == 0L;
    }
}

