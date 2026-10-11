/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.signedcontent;

import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import org.eclipse.osgi.internal.provisional.verifier.CertificateChain;
import org.eclipse.osgi.internal.provisional.verifier.CertificateVerifier;
import org.eclipse.osgi.internal.provisional.verifier.CertificateVerifierFactory;
import org.eclipse.osgi.signedcontent.InvalidContentException;
import org.eclipse.osgi.signedcontent.SignedContent;
import org.eclipse.osgi.signedcontent.SignedContentEntry;
import org.eclipse.osgi.signedcontent.SignedContentFactory;
import org.eclipse.osgi.signedcontent.SignerInfo;
import org.osgi.framework.Bundle;

public class LegacyVerifierFactory
implements CertificateVerifierFactory {
    private final SignedContentFactory signedContentFactory;

    public LegacyVerifierFactory(SignedContentFactory signedContentFactory) {
        this.signedContentFactory = signedContentFactory;
    }

    public CertificateVerifier getVerifier(File content) throws IOException {
        try {
            return new LegacyVerifier(this.signedContentFactory.getSignedContent(content));
        }
        catch (GeneralSecurityException e) {
            throw (IOException)new IOException(e.getMessage()).initCause(e);
        }
    }

    public CertificateVerifier getVerifier(Bundle bundle) throws IOException {
        try {
            return new LegacyVerifier(this.signedContentFactory.getSignedContent(bundle));
        }
        catch (GeneralSecurityException e) {
            throw (IOException)new IOException(e.getMessage()).initCause(e);
        }
    }

    static class LegacyChain
    implements CertificateChain {
        private final SignerInfo signerInfo;
        private final SignedContent content;

        public LegacyChain(SignerInfo signerInfo, SignedContent content) {
            this.signerInfo = signerInfo;
            this.content = content;
        }

        public Certificate[] getCertificates() {
            return this.signerInfo.getCertificateChain();
        }

        public String getChain() {
            StringBuffer sb = new StringBuffer();
            Certificate[] certs = this.getCertificates();
            int i = 0;
            while (i < certs.length) {
                X509Certificate x509Cert = (X509Certificate)certs[i];
                sb.append(x509Cert.getSubjectDN().getName());
                sb.append("; ");
                ++i;
            }
            return sb.toString();
        }

        public Certificate getRoot() {
            Certificate[] certs = this.getCertificates();
            return certs.length > 0 ? certs[certs.length - 1] : null;
        }

        public Certificate getSigner() {
            Certificate[] certs = this.getCertificates();
            return certs.length > 0 ? certs[0] : null;
        }

        public Date getSigningTime() {
            return this.content.getSigningTime(this.signerInfo);
        }

        public boolean isTrusted() {
            return this.signerInfo.isTrusted();
        }
    }

    static class LegacyVerifier
    implements CertificateVerifier {
        private final SignedContent signedContent;

        public LegacyVerifier(SignedContent signedContent) {
            this.signedContent = signedContent;
        }

        public void checkContent() throws CertificateException, CertificateExpiredException {
            SignedContentEntry[] entries = this.signedContent.getSignedEntries();
            int i = 0;
            while (i < entries.length) {
                try {
                    entries[i].verify();
                }
                catch (InvalidContentException e) {
                    throw (SecurityException)new SecurityException(e.getMessage()).initCause(e);
                }
                catch (IOException e) {
                    throw (SecurityException)new SecurityException(e.getMessage()).initCause(e);
                }
                ++i;
            }
            SignerInfo[] infos = this.signedContent.getSignerInfos();
            int i2 = 0;
            while (i2 < infos.length) {
                this.signedContent.checkValidity(infos[i2]);
                ++i2;
            }
        }

        public CertificateChain[] getChains() {
            SignerInfo[] infos = this.signedContent.getSignerInfos();
            CertificateChain[] chains = new CertificateChain[infos.length];
            int i = 0;
            while (i < chains.length) {
                chains[i] = new LegacyChain(infos[i], this.signedContent);
                ++i;
            }
            return chains;
        }

        public boolean isSigned() {
            return this.signedContent.isSigned();
        }

        public String[] verifyContent() {
            ArrayList<String> invalidContent = new ArrayList<String>(0);
            SignedContentEntry[] entries = this.signedContent.getSignedEntries();
            int i = 0;
            while (i < entries.length) {
                try {
                    entries[i].verify();
                }
                catch (InvalidContentException invalidContentException) {
                    invalidContent.add(entries[i].getName());
                }
                catch (IOException iOException) {
                    invalidContent.add(entries[i].getName());
                }
                ++i;
            }
            return invalidContent.toArray(new String[invalidContent.size()]);
        }
    }
}

