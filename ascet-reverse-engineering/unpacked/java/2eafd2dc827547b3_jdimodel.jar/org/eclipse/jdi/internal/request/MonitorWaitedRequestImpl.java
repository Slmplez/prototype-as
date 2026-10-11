/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.request.MonitorWaitedRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.request.MonitorWaitedRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.EventRequestImpl;

public class MonitorWaitedRequestImpl
extends EventRequestImpl
implements MonitorWaitedRequest {
    public MonitorWaitedRequestImpl(VirtualMachineImpl vmImpl) {
        super("MonitorWaitedRequestImpl", vmImpl);
    }

    protected byte eventKind() {
        return 46;
    }
}

