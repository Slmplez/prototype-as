/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.IProcessingStepDescriptor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.artifact.processors.md5;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.artifact.processors.md5.Messages;
import org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing.ProcessingStep;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IProcessingStepDescriptor;
import org.eclipse.osgi.util.NLS;

public class MD5Verifier
extends ProcessingStep {
    protected String expectedMD5;
    private MessageDigest md5;

    public MD5Verifier() {
    }

    public MD5Verifier(String expected) {
        this.expectedMD5 = expected;
        this.basicInitialize(null);
    }

    public void initialize(IProvisioningAgent agent, IProcessingStepDescriptor descriptor, IArtifactDescriptor context) {
        super.initialize(agent, descriptor, context);
        String data = descriptor.getData();
        this.expectedMD5 = "download.md5".equals(data) ? context.getProperty("download.md5") : ("artifact.md5".equals(data) ? context.getProperty("artifact.md5") : data);
        this.basicInitialize(descriptor);
    }

    private void basicInitialize(IProcessingStepDescriptor descriptor) {
        int code;
        int n = descriptor == null ? 4 : (code = descriptor.isRequired() ? 4 : 1);
        if (this.expectedMD5 == null || this.expectedMD5.length() != 32) {
            this.setStatus((IStatus)new Status(code, "org.eclipse.equinox.p2.artifact.repository", NLS.bind((String)Messages.Error_invalid_hash, (Object)this.expectedMD5)));
        }
        try {
            this.md5 = MessageDigest.getInstance("MD5");
        }
        catch (NoSuchAlgorithmException e) {
            this.setStatus((IStatus)new Status(code, "org.eclipse.equinox.p2.artifact.repository", Messages.Error_MD5_unavailable, (Throwable)e));
        }
    }

    public void write(int b) throws IOException {
        this.md5.update((byte)b);
        this.getDestination().write(b);
    }

    public void close() throws IOException {
        byte[] digest = this.md5.digest();
        StringBuffer buf = new StringBuffer();
        int i = 0;
        while (i < digest.length) {
            if ((digest[i] & 0xFF) < 16) {
                buf.append('0');
            }
            buf.append(Integer.toHexString(digest[i] & 0xFF));
            ++i;
        }
        if (!buf.toString().equals(this.expectedMD5)) {
            this.setStatus((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", 1203, NLS.bind((String)Messages.Error_unexpected_hash, (Object)this.expectedMD5, (Object)buf), null));
        }
        super.close();
    }
}

