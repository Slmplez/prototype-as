/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.request.ClassPrepareRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.request.ClassPrepareRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.EventRequestImpl;

public class ClassPrepareRequestImpl
extends EventRequestImpl
implements ClassPrepareRequest {
    public ClassPrepareRequestImpl(VirtualMachineImpl vmImpl) {
        super("ClassPrepareRequest", vmImpl);
    }

    protected final byte eventKind() {
        return 8;
    }
}

