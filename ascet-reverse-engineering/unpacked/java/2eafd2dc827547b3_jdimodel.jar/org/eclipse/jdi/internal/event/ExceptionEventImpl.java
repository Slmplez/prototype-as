/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.Location
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.event.ExceptionEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.Location;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.event.ExceptionEvent;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.LocationImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.LocatableEventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public class ExceptionEventImpl
extends LocatableEventImpl
implements ExceptionEvent {
    public static final byte EVENT_KIND = 4;
    private ObjectReferenceImpl fException;
    private LocationImpl fCatchLocation;

    private ExceptionEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("ExceptionEvent", vmImpl, requestID);
    }

    public static ExceptionEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        ExceptionEventImpl event = new ExceptionEventImpl(vmImpl, requestID);
        event.readThreadAndLocation(target, dataInStream);
        event.fException = ObjectReferenceImpl.readObjectRefWithTag(target, dataInStream);
        event.fCatchLocation = LocationImpl.read(target, dataInStream);
        return event;
    }

    public Location catchLocation() {
        return this.fCatchLocation;
    }

    public ObjectReference exception() {
        return this.fException;
    }
}

