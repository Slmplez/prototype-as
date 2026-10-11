/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.provisional.verifier;

import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import org.eclipse.osgi.internal.provisional.verifier.CertificateChain;

public interface CertificateVerifier {
    public void checkContent() throws CertificateException, CertificateExpiredException, SignatureException;

    public String[] verifyContent();

    public boolean isSigned();

    public CertificateChain[] getChains();
}

