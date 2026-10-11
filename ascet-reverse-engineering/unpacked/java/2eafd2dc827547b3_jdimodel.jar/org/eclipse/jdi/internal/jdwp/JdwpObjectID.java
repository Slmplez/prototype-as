/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.internal.jdwp;

import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpID;

public class JdwpObjectID
extends JdwpID {
    public JdwpObjectID(VirtualMachineImpl vmImpl) {
        super(vmImpl);
    }

    public int getSize() {
        return this.fVirtualMachine.objectIDSize();
    }

    public boolean isNull() {
        return this.fValue == 0L;
    }
}

