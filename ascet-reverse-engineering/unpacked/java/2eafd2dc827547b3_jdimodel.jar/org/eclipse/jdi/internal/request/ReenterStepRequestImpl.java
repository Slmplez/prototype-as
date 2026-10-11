/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.internal.request;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.jdi.hcr.ReenterStepRequest;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.EventImpl;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;
import org.eclipse.jdi.internal.request.RequestID;
import org.eclipse.jdi.internal.request.StepRequestImpl;

public class ReenterStepRequestImpl
extends StepRequestImpl
implements ReenterStepRequest {
    public ReenterStepRequestImpl(VirtualMachineImpl vmImpl) {
        super("ReenterStepRequest", vmImpl);
    }

    public int threadStepDepthJDWP(int threadStepDepth) {
        return 3;
    }

    public void enable() {
        if (this.isEnabled()) {
            return;
        }
        this.initJdwpRequest();
        try {
            try {
                ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
                DataOutputStream outData = new DataOutputStream(outBytes);
                this.writeByte(this.eventKind(), "event kind", EventImpl.eventKindMap(), outData);
                this.writeByte(this.suspendPolicyJDWP(), "suspend policy", outData);
                this.writeInt(this.modifierCount(), "modifiers", outData);
                this.writeModifiers(outData);
                JdwpReplyPacket replyPacket = this.requestVM(32772, outBytes);
                this.defaultReplyErrorHandler(replyPacket.errorCode());
                DataInputStream replyData = replyPacket.dataInStream();
                this.fRequestID = RequestID.read(this, replyData);
                this.virtualMachineImpl().eventRequestManagerImpl().addRequestIDMapping(this);
            }
            catch (IOException e) {
                this.defaultIOExceptionHandler(e);
                this.handledJdwpRequest();
            }
        }
        finally {
            this.handledJdwpRequest();
        }
    }
}

