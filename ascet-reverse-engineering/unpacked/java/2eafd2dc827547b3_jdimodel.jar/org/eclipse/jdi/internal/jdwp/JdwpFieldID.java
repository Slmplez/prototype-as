/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.internal.jdwp;

import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpID;

public class JdwpFieldID
extends JdwpID {
    public JdwpFieldID(VirtualMachineImpl vmImpl) {
        super(vmImpl);
    }

    public int getSize() {
        return this.fVirtualMachine.fieldIDSize();
    }

    public boolean isNull() {
        return false;
    }
}

