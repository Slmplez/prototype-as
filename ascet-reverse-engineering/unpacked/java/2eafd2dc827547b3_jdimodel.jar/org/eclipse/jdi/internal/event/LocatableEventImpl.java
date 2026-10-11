/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.Locatable
 *  com.sun.jdi.Location
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.Locatable;
import com.sun.jdi.Location;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.LocationImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.EventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public abstract class LocatableEventImpl
extends EventImpl
implements Locatable {
    protected LocationImpl fLocation;

    protected LocatableEventImpl(String description, VirtualMachineImpl vmImpl, RequestID requestID) {
        super(description, vmImpl, requestID);
    }

    public void readThreadAndLocation(MirrorImpl target, DataInputStream dataInStream) throws IOException {
        this.fThreadRef = ThreadReferenceImpl.read(target, dataInStream);
        this.fLocation = LocationImpl.read(target, dataInStream);
    }

    public Location location() {
        return this.fLocation;
    }
}

