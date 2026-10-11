/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.request.AccessWatchpointRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.request.AccessWatchpointRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.WatchpointRequestImpl;

public class AccessWatchpointRequestImpl
extends WatchpointRequestImpl
implements AccessWatchpointRequest {
    public AccessWatchpointRequestImpl(VirtualMachineImpl vmImpl) {
        super("AccessWatchpointRequest", vmImpl);
    }

    protected final byte eventKind() {
        return 20;
    }
}

