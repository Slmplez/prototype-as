/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework;

import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.osgi.framework.Bundle;
import org.osgi.framework.FrameworkUtil;

final class SignerProperty {
    private final Bundle bundle;
    private final String pattern;

    public SignerProperty(String pattern) {
        this.pattern = pattern;
        this.bundle = null;
    }

    SignerProperty(Bundle bundle) {
        this.bundle = bundle;
        this.pattern = null;
    }

    public boolean equals(Object o) {
        if (!(o instanceof SignerProperty)) {
            return false;
        }
        SignerProperty other = (SignerProperty)o;
        Bundle matchBundle = this.bundle != null ? this.bundle : other.bundle;
        String matchPattern = this.bundle != null ? other.pattern : this.pattern;
        Map<X509Certificate, List<X509Certificate>> signers = matchBundle.getSignerCertificates(2);
        Iterator<List<X509Certificate>> iterator = signers.values().iterator();
        while (iterator.hasNext()) {
            List<X509Certificate> signerCerts = iterator.next();
            ArrayList<String> dnChain = new ArrayList<String>(signerCerts.size());
            Iterator<X509Certificate> iterator2 = signerCerts.iterator();
            while (iterator2.hasNext()) {
                X509Certificate signerCert = iterator2.next();
                dnChain.add(signerCert.getSubjectDN().getName());
            }
            try {
                if (!FrameworkUtil.matchDistinguishedNameChain(matchPattern, dnChain)) continue;
                return true;
            }
            catch (IllegalArgumentException illegalArgumentException) {}
        }
        return false;
    }

    public int hashCode() {
        return 31;
    }

    boolean isBundleSigned() {
        if (this.bundle == null) {
            return false;
        }
        Map<X509Certificate, List<X509Certificate>> signers = this.bundle.getSignerCertificates(2);
        return !signers.isEmpty();
    }
}

