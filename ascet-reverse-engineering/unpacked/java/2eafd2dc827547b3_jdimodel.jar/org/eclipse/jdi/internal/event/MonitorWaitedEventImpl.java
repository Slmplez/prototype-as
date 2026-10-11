/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.BooleanValue
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.event.MonitorWaitedEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.BooleanValue;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.event.MonitorWaitedEvent;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.LocationImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.ValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.LocatableEventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public class MonitorWaitedEventImpl
extends LocatableEventImpl
implements MonitorWaitedEvent {
    public static final byte EVENT_KIND = 46;
    private boolean fTimedOut;
    private ObjectReference fMonitor;

    private MonitorWaitedEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("MonitorWaited", vmImpl, requestID);
    }

    public static MonitorWaitedEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        MonitorWaitedEventImpl event = new MonitorWaitedEventImpl(vmImpl, requestID);
        event.fThreadRef = ThreadReferenceImpl.read(target, dataInStream);
        event.fMonitor = ObjectReferenceImpl.readObjectRefWithTag(target, dataInStream);
        event.fLocation = LocationImpl.read(target, dataInStream);
        event.fTimedOut = ((BooleanValue)ValueImpl.readWithTag(target, dataInStream)).value();
        return event;
    }

    public ObjectReference monitor() {
        return this.fMonitor;
    }

    public boolean timedout() {
        return this.fTimedOut;
    }
}

