/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.Method
 *  com.sun.jdi.event.MethodEntryEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.Method;
import com.sun.jdi.event.MethodEntryEvent;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.LocatableEventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public class MethodEntryEventImpl
extends LocatableEventImpl
implements MethodEntryEvent {
    public static final byte EVENT_KIND = 40;

    private MethodEntryEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("MethodEntryEvent", vmImpl, requestID);
    }

    public static MethodEntryEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        MethodEntryEventImpl event = new MethodEntryEventImpl(vmImpl, requestID);
        event.readThreadAndLocation(target, dataInStream);
        return event;
    }

    public Method method() {
        return this.fLocation.method();
    }
}

