/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.signedcontent;

import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import javax.security.auth.x500.X500Principal;
import org.eclipse.osgi.internal.signedcontent.BERProcessor;
import org.eclipse.osgi.internal.signedcontent.PKCS7DateParser;
import org.eclipse.osgi.internal.signedcontent.SignedBundleHook;
import org.eclipse.osgi.internal.signedcontent.SignedContentConstants;
import org.eclipse.osgi.internal.signedcontent.SignedContentMessages;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PKCS7Processor
implements SignedContentConstants {
    static CertificateFactory certFact;
    private final String signer;
    private final String file;
    private Certificate[] certificates;
    private Certificate[] tsaCertificates;
    private Map<int[], byte[]> signedAttrs;
    private Map<int[], byte[]> unsignedAttrs;
    private byte[] signature;
    private String digestAlgorithm;
    private String signatureAlgorithm;
    private Certificate signerCert;
    private Date signingTime;

    static {
        try {
            certFact = CertificateFactory.getInstance("X.509");
        }
        catch (CertificateException e) {
            SignedBundleHook.log(e.getMessage(), 4, e);
        }
    }

    private static String oid2String(int[] oid) {
        StringBuffer sb = new StringBuffer();
        int i = 0;
        while (i < oid.length) {
            if (i > 0) {
                sb.append('.');
            }
            sb.append(oid[i]);
            ++i;
        }
        return sb.toString();
    }

    private static String findEncryption(int[] encOid) throws NoSuchAlgorithmException {
        if (Arrays.equals(DSA_OID, encOid)) {
            return "DSA";
        }
        if (Arrays.equals(RSA_OID, encOid)) {
            return "RSA";
        }
        throw new NoSuchAlgorithmException(new StringBuffer("No algorithm found for ").append(PKCS7Processor.oid2String(encOid)).toString());
    }

    private static String findDigest(int[] digestOid) throws NoSuchAlgorithmException {
        if (Arrays.equals(SHA1_OID, digestOid)) {
            return "SHA1";
        }
        if (Arrays.equals(MD5_OID, digestOid)) {
            return "MD5";
        }
        if (Arrays.equals(MD2_OID, digestOid)) {
            return "MD2";
        }
        throw new NoSuchAlgorithmException(new StringBuffer("No algorithm found for ").append(PKCS7Processor.oid2String(digestOid)).toString());
    }

    public PKCS7Processor(byte[] pkcs7, int pkcs7Offset, int pkcs7Length, String signer, String file) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, SignatureException, NoSuchProviderException {
        this.signer = signer;
        this.file = file;
        List<Certificate> certs = null;
        BERProcessor bp = new BERProcessor(pkcs7, pkcs7Offset, pkcs7Length);
        bp = bp.stepInto();
        if (!Arrays.equals(bp.getObjId(), SIGNEDDATA_OID)) {
            throw new SignatureException(NLS.bind(SignedContentMessages.PKCS7_Invalid_File, signer, file));
        }
        bp.stepOver();
        bp = bp.stepInto();
        bp = bp.stepInto();
        bp.stepOver();
        bp.stepOver();
        this.processEncapContentInfo(bp);
        bp.stepOver();
        if (bp.classOfTag == 2 && bp.tag == 0) {
            certs = this.processCertificates(bp);
        }
        if (certs == null || certs.size() < 1) {
            throw new SignatureException("There are no certificates in the .RSA/.DSA file!");
        }
        bp.stepOver();
        if (bp.classOfTag == 0 && bp.tag == 1) {
            bp.stepOver();
        }
        this.processSignerInfos(bp, certs);
        certs = this.constructCertPath(certs, this.signerCert);
        this.certificates = certs.toArray(new Certificate[certs.size()]);
        this.verifyCerts();
        if (this.signingTime == null) {
            this.signingTime = PKCS7DateParser.parseDate(this, signer, file);
        }
    }

    private void processEncapContentInfo(BERProcessor bp) throws SignatureException {
        BERProcessor encapContentBERS = bp.stepInto();
        if (Arrays.equals(encapContentBERS.getObjId(), TIMESTAMP_TST_OID)) {
            encapContentBERS.stepOver();
            BERProcessor encapContentBERS1 = encapContentBERS.stepInto();
            byte[] bytesman = encapContentBERS1.getBytes();
            BERProcessor eContentStructure = new BERProcessor(bytesman, 0, bytesman.length);
            BERProcessor eContentBER = eContentStructure.stepInto();
            int tsaVersion = eContentBER.getIntValue().intValue();
            if (tsaVersion != 1) {
                throw new SignatureException("Not a version 1 time-stamp token");
            }
            eContentBER.stepOver();
            eContentBER.stepOver();
            eContentBER.stepOver();
            eContentBER.stepOver();
            String dateString = new String(eContentBER.getBytes());
            if (!dateString.endsWith("Z")) {
                throw new SignatureException("Wrong dateformat used in time-stamp token");
            }
            int dotIndex = dateString.indexOf(46);
            StringBuffer dateFormatSB = new StringBuffer("yyyyMMddHHmmss");
            if (dotIndex != -1) {
                int noS = dateString.indexOf(90) - 1 - dotIndex;
                dateFormatSB.append('.');
                int i = 0;
                while (i < noS) {
                    dateFormatSB.append('s');
                    ++i;
                }
            }
            dateFormatSB.append("'Z'");
            try {
                SimpleDateFormat dateFormt = new SimpleDateFormat(dateFormatSB.toString());
                dateFormt.setTimeZone(TimeZone.getTimeZone("GMT"));
                this.signingTime = dateFormt.parse(dateString);
            }
            catch (ParseException e) {
                throw (SignatureException)new SignatureException(SignedContentMessages.PKCS7_Parse_Signing_Time).initCause(e);
            }
        }
    }

    private List<Certificate> constructCertPath(List<Certificate> certs, Certificate targetCert) {
        ArrayList<Certificate> certsList = new ArrayList<Certificate>();
        certsList.add(targetCert);
        X509Certificate currentCert = (X509Certificate)targetCert;
        int numIteration = certs.size();
        int i = 0;
        while (i < numIteration) {
            X500Principal issuer;
            X500Principal subject = currentCert.getSubjectX500Principal();
            if (subject.equals(issuer = currentCert.getIssuerX500Principal())) break;
            currentCert = null;
            for (X509Certificate x509Certificate : certs) {
                if (!x509Certificate.getSubjectX500Principal().equals(issuer)) continue;
                certsList.add(x509Certificate);
                currentCert = x509Certificate;
            }
            ++i;
        }
        return certsList;
    }

    public void verifyCerts() throws InvalidKeyException, SignatureException, CertificateException, NoSuchAlgorithmException, NoSuchProviderException {
        if (this.certificates == null || this.certificates.length == 0) {
            throw new CertificateException("There are no certificates in the signature block file!");
        }
        int len = this.certificates.length;
        int i = 0;
        while (i < len) {
            X509Certificate currentX509Cert = (X509Certificate)this.certificates[i];
            if (i == len - 1) {
                if (currentX509Cert.getSubjectDN().equals(currentX509Cert.getIssuerDN())) {
                    currentX509Cert.verify(currentX509Cert.getPublicKey());
                }
            } else {
                X509Certificate nextX509Cert = (X509Certificate)this.certificates[i + 1];
                currentX509Cert.verify(nextX509Cert.getPublicKey());
            }
            ++i;
        }
    }

    private Certificate processSignerInfos(BERProcessor bp, List<Certificate> certs) throws CertificateException, NoSuchAlgorithmException, SignatureException {
        bp = bp.stepInto();
        BigInteger signerInfoVersion = (bp = bp.stepInto()).getIntValue();
        if (signerInfoVersion.intValue() != 1) {
            throw new CertificateException(SignedContentMessages.PKCS7_SignerInfo_Version_Not_Supported);
        }
        bp.stepOver();
        BERProcessor issuerAndSN = bp.stepInto();
        X500Principal signerIssuer = new X500Principal(new ByteArrayInputStream(issuerAndSN.buffer, issuerAndSN.offset, issuerAndSN.endOffset - issuerAndSN.offset));
        issuerAndSN.stepOver();
        BigInteger sn = issuerAndSN.getIntValue();
        X509Certificate newSignerCert = null;
        for (X509Certificate x509Certificate : certs) {
            if (!x509Certificate.getIssuerX500Principal().equals(signerIssuer) || !x509Certificate.getSerialNumber().equals(sn)) continue;
            newSignerCert = x509Certificate;
            break;
        }
        if (newSignerCert == null) {
            throw new CertificateException("Signer certificate not in pkcs7block");
        }
        this.signerCert = newSignerCert;
        bp.stepOver();
        BERProcessor bERProcessor = bp.stepInto();
        this.digestAlgorithm = PKCS7Processor.findDigest(bERProcessor.getObjId());
        bp.stepOver();
        this.processSignedAttributes(bp);
        BERProcessor encryptionAlg = bp.stepInto();
        this.signatureAlgorithm = PKCS7Processor.findEncryption(encryptionAlg.getObjId());
        bp.stepOver();
        this.signature = bp.getBytes();
        bp.stepOver();
        this.processUnsignedAttributes(bp);
        return newSignerCert;
    }

    private void processUnsignedAttributes(BERProcessor bp) throws SignatureException {
        if (bp.classOfTag == 2 && bp.tag == 1) {
            this.unsignedAttrs = new HashMap<int[], byte[]>();
            BERProcessor unsignedAttrsBERS = bp.stepInto();
            do {
                BERProcessor unsignedAttrBER = unsignedAttrsBERS.stepInto();
                int[] objID = unsignedAttrBER.getObjId();
                unsignedAttrBER.stepOver();
                byte[] structure = unsignedAttrBER.getBytes();
                this.unsignedAttrs.put(objID, structure);
                unsignedAttrsBERS.stepOver();
            } while (!unsignedAttrsBERS.endOfSequence());
        }
    }

    private void processSignedAttributes(BERProcessor bp) throws SignatureException {
        if (bp.classOfTag == 2) {
            this.signedAttrs = new HashMap<int[], byte[]>();
            BERProcessor signedAttrsBERS = bp.stepInto();
            do {
                BERProcessor signedAttrBER = signedAttrsBERS.stepInto();
                int[] signedAttrObjID = signedAttrBER.getObjId();
                signedAttrBER.stepOver();
                byte[] signedAttrStructure = signedAttrBER.getBytes();
                this.signedAttrs.put(signedAttrObjID, signedAttrStructure);
                signedAttrsBERS.stepOver();
            } while (!signedAttrsBERS.endOfSequence());
            bp.stepOver();
        }
    }

    public Certificate[] getCertificates() {
        return this.certificates == null ? new Certificate[]{} : this.certificates;
    }

    public void verifySFSignature(byte[] data, int dataOffset, int dataLength) throws InvalidKeyException, NoSuchAlgorithmException, SignatureException {
        Signature sig = Signature.getInstance(new StringBuffer(String.valueOf(this.digestAlgorithm)).append("with").append(this.signatureAlgorithm).toString());
        sig.initVerify(this.signerCert.getPublicKey());
        sig.update(data, dataOffset, dataLength);
        if (!sig.verify(this.signature)) {
            throw new SignatureException(NLS.bind(SignedContentMessages.Signature_Not_Verify, this.signer, this.file));
        }
    }

    public Map<int[], byte[]> getUnsignedAttrs() {
        return this.unsignedAttrs;
    }

    public Map<int[], byte[]> getSignedAttrs() {
        return this.signedAttrs;
    }

    private List<Certificate> processCertificates(BERProcessor bp) throws CertificateException, SignatureException {
        ArrayList<Certificate> rtvList = new ArrayList<Certificate>(3);
        BERProcessor certsBERS = bp.stepInto();
        do {
            X509Certificate x509Cert;
            if ((x509Cert = (X509Certificate)certFact.generateCertificate(new ByteArrayInputStream(certsBERS.buffer, certsBERS.offset, certsBERS.endOffset - certsBERS.offset))) != null) {
                rtvList.add(x509Cert);
            }
            certsBERS.stepOver();
        } while (!certsBERS.endOfSequence());
        return rtvList;
    }

    public Date getSigningTime() {
        return this.signingTime;
    }

    void setTSACertificates(Certificate[] tsaCertificates) {
        this.tsaCertificates = tsaCertificates;
    }

    public Certificate[] getTSACertificates() {
        return this.tsaCertificates == null ? new Certificate[]{} : this.tsaCertificates;
    }
}

