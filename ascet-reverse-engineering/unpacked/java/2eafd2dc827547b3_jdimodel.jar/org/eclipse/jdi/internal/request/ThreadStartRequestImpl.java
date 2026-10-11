/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.request.ThreadStartRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.request.ThreadStartRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.EventRequestImpl;

public class ThreadStartRequestImpl
extends EventRequestImpl
implements ThreadStartRequest {
    public ThreadStartRequestImpl(VirtualMachineImpl vmImpl) {
        super("ThreadStartRequest", vmImpl);
    }

    protected final byte eventKind() {
        return 6;
    }
}

