/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.request.ExceptionRequest
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.ReferenceType;
import com.sun.jdi.request.ExceptionRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.request.EventRequestImpl;

public class ExceptionRequestImpl
extends EventRequestImpl
implements ExceptionRequest {
    public ExceptionRequestImpl(VirtualMachineImpl vmImpl) {
        super("ExceptionRequest", vmImpl);
    }

    public ReferenceType exception() {
        return ((EventRequestImpl.ExceptionFilter)this.fExceptionFilters.get((int)0)).fException;
    }

    public boolean notifyCaught() {
        return ((EventRequestImpl.ExceptionFilter)this.fExceptionFilters.get((int)0)).fNotifyCaught;
    }

    public boolean notifyUncaught() {
        return ((EventRequestImpl.ExceptionFilter)this.fExceptionFilters.get((int)0)).fNotifyUncaught;
    }

    protected final byte eventKind() {
        return 4;
    }
}

