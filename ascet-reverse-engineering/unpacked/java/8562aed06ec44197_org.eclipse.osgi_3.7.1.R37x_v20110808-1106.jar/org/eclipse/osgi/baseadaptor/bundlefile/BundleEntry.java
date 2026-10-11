/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.bundlefile;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import org.eclipse.osgi.framework.debug.Debug;

public abstract class BundleEntry {
    protected static final int BUF_SIZE = 8192;

    public abstract InputStream getInputStream() throws IOException;

    public abstract long getSize();

    public abstract String getName();

    public abstract long getTime();

    public abstract URL getLocalURL();

    public abstract URL getFileURL();

    public String toString() {
        return this.getName();
    }

    public byte[] getBytes() throws IOException {
        byte[] classbytes;
        InputStream in = this.getInputStream();
        int length = (int)this.getSize();
        int bytesread = 0;
        if (Debug.DEBUG_LOADER) {
            Debug.println("  about to read " + length + " bytes from " + this.getName());
        }
        try {
            byte[] oldbytes;
            if (length > 0) {
                classbytes = new byte[length];
                while (bytesread < length) {
                    int readcount = in.read(classbytes, bytesread, length - bytesread);
                    if (readcount > 0) {
                        bytesread += readcount;
                        continue;
                    }
                    break;
                }
            } else {
                length = 8192;
                classbytes = new byte[length];
                while (true) {
                    if (bytesread < length) {
                        int readcount = in.read(classbytes, bytesread, length - bytesread);
                        if (readcount > 0) {
                            bytesread += readcount;
                            continue;
                        }
                        break;
                    }
                    oldbytes = classbytes;
                    classbytes = new byte[length += 8192];
                    System.arraycopy(oldbytes, 0, classbytes, 0, bytesread);
                }
            }
            if (classbytes.length > bytesread) {
                oldbytes = classbytes;
                classbytes = new byte[bytesread];
                System.arraycopy(oldbytes, 0, classbytes, 0, bytesread);
            }
        }
        catch (Throwable throwable) {
            try {
                in.close();
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            in.close();
        }
        catch (IOException iOException) {}
        return classbytes;
    }
}

