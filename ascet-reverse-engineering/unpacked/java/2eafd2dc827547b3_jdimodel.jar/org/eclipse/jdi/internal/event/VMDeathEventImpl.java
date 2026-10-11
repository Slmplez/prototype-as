/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.event.VMDeathEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.event.VMDeathEvent;
import java.io.DataInputStream;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.EventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public class VMDeathEventImpl
extends EventImpl
implements VMDeathEvent {
    public static final byte EVENT_KIND = 99;

    public VMDeathEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("VMDeathEvent", vmImpl, requestID);
    }

    public static VMDeathEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        VMDeathEventImpl event = new VMDeathEventImpl(vmImpl, requestID);
        return event;
    }
}

