/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.debug.DebugOptions
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Version
 */
package org.eclipse.core.internal.boot;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;
import java.util.Enumeration;
import java.util.Properties;
import org.eclipse.core.internal.runtime.Activator;
import org.eclipse.core.internal.runtime.CommonMessages;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Version;

public abstract class PlatformURLConnection
extends URLConnection {
    private boolean isInCache = false;
    private boolean isJar = false;
    private URL resolvedURL = null;
    private URL cachedURL = null;
    private URLConnection connection = null;
    private static Properties cacheIndex = new Properties();
    private static String cacheLocation;
    private static String indexName;
    private static String filePrefix;
    private static final int BUF_SIZE = 32768;
    private static final Object NOT_FOUND;
    private static final String CACHE_PROP = ".cache.properties";
    private static final String CACHE_LOCATION_PROP = "location";
    private static final String CACHE_INDEX_PROP = "index";
    private static final String CACHE_PREFIX_PROP = "prefix";
    private static final String CACHE_INDEX = ".index.properties";
    private static final String CACHE_DIR;
    private static final String OPTION_DEBUG = "org.eclipse.core.runtime/url/debug";
    private static final String OPTION_DEBUG_CONNECT = "org.eclipse.core.runtime/url/debug/connect";
    private static final String OPTION_DEBUG_CACHE_LOOKUP = "org.eclipse.core.runtime/url/debug/cachelookup";
    private static final String OPTION_DEBUG_CACHE_COPY = "org.eclipse.core.runtime/url/debug/cachecopy";
    public static final boolean DEBUG;
    public static final boolean DEBUG_CONNECT;
    public static final boolean DEBUG_CACHE_LOOKUP;
    public static final boolean DEBUG_CACHE_COPY;

    static {
        NOT_FOUND = new Object();
        CACHE_DIR = ".eclipse-platform" + File.separator;
        Activator activator = Activator.getDefault();
        if (activator == null) {
            DEBUG_CACHE_COPY = false;
            DEBUG_CACHE_LOOKUP = false;
            DEBUG_CONNECT = false;
            DEBUG = false;
        } else {
            DebugOptions debugOptions = activator.getDebugOptions();
            if (debugOptions != null) {
                DEBUG = debugOptions.getBooleanOption(OPTION_DEBUG, false);
                DEBUG_CONNECT = debugOptions.getBooleanOption(OPTION_DEBUG_CONNECT, true);
                DEBUG_CACHE_LOOKUP = debugOptions.getBooleanOption(OPTION_DEBUG_CACHE_LOOKUP, true);
                DEBUG_CACHE_COPY = debugOptions.getBooleanOption(OPTION_DEBUG_CACHE_COPY, true);
            } else {
                DEBUG_CACHE_COPY = false;
                DEBUG_CACHE_LOOKUP = false;
                DEBUG_CONNECT = false;
                DEBUG = false;
            }
        }
    }

    protected PlatformURLConnection(URL url) {
        super(url);
    }

    protected boolean allowCaching() {
        return false;
    }

    public void connect() throws IOException {
        this.connect(false);
    }

    private synchronized void connect(boolean asLocal) throws IOException {
        if (this.connected) {
            return;
        }
        if (this.shouldCache(asLocal)) {
            try {
                URL inCache = this.getURLInCache();
                if (inCache != null) {
                    this.connection = inCache.openConnection();
                }
            }
            catch (IOException iOException) {}
        }
        if (this.connection == null) {
            this.connection = this.resolvedURL.openConnection();
        }
        this.connected = true;
        if (DEBUG && DEBUG_CONNECT) {
            this.debug("Connected as " + this.connection.getURL());
        }
    }

    private void copyToCache() throws IOException {
        String tgt;
        URL src;
        String key;
        int ix;
        String tmp;
        if (this.isInCache | this.cachedURL == null) {
            return;
        }
        if (this.isJar) {
            tmp = this.url.getFile();
            ix = tmp.lastIndexOf("!/");
            if (ix != -1) {
                tmp = tmp.substring(0, ix);
            }
            key = tmp;
        } else {
            key = this.url.getFile();
        }
        if (this.isJar) {
            tmp = this.resolvedURL.getFile();
            ix = tmp.lastIndexOf("!/");
            if (ix != -1) {
                tmp = tmp.substring(0, ix);
            }
            src = new URL(tmp);
        } else {
            src = this.resolvedURL;
        }
        InputStream srcis = null;
        if (this.isJar) {
            tmp = this.cachedURL.getFile();
            ix = tmp.indexOf(":");
            if (ix != -1) {
                tmp = tmp.substring(ix + 1);
            }
            if ((ix = tmp.lastIndexOf("!/")) != -1) {
                tmp = tmp.substring(0, ix);
            }
            tgt = tmp;
        } else {
            tgt = this.cachedURL.getFile();
        }
        File tgtFile = null;
        FileOutputStream tgtos = null;
        boolean error = false;
        long total = 0L;
        try {
            try {
                if (DEBUG && DEBUG_CACHE_COPY) {
                    if (this.isJar) {
                        this.debug("Caching jar as " + tgt);
                    } else {
                        this.debug("Caching as " + tgt);
                    }
                }
                srcis = src.openStream();
                byte[] buf = new byte[32768];
                int count = srcis.read(buf);
                tgtFile = new File(tgt);
                tgtos = new FileOutputStream(tgtFile);
                while (count != -1) {
                    total += (long)count;
                    tgtos.write(buf, 0, count);
                    count = srcis.read(buf);
                }
                srcis.close();
                srcis = null;
                tgtos.flush();
                tgtos.getFD().sync();
                tgtos.close();
                tgtos = null;
                cacheIndex.put(key, tgt);
                this.isInCache = true;
            }
            catch (IOException e) {
                error = true;
                cacheIndex.put(key, NOT_FOUND);
                if (DEBUG && DEBUG_CACHE_COPY) {
                    this.debug("Failed to cache due to " + e);
                }
                throw e;
            }
        }
        finally {
            if (!error && DEBUG && DEBUG_CACHE_COPY) {
                this.debug(String.valueOf(total) + " bytes copied");
            }
            if (srcis != null) {
                srcis.close();
            }
            if (tgtos != null) {
                tgtos.close();
            }
        }
    }

    protected void debug(String s) {
        System.out.println("URL " + this.getURL().toString() + "^" + Integer.toHexString(Thread.currentThread().hashCode()) + " " + s);
    }

    private static void debugStartup(String s) {
        System.out.println("URL " + s);
    }

    public URL[] getAuxillaryURLs() throws IOException {
        return null;
    }

    public synchronized InputStream getInputStream() throws IOException {
        if (!this.connected) {
            this.connect();
        }
        return this.connection.getInputStream();
    }

    public URL getResolvedURL() {
        return this.resolvedURL;
    }

    public URL getURLAsLocal() throws IOException {
        this.connect(true);
        URL u = this.connection.getURL();
        String up = u.getProtocol();
        if (!(up.equals("file") || up.equals("jar") || up.startsWith("bundle"))) {
            throw new IOException(NLS.bind((String)CommonMessages.url_noaccess, (Object)up));
        }
        return u;
    }

    private URL getURLInCache() throws IOException {
        String tmp;
        if (!this.allowCaching()) {
            return null;
        }
        if (this.isInCache) {
            return this.cachedURL;
        }
        if (cacheLocation == null | cacheIndex == null) {
            return null;
        }
        String file = "";
        String jarEntry = null;
        if (this.isJar) {
            file = this.url.getFile();
            int ix = file.lastIndexOf("!/");
            if (ix != -1) {
                jarEntry = file.substring(ix + "!/".length());
                file = file.substring(0, ix);
            }
        } else {
            file = this.url.getFile();
        }
        if ((tmp = (String)cacheIndex.get(file)) != null && tmp == NOT_FOUND) {
            throw new IOException();
        }
        if (tmp != null && !new File(tmp).exists()) {
            tmp = null;
            cacheIndex.remove(this.url.getFile());
        }
        if (tmp != null) {
            if (this.isJar) {
                if (DEBUG && DEBUG_CACHE_LOOKUP) {
                    this.debug("Jar located in cache as " + tmp);
                }
                tmp = "file:" + tmp + "!/" + jarEntry;
                this.cachedURL = new URL("jar", null, -1, tmp);
            } else {
                if (DEBUG && DEBUG_CACHE_LOOKUP) {
                    this.debug("Located in cache as " + tmp);
                }
                this.cachedURL = new URL("file", null, -1, tmp);
            }
            this.isInCache = true;
        } else {
            int ix = file.lastIndexOf("/");
            tmp = file.substring(ix + 1);
            tmp = String.valueOf(cacheLocation) + filePrefix + Long.toString(new Date().getTime()) + "_" + tmp;
            tmp = tmp.replace(File.separatorChar, '/');
            if (this.isJar) {
                tmp = "file:" + tmp + "!/" + jarEntry;
                this.cachedURL = new URL("jar", null, -1, tmp);
            } else {
                this.cachedURL = new URL("file", null, -1, tmp);
            }
            this.copyToCache();
        }
        return this.cachedURL;
    }

    protected URL resolve() throws IOException {
        throw new IOException();
    }

    protected static String getId(String spec) {
        String id = (String)PlatformURLConnection.parse(spec)[0];
        return id == null ? spec : id;
    }

    protected static String getVersion(String spec) {
        Version version = (Version)PlatformURLConnection.parse(spec)[1];
        return version == null ? "" : version.toString();
    }

    private static Object[] parse(String spec) {
        String bsn = null;
        Version version = null;
        int underScore = spec.indexOf(95);
        while (underScore >= 0) {
            try {
                version = Version.parseVersion((String)spec.substring(underScore + 1));
            }
            catch (IllegalArgumentException illegalArgumentException) {
                underScore = spec.indexOf(95, underScore + 1);
                continue;
            }
            bsn = spec.substring(0, underScore);
            break;
        }
        return new Object[]{bsn, version};
    }

    void setResolvedURL(URL url) throws IOException {
        if (url == null) {
            throw new IOException();
        }
        if (this.resolvedURL != null) {
            return;
        }
        int ix = url.getFile().lastIndexOf("!/");
        boolean bl = this.isJar = -1 != ix;
        if (this.isJar && !url.getProtocol().equals("jar")) {
            url = new URL("jar", "", -1, url.toExternalForm());
        }
        this.resolvedURL = url;
    }

    private boolean shouldCache(boolean asLocal) {
        String rp = this.resolvedURL.getProtocol();
        String rf = this.resolvedURL.getFile();
        if (rp.equals("file")) {
            return false;
        }
        if (rp.equals("jar") && rf.startsWith("file")) {
            return false;
        }
        if (asLocal) {
            return true;
        }
        return true;
    }

    static void shutdown() {
        if (indexName != null && cacheLocation != null) {
            Enumeration keys = cacheIndex.keys();
            while (keys.hasMoreElements()) {
                String key = (String)keys.nextElement();
                Object value = cacheIndex.get(key);
                if (value != NOT_FOUND) continue;
                cacheIndex.remove(key);
            }
            if (cacheIndex.size() == 0) {
                return;
            }
            try {
                FileOutputStream fos = null;
                fos = new FileOutputStream(String.valueOf(cacheLocation) + indexName);
                try {
                    cacheIndex.store(fos, null);
                    fos.flush();
                    fos.getFD().sync();
                }
                finally {
                    fos.close();
                }
            }
            catch (IOException iOException) {}
        }
    }

    static void startup(String location, String os, String ws, String nl) {
        block25: {
            FileInputStream fis;
            PlatformURLConnection.verifyLocation(location);
            String cacheProps = location.trim();
            if (!cacheProps.endsWith(File.separator)) {
                cacheProps = String.valueOf(cacheProps) + File.separator;
            }
            cacheProps = String.valueOf(cacheProps) + CACHE_PROP;
            File cachePropFile = new File(cacheProps);
            Properties props = null;
            if (cachePropFile.exists()) {
                try {
                    props = new Properties();
                    fis = new FileInputStream(cachePropFile);
                    try {
                        props.load(fis);
                    }
                    finally {
                        fis.close();
                    }
                }
                catch (IOException iOException) {
                    props = null;
                }
            }
            if (props == null) {
                props = new Properties();
                String tmp = System.getProperty("user.home");
                if (!tmp.endsWith(File.separator)) {
                    tmp = String.valueOf(tmp) + File.separator;
                }
                tmp = String.valueOf(tmp) + CACHE_DIR;
                props.put(CACHE_LOCATION_PROP, tmp);
                tmp = Long.toString(new Date().getTime());
                props.put(CACHE_PREFIX_PROP, tmp);
                tmp = String.valueOf(tmp) + CACHE_INDEX;
                props.put(CACHE_INDEX_PROP, tmp);
                FileOutputStream fos = null;
                try {
                    fos = new FileOutputStream(cachePropFile);
                    try {
                        props.store(fos, null);
                        fos.flush();
                        fos.getFD().sync();
                    }
                    finally {
                        fos.close();
                    }
                }
                catch (IOException iOException) {}
            }
            filePrefix = (String)props.get(CACHE_PREFIX_PROP);
            indexName = (String)props.get(CACHE_INDEX_PROP);
            cacheLocation = (String)props.get(CACHE_LOCATION_PROP);
            if (DEBUG) {
                PlatformURLConnection.debugStartup("Cache location: " + cacheLocation);
                PlatformURLConnection.debugStartup("Cache index: " + indexName);
                PlatformURLConnection.debugStartup("Cache file prefix: " + filePrefix);
            }
            if (!PlatformURLConnection.verifyLocation(cacheLocation)) {
                indexName = null;
                cacheLocation = null;
                if (DEBUG) {
                    PlatformURLConnection.debugStartup("Failed to create cache directory structure. Caching suspended");
                }
                return;
            }
            if (cacheLocation != null && indexName != null) {
                try {
                    fis = new FileInputStream(String.valueOf(cacheLocation) + indexName);
                    try {
                        cacheIndex.load(fis);
                    }
                    finally {
                        fis.close();
                    }
                }
                catch (IOException iOException) {
                    if (!DEBUG) break block25;
                    PlatformURLConnection.debugStartup("Failed to initialize cache");
                }
            }
        }
    }

    private static boolean verifyLocation(String location) {
        File cacheDir = new File(location);
        if (cacheDir.exists()) {
            return true;
        }
        return cacheDir.mkdirs();
    }
}

