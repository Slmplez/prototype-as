/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.protocol.reference;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import org.eclipse.osgi.framework.adaptor.FilePath;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.internal.core.ReferenceInputStream;

public class ReferenceURLConnection
extends URLConnection {
    protected URL reference;

    protected ReferenceURLConnection(URL url) {
        super(url);
    }

    public synchronized void connect() throws IOException {
        if (!this.connected) {
            String decodePath;
            File f;
            String installPath;
            String path = this.url.getPath().substring(5);
            File file = new File(path);
            if (!file.isAbsolute() && (installPath = this.getInstallPath()) != null) {
                file = ReferenceURLConnection.makeAbsolute(installPath, file);
            }
            if (!file.exists() && path.indexOf(37) >= 0 && (f = new File(decodePath = FrameworkProperties.decode(file.getAbsolutePath()))).exists()) {
                file = f;
            }
            URL ref = file.toURL();
            this.checkRead(file);
            this.reference = ref;
        }
    }

    private void checkRead(File file) throws IOException {
        File[] files;
        if (!file.exists()) {
            throw new FileNotFoundException(file.toString());
        }
        if (file.isFile()) {
            FileInputStream is = new FileInputStream(file);
            ((InputStream)is).close();
        } else if (file.isDirectory() && (files = file.listFiles()) == null) {
            throw new FileNotFoundException(String.valueOf(file.toString()) + " (probably access denied)");
        }
    }

    public boolean getDoInput() {
        return true;
    }

    public boolean getDoOutput() {
        return false;
    }

    public InputStream getInputStream() throws IOException {
        if (!this.connected) {
            this.connect();
        }
        return new ReferenceInputStream(this.reference);
    }

    private String getInstallPath() {
        String installURL = FrameworkProperties.getProperty("osgi.install.area");
        if (installURL == null) {
            return null;
        }
        if (!installURL.startsWith("file:")) {
            return null;
        }
        return installURL.substring(5);
    }

    private static File makeAbsolute(String base, File relative) {
        if (relative.isAbsolute()) {
            return relative;
        }
        return new File(new FilePath(String.valueOf(base) + relative.getPath()).toString());
    }
}

