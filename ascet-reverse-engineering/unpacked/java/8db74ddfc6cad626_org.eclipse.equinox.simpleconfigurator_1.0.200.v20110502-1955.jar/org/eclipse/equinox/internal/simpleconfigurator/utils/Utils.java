/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.simpleconfigurator.utils;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import org.eclipse.equinox.internal.simpleconfigurator.utils.BundleInfo;

public class Utils {
    private static final String PATH_SEP = "/";

    public static URL checkFullUrl(URL url, String urlName) throws IllegalArgumentException {
        if (url == null) {
            throw new IllegalArgumentException(String.valueOf(urlName) + " is null");
        }
        if (!url.getProtocol().endsWith("file")) {
            return url;
        }
        File file = new File(url.getFile());
        if (!file.isAbsolute()) {
            throw new IllegalArgumentException(String.valueOf(urlName) + "(" + url + ") does not have absolute path");
        }
        if (file.getAbsolutePath().startsWith(PATH_SEP)) {
            return url;
        }
        try {
            return Utils.getUrl("file", null, PATH_SEP + file.getAbsolutePath());
        }
        catch (MalformedURLException malformedURLException) {
            throw new IllegalArgumentException(String.valueOf(urlName) + "(" + "file:" + PATH_SEP + file.getAbsolutePath() + ") is not fully quallified");
        }
    }

    public static void deleteDir(File file) throws IOException {
        if (file.isFile()) {
            if (!file.delete()) {
                throw new IOException("Fail to delete File(" + file.getAbsolutePath() + ")");
            }
            return;
        }
        File[] children = file.listFiles();
        int i = 0;
        while (i < children.length) {
            Utils.deleteDir(children[i]);
            ++i;
        }
        if (!file.delete()) {
            throw new IOException("Fail to delete Dir(" + file.getAbsolutePath() + ")");
        }
    }

    public static BundleInfo[] getBundleInfosFromList(List list) {
        if (list == null) {
            return new BundleInfo[0];
        }
        BundleInfo[] ret = new BundleInfo[list.size()];
        list.toArray(ret);
        return ret;
    }

    public static URL getUrl(String protocol, String host, String file) throws MalformedURLException {
        file = Utils.replaceAll(file, File.separator, PATH_SEP);
        return new URL(protocol, host, file);
    }

    public static String removeLastCh(String target, char ch) {
        while (target.charAt(target.length() - 1) == ch) {
            target = target.substring(0, target.length() - 1);
        }
        return target;
    }

    public static String replaceAll(String st, String oldSt, String newSt) {
        int index = -1;
        while ((index = st.indexOf(oldSt)) != -1) {
            st = String.valueOf(st.substring(0, index)) + newSt + st.substring(index + oldSt.length());
        }
        return st;
    }

    public static void log(int level, Object obj, String method, String message, Throwable e) {
        String msg = "";
        if (method == null) {
            if (obj != null) {
                msg = "(" + obj.getClass().getName() + ")";
            }
        } else {
            msg = obj == null ? "[" + method + "]" + message : "[" + method + "](" + obj.getClass().getName() + ")";
        }
        msg = String.valueOf(msg) + message;
        String levelSt = null;
        if (level == 1) {
            levelSt = "DEBUG";
        } else if (level == 2) {
            levelSt = "INFO";
        } else if (level == 3) {
            levelSt = "WARNING";
        } else if (level == 4) {
            levelSt = "ERROR";
        }
        System.err.println("[" + levelSt + "]" + msg);
        if (e != null) {
            e.printStackTrace();
        }
    }

    public static URL buildURL(String spec) throws MalformedURLException {
        File file;
        if (spec == null) {
            throw new NullPointerException("URL spec is null.");
        }
        if (spec.startsWith("file:") && (file = new File(spec.substring(5))).isAbsolute()) {
            return file.toURL();
        }
        return new URL(spec);
    }
}

