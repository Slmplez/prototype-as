/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.equinox.internal.p2.update;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public class PathUtil {
    public static boolean isWindows = System.getProperty("os.name").startsWith("Win");
    private static final String FILE_PROTOCOL = "file:";

    public static String makeRelative(String urlString, URL rootURL) {
        int index = urlString.indexOf(FILE_PROTOCOL);
        if (index == -1) {
            return urlString;
        }
        index += 5;
        boolean done = false;
        URL url = null;
        String file = urlString;
        while (!done) {
            try {
                url = new URL(file);
                file = url.getFile();
            }
            catch (MalformedURLException malformedURLException) {
                done = true;
            }
        }
        if (url == null || !new File(url.getFile()).isAbsolute()) {
            return urlString;
        }
        String rootString = rootURL.toExternalForm();
        return String.valueOf(urlString.substring(0, index)) + PathUtil.makeRelative(urlString.substring(index), rootString.substring(rootString.indexOf(FILE_PROTOCOL) + 5));
    }

    public static String makeRelative(String original, String rootPath) {
        Path path = new Path(original);
        if (!path.isAbsolute()) {
            return original;
        }
        String result = PathUtil.makeRelative((IPath)path, (IPath)new Path(rootPath));
        return path.toOSString().equals(result) ? original : result;
    }

    private static String makeRelative(IPath toRel, IPath base) {
        String device = toRel.getDevice();
        if (!(device == base.getDevice() || device != null && device.equalsIgnoreCase(base.getDevice()))) {
            return toRel.toOSString();
        }
        int i = base.matchingFirstSegments(toRel);
        if (i == 0) {
            return toRel.toOSString();
        }
        String result = "";
        int j = 0;
        while (j < base.segmentCount() - i) {
            result = String.valueOf(result) + "../";
            ++j;
        }
        if (i == toRel.segmentCount()) {
            return ".";
        }
        result = String.valueOf(result) + toRel.setDevice(null).removeFirstSegments(i).toOSString();
        return result;
    }

    public static String makeAbsolute(String original, String rootPath) {
        Path path = new Path(original);
        if (path.isAbsolute()) {
            return original;
        }
        Path root = new Path(rootPath);
        return root.addTrailingSeparator().append(original.replace(':', '}')).toOSString().replace('}', ':');
    }

    public static String makeAbsolute(String urlString, URL rootURL) {
        int index = urlString.indexOf(FILE_PROTOCOL);
        if (index == -1) {
            return urlString;
        }
        index += 5;
        boolean done = false;
        URL url = null;
        String file = urlString;
        while (!done) {
            try {
                url = new URL(file);
                file = url.getFile();
            }
            catch (MalformedURLException malformedURLException) {
                done = true;
            }
        }
        if (url == null || new File(url.getFile()).isAbsolute()) {
            return urlString;
        }
        return String.valueOf(urlString.substring(0, index - 5)) + PathUtil.makeAbsolute(urlString.substring(index), rootURL.toExternalForm());
    }
}

