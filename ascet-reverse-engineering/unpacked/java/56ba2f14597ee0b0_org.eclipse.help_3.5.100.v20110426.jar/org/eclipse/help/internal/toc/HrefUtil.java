/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.help.internal.toc;

import org.eclipse.core.runtime.Path;

public class HrefUtil {
    private static final String PLUGINS_ROOT_SLASH = "PLUGINS_ROOT/";

    public static String normalizeDirectoryHref(String pluginID, String dir) {
        if (dir == null || dir.length() <= 0) {
            return null;
        }
        if (".".equals(dir)) {
            dir = "";
        }
        if (dir.length() > 0 && dir.lastIndexOf(47) == dir.length() - 1) {
            dir = dir.substring(0, dir.length() - 1);
        }
        return HrefUtil.normalizeHref(pluginID, dir);
    }

    public static final String normalizeHref(String pluginID, String href) {
        if (href == null) {
            return null;
        }
        if (href.startsWith("http:") || href.startsWith("https:") || href.startsWith("file:") || href.startsWith("jar:")) {
            return href;
        }
        if ((href = HrefUtil.normalizeDirectoryPath(href)).startsWith("/")) {
            return href;
        }
        if (href.startsWith("../")) {
            return href.substring(2);
        }
        if (href.startsWith(PLUGINS_ROOT_SLASH)) {
            return href.substring(PLUGINS_ROOT_SLASH.length() - 1);
        }
        if (href.length() > 0) {
            StringBuffer buf = new StringBuffer(2 + pluginID.length() + href.length());
            buf.append('/').append(pluginID);
            buf.append('/').append(href);
            return buf.toString();
        }
        return "/" + pluginID;
    }

    public static String getPluginIDFromHref(String href) {
        if (href == null || href.length() < 2 || href.charAt(0) != '/') {
            return null;
        }
        int secondSlashIx = href.indexOf("/", 1);
        if (secondSlashIx < 0) {
            return href.substring(1);
        }
        return href.substring(1, secondSlashIx);
    }

    public static String getResourcePathFromHref(String href) {
        if (href == null) {
            return null;
        }
        int anchorIx = href.lastIndexOf("#");
        if (anchorIx >= 0) {
            href = href.substring(0, anchorIx);
        }
        if (href.length() < 2 || href.charAt(0) != '/') {
            return null;
        }
        int secondSlashIx = href.indexOf("/", 1);
        if (secondSlashIx < 0) {
            return null;
        }
        if (secondSlashIx + 1 < href.length()) {
            return href.substring(secondSlashIx + 1);
        }
        return "";
    }

    public static String normalizeDirectoryPath(String href) {
        if (href != null) {
            return new Path(href).toString();
        }
        return null;
    }
}

