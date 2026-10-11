/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.request.MonitorContendedEnteredRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.request.MonitorContendedEnteredRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.EventRequestImpl;

public class MonitorContendedEnteredRequestImpl
extends EventRequestImpl
implements MonitorContendedEnteredRequest {
    public MonitorContendedEnteredRequestImpl(VirtualMachineImpl vmImpl) {
        super("MonitorContendedEnteredRequest", vmImpl);
    }

    protected final byte eventKind() {
        return 44;
    }
}

