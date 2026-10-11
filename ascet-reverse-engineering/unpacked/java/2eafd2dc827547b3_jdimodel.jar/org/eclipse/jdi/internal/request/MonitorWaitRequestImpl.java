/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.request.MonitorWaitRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.request.MonitorWaitRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.EventRequestImpl;

public class MonitorWaitRequestImpl
extends EventRequestImpl
implements MonitorWaitRequest {
    public MonitorWaitRequestImpl(VirtualMachineImpl vmImpl) {
        super("MonitorWaitRequest", vmImpl);
    }

    protected byte eventKind() {
        return 45;
    }
}

