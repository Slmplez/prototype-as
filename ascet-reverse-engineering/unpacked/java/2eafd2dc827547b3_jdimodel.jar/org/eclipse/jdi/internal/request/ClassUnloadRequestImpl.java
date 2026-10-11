/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.request.ClassUnloadRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.request.ClassUnloadRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.EventRequestImpl;

public class ClassUnloadRequestImpl
extends EventRequestImpl
implements ClassUnloadRequest {
    public ClassUnloadRequestImpl(VirtualMachineImpl vmImpl) {
        super("ClassUnloadRequest", vmImpl);
    }

    protected final byte eventKind() {
        return 9;
    }
}

