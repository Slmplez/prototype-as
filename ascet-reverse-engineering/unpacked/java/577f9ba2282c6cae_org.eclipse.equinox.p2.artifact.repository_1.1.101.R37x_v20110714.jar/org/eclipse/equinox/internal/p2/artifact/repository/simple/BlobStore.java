/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.URIUtil
 */
package org.eclipse.equinox.internal.p2.artifact.repository.simple;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.URIUtil;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BlobStore {
    protected URI store;
    protected boolean fileBased;
    protected byte mask;
    private static byte[] randomArray = new byte[]{-43, -25, 37, 85, -45, 29, -95, -81, -69, 3, -109, -10, -86, 30, -54, -73, -14, 47, -2, -67, 25, -8, -63, 2, 119, -123, 125, 12, 76, -43, -37, 79, 69, -123, -54, 80, -106, -66, -99, -66, 80, -66, -37, -106, -87, 117, 95, 10, 77, -42, -23, 70, 5, -68, 44, 91, -91, -107, -79, 93, 17, 112, 4, 41, -26, -108, -68, 107, -43, 31, 52, 60, 111, -10, -30, 121, -127, -59, -112, -8, 92, -123, 96, 116, 104, 67, 74, -112, -71, -115, 96, 34, -74, 90, 36, -39, 28, -51, 107, 52, -55, 14, 8, 1, 27, -40, 60, 35, -5, -62, 7, -100, 32, 5, -111, 29, 96, 61, 110, -111, 50, 56, -21, -17, -86, -118, 17, -45, 56, 98, 101, 126, 27, 57, -45, -112, -50, -49, -77, 111, -96, 50, -13, 69, 106, 118, -101, -97, 28, 57, 11, -81, 43, -83, 96, -75, 99, -87, -85, -100, -10, -13, 30, -58, -5, 81, 77, 92, -96, -21, -41, -69, 23, 71, 58, -9, 127, 56, 118, -124, 79, -68, 42, -68, -98, 121, -1, 65, -102, 118, -84, -39, 4, 47, 105, -52, -121, 27, 43, 90, 9, 31, 59, 115, -63, 28, 55, 101, 9, 117, -45, 112, 61, 55, 23, -21, 51, 104, 123, -118, 76, -108, 115, 119, 81, 54, 39, 46, -107, -65, 79, 16, -34, 69, -37, -120, -108, -75, 77, -6, 101, -33, -116, -62, -115, 44, -61, -39, 31, -33, -49, -107, -11, 115, -13, -73};

    public BlobStore(URI store, int limit) {
        Assert.isNotNull((Object)store);
        this.store = store;
        this.fileBased = "file".equalsIgnoreCase(store.getScheme());
        if (this.fileBased) {
            Assert.isTrue((!URIUtil.toFile((URI)store).isFile() ? 1 : 0) != 0);
        }
        Assert.isTrue((limit == 256 || limit == 128 || limit == 64 || limit == 32 || limit == 16 || limit == 8 || limit == 4 || limit == 2 || limit == 1 ? 1 : 0) != 0);
        this.mask = (byte)(limit - 1);
    }

    public OutputStream getOutputStream(byte[] uuid) throws IOException {
        if (!this.fileBased) {
            return null;
        }
        new File(this.folderFor(uuid)).mkdir();
        return new FileOutputStream(URIUtil.toFile((URI)this.fileFor(uuid)));
    }

    private void appendByteString(StringBuffer buffer, byte value) {
        String hexString = value < 0 ? Integer.toHexString(256 + value) : Integer.toHexString(value);
        if (hexString.length() == 1) {
            buffer.append("0");
        }
        buffer.append(hexString);
    }

    private String bytesToHexString(byte[] b) {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < b.length) {
            this.appendByteString(buffer, b[i]);
            ++i;
        }
        return buffer.toString();
    }

    public void deleteBlob(byte[] uuid) {
        Assert.isNotNull((Object)uuid);
        if (this.fileBased) {
            new File(this.fileFor(uuid)).delete();
        }
    }

    public void deleteBlobs(Set<byte[]> set) {
        for (byte[] blob : set) {
            this.deleteBlob(blob);
        }
    }

    public URI fileFor(byte[] uuid) {
        return URIUtil.append((URI)this.folderFor(uuid), (String)this.bytesToHexString(uuid));
    }

    public URI folderFor(byte[] uuid) {
        byte hash = this.hashUUIDbytes(uuid);
        hash = (byte)(hash & this.mask);
        return URIUtil.append((URI)this.store, (String)new StringBuffer(String.valueOf(Integer.toHexString(hash + (0x80 & this.mask)))).append('/').toString());
    }

    public InputStream getBlob(byte[] uuid) throws IOException {
        return URIUtil.toURL((URI)this.fileFor(uuid)).openStream();
    }

    protected byte hashUUIDbytes(byte[] uuid) {
        byte hash = 0;
        int i = 0;
        while (i < uuid.length) {
            hash = (byte)(hash ^ randomArray[uuid[i] + 128]);
            ++i;
        }
        return hash;
    }
}

