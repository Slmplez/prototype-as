/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.request.VMDeathRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.request.VMDeathRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.EventRequestImpl;

public class VMDeathRequestImpl
extends EventRequestImpl
implements VMDeathRequest {
    public VMDeathRequestImpl(VirtualMachineImpl vmImpl) {
        super("VMDeathRequest", vmImpl);
    }

    protected byte eventKind() {
        return 99;
    }
}

