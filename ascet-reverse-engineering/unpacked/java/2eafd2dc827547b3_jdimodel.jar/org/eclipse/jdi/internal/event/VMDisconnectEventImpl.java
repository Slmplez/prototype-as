/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.event.VMDisconnectEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.event.VMDisconnectEvent;
import java.io.DataInputStream;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.EventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public class VMDisconnectEventImpl
extends EventImpl
implements VMDisconnectEvent {
    public static final byte EVENT_KIND = 100;

    public VMDisconnectEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("VMDisconnectEvent", vmImpl, requestID);
    }

    public static VMDisconnectEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        VMDisconnectEventImpl event = new VMDisconnectEventImpl(vmImpl, requestID);
        return event;
    }
}

