/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.LongValue
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.event.MonitorWaitEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.LongValue;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.event.MonitorWaitEvent;
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

public class MonitorWaitEventImpl
extends LocatableEventImpl
implements MonitorWaitEvent {
    public static final byte EVENT_KIND = 45;
    private long fTimeOut;
    private ObjectReference fMonitor;

    private MonitorWaitEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("MonitorWait", vmImpl, requestID);
    }

    public static MonitorWaitEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        MonitorWaitEventImpl event = new MonitorWaitEventImpl(vmImpl, requestID);
        event.fThreadRef = ThreadReferenceImpl.read(target, dataInStream);
        event.fMonitor = ObjectReferenceImpl.readObjectRefWithTag(target, dataInStream);
        event.fLocation = LocationImpl.read(target, dataInStream);
        event.fTimeOut = ((LongValue)ValueImpl.readWithTag(target, dataInStream)).value();
        return event;
    }

    public ObjectReference monitor() {
        return this.fMonitor;
    }

    public long timeout() {
        return this.fTimeOut;
    }
}

