/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public final class URIUtil {
    private static final String JAR_SUFFIX = "!/";
    private static final String UNC_PREFIX = "//";
    private static final String SCHEME_FILE = "file";
    private static final String SCHEME_JAR = "jar";
    private static final boolean decodeResolved = URI.create("foo:/a%20b/").resolve("c").getSchemeSpecificPart().indexOf(37) > 0;

    private URIUtil() {
    }

    public static URI append(URI base, String extension) {
        try {
            URI result;
            String path = base.getPath();
            if (path == null) {
                return URIUtil.appendOpaque(base, extension);
            }
            if (path.endsWith("/")) {
                result = base.resolve(new URI(null, null, extension, null));
                if (decodeResolved) {
                    result = new URI(URIUtil.toUnencodedString(result));
                }
            } else {
                path = String.valueOf(path) + '/' + extension;
                result = new URI(base.getScheme(), base.getUserInfo(), base.getHost(), base.getPort(), path, base.getQuery(), base.getFragment());
            }
            result = result.normalize();
            String resultPath = result.getPath();
            if (URIUtil.isFileURI(base) && path != null && path.startsWith(UNC_PREFIX) && (resultPath == null || !resultPath.startsWith(UNC_PREFIX))) {
                result = new URI(result.getScheme(), URIUtil.ensureUNCPath(result.getSchemeSpecificPart()), result.getFragment());
            }
            return result;
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
            File file = new File(ssp);
            if (file.isAbsolute()) {
                return file.toURI();
            }
            if (File.separatorChar != '/') {
                ssp = ssp.replace(File.separatorChar, '/');
            }
            if (!ssp.startsWith("/")) {
                scheme = null;
            }
        }
        return new URI(scheme, ssp, fragment);
    }

    public static boolean isFileURI(URI uri) {
        return SCHEME_FILE.equalsIgnoreCase(uri.getScheme());
    }

    public static String lastSegment(URI location) {
        String path = location.getPath();
        if (path == null) {
            return new Path(location.getSchemeSpecificPart()).lastSegment();
        }
        return new Path(path).lastSegment();
    }

    public static URI removeFileExtension(URI uri) {
        String lastSegment = URIUtil.lastSegment(uri);
        if (lastSegment == null) {
            return uri;
        }
        int lastIndex = lastSegment.lastIndexOf(46);
        if (lastIndex == -1) {
            return uri;
        }
        String uriString = uri.toString();
        lastIndex = uriString.lastIndexOf(46);
        uriString = uriString.substring(0, lastIndex);
        return URI.create(uriString);
    }

    public static boolean sameURI(URI uri1, URI uri2) {
        if (uri1 == uri2) {
            return true;
        }
        if (uri1 == null || uri2 == null) {
            return false;
        }
        if (uri1.equals(uri2)) {
            return true;
        }
        if (URIUtil.sameString(uri1.getScheme(), uri2.getScheme()) && URIUtil.sameString(uri1.getSchemeSpecificPart(), uri2.getSchemeSpecificPart()) && URIUtil.sameString(uri1.getFragment(), uri2.getFragment())) {
            return true;
        }
        if (uri1.isAbsolute() != uri2.isAbsolute()) {
            return false;
        }
        File file1 = URIUtil.toFile(uri1);
        return file1 == null ? false : file1.equals(URIUtil.toFile(uri2));
    }

    private static boolean sameString(String s1, String s2) {
        return s1 == s2 || s1 != null && s1.equals(s2);
    }

    public static File toFile(URI uri) {
        if (!URIUtil.isFileURI(uri)) {
            return null;
        }
        return new File(uri.getSchemeSpecificPart());
    }

    public static URI toJarURI(URI uri, IPath entryPath) {
        try {
            if (entryPath == null) {
                entryPath = Path.EMPTY;
            }
            return new URI(SCHEME_JAR, String.valueOf(uri.getScheme()) + ':' + uri.getSchemeSpecificPart() + JAR_SUFFIX + entryPath.toString(), null);
        }
        catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }
    }

    public static URI toURI(URL url) throws URISyntaxException {
        if (SCHEME_FILE.equals(url.getProtocol())) {
            String pathString = url.toExternalForm().substring(5);
            if (pathString.indexOf(47) != 0) {
                pathString = String.valueOf('/') + pathString;
            } else if (pathString.startsWith(UNC_PREFIX) && !pathString.startsWith(UNC_PREFIX, 2)) {
                pathString = URIUtil.ensureUNCPath(pathString);
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

    public static URI makeAbsolute(URI relative, URI baseURI) {
        if (relative.isAbsolute()) {
            return relative;
        }
        return URIUtil.append(baseURI, URIUtil.toUnencodedString(relative));
    }

    public static URI makeRelative(URI original, URI baseURI) {
        if (!SCHEME_FILE.equals(original.getScheme()) || !SCHEME_FILE.equals(baseURI.getScheme())) {
            return baseURI.relativize(original);
        }
        Path originalPath = new Path(original.getSchemeSpecificPart());
        Path basePath = new Path(baseURI.getSchemeSpecificPart());
        if (!basePath.isAbsolute()) {
            return original;
        }
        IPath relativePath = originalPath.makeRelativeTo(basePath);
        if (relativePath == originalPath) {
            return original;
        }
        try {
            return new URI(null, null, relativePath.toString(), original.getFragment());
        }
        catch (URISyntaxException uRISyntaxException) {
            return original;
        }
    }
}

