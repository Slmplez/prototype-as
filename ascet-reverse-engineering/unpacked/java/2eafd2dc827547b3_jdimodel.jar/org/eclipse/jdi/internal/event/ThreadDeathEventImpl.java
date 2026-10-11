/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.event.ThreadDeathEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.event.ThreadDeathEvent;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.EventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public class ThreadDeathEventImpl
extends EventImpl
implements ThreadDeathEvent {
    public static final byte EVENT_KIND = 7;

    private ThreadDeathEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("ThreadDeathEvent", vmImpl, requestID);
    }

    public static ThreadDeathEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        ThreadDeathEventImpl event = new ThreadDeathEventImpl(vmImpl, requestID);
        event.fThreadRef = ThreadReferenceImpl.read(target, dataInStream);
        return event;
    }
}

