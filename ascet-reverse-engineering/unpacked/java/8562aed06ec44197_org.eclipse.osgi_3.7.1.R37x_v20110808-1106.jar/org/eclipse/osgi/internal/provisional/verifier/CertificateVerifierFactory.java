/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.provisional.verifier;

import java.io.File;
import java.io.IOException;
import org.eclipse.osgi.internal.provisional.verifier.CertificateVerifier;
import org.osgi.framework.Bundle;

public interface CertificateVerifierFactory {
    public CertificateVerifier getVerifier(File var1) throws IOException;

    public CertificateVerifier getVerifier(Bundle var1) throws IOException;
}

