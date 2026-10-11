/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.signedcontent;

import java.io.File;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import org.eclipse.osgi.signedcontent.SignedContent;
import org.osgi.framework.Bundle;

public interface SignedContentFactory {
    public SignedContent getSignedContent(File var1) throws IOException, InvalidKeyException, SignatureException, CertificateException, NoSuchAlgorithmException, NoSuchProviderException;

    public SignedContent getSignedContent(Bundle var1) throws IOException, InvalidKeyException, SignatureException, CertificateException, NoSuchAlgorithmException, NoSuchProviderException;
}

