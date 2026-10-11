/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;

public class LocationHelper {
    public static URL buildURL(String spec, boolean trailingSlash) {
        if (spec == null) {
            return null;
        }
        boolean isFile = spec.startsWith("file:");
        try {
            if (isFile) {
                return LocationHelper.adjustTrailingSlash(new File(spec.substring(5)).toURL(), trailingSlash);
            }
            return new URL(spec);
        }
        catch (MalformedURLException malformedURLException) {
            if (isFile) {
                return null;
            }
            try {
                return LocationHelper.adjustTrailingSlash(new File(spec).toURL(), trailingSlash);
            }
            catch (MalformedURLException malformedURLException2) {
                return null;
            }
        }
    }

    private static URL adjustTrailingSlash(URL url, boolean trailingSlash) throws MalformedURLException {
        String file = url.getFile();
        if (trailingSlash == file.endsWith("/")) {
            return url;
        }
        file = trailingSlash ? String.valueOf(file) + "/" : file.substring(0, file.length() - 1);
        return new URL(url.getProtocol(), url.getHost(), file);
    }
}

