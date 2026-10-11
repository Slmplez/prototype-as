/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.signedcontent;

import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.util.Date;
import org.eclipse.osgi.signedcontent.SignedContentEntry;
import org.eclipse.osgi.signedcontent.SignerInfo;

public interface SignedContent {
    public SignedContentEntry[] getSignedEntries();

    public SignedContentEntry getSignedEntry(String var1);

    public SignerInfo[] getSignerInfos();

    public boolean isSigned();

    public Date getSigningTime(SignerInfo var1);

    public SignerInfo getTSASignerInfo(SignerInfo var1);

    public void checkValidity(SignerInfo var1) throws CertificateExpiredException, CertificateNotYetValidException;
}

