/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.request.MonitorContendedEnterRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.request.MonitorContendedEnterRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.EventRequestImpl;

public class MonitorContendedEnterRequestImpl
extends EventRequestImpl
implements MonitorContendedEnterRequest {
    public MonitorContendedEnterRequestImpl(VirtualMachineImpl vmImpl) {
        super("MonitorContendedEnterRequest", vmImpl);
    }

    protected byte eventKind() {
        return 43;
    }
}

