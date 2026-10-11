/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.Locatable
 *  com.sun.jdi.Location
 *  com.sun.jdi.request.BreakpointRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.Locatable;
import com.sun.jdi.Location;
import com.sun.jdi.request.BreakpointRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.EventRequestImpl;

public class BreakpointRequestImpl
extends EventRequestImpl
implements BreakpointRequest,
Locatable {
    public BreakpointRequestImpl(VirtualMachineImpl vmImpl) {
        super("BreakpointRequest", vmImpl);
    }

    public Location location() {
        return (Location)this.fLocationFilters.get(0);
    }

    protected final byte eventKind() {
        return 2;
    }
}

