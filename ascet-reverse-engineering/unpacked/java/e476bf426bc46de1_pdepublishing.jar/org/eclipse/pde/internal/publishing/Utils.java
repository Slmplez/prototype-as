/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleException
 */
package org.eclipse.pde.internal.publishing;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Dictionary;
import java.util.Enumeration;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.util.ManifestElement;
import org.osgi.framework.BundleException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class Utils {
    public static void copy(File source, File destination) throws IOException {
        InputStream in = null;
        OutputStream out = null;
        try {
            in = new BufferedInputStream(new FileInputStream(source));
            out = new BufferedOutputStream(new FileOutputStream(destination));
            byte[] buffer = new byte[8192];
            while (true) {
                int bytesRead = -1;
                bytesRead = in.read(buffer);
                if (bytesRead == -1) {
                    break;
                }
                out.write(buffer, 0, bytesRead);
            }
        }
        finally {
            try {
                if (in != null) {
                    in.close();
                }
            }
            finally {
                if (out != null) {
                    out.close();
                }
            }
        }
    }

    public static boolean guessUnpack(BundleDescription bundle, String[] classpath) {
        if (bundle == null) {
            return true;
        }
        Dictionary properties = (Dictionary)bundle.getUserObject();
        String shape = null;
        if (properties != null && (shape = (String)properties.get("Eclipse-BundleShape")) != null) {
            return shape.equals("dir");
        }
        if (bundle.getHost() != null && bundle.getName().startsWith("org.eclipse.equinox.launcher")) {
            return true;
        }
        if (new File(bundle.getLocation()).isFile()) {
            return false;
        }
        if (classpath.length == 0) {
            return false;
        }
        int i = 0;
        while (i < classpath.length) {
            if (classpath[i].equals(".")) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static String[] getBundleClasspath(Dictionary<String, String> manifest) {
        String fullClasspath = Utils.getBundleManifestHeader(manifest, "Bundle-ClassPath");
        String[] result = new String[]{};
        try {
            if (fullClasspath != null) {
                ManifestElement[] classpathEntries = ManifestElement.parseHeader((String)"Bundle-ClassPath", (String)fullClasspath);
                result = new String[classpathEntries.length];
                int i = 0;
                while (i < classpathEntries.length) {
                    result[i] = classpathEntries[i].getValue();
                    ++i;
                }
            }
        }
        catch (BundleException bundleException) {}
        return result;
    }

    public static String getBundleManifestHeader(Dictionary<String, String> manifest, String header) {
        String value = manifest.get(header);
        if (value != null) {
            return value;
        }
        Enumeration<String> keys = manifest.keys();
        while (keys.hasMoreElements()) {
            String key = keys.nextElement();
            if (!key.equalsIgnoreCase(header)) continue;
            return manifest.get(key);
        }
        return null;
    }
}

