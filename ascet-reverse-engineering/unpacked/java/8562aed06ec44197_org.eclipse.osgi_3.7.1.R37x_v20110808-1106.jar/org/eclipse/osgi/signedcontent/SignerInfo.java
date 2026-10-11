/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.signedcontent;

import java.security.cert.Certificate;

public interface SignerInfo {
    public Certificate[] getCertificateChain();

    public Certificate getTrustAnchor();

    public boolean isTrusted();

    public String getMessageDigestAlgorithm();
}

