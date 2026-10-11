/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.signedcontent;

import java.io.IOException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.osgi.internal.signedcontent.SignedContentImpl;
import org.eclipse.osgi.signedcontent.InvalidContentException;
import org.eclipse.osgi.signedcontent.SignedContent;
import org.eclipse.osgi.signedcontent.SignedContentEntry;
import org.eclipse.osgi.signedcontent.SignerInfo;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SignedContentFile
implements SignedContent {
    private final SignedContentImpl signedContent;
    private Map<String, Throwable> entryExceptions = null;

    public SignedContentFile(SignedContentImpl signedContent) {
        try {
            signedContent.content.close();
        }
        catch (IOException iOException) {}
        this.signedContent = signedContent;
    }

    @Override
    public void checkValidity(SignerInfo signerInfo) throws CertificateExpiredException, CertificateNotYetValidException {
        this.signedContent.checkValidity(signerInfo);
    }

    @Override
    public synchronized SignedContentEntry[] getSignedEntries() {
        SignedContentEntry[] entries = this.signedContent.getSignedEntries();
        if (this.signedContent == null) {
            return null;
        }
        SignedContentEntry[] results = new SignedContentEntry[entries.length];
        Map<String, Throwable> exceptions = this.getEntryExceptions(true);
        int i = 0;
        while (i < entries.length) {
            try {
                entries[i].verify();
            }
            catch (Throwable t) {
                exceptions.put(entries[i].getName(), t);
            }
            results[i] = new SignedContentFileEntry(entries[i]);
            ++i;
        }
        try {
            this.signedContent.content.close();
        }
        catch (IOException iOException) {}
        return results;
    }

    @Override
    public synchronized SignedContentEntry getSignedEntry(String name) {
        SignedContentEntry entry;
        if (this.getEntryExceptions(false) == null) {
            this.getSignedEntries();
        }
        return (entry = this.signedContent.getSignedEntry(name)) == null ? null : new SignedContentFileEntry(entry);
    }

    @Override
    public SignerInfo[] getSignerInfos() {
        return this.signedContent.getSignerInfos();
    }

    @Override
    public Date getSigningTime(SignerInfo signerInfo) {
        return this.signedContent.getSigningTime(signerInfo);
    }

    @Override
    public SignerInfo getTSASignerInfo(SignerInfo signerInfo) {
        return this.signedContent.getTSASignerInfo(signerInfo);
    }

    @Override
    public boolean isSigned() {
        return this.signedContent.isSigned();
    }

    synchronized Map<String, Throwable> getEntryExceptions(boolean create) {
        if (create && this.entryExceptions == null) {
            this.entryExceptions = new HashMap<String, Throwable>(5);
        }
        return this.entryExceptions;
    }

    public class SignedContentFileEntry
    implements SignedContentEntry {
        private final SignedContentEntry entry;

        public SignedContentFileEntry(SignedContentEntry entry) {
            this.entry = entry;
        }

        public String getName() {
            return this.entry.getName();
        }

        public SignerInfo[] getSignerInfos() {
            return this.entry.getSignerInfos();
        }

        public boolean isSigned() {
            return this.entry.isSigned();
        }

        public void verify() throws IOException, InvalidContentException {
            Throwable t;
            Map<String, Throwable> exceptions = SignedContentFile.this.getEntryExceptions(false);
            Throwable throwable = t = exceptions == null ? null : exceptions.get(this.entry.getName());
            if (t == null) {
                return;
            }
            if (t instanceof IOException) {
                throw (IOException)t;
            }
            if (t instanceof InvalidContentException) {
                throw (InvalidContentException)t;
            }
            if (t instanceof Error) {
                throw (Error)t;
            }
            if (t instanceof RuntimeException) {
                throw (RuntimeException)t;
            }
        }
    }
}

