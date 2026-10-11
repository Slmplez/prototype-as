/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.signedcontent;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.util.Date;
import java.util.Enumeration;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.internal.signedcontent.SignatureBlockProcessor;
import org.eclipse.osgi.internal.signedcontent.SignedBundleHook;
import org.eclipse.osgi.internal.signedcontent.SignedContentConstants;
import org.eclipse.osgi.internal.signedcontent.SignedContentImpl;
import org.eclipse.osgi.internal.signedcontent.SignedContentMessages;
import org.eclipse.osgi.internal.signedcontent.SignerInfoImpl;
import org.eclipse.osgi.service.security.TrustEngine;
import org.eclipse.osgi.signedcontent.SignedContent;
import org.eclipse.osgi.signedcontent.SignedContentEntry;
import org.eclipse.osgi.signedcontent.SignerInfo;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SignedBundleFile
extends BundleFile
implements SignedContentConstants,
SignedContent {
    private BundleFile wrappedBundleFile;
    SignedContentImpl signedContent;
    private final int supportFlags;

    SignedBundleFile(SignedContentImpl signedContent, int supportFlags) {
        this.signedContent = signedContent;
        this.supportFlags = supportFlags;
    }

    void setBundleFile(BundleFile bundleFile) throws IOException, InvalidKeyException, SignatureException, CertificateException, NoSuchAlgorithmException, NoSuchProviderException {
        this.wrappedBundleFile = bundleFile;
        if (this.signedContent == null) {
            SignatureBlockProcessor signatureProcessor = new SignatureBlockProcessor(this, this.supportFlags);
            this.signedContent = signatureProcessor.process();
            if (this.signedContent != null) {
                SignedBundleFile.determineTrust(this.signedContent, this.supportFlags);
            }
        }
    }

    static void determineTrust(SignedContentImpl trustedContent, int supportFlags) {
        TrustEngine[] engines = null;
        SignerInfo[] signers = trustedContent.getSignerInfos();
        int i = 0;
        while (i < signers.length) {
            if (signers[i].getTrustAnchor() == null) {
                if (engines == null) {
                    engines = SignedBundleHook.getTrustEngines();
                }
                Certificate[] signerCerts = signers[i].getCertificateChain();
                ((SignerInfoImpl)signers[i]).setTrustAnchor(SignedBundleFile.findTrustAnchor(signerCerts, engines, supportFlags));
                SignerInfo tsaSignerInfo = trustedContent.getTSASignerInfo(signers[i]);
                if (tsaSignerInfo != null) {
                    Certificate[] tsaCerts = tsaSignerInfo.getCertificateChain();
                    ((SignerInfoImpl)tsaSignerInfo).setTrustAnchor(SignedBundleFile.findTrustAnchor(tsaCerts, engines, supportFlags));
                }
            }
            ++i;
        }
    }

    private static Certificate findTrustAnchor(Certificate[] certs, TrustEngine[] engines, int supportFlags) {
        if ((supportFlags & 2) == 0) {
            return certs != null && certs.length > 0 ? certs[certs.length - 1] : null;
        }
        int i = 0;
        while (i < engines.length) {
            try {
                Certificate anchor = engines[i].findTrustAnchor(certs);
                if (anchor != null) {
                    return anchor;
                }
            }
            catch (IOException e) {
                SignedBundleHook.log(new StringBuffer("TrustEngine failure: ").append(engines[i].getName()).toString(), 2, e);
            }
            ++i;
        }
        return null;
    }

    @Override
    public File getFile(String path, boolean nativeCode) {
        return this.wrappedBundleFile.getFile(path, nativeCode);
    }

    @Override
    public BundleEntry getEntry(String path) {
        int lastSlash;
        if (path.length() > 0 && path.charAt(0) == '/') {
            path = path.substring(1);
        }
        BundleEntry be = this.wrappedBundleFile.getEntry(path);
        if ((this.supportFlags & 4) == 0 || this.signedContent == null) {
            return be;
        }
        if (path.startsWith("META-INF/") && (lastSlash = path.lastIndexOf(47)) == "META-INF/".length() - 1) {
            if (path.equals("META-INF/MANIFEST.MF") || path.endsWith(".DSA") || path.endsWith(".RSA") || path.endsWith(".SF") || path.indexOf("SIG-") == "META-INF/".length()) {
                return be;
            }
            SignedContentEntry signedEntry = this.signedContent.getSignedEntry(path);
            if (signedEntry == null) {
                return be;
            }
        }
        if (be == null) {
            SignedContentEntry signedEntry = this.signedContent.getSignedEntry(path);
            if (signedEntry != null) {
                throw new SecurityException(NLS.bind(SignedContentMessages.file_is_removed_from_jar, path, this.getBaseFile().toString()));
            }
            return null;
        }
        return new SignedBundleEntry(be);
    }

    @Override
    public Enumeration<String> getEntryPaths(String path) {
        return this.wrappedBundleFile.getEntryPaths(path);
    }

    @Override
    public void close() throws IOException {
        this.wrappedBundleFile.close();
    }

    @Override
    public void open() throws IOException {
        this.wrappedBundleFile.open();
    }

    @Override
    public boolean containsDir(String dir) {
        return this.wrappedBundleFile.containsDir(dir);
    }

    @Override
    public File getBaseFile() {
        return this.wrappedBundleFile.getBaseFile();
    }

    BundleFile getWrappedBundleFile() {
        return this.wrappedBundleFile;
    }

    SignedContentImpl getSignedContent() {
        return this.signedContent;
    }

    @Override
    public SignedContentEntry[] getSignedEntries() {
        return this.signedContent == null ? null : this.signedContent.getSignedEntries();
    }

    @Override
    public SignedContentEntry getSignedEntry(String name) {
        return this.signedContent == null ? null : this.signedContent.getSignedEntry(name);
    }

    @Override
    public SignerInfo[] getSignerInfos() {
        return this.signedContent == null ? null : this.signedContent.getSignerInfos();
    }

    @Override
    public Date getSigningTime(SignerInfo signerInfo) {
        return this.signedContent == null ? null : this.signedContent.getSigningTime(signerInfo);
    }

    @Override
    public SignerInfo getTSASignerInfo(SignerInfo signerInfo) {
        return this.signedContent == null ? null : this.signedContent.getTSASignerInfo(signerInfo);
    }

    @Override
    public boolean isSigned() {
        return this.signedContent == null ? false : this.signedContent.isSigned();
    }

    @Override
    public void checkValidity(SignerInfo signerInfo) throws CertificateExpiredException, CertificateNotYetValidException {
        if (this.signedContent != null) {
            this.signedContent.checkValidity(signerInfo);
        }
    }

    class SignedBundleEntry
    extends BundleEntry {
        BundleEntry nestedEntry;

        SignedBundleEntry(BundleEntry nestedEntry) {
            this.nestedEntry = nestedEntry;
        }

        public InputStream getInputStream() throws IOException {
            InputStream in = SignedBundleFile.this.signedContent.getDigestInputStream(this.nestedEntry);
            if (in == null) {
                throw new SecurityException("Corrupted file: the digest does not exist for the file " + this.nestedEntry.getName());
            }
            return in;
        }

        public long getSize() {
            return this.nestedEntry.getSize();
        }

        public String getName() {
            return this.nestedEntry.getName();
        }

        public long getTime() {
            return this.nestedEntry.getTime();
        }

        public URL getLocalURL() {
            return this.nestedEntry.getLocalURL();
        }

        public URL getFileURL() {
            return this.nestedEntry.getFileURL();
        }
    }
}

