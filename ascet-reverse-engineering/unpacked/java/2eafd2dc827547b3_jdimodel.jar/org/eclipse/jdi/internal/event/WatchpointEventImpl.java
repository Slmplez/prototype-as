/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.Field
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.Value
 *  com.sun.jdi.event.WatchpointEvent
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.Field;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.Value;
import com.sun.jdi.event.WatchpointEvent;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.FieldImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.LocatableEventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public abstract class WatchpointEventImpl
extends LocatableEventImpl
implements WatchpointEvent {
    protected FieldImpl fField;
    protected ObjectReferenceImpl fObjectReference;

    protected WatchpointEventImpl(String description, VirtualMachineImpl vmImpl, RequestID requestID) {
        super(description, vmImpl, requestID);
    }

    public void readWatchpointEventFields(MirrorImpl target, DataInputStream dataInStream) throws IOException {
        this.readThreadAndLocation(target, dataInStream);
        this.fField = FieldImpl.readWithReferenceTypeWithTag(target, dataInStream);
        this.fObjectReference = ObjectReferenceImpl.readObjectRefWithTag(target, dataInStream);
    }

    public Field field() {
        return this.fField;
    }

    public ObjectReference object() {
        return this.fObjectReference;
    }

    public Value valueCurrent() {
        if (this.fObjectReference == null) {
            return this.fField.declaringType().getValue((Field)this.fField);
        }
        return this.fObjectReference.getValue(this.fField);
    }
}

