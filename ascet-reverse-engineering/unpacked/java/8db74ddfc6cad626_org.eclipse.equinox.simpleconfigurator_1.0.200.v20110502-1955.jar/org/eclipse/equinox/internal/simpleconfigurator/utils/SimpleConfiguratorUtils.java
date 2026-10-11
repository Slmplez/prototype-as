/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.osgi.framework.Version
 */
package org.eclipse.equinox.internal.simpleconfigurator.utils;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.StringTokenizer;
import org.eclipse.equinox.internal.simpleconfigurator.utils.BundleInfo;
import org.eclipse.equinox.internal.simpleconfigurator.utils.URIUtil;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.osgi.framework.Version;

public class SimpleConfiguratorUtils {
    private static final String UNC_PREFIX = "//";
    private static final String VERSION_PREFIX = "#version=";
    public static final String ENCODING_UTF8 = "#encoding=UTF-8";
    public static final Version COMPATIBLE_VERSION = new Version(1, 0, 0);
    public static final VersionRange VERSION_TOLERANCE = new VersionRange(COMPATIBLE_VERSION, true, new Version(2, 0, 0), false);
    private static final String FILE_SCHEME = "file";
    private static final String REFERENCE_PREFIX = "reference:";
    private static final String FILE_PREFIX = "file:";
    private static final String COMMA = ",";
    private static final String ENCODED_COMMA = "%2C";

    public static List readConfiguration(URL url, URI base) throws IOException {
        InputStream stream = null;
        try {
            stream = url.openStream();
        }
        catch (IOException e) {
            if (e instanceof FileNotFoundException) {
                return Collections.EMPTY_LIST;
            }
            throw e;
        }
        try {
            List list = SimpleConfiguratorUtils.readConfiguration(stream, base);
            return list;
        }
        finally {
            stream.close();
        }
    }

    public static List readConfiguration(InputStream stream, URI base) throws IOException {
        ArrayList<BundleInfo> bundles = new ArrayList<BundleInfo>();
        BufferedInputStream bufferedStream = new BufferedInputStream(stream);
        String encoding = SimpleConfiguratorUtils.determineEncoding(bufferedStream);
        BufferedReader r = new BufferedReader(encoding == null ? new InputStreamReader(bufferedStream) : new InputStreamReader((InputStream)bufferedStream, encoding));
        try {
            String line;
            while ((line = r.readLine()) != null) {
                if ((line = line.trim()).length() == 0) continue;
                if (line.startsWith("#")) {
                    SimpleConfiguratorUtils.parseCommentLine(line);
                    continue;
                }
                BundleInfo bundleInfo = SimpleConfiguratorUtils.parseBundleInfoLine(line, base);
                if (bundleInfo == null) continue;
                bundles.add(bundleInfo);
            }
        }
        catch (Throwable throwable) {
            try {
                r.close();
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            r.close();
        }
        catch (IOException iOException) {}
        return bundles;
    }

    private static String determineEncoding(BufferedInputStream stream) {
        byte[] utfBytes = ENCODING_UTF8.getBytes();
        byte[] buffer = new byte[utfBytes.length];
        int bytesRead = -1;
        stream.mark(utfBytes.length + 1);
        try {
            bytesRead = stream.read(buffer);
        }
        catch (IOException iOException) {}
        if (bytesRead == utfBytes.length && Arrays.equals(utfBytes, buffer)) {
            return "UTF-8";
        }
        try {
            stream.reset();
        }
        catch (IOException iOException) {}
        return null;
    }

    public static void parseCommentLine(String line) {
        String version;
        if (line.startsWith(VERSION_PREFIX) && !VERSION_TOLERANCE.isIncluded(new Version(version = line.substring(VERSION_PREFIX.length()).trim()))) {
            throw new IllegalArgumentException("Invalid version: " + version);
        }
    }

    public static BundleInfo parseBundleInfoLine(String line, URI base) {
        StringTokenizer tok = new StringTokenizer(line, COMMA);
        int numberOfTokens = tok.countTokens();
        if (numberOfTokens < 5) {
            throw new IllegalArgumentException("Line does not contain at least 5 tokens: " + line);
        }
        String symbolicName = tok.nextToken().trim();
        String version = tok.nextToken().trim();
        URI location = SimpleConfiguratorUtils.parseLocation(tok.nextToken().trim());
        int startLevel = Integer.parseInt(tok.nextToken().trim());
        boolean markedAsStarted = Boolean.valueOf(tok.nextToken());
        BundleInfo result = new BundleInfo(symbolicName, version, location, startLevel, markedAsStarted);
        if (!location.isAbsolute()) {
            result.setBaseLocation(base);
        }
        return result;
    }

    public static URI parseLocation(String location) {
        int encodedCommaIndex = location.indexOf(ENCODED_COMMA);
        while (encodedCommaIndex != -1) {
            location = String.valueOf(location.substring(0, encodedCommaIndex)) + COMMA + location.substring(encodedCommaIndex + 3);
            encodedCommaIndex = location.indexOf(ENCODED_COMMA);
        }
        if (File.separatorChar != '/') {
            String scheme;
            int colon = location.indexOf(58);
            String string = scheme = colon < 0 ? null : location.substring(0, colon);
            if (scheme == null || scheme.equals(FILE_SCHEME)) {
                location = location.replace(File.separatorChar, '/');
            }
            if (scheme == null) {
                if (location.startsWith(UNC_PREFIX) && !location.startsWith(UNC_PREFIX, 2)) {
                    location = UNC_PREFIX + location;
                }
            } else if (location.startsWith(UNC_PREFIX, colon + 1) && !location.startsWith(UNC_PREFIX, colon + 3)) {
                location = String.valueOf(location.substring(0, colon + 3)) + location.substring(colon + 1);
            }
        }
        try {
            URI uri = new URI(location);
            if (!uri.isOpaque()) {
                return uri;
            }
        }
        catch (URISyntaxException uRISyntaxException) {}
        try {
            return URIUtil.fromString(location);
        }
        catch (URISyntaxException uRISyntaxException) {
            throw new IllegalArgumentException("Invalid location: " + location);
        }
    }

    public static void transferStreams(InputStream source, OutputStream destination) throws IOException {
        source = new BufferedInputStream(source);
        destination = new BufferedOutputStream(destination);
        try {
            byte[] buffer = new byte[8192];
            while (true) {
                int bytesRead = -1;
                bytesRead = source.read(buffer);
                if (bytesRead != -1) {
                    destination.write(buffer, 0, bytesRead);
                    continue;
                }
                break;
            }
        }
        catch (Throwable throwable) {
            try {
                source.close();
            }
            catch (IOException iOException) {}
            try {
                destination.close();
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            source.close();
        }
        catch (IOException iOException) {}
        try {
            destination.close();
        }
        catch (IOException iOException) {}
    }

    public static String getBundleLocation(BundleInfo bundle, boolean useReference) {
        URI baseLocation;
        URI location = bundle.getLocation();
        String scheme = location.getScheme();
        String host = location.getHost();
        String path = location.getPath();
        if (location.getScheme() == null && (baseLocation = bundle.getBaseLocation()) != null && baseLocation.getScheme() != null) {
            scheme = baseLocation.getScheme();
            host = baseLocation.getHost();
        }
        String bundleLocation = null;
        try {
            URL bundleLocationURL = new URL(scheme, host, path);
            bundleLocation = bundleLocationURL.toExternalForm();
        }
        catch (MalformedURLException malformedURLException) {
            bundleLocation = location.toString();
        }
        if (useReference && bundleLocation.startsWith(FILE_PREFIX)) {
            bundleLocation = REFERENCE_PREFIX + bundleLocation;
        }
        return bundleLocation;
    }
}

