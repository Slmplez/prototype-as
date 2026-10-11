/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.event.VMStartEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.event.VMStartEvent;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.EventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public class VMStartEventImpl
extends EventImpl
implements VMStartEvent {
    public static final byte EVENT_KIND = 90;

    private VMStartEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("VMStartEvent", vmImpl, requestID);
    }

    public static VMStartEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        VMStartEventImpl event = new VMStartEventImpl(vmImpl, requestID);
        event.fThreadRef = ThreadReferenceImpl.read(target, dataInStream);
        return event;
    }
}

