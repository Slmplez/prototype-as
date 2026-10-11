/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.request.ThreadDeathRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.request.ThreadDeathRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.EventRequestImpl;

public class ThreadDeathRequestImpl
extends EventRequestImpl
implements ThreadDeathRequest {
    public ThreadDeathRequestImpl(VirtualMachineImpl vmImpl) {
        super("ThreadDeathRequest", vmImpl);
    }

    protected final byte eventKind() {
        return 7;
    }
}

