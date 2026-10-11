/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.simpleconfigurator.utils;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

public class URIUtil {
    private static final String SCHEME_FILE = "file";
    private static final String UNC_PREFIX = "//";

    public static URI append(URI base, String extension) {
        try {
            String path = base.getPath();
            if (path == null) {
                return URIUtil.appendOpaque(base, extension);
            }
            if (path.endsWith("/")) {
                URI result = base.resolve(extension);
                String resultPath = result.getPath();
                if (path.startsWith(UNC_PREFIX) && (resultPath == null || !resultPath.startsWith(UNC_PREFIX))) {
                    result = new URI(result.getScheme(), "///" + result.getSchemeSpecificPart(), result.getFragment());
                }
                return result;
            }
            path = String.valueOf(path) + "/" + extension;
            return new URI(base.getScheme(), base.getUserInfo(), base.getHost(), base.getPort(), path, base.getQuery(), base.getFragment());
        }
        catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }
    }

    private static URI appendOpaque(URI base, String extension) throws URISyntaxException {
        String ssp = base.getSchemeSpecificPart();
        ssp = ssp.endsWith("/") ? String.valueOf(ssp) + extension : String.valueOf(ssp) + "/" + extension;
        return new URI(base.getScheme(), ssp, base.getFragment());
    }

    public static URI fromString(String uriString) throws URISyntaxException {
        String fragment;
        boolean noHash;
        int colon = uriString.indexOf(58);
        int hash = uriString.lastIndexOf(35);
        boolean bl = noHash = hash < 0;
        if (noHash) {
            hash = uriString.length();
        }
        String scheme = colon < 0 ? null : uriString.substring(0, colon);
        String ssp = uriString.substring(colon + 1, hash);
        String string = fragment = noHash ? null : uriString.substring(hash + 1);
        if (scheme != null && scheme.equals(SCHEME_FILE)) {
            File file = new File(uriString.substring(5));
            if (file.isAbsolute()) {
                return file.toURI();
            }
            scheme = null;
            if (File.separatorChar != '/') {
                ssp = ssp.replace(File.separatorChar, '/');
            }
        }
        return new URI(scheme, ssp, fragment);
    }

    public static boolean sameURI(URI url1, URI url2) {
        if (url1 == url2) {
            return true;
        }
        if (url1 == null || url2 == null) {
            return false;
        }
        if (url1.equals(url2)) {
            return true;
        }
        if (url1.isAbsolute() != url2.isAbsolute()) {
            return false;
        }
        File file1 = URIUtil.toFile(url1);
        return file1 == null ? false : file1.equals(URIUtil.toFile(url2));
    }

    public static File toFile(URI uri) {
        block4: {
            try {
                if (SCHEME_FILE.equalsIgnoreCase(uri.getScheme())) break block4;
                return null;
            }
            catch (IllegalArgumentException illegalArgumentException) {
                String path = uri.getPath();
                if (path == null) {
                    path = uri.getSchemeSpecificPart();
                }
                return new File(path);
            }
        }
        return new File(uri);
    }

    public static String toUnencodedString(URI uri) {
        StringBuffer result = new StringBuffer();
        String scheme = uri.getScheme();
        if (scheme != null) {
            result.append(scheme).append(':');
        }
        result.append(uri.getSchemeSpecificPart());
        String fragment = uri.getFragment();
        if (fragment != null) {
            result.append('#').append(fragment);
        }
        return result.toString();
    }

    public static URI toURI(URL url) throws URISyntaxException {
        if (SCHEME_FILE.equals(url.getProtocol())) {
            String pathString = url.toExternalForm().substring(5);
            if (pathString.indexOf(47) != 0) {
                pathString = String.valueOf('/') + pathString;
            } else if (pathString.startsWith(UNC_PREFIX) && !pathString.startsWith(UNC_PREFIX, 2)) {
                pathString = UNC_PREFIX + pathString;
            }
            return new URI(SCHEME_FILE, null, pathString, null);
        }
        try {
            return new URI(url.toExternalForm());
        }
        catch (URISyntaxException uRISyntaxException) {
            return new URI(url.getProtocol(), url.getUserInfo(), url.getHost(), url.getPort(), url.getPath(), url.getQuery(), url.getRef());
        }
    }

    public static URL toURL(URI uri) throws MalformedURLException {
        return new URL(uri.toString());
    }
}

