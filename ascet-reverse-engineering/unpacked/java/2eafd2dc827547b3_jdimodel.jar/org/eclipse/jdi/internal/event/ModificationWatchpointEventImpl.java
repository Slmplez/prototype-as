/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.Value
 *  com.sun.jdi.event.ModificationWatchpointEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.Value;
import com.sun.jdi.event.ModificationWatchpointEvent;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.WatchpointEventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public class ModificationWatchpointEventImpl
extends WatchpointEventImpl
implements ModificationWatchpointEvent {
    public static final byte EVENT_KIND = 21;
    private ValueImpl fValueToBe;

    private ModificationWatchpointEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("ModificationWatchpointEvent", vmImpl, requestID);
    }

    public static WatchpointEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        ModificationWatchpointEventImpl event = new ModificationWatchpointEventImpl(vmImpl, requestID);
        event.readWatchpointEventFields(target, dataInStream);
        event.fValueToBe = ValueImpl.readWithTag(target, dataInStream);
        return event;
    }

    public Value valueToBe() {
        return this.fValueToBe;
    }
}

