/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.signedcontent;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.Date;
import java.util.Map;
import java.util.Set;
import org.eclipse.osgi.internal.signedcontent.PKCS7Processor;
import org.eclipse.osgi.internal.signedcontent.SignedContentConstants;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PKCS7DateParser {
    static Date parseDate(PKCS7Processor pkcs7Processor, String signer, String file) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, SignatureException, NoSuchProviderException {
        byte[] timeStampConstruct;
        Map<int[], byte[]> unsignedAttrs = pkcs7Processor.getUnsignedAttrs();
        if (unsignedAttrs != null && (timeStampConstruct = PKCS7DateParser.retrieveTimeStampConstruct(unsignedAttrs)) != null) {
            PKCS7Processor timestampProcess = new PKCS7Processor(timeStampConstruct, 0, timeStampConstruct.length, signer, file);
            timestampProcess.verifyCerts();
            pkcs7Processor.setTSACertificates(timestampProcess.getCertificates());
            return timestampProcess.getSigningTime();
        }
        return null;
    }

    private static byte[] retrieveTimeStampConstruct(Map<int[], byte[]> unsignedAttrs) {
        Set<int[]> objIDs = unsignedAttrs.keySet();
        for (int[] objID : objIDs) {
            if (!Arrays.equals(SignedContentConstants.TIMESTAMP_OID, objID)) continue;
            return unsignedAttrs.get(objID);
        }
        return null;
    }
}

