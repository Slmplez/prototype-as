/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.event.ThreadStartEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.event.ThreadStartEvent;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.EventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public class ThreadStartEventImpl
extends EventImpl
implements ThreadStartEvent {
    public static final byte EVENT_KIND = 6;

    private ThreadStartEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("ThreadStartEvent", vmImpl, requestID);
    }

    public static ThreadStartEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        ThreadStartEventImpl event = new ThreadStartEventImpl(vmImpl, requestID);
        event.fThreadRef = ThreadReferenceImpl.read(target, dataInStream);
        return event;
    }
}

