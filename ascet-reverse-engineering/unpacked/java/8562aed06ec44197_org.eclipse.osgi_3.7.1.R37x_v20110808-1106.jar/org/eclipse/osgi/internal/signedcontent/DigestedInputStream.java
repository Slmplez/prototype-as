/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.signedcontent;

import java.io.FilterInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.internal.signedcontent.SignatureBlockProcessor;
import org.eclipse.osgi.internal.signedcontent.SignedContentMessages;
import org.eclipse.osgi.signedcontent.InvalidContentException;
import org.eclipse.osgi.signedcontent.SignerInfo;
import org.eclipse.osgi.util.NLS;

class DigestedInputStream
extends FilterInputStream {
    private final MessageDigest[] digests;
    private final byte[][] result;
    private final BundleEntry entry;
    private final BundleFile bundleFile;
    private long remaining;

    DigestedInputStream(BundleEntry entry, BundleFile bundleFile, SignerInfo[] signerInfos, byte[][] results, long size) throws IOException {
        super(entry.getInputStream());
        this.entry = entry;
        this.bundleFile = bundleFile;
        this.remaining = size;
        this.digests = new MessageDigest[signerInfos.length];
        int i = 0;
        while (i < signerInfos.length) {
            this.digests[i] = SignatureBlockProcessor.getMessageDigest(signerInfos[i].getMessageDigestAlgorithm());
            ++i;
        }
        this.result = results;
    }

    public synchronized void mark(int readlimit) {
    }

    public boolean markSupported() {
        return false;
    }

    public int read() throws IOException {
        if (this.remaining <= 0L) {
            return -1;
        }
        int c = super.read();
        if (c != -1) {
            int i = 0;
            while (i < this.digests.length) {
                this.digests[i].update((byte)c);
                ++i;
            }
            --this.remaining;
        } else {
            this.remaining = 0L;
        }
        if (this.remaining == 0L) {
            this.verifyDigests();
        }
        return c;
    }

    private void verifyDigests() throws InvalidContentException {
        int i = 0;
        while (i < this.digests.length) {
            byte[] rc = this.digests[i].digest();
            if (!MessageDigest.isEqual(this.result[i], rc)) {
                throw new InvalidContentException(NLS.bind(SignedContentMessages.File_In_Jar_Is_Tampered, this.entry.getName(), this.bundleFile.getBaseFile()), null);
            }
            ++i;
        }
    }

    public int read(byte[] b, int off, int len) throws IOException {
        if (this.remaining <= 0L) {
            return -1;
        }
        int rc = super.read(b, off, len);
        if (rc != -1) {
            int i = 0;
            while (i < this.digests.length) {
                this.digests[i].update(b, off, rc);
                ++i;
            }
            this.remaining -= (long)rc;
        } else {
            this.remaining = 0L;
        }
        if (this.remaining <= 0L) {
            this.verifyDigests();
        }
        return rc;
    }

    public synchronized void reset() throws IOException {
        throw new IOException("Reset not supported");
    }

    public long skip(long n) throws IOException {
        byte[] buffer = new byte[4096];
        long count = 0L;
        while (n - count > 0L) {
            int rc = n - count > (long)buffer.length ? buffer.length : (int)(n - count);
            if ((rc = this.read(buffer, 0, rc)) == -1) break;
            count += (long)rc;
            n -= (long)rc;
        }
        return count;
    }
}

