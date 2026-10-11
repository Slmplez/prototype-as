/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.request.MethodEntryRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.request.MethodEntryRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.EventRequestImpl;

public class MethodEntryRequestImpl
extends EventRequestImpl
implements MethodEntryRequest {
    public MethodEntryRequestImpl(VirtualMachineImpl vmImpl) {
        super("MethodEntryRequest", vmImpl);
    }

    protected final byte eventKind() {
        return 40;
    }
}

