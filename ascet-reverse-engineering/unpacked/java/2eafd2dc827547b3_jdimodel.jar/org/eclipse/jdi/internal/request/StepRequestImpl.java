/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.request.StepRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.ThreadReference;
import com.sun.jdi.request.StepRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.EventRequestImpl;

public class StepRequestImpl
extends EventRequestImpl
implements StepRequest {
    public StepRequestImpl(VirtualMachineImpl vmImpl) {
        super("StepRequest", vmImpl);
    }

    protected StepRequestImpl(String description, VirtualMachineImpl vmImpl) {
        super(description, vmImpl);
    }

    public int depth() {
        return ((EventRequestImpl.ThreadStepFilter)this.fThreadStepFilters.get((int)0)).fThreadStepDepth;
    }

    public int size() {
        return ((EventRequestImpl.ThreadStepFilter)this.fThreadStepFilters.get((int)0)).fThreadStepSize;
    }

    public ThreadReference thread() {
        return ((EventRequestImpl.ThreadStepFilter)this.fThreadStepFilters.get((int)0)).fThread;
    }

    protected final byte eventKind() {
        return 1;
    }
}

