/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.event.ClassPrepareEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.ReferenceType;
import com.sun.jdi.event.ClassPrepareEvent;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ReferenceTypeImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.EventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public class ClassPrepareEventImpl
extends EventImpl
implements ClassPrepareEvent {
    public static final byte EVENT_KIND = 8;
    private ReferenceTypeImpl fReferenceType;

    private ClassPrepareEventImpl(VirtualMachineImpl vmImpl, RequestID requestID) {
        super("ClassPrepareEvent", vmImpl, requestID);
    }

    public static ClassPrepareEventImpl read(MirrorImpl target, RequestID requestID, DataInputStream dataInStream) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        ClassPrepareEventImpl event = new ClassPrepareEventImpl(vmImpl, requestID);
        event.fThreadRef = ThreadReferenceImpl.read(target, dataInStream);
        event.fReferenceType = ReferenceTypeImpl.readWithTypeTagAndSignature(target, false, dataInStream);
        target.readInt("class status", ReferenceTypeImpl.classStatusStrings(), dataInStream);
        return event;
    }

    public ReferenceType referenceType() {
        return this.fReferenceType;
    }

    public String classSignature() {
        return this.referenceType().signature();
    }
}

