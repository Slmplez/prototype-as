/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.signedcontent;

import java.io.IOException;
import java.io.InputStream;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.internal.signedcontent.Base64;
import org.eclipse.osgi.internal.signedcontent.PKCS7Processor;
import org.eclipse.osgi.internal.signedcontent.SignedBundleFile;
import org.eclipse.osgi.internal.signedcontent.SignedBundleHook;
import org.eclipse.osgi.internal.signedcontent.SignedContentConstants;
import org.eclipse.osgi.internal.signedcontent.SignedContentImpl;
import org.eclipse.osgi.internal.signedcontent.SignedContentMessages;
import org.eclipse.osgi.internal.signedcontent.SignerInfoImpl;
import org.eclipse.osgi.signedcontent.SignerInfo;
import org.eclipse.osgi.util.NLS;

public class SignatureBlockProcessor
implements SignedContentConstants {
    private final SignedBundleFile signedBundle;
    private List<SignerInfo> signerInfos = new ArrayList<SignerInfo>();
    private Map<String, Object> contentMDResults = new HashMap<String, Object>();
    private Map<SignerInfo, Object[]> tsaSignerInfos;
    private final int supportFlags;

    public SignatureBlockProcessor(SignedBundleFile signedContent, int supportFlags) {
        this.signedBundle = signedContent;
        this.supportFlags = supportFlags;
    }

    public SignedContentImpl process() throws IOException, InvalidKeyException, SignatureException, CertificateException, NoSuchAlgorithmException, NoSuchProviderException {
        BundleFile wrappedBundleFile = this.signedBundle.getWrappedBundleFile();
        BundleEntry be = wrappedBundleFile.getEntry("META-INF/MANIFEST.MF");
        if (be == null) {
            return this.createUnsignedContent();
        }
        Enumeration<String> en = wrappedBundleFile.getEntryPaths("META-INF/");
        ArrayList<String> signers = new ArrayList<String>(2);
        while (en.hasMoreElements()) {
            String name = en.nextElement();
            if (!name.endsWith(".DSA") && !name.endsWith(".RSA") || name.indexOf(47) != name.lastIndexOf(47)) continue;
            signers.add(name);
        }
        if (signers.size() == 0) {
            return this.createUnsignedContent();
        }
        byte[] manifestBytes = SignatureBlockProcessor.readIntoArray(be);
        Iterator iSigners = signers.iterator();
        while (iSigners.hasNext()) {
            this.processSigner(wrappedBundleFile, manifestBytes, (String)iSigners.next());
        }
        SignerInfo[] allSigners = this.signerInfos.toArray(new SignerInfo[this.signerInfos.size()]);
        Iterator<Map.Entry<String, Object>> iResults = this.contentMDResults.entrySet().iterator();
        while (iResults.hasNext()) {
            Map.Entry<String, Object> entry = iResults.next();
            List[] value = (List[])entry.getValue();
            SignerInfo[] entrySigners = value[0].toArray(new SignerInfo[value[0].size()]);
            byte[][] entryResults = (byte[][])value[1].toArray((T[])new byte[value[1].size()][]);
            entry.setValue(new Object[]{entrySigners, entryResults});
        }
        SignedContentImpl result = new SignedContentImpl(allSigners, (this.supportFlags & 4) != 0 ? this.contentMDResults : null);
        result.setContent(this.signedBundle);
        result.setTSASignerInfos(this.tsaSignerInfos);
        return result;
    }

    private SignedContentImpl createUnsignedContent() {
        SignedContentImpl result = new SignedContentImpl(new SignerInfo[0], this.contentMDResults);
        result.setContent(this.signedBundle);
        return result;
    }

    private void processSigner(BundleFile bf, byte[] manifestBytes, String signer) throws IOException, SignatureException, InvalidKeyException, CertificateException, NoSuchAlgorithmException, NoSuchProviderException {
        BundleEntry be = bf.getEntry(signer);
        byte[] pkcs7Bytes = SignatureBlockProcessor.readIntoArray(be);
        int dotIndex = signer.lastIndexOf(46);
        be = bf.getEntry(String.valueOf(signer.substring(0, dotIndex)) + ".SF");
        byte[] sfBytes = SignatureBlockProcessor.readIntoArray(be);
        String baseFile = bf.getBaseFile() != null ? bf.getBaseFile().toString() : null;
        PKCS7Processor processor = new PKCS7Processor(pkcs7Bytes, 0, pkcs7Bytes.length, signer, baseFile);
        processor.verifySFSignature(sfBytes, 0, sfBytes.length);
        String digAlg = SignatureBlockProcessor.getDigAlgFromSF(sfBytes);
        if (digAlg == null) {
            throw new SignatureException(NLS.bind(SignedContentMessages.SF_File_Parsing_Error, new String[]{bf.toString()}));
        }
        this.verifyManifestAndSignatureFile(manifestBytes, sfBytes);
        SignerInfoImpl signerInfo = new SignerInfoImpl(processor.getCertificates(), null, digAlg);
        if ((this.supportFlags & 4) != 0) {
            this.populateMDResults(manifestBytes, signerInfo);
        }
        this.signerInfos.add(signerInfo);
        Certificate[] tsaCerts = processor.getTSACertificates();
        Date signingTime = processor.getSigningTime();
        if (tsaCerts != null && signingTime != null) {
            SignerInfoImpl tsaSignerInfo = new SignerInfoImpl(tsaCerts, null, digAlg);
            if (this.tsaSignerInfos == null) {
                this.tsaSignerInfos = new HashMap<SignerInfo, Object[]>(2);
            }
            this.tsaSignerInfos.put(signerInfo, new Object[]{tsaSignerInfo, signingTime});
        }
    }

    private void verifyManifestAndSignatureFile(byte[] manifestBytes, byte[] sfBytes) throws SignatureException {
        String sf = new String(sfBytes);
        int off = (sf = SignatureBlockProcessor.stripContinuations(sf)).indexOf("-Digest-Manifest: ");
        if (off != -1) {
            int start = sf.lastIndexOf(10, off);
            String manifestDigest = null;
            if (start != -1) {
                String digestName = sf.substring(start + 1, off);
                if (digestName.equalsIgnoreCase("MD5")) {
                    manifestDigest = SignatureBlockProcessor.calculateDigest(SignatureBlockProcessor.getMessageDigest("MD5"), manifestBytes);
                } else if (digestName.equalsIgnoreCase("SHA1")) {
                    manifestDigest = SignatureBlockProcessor.calculateDigest(SignatureBlockProcessor.getMessageDigest("SHA1"), manifestBytes);
                }
                int nIndex = sf.indexOf(10, off += digestManifestSearchLen);
                String digestValue = sf.substring(off, nIndex - 1);
                if (!digestValue.equals(manifestDigest)) {
                    SignatureException se = new SignatureException(NLS.bind(SignedContentMessages.Security_File_Is_Tampered, new String[]{this.signedBundle.getBaseFile().toString()}));
                    SignedBundleHook.log(se.getMessage(), 4, se);
                    throw se;
                }
            }
        }
    }

    private void populateMDResults(byte[] mfBuf, SignerInfo signerInfo) throws NoSuchAlgorithmException {
        String mfStr = new String(mfBuf);
        int entryStartOffset = mfStr.indexOf("\nName: ");
        int length = mfStr.length();
        while (entryStartOffset != -1 && entryStartOffset < length) {
            String aDigestLine;
            int entryEndOffset = mfStr.indexOf("\nName: ", entryStartOffset + 1);
            if (entryEndOffset == -1) {
                entryEndOffset = mfStr.length();
            }
            String entryStr = mfStr.substring(entryStartOffset + 1, entryEndOffset);
            String entryName = SignatureBlockProcessor.getEntryFileName(entryStr = SignatureBlockProcessor.stripContinuations(entryStr));
            if (entryName != null && (aDigestLine = SignatureBlockProcessor.getDigestLine(entryStr, signerInfo.getMessageDigestAlgorithm())) != null) {
                String msgDigestAlgorithm = SignatureBlockProcessor.getDigestAlgorithmFromString(aDigestLine);
                if (!msgDigestAlgorithm.equalsIgnoreCase(signerInfo.getMessageDigestAlgorithm())) continue;
                byte[] digestResult = SignatureBlockProcessor.getDigestResultsList(aDigestLine);
                List[] mdResult = (List[])this.contentMDResults.get(entryName);
                if (mdResult == null) {
                    ArrayList[] arrayLists = new ArrayList[2];
                    mdResult = arrayLists;
                    mdResult[0] = new ArrayList();
                    mdResult[1] = new ArrayList();
                    this.contentMDResults.put(entryName, mdResult);
                }
                mdResult[0].add(signerInfo);
                mdResult[1].add(digestResult);
            }
            entryStartOffset = entryEndOffset;
        }
    }

    private static byte[] getDigestResultsList(String digestLines) {
        byte[] resultsList = null;
        if (digestLines != null) {
            String sDigestLine = digestLines;
            int indexDigest = sDigestLine.indexOf("-Digest: ");
            if ((indexDigest += "-Digest: ".length()) >= sDigestLine.length()) {
                resultsList = null;
            }
            String sResult = sDigestLine.substring(indexDigest);
            try {
                resultsList = Base64.decode(sResult.getBytes());
            }
            catch (Throwable throwable) {
                resultsList = null;
            }
        }
        return resultsList;
    }

    private static String getDigestAlgorithmFromString(String digestLines) throws NoSuchAlgorithmException {
        if (digestLines != null) {
            int indexDigest = digestLines.indexOf("-Digest: ");
            String sDigestAlgType = digestLines.substring(0, indexDigest);
            if (sDigestAlgType.equalsIgnoreCase("MD5")) {
                return "MD5";
            }
            if (sDigestAlgType.equalsIgnoreCase("SHA1")) {
                return "SHA1";
            }
            throw new NoSuchAlgorithmException(NLS.bind(SignedContentMessages.Algorithm_Not_Supported, sDigestAlgType));
        }
        return null;
    }

    private static String getEntryFileName(String manifestEntry) {
        int nameStart = manifestEntry.indexOf("Name: ");
        if (nameStart == -1) {
            return null;
        }
        int nameEnd = manifestEntry.indexOf(10, nameStart);
        if (nameEnd == -1) {
            return null;
        }
        if (manifestEntry.charAt(nameEnd - 1) == '\r') {
            --nameEnd;
        }
        if ((nameStart += "Name: ".length()) >= nameEnd) {
            return null;
        }
        return manifestEntry.substring(nameStart, nameEnd);
    }

    private static String calculateDigest(MessageDigest digest, byte[] bytes) {
        return new String(Base64.encode(digest.digest(bytes)));
    }

    static synchronized MessageDigest getMessageDigest(String algorithm) {
        try {
            return MessageDigest.getInstance(algorithm);
        }
        catch (NoSuchAlgorithmException e) {
            SignedBundleHook.log(e.getMessage(), 4, e);
            return null;
        }
    }

    private static String getDigAlgFromSF(byte[] SFBuf) {
        String mfStr = new String(SFBuf);
        String entryStr = null;
        int entryStartOffset = mfStr.indexOf("\nName: ");
        int length = mfStr.length();
        if (entryStartOffset != -1 && entryStartOffset < length) {
            int entryEndOffset = mfStr.indexOf("\nName: ", entryStartOffset + 1);
            if (entryEndOffset == -1) {
                entryEndOffset = mfStr.length();
            }
            entryStr = mfStr.substring(entryStartOffset + 1, entryEndOffset);
            entryStr = SignatureBlockProcessor.stripContinuations(entryStr);
        }
        if (entryStr != null) {
            String digestLine = SignatureBlockProcessor.getDigestLine(entryStr, null);
            return SignatureBlockProcessor.getMessageDigestName(digestLine);
        }
        return null;
    }

    /*
     * Unable to fully structure code
     */
    private static String getDigestLine(String manifestEntry, String desireDigestAlg) {
        result = null;
        indexDigest = manifestEntry.indexOf("-Digest: ");
        if (indexDigest != -1) ** GOTO lbl22
        return null;
lbl-1000:
        // 1 sources

        {
            indexStart = manifestEntry.lastIndexOf(10, indexDigest);
            if (indexStart == -1) {
                return null;
            }
            indexEnd = manifestEntry.indexOf(10, indexDigest);
            if (indexEnd == -1) {
                return null;
            }
            indexEndToUse = indexEnd;
            if (manifestEntry.charAt(indexEndToUse - 1) == '\r') {
                --indexEndToUse;
            }
            if ((indexStartToUse = indexStart + 1) >= indexEndToUse) {
                return null;
            }
            digestLine = manifestEntry.substring(indexStartToUse, indexEndToUse);
            digAlg = SignatureBlockProcessor.getMessageDigestName(digestLine);
            if (desireDigestAlg != null && desireDigestAlg.equalsIgnoreCase(digAlg)) {
                return digestLine;
            }
            result = digestLine;
            indexDigest = manifestEntry.indexOf("-Digest: ", indexEnd);
lbl22:
            // 2 sources

            ** while (indexDigest != -1)
        }
lbl23:
        // 1 sources

        return result;
    }

    private static String getMessageDigestName(String digLine) {
        int indexDigest;
        String rtvValue = null;
        if (digLine != null && (indexDigest = digLine.indexOf("-Digest: ")) != -1) {
            rtvValue = digLine.substring(0, indexDigest);
        }
        return rtvValue;
    }

    private static String stripContinuations(String entry) {
        if (entry.indexOf("\n ") < 0) {
            return entry;
        }
        StringBuffer buffer = new StringBuffer(entry.length());
        int cont = entry.indexOf("\n ");
        int start = 0;
        while (cont >= 0) {
            buffer.append(entry.substring(start, cont - 1));
            start = cont + 2;
            int n = cont = cont + 2 < entry.length() ? entry.indexOf("\n ", cont + 2) : -1;
        }
        if (start < entry.length()) {
            buffer.append(entry.substring(start));
        }
        return buffer.toString();
    }

    private static byte[] readIntoArray(BundleEntry be) throws IOException {
        byte[] byArray;
        int size = (int)be.getSize();
        InputStream is = be.getInputStream();
        try {
            byte[] b = new byte[size];
            int rc = SignatureBlockProcessor.readFully(is, b);
            if (rc != size) {
                throw new IOException("Couldn't read all of " + be.getName() + ": " + rc + " != " + size);
            }
            byArray = b;
        }
        catch (Throwable throwable) {
            try {
                is.close();
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            is.close();
        }
        catch (IOException iOException) {}
        return byArray;
    }

    private static int readFully(InputStream is, byte[] b) throws IOException {
        int rc;
        int count = b.length;
        int offset = 0;
        while ((rc = is.read(b, offset, count)) > 0) {
            count -= rc;
            offset += rc;
        }
        return offset;
    }
}

