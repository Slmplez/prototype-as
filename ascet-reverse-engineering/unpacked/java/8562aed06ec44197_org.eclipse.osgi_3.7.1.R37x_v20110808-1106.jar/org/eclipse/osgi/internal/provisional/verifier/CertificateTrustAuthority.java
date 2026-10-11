/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.provisional.verifier;

import java.security.cert.Certificate;
import java.security.cert.CertificateException;

public interface CertificateTrustAuthority {
    public void checkTrust(Certificate[] var1) throws CertificateException;

    public void addTrusted(Certificate[] var1) throws CertificateException;
}

