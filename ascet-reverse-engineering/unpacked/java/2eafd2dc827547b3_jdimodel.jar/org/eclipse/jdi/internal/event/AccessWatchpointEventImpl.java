/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.event.AccessWatchpointEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.event.AccessWatchpointEvent;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.WatchpointEventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public class AccessWatchpointEventImpl
extends WatchpointEventImpl
implements AccessWatchpointEvent {
    public static final byte EVENT_KIND = 20;

    protected AccessWatchpointEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("AccessWatchpointEvent", vmImpl, requestID);
    }

    public static WatchpointEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        AccessWatchpointEventImpl event = new AccessWatchpointEventImpl(vmImpl, requestID);
        event.readWatchpointEventFields(target, dataInStream);
        return event;
    }
}

