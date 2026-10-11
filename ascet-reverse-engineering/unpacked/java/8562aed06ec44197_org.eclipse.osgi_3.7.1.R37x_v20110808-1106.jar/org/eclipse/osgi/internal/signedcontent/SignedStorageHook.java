/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.signedcontent;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.hooks.StorageHook;
import org.eclipse.osgi.framework.util.KeyedElement;
import org.eclipse.osgi.internal.signedcontent.PKCS7Processor;
import org.eclipse.osgi.internal.signedcontent.SignedContentImpl;
import org.eclipse.osgi.internal.signedcontent.SignerInfoImpl;
import org.eclipse.osgi.signedcontent.SignedContent;
import org.eclipse.osgi.signedcontent.SignerInfo;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SignedStorageHook
implements StorageHook {
    public static final String KEY;
    public static final int HASHCODE;
    private static final int STORAGE_VERSION = 3;
    private static List<SignerInfo> savedSignerInfo;
    private static long firstIDSaved;
    private static long lastIDSaved;
    private static List<SignerInfo> loadedSignerInfo;
    private static long lastIDLoaded;
    private BaseData bundledata;
    SignedContentImpl signedContent;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.internal.signedcontent.SignedStorageHook");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        KEY = clazz.getName();
        HASHCODE = KEY.hashCode();
        savedSignerInfo = new ArrayList<SignerInfo>(5);
        firstIDSaved = -1L;
        lastIDSaved = -1L;
        loadedSignerInfo = new ArrayList<SignerInfo>(5);
    }

    @Override
    public int getStorageVersion() {
        return 3;
    }

    @Override
    public StorageHook create(BaseData data) throws BundleException {
        SignedStorageHook hook = new SignedStorageHook();
        hook.bundledata = data;
        return hook;
    }

    @Override
    public void initialize(Dictionary<String, String> manifest) throws BundleException {
    }

    @Override
    public StorageHook load(BaseData target, DataInputStream is) throws IOException {
        if (lastIDLoaded > target.getBundleID()) {
            loadedSignerInfo.clear();
        }
        lastIDLoaded = target.getBundleID();
        SignedStorageHook hook = new SignedStorageHook();
        hook.bundledata = target;
        boolean signed = is.readBoolean();
        if (!signed) {
            return hook;
        }
        int numSigners = is.readInt();
        SignerInfo[] signerInfos = new SignerInfo[numSigners];
        int i = 0;
        while (i < numSigners) {
            signerInfos[i] = this.readSignerInfo(is);
            ++i;
        }
        int resultsSize = is.readInt();
        HashMap<String, Object> contentMDResults = null;
        if (resultsSize > 0) {
            contentMDResults = new HashMap<String, Object>(resultsSize);
            int i2 = 0;
            while (i2 < resultsSize) {
                String path = is.readUTF();
                int numEntrySigners = is.readInt();
                SignerInfo[] entrySigners = new SignerInfo[numEntrySigners];
                byte[][] entryResults = new byte[numEntrySigners][];
                int j = 0;
                while (j < numEntrySigners) {
                    entrySigners[j] = this.readSignerInfo(is);
                    int resultSize = is.readInt();
                    entryResults[j] = new byte[resultSize];
                    is.readFully(entryResults[j]);
                    ++j;
                }
                contentMDResults.put(path, new Object[]{entrySigners, entryResults});
                ++i2;
            }
        }
        SignedContentImpl result = new SignedContentImpl(signerInfos, contentMDResults);
        int i3 = 0;
        while (i3 < numSigners) {
            boolean hasTSA = is.readBoolean();
            if (hasTSA) {
                SignerInfo tsaSigner = this.readSignerInfo(is);
                Date signingDate = new Date(is.readLong());
                result.addTSASignerInfo(signerInfos[i3], tsaSigner, signingDate);
            }
            ++i3;
        }
        hook.signedContent = result;
        return hook;
    }

    @Override
    public void save(DataOutputStream os) throws IOException {
        this.getFirstLastID();
        if (firstIDSaved == this.bundledata.getBundleID()) {
            savedSignerInfo.clear();
        }
        if (lastIDSaved == this.bundledata.getBundleID()) {
            lastIDSaved = -1L;
            firstIDSaved = -1L;
        }
        os.writeBoolean(this.signedContent != null);
        if (this.signedContent == null) {
            return;
        }
        SignerInfo[] signerInfos = this.signedContent.getSignerInfos();
        os.writeInt(signerInfos.length);
        int i = 0;
        while (i < signerInfos.length) {
            this.saveSignerInfo(signerInfos[i], os);
            ++i;
        }
        Map<String, Object> contentMDResults = this.signedContent.getContentMDResults();
        os.writeInt(contentMDResults == null ? -1 : contentMDResults.size());
        if (contentMDResults != null) {
            for (Map.Entry<String, Object> entry : contentMDResults.entrySet()) {
                String path = entry.getKey();
                os.writeUTF(path);
                Object[] signerResults = (Object[])entry.getValue();
                SignerInfo[] entrySigners = (SignerInfo[])signerResults[0];
                byte[][] entryResults = (byte[][])signerResults[1];
                os.writeInt(entrySigners.length);
                int i2 = 0;
                while (i2 < entrySigners.length) {
                    this.saveSignerInfo(entrySigners[i2], os);
                    os.writeInt(entryResults[i2].length);
                    os.write(entryResults[i2]);
                    ++i2;
                }
            }
        }
        int i3 = 0;
        while (i3 < signerInfos.length) {
            SignerInfo tsaInfo = this.signedContent.getTSASignerInfo(signerInfos[i3]);
            os.writeBoolean(tsaInfo != null);
            if (tsaInfo != null) {
                this.saveSignerInfo(tsaInfo, os);
                Date signingTime = this.signedContent.getSigningTime(signerInfos[i3]);
                os.writeLong(signingTime != null ? signingTime.getTime() : Long.MIN_VALUE);
            }
            ++i3;
        }
    }

    private void saveSignerInfo(SignerInfo signerInfo, DataOutputStream os) throws IOException {
        int cacheIdx = savedSignerInfo.indexOf(signerInfo);
        os.writeInt(cacheIdx);
        if (cacheIdx >= 0) {
            return;
        }
        Certificate[] certs = signerInfo.getCertificateChain();
        int anchorIndex = -1;
        os.writeInt(certs == null ? 0 : certs.length);
        if (certs != null) {
            int i = 0;
            while (i < certs.length) {
                byte[] certBytes;
                if (certs[i].equals(signerInfo.getTrustAnchor())) {
                    anchorIndex = i;
                }
                try {
                    certBytes = certs[i].getEncoded();
                }
                catch (CertificateEncodingException e) {
                    throw (IOException)new IOException(e.getMessage()).initCause(e);
                }
                os.writeInt(certBytes.length);
                os.write(certBytes);
                ++i;
            }
        }
        os.writeInt(anchorIndex);
        os.writeUTF(signerInfo.getMessageDigestAlgorithm());
        savedSignerInfo.add(signerInfo);
    }

    private SignerInfo readSignerInfo(DataInputStream is) throws IOException {
        int index = is.readInt();
        if (index >= 0) {
            return loadedSignerInfo.get(index);
        }
        int numCerts = is.readInt();
        Certificate[] certs = new Certificate[numCerts];
        int i = 0;
        while (i < numCerts) {
            int certSize = is.readInt();
            byte[] certBytes = new byte[certSize];
            is.readFully(certBytes);
            try {
                certs[i] = PKCS7Processor.certFact.generateCertificate(new ByteArrayInputStream(certBytes));
            }
            catch (CertificateException e) {
                throw (IOException)new IOException(e.getMessage()).initCause(e);
            }
            ++i;
        }
        int anchorIdx = is.readInt();
        SignerInfoImpl result = new SignerInfoImpl(certs, anchorIdx >= 0 ? certs[anchorIdx] : null, is.readUTF());
        loadedSignerInfo.add(result);
        return result;
    }

    private void getFirstLastID() {
        if (firstIDSaved >= 0L) {
            return;
        }
        Bundle[] bundles = this.bundledata.getAdaptor().getContext().getBundles();
        if (bundles.length > 1) {
            firstIDSaved = bundles[1].getBundleId();
            lastIDSaved = bundles[bundles.length - 1].getBundleId();
        }
    }

    @Override
    public void copy(StorageHook storageHook) {
    }

    @Override
    public void validate() throws IllegalArgumentException {
    }

    @Override
    public Dictionary<String, String> getManifest(boolean firstLoad) throws BundleException {
        return null;
    }

    @Override
    public boolean forgetStatusChange(int status) {
        return false;
    }

    @Override
    public boolean forgetStartLevelChange(int startlevel) {
        return false;
    }

    @Override
    public int getKeyHashCode() {
        return HASHCODE;
    }

    @Override
    public boolean compare(KeyedElement other) {
        return other.getKey() == KEY;
    }

    @Override
    public Object getKey() {
        return KEY;
    }

    public SignedContent getSignedContent() {
        return this.signedContent;
    }
}

