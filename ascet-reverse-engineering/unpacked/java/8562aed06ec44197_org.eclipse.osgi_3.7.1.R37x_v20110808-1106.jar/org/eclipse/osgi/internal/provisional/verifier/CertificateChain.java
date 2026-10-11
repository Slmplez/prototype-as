/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.provisional.verifier;

import java.security.cert.Certificate;
import java.util.Date;

public interface CertificateChain {
    public String getChain();

    public Certificate[] getCertificates();

    public Certificate getSigner();

    public Certificate getRoot();

    public boolean isTrusted();

    public Date getSigningTime();
}

