/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.security.storage;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;
import org.eclipse.equinox.internal.security.auth.AuthPlugin;
import org.eclipse.equinox.internal.security.auth.nls.SecAuthMessages;
import org.eclipse.osgi.util.NLS;

public class StorageUtils {
    public static final String CHAR_ENCODING = "UTF-8";
    private static final String propertiesFileName = ".eclipse/org.eclipse.equinox.security/secure_storage";
    private static boolean firstCharsetException = true;

    public static URL getDefaultLocation() throws IOException {
        String userHome = System.getProperty("user.home");
        if (userHome != null) {
            File file = new File(userHome, propertiesFileName);
            return file.toURL();
        }
        URL installLocation = AuthPlugin.getDefault().getConfigURL();
        if (installLocation != null && StorageUtils.isFile(installLocation)) {
            File file = new File(installLocation.getPath(), propertiesFileName);
            return file.toURL();
        }
        throw new IOException(SecAuthMessages.loginNoDefaultLocation);
    }

    public static OutputStream getOutputStream(URL url) throws IOException {
        if (StorageUtils.isFile(url)) {
            File parent;
            File file = new File(url.getPath());
            if (!file.exists() && (parent = file.getParentFile()) != null && !parent.exists()) {
                parent.mkdirs();
            }
            return new FileOutputStream(file);
        }
        URLConnection connection = url.openConnection();
        connection.setDoOutput(true);
        return connection.getOutputStream();
    }

    public static InputStream getInputStream(URL url) throws IOException {
        if (url == null) {
            return null;
        }
        try {
            return url.openStream();
        }
        catch (FileNotFoundException fileNotFoundException) {
            return null;
        }
    }

    public static boolean delete(URL url) {
        if (StorageUtils.isFile(url)) {
            File file = new File(url.getPath());
            return file.delete();
        }
        return false;
    }

    public static boolean exists(URL url) {
        if (StorageUtils.isFile(url)) {
            File file = new File(url.getPath());
            return file.exists();
        }
        return true;
    }

    public static boolean isFile(URL url) {
        return "file".equals(url.getProtocol());
    }

    public static byte[] getBytes(String string) {
        if (string == null) {
            return null;
        }
        try {
            return string.getBytes(CHAR_ENCODING);
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            if (firstCharsetException) {
                String msg = NLS.bind((String)SecAuthMessages.unsupoprtedCharEncoding, (Object)CHAR_ENCODING);
                AuthPlugin.getDefault().logMessage(msg);
                firstCharsetException = false;
            }
            return string.getBytes();
        }
    }

    public static String getString(byte[] bytes) {
        if (bytes == null) {
            return null;
        }
        try {
            return new String(bytes, CHAR_ENCODING);
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            if (firstCharsetException) {
                String msg = NLS.bind((String)SecAuthMessages.unsupoprtedCharEncoding, (Object)CHAR_ENCODING);
                AuthPlugin.getDefault().logMessage(msg);
                firstCharsetException = false;
            }
            return new String(bytes);
        }
    }
}

