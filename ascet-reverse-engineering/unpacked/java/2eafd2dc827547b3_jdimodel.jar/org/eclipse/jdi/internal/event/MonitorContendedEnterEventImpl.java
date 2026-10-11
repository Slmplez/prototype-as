/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.event.MonitorContendedEnterEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.ObjectReference;
import com.sun.jdi.event.MonitorContendedEnterEvent;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.LocationImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.LocatableEventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public class MonitorContendedEnterEventImpl
extends LocatableEventImpl
implements MonitorContendedEnterEvent {
    public static final byte EVENT_KIND = 43;
    private ObjectReference fMonitor;

    private MonitorContendedEnterEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("MonitorContendedEnter", vmImpl, requestID);
    }

    public static MonitorContendedEnterEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        MonitorContendedEnterEventImpl event = new MonitorContendedEnterEventImpl(vmImpl, requestID);
        event.fThreadRef = ThreadReferenceImpl.read(target, dataInStream);
        event.fMonitor = ObjectReferenceImpl.readObjectRefWithTag(target, dataInStream);
        event.fLocation = LocationImpl.read(target, dataInStream);
        return event;
    }

    public ObjectReference monitor() {
        return this.fMonitor;
    }
}

