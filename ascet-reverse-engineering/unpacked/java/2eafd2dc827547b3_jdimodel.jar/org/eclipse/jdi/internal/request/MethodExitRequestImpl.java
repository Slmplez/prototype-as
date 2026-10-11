/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.request.MethodExitRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.request.MethodExitRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.EventRequestImpl;

public class MethodExitRequestImpl
extends EventRequestImpl
implements MethodExitRequest {
    public MethodExitRequestImpl(VirtualMachineImpl vmImpl) {
        super("MethodExitRequest", vmImpl);
    }

    protected final byte eventKind() {
        if (this.virtualMachine().canGetMethodReturnValues()) {
            return 42;
        }
        return 41;
    }
}

