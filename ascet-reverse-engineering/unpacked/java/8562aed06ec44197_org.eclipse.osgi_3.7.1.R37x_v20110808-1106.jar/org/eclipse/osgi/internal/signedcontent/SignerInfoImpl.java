/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.signedcontent;

import java.security.cert.Certificate;
import org.eclipse.osgi.signedcontent.SignerInfo;

public class SignerInfoImpl
implements SignerInfo {
    private final Certificate[] chain;
    private final String mdAlgorithm;
    private volatile Certificate trustAnchor;

    public SignerInfoImpl(Certificate[] chain, Certificate trustAnchor, String mdAlgorithm) {
        this.chain = chain;
        this.trustAnchor = trustAnchor;
        this.mdAlgorithm = mdAlgorithm;
    }

    public Certificate[] getCertificateChain() {
        return this.chain;
    }

    public Certificate getTrustAnchor() {
        return this.trustAnchor;
    }

    public boolean isTrusted() {
        return this.trustAnchor != null;
    }

    void setTrustAnchor(Certificate trustAnchor) {
        this.trustAnchor = trustAnchor;
    }

    public String getMessageDigestAlgorithm() {
        return this.mdAlgorithm;
    }

    public int hashCode() {
        int result = this.mdAlgorithm.hashCode();
        int i = 0;
        while (i < this.chain.length) {
            result += this.chain[i].hashCode();
            ++i;
        }
        return result;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SignerInfo)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        SignerInfo other = (SignerInfo)obj;
        if (!this.mdAlgorithm.equals(other.getMessageDigestAlgorithm())) {
            return false;
        }
        Certificate[] otherCerts = other.getCertificateChain();
        if (otherCerts.length != this.chain.length) {
            return false;
        }
        int i = 0;
        while (i < this.chain.length) {
            if (!this.chain[i].equals(otherCerts[i])) {
                return false;
            }
            ++i;
        }
        return this.trustAnchor == null ? other.getTrustAnchor() == null : this.trustAnchor.equals(other.getTrustAnchor());
    }
}

