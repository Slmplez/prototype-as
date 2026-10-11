/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.Field
 *  com.sun.jdi.request.WatchpointRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.Field;
import com.sun.jdi.request.WatchpointRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.EventRequestImpl;

public abstract class WatchpointRequestImpl
extends EventRequestImpl
implements WatchpointRequest {
    public WatchpointRequestImpl(String description, VirtualMachineImpl vmImpl) {
        super(description, vmImpl);
    }

    public Field field() {
        return (Field)this.fFieldFilters.get(0);
    }
}

