/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.request.ModificationWatchpointRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.request.ModificationWatchpointRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.WatchpointRequestImpl;

public class ModificationWatchpointRequestImpl
extends WatchpointRequestImpl
implements ModificationWatchpointRequest {
    public ModificationWatchpointRequestImpl(VirtualMachineImpl vmImpl) {
        super("ModificationWatchpointRequest", vmImpl);
    }

    protected final byte eventKind() {
        return 21;
    }
}

