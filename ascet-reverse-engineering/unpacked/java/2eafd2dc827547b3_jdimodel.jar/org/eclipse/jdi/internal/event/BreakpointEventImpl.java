/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.event.BreakpointEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.event.BreakpointEvent;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.LocatableEventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public class BreakpointEventImpl
extends LocatableEventImpl
implements BreakpointEvent {
    public static final byte EVENT_KIND = 2;

    private BreakpointEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("BreakpointEvent", vmImpl, requestID);
    }

    public static BreakpointEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        BreakpointEventImpl event = new BreakpointEventImpl(vmImpl, requestID);
        event.readThreadAndLocation(target, dataInStream);
        ((ThreadReferenceImpl)event.thread()).setIsAtBreakpoint();
        return event;
    }
}

