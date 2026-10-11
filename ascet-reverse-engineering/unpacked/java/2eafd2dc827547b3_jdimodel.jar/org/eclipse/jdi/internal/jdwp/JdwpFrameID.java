/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.internal.jdwp;

import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpID;

public class JdwpFrameID
extends JdwpID {
    public JdwpFrameID(VirtualMachineImpl vmImpl) {
        super(vmImpl);
    }

    public int getSize() {
        return this.fVirtualMachine.frameIDSize();
    }

    public boolean isNull() {
        return false;
    }
}

