/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.Method
 *  com.sun.jdi.Value
 *  com.sun.jdi.event.MethodExitEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.Method;
import com.sun.jdi.Value;
import com.sun.jdi.event.MethodExitEvent;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.LocatableEventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public class MethodExitEventImpl
extends LocatableEventImpl
implements MethodExitEvent {
    public static final byte EVENT_KIND = 41;
    private Value fReturnValue = null;

    private MethodExitEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("MethodExitEvent", vmImpl, requestID);
    }

    public static MethodExitEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        MethodExitEventImpl event = new MethodExitEventImpl(vmImpl, requestID);
        event.readThreadAndLocation(target, dataInStream);
        return event;
    }

    public static MethodExitEventImpl readWithReturnValue(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        MethodExitEventImpl event = new MethodExitEventImpl(vmImpl, requestID);
        event.readThreadAndLocation(target, dataInStream);
        event.fReturnValue = ValueImpl.readWithTag(target, dataInStream);
        return event;
    }

    public Method method() {
        return this.fLocation.method();
    }

    public Value returnValue() {
        return this.fReturnValue;
    }
}

