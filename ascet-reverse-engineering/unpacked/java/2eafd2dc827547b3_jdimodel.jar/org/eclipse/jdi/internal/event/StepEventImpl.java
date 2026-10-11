/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.event.StepEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.event.StepEvent;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.LocatableEventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public class StepEventImpl
extends LocatableEventImpl
implements StepEvent {
    public static final byte EVENT_KIND = 1;

    private StepEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("StepEvent", vmImpl, requestID);
    }

    public static StepEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        StepEventImpl event = new StepEventImpl(vmImpl, requestID);
        event.readThreadAndLocation(target, dataInStream);
        return event;
    }
}

