/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.signedcontent;

import java.io.IOException;
import java.io.InputStream;
import java.security.cert.Certificate;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.internal.signedcontent.DigestedInputStream;
import org.eclipse.osgi.internal.signedcontent.SignedBundleFile;
import org.eclipse.osgi.internal.signedcontent.SignedContentMessages;
import org.eclipse.osgi.signedcontent.InvalidContentException;
import org.eclipse.osgi.signedcontent.SignedContent;
import org.eclipse.osgi.signedcontent.SignedContentEntry;
import org.eclipse.osgi.signedcontent.SignerInfo;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SignedContentImpl
implements SignedContent {
    static final SignerInfo[] EMPTY_SIGNERINFO = new SignerInfo[0];
    volatile SignedBundleFile content;
    private final Map<String, Object> contentMDResults;
    private final SignerInfo[] signerInfos;
    private Map<SignerInfo, Object[]> tsaSignerInfos;
    private volatile boolean checkedValid = false;

    public SignedContentImpl(SignerInfo[] signerInfos, Map<String, Object> contentMDResults) {
        this.signerInfos = signerInfos == null ? EMPTY_SIGNERINFO : signerInfos;
        this.contentMDResults = contentMDResults;
    }

    @Override
    public SignedContentEntry[] getSignedEntries() {
        if (this.contentMDResults == null) {
            return new SignedContentEntry[0];
        }
        ArrayList<SignedContentEntryImpl> results = new ArrayList<SignedContentEntryImpl>(this.contentMDResults.size());
        for (Map.Entry<String, Object> entry : this.contentMDResults.entrySet()) {
            String entryName = entry.getKey();
            Object[] mdResult = (Object[])entry.getValue();
            results.add(new SignedContentEntryImpl(entryName, (SignerInfo[])mdResult[0]));
        }
        return results.toArray(new SignedContentEntry[results.size()]);
    }

    @Override
    public SignedContentEntry getSignedEntry(String name) {
        if (this.contentMDResults == null) {
            return null;
        }
        Object[] mdResult = (Object[])this.contentMDResults.get(name);
        return mdResult == null ? null : new SignedContentEntryImpl(name, (SignerInfo[])mdResult[0]);
    }

    @Override
    public SignerInfo[] getSignerInfos() {
        return this.signerInfos;
    }

    @Override
    public Date getSigningTime(SignerInfo signerInfo) {
        if (this.tsaSignerInfos == null) {
            return null;
        }
        Object[] tsaInfo = this.tsaSignerInfos.get(signerInfo);
        return tsaInfo == null ? null : (Date)tsaInfo[1];
    }

    @Override
    public SignerInfo getTSASignerInfo(SignerInfo signerInfo) {
        if (this.tsaSignerInfos == null) {
            return null;
        }
        Object[] tsaInfo = this.tsaSignerInfos.get(signerInfo);
        return tsaInfo == null ? null : (SignerInfo)tsaInfo[0];
    }

    @Override
    public boolean isSigned() {
        return this.signerInfos.length > 0;
    }

    @Override
    public void checkValidity(SignerInfo signer) throws CertificateExpiredException, CertificateNotYetValidException {
        Date signingTime = this.getSigningTime(signer);
        if (this.checkedValid) {
            return;
        }
        Certificate[] certs = signer.getCertificateChain();
        int i = 0;
        while (i < certs.length) {
            if (certs[i] instanceof X509Certificate) {
                if (signingTime == null) {
                    ((X509Certificate)certs[i]).checkValidity();
                } else {
                    ((X509Certificate)certs[i]).checkValidity(signingTime);
                }
            }
            ++i;
        }
        this.checkedValid = true;
    }

    void setContent(SignedBundleFile content) {
        this.content = content;
    }

    void setTSASignerInfos(Map<SignerInfo, Object[]> tsaSignerInfos) {
        this.tsaSignerInfos = tsaSignerInfos;
    }

    void addTSASignerInfo(SignerInfo baseInfo, SignerInfo tsaSignerInfo, Date signingTime) {
        if (!this.containsInfo(baseInfo)) {
            throw new IllegalArgumentException("The baseInfo is not found");
        }
        if (this.tsaSignerInfos == null) {
            this.tsaSignerInfos = new HashMap<SignerInfo, Object[]>(this.signerInfos.length);
        }
        this.tsaSignerInfos.put(baseInfo, new Object[]{tsaSignerInfo, signingTime});
    }

    Map<String, Object> getContentMDResults() {
        return this.contentMDResults;
    }

    private boolean containsInfo(SignerInfo signerInfo) {
        int i = 0;
        while (i < this.signerInfos.length) {
            if (signerInfo == this.signerInfos[i]) {
                return true;
            }
            ++i;
        }
        return false;
    }

    InputStream getDigestInputStream(BundleEntry nestedEntry) throws IOException {
        if (this.contentMDResults == null) {
            return nestedEntry.getInputStream();
        }
        Object[] mdResult = (Object[])this.contentMDResults.get(nestedEntry.getName());
        if (mdResult == null) {
            return null;
        }
        return new DigestedInputStream(nestedEntry, this.content, (SignerInfo[])mdResult[0], (byte[][])mdResult[1], nestedEntry.getSize());
    }

    public class SignedContentEntryImpl
    implements SignedContentEntry {
        private final String entryName;
        private final SignerInfo[] entrySigners;

        public SignedContentEntryImpl(String entryName, SignerInfo[] entrySigners) {
            this.entryName = entryName;
            this.entrySigners = entrySigners == null ? EMPTY_SIGNERINFO : entrySigners;
        }

        public String getName() {
            return this.entryName;
        }

        public SignerInfo[] getSignerInfos() {
            return this.entrySigners;
        }

        public boolean isSigned() {
            return this.entrySigners.length > 0;
        }

        public void verify() throws IOException, InvalidContentException {
            SignedBundleFile currentContent = SignedContentImpl.this.content;
            if (currentContent == null) {
                throw new InvalidContentException("The content was not set", null);
            }
            BundleEntry entry = null;
            SecurityException exception = null;
            try {
                entry = ((BundleFile)currentContent).getEntry(this.entryName);
            }
            catch (SecurityException e) {
                exception = e;
            }
            if (entry == null) {
                throw new InvalidContentException(NLS.bind(SignedContentMessages.file_is_removed_from_jar, this.entryName, ((BundleFile)currentContent).getBaseFile().toString()), exception);
            }
            entry.getBytes();
        }
    }
}

