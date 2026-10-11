/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.core.helpers;

import java.io.File;
import java.net.URI;
import java.net.URL;

public class URLUtil {
    public static File toFile(URL url) {
        if (!"file".equalsIgnoreCase(url.getProtocol())) {
            return null;
        }
        String externalForm = url.toExternalForm();
        String pathString = externalForm.substring(5);
        try {
            if (pathString.indexOf(47) == 0) {
                if (pathString.indexOf("//") == 0) {
                    externalForm = "file:" + URLUtil.ensureUNCPath(pathString);
                }
                return new File(new URI(externalForm));
            }
            if (pathString.indexOf(58) == 1) {
                return new File(new URI("file:/" + pathString));
            }
            return new File(new URI(pathString).getSchemeSpecificPart());
        }
        catch (Exception exception) {
            return new File(pathString);
        }
    }

    private static String ensureUNCPath(String path) {
        int len = path.length();
        StringBuffer result = new StringBuffer(len);
        int i = 0;
        while (i < 4) {
            if (i >= len || result.length() > 0 || path.charAt(i) != '/') {
                result.append('/');
            }
            ++i;
        }
        result.append(path);
        return result.toString();
    }
}

