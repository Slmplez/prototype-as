/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.event.ClassUnloadEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.event.ClassUnloadEvent;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.TypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.EventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public class ClassUnloadEventImpl
extends EventImpl
implements ClassUnloadEvent {
    public static final byte EVENT_KIND = 9;
    private String fSignature;

    private ClassUnloadEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("ClassUnloadEvent", vmImpl, requestID);
    }

    public static ClassUnloadEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        ClassUnloadEventImpl event = new ClassUnloadEventImpl(vmImpl, requestID);
        event.fSignature = target.readString("signature", dataInStream);
        vmImpl.removeKnownRefType(event.fSignature);
        return event;
    }

    public String className() {
        return TypeImpl.signatureToName(this.fSignature);
    }

    public String classSignature() {
        return this.fSignature;
    }
}

