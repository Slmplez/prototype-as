/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.IOException;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.loader.BaseClassLoader;
import org.eclipse.osgi.framework.adaptor.FrameworkAdaptor;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.BundleURLConnection;
import org.eclipse.osgi.framework.internal.protocol.ProtocolActivator;
import org.eclipse.osgi.internal.baseadaptor.AdaptorMsg;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.AdminPermission;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;

public abstract class BundleResourceHandler
extends URLStreamHandler
implements ProtocolActivator {
    public static final String SECURITY_CHECKED = "SECURITY_CHECKED";
    public static final String SECURITY_UNCHECKED = "SECURITY_UNCHECKED";
    public static final String BID_FWKID_SEPARATOR = ".fwk";
    private BaseAdaptor adaptor;
    protected BundleEntry bundleEntry;

    public BundleResourceHandler() {
        this(null, null);
    }

    public BundleResourceHandler(BundleEntry bundleEntry, BaseAdaptor adaptor) {
        this.bundleEntry = bundleEntry;
        this.adaptor = adaptor;
    }

    public void start(BundleContext context, FrameworkAdaptor baseAdaptor) {
        this.adaptor = (BaseAdaptor)baseAdaptor;
    }

    protected void parseURL(URL url, String str, int start, int end) {
        Bundle bundle;
        int dotIndex;
        if (end < start) {
            return;
        }
        if (url.getPath() != null) {
            this.bundleEntry = null;
        }
        String spec = "";
        if (start < end) {
            spec = str.substring(start, end);
        }
        end -= start;
        String path = url.getPath();
        String host = url.getHost();
        int resIndex = url.getPort();
        if (resIndex < 0) {
            resIndex = 0;
        }
        int pathIdx = 0;
        if (spec.startsWith("//")) {
            int bundleIdEnd;
            int bundleIdIdx = 2;
            pathIdx = spec.indexOf(47, bundleIdIdx);
            if (pathIdx == -1) {
                pathIdx = end;
                path = "";
            }
            if ((bundleIdEnd = spec.indexOf(58, bundleIdIdx)) > pathIdx || bundleIdEnd == -1) {
                bundleIdEnd = pathIdx;
            }
            if (bundleIdEnd < pathIdx - 1) {
                try {
                    resIndex = Integer.parseInt(spec.substring(bundleIdEnd + 1, pathIdx));
                }
                catch (NumberFormatException numberFormatException) {}
            }
            host = spec.substring(bundleIdIdx, bundleIdEnd);
        }
        if (pathIdx < end && spec.charAt(pathIdx) == '/') {
            path = spec.substring(pathIdx, end);
        } else if (end > pathIdx) {
            int last;
            if (path == null || path.equals("")) {
                path = "/";
            }
            path = (last = path.lastIndexOf(47) + 1) == 0 ? spec.substring(pathIdx, end) : String.valueOf(path.substring(0, last)) + spec.substring(pathIdx, end);
        }
        if (path == null) {
            path = "";
        }
        if (path.endsWith("/.") || path.endsWith("/..")) {
            path = String.valueOf(path) + '/';
        }
        while ((dotIndex = path.indexOf("/./")) >= 0) {
            path = String.valueOf(path.substring(0, dotIndex + 1)) + path.substring(dotIndex + 3);
        }
        while ((dotIndex = path.indexOf("/../")) >= 0) {
            path = dotIndex != 0 ? String.valueOf(path.substring(0, path.lastIndexOf(47, dotIndex - 1))) + path.substring(dotIndex + 3) : path.substring(dotIndex + 3);
        }
        while ((dotIndex = path.indexOf("//")) >= 0) {
            path = String.valueOf(path.substring(0, dotIndex + 1)) + path.substring(dotIndex + 2);
        }
        String authorized = SECURITY_UNCHECKED;
        long bundleId = this.getBundleID(host);
        Bundle bundle2 = bundle = this.adaptor == null ? null : this.adaptor.getBundle(bundleId);
        if (this.checkAuthorization(bundle)) {
            authorized = SECURITY_CHECKED;
        }
        if (this.adaptor != null) {
            host = String.valueOf(Long.toString(bundleId)) + BID_FWKID_SEPARATOR + Integer.toString(this.adaptor.hashCode());
        }
        this.setURL(url, url.getProtocol(), host, resIndex, authorized, null, path, null, url.getRef());
    }

    protected URLConnection openConnection(URL url) throws IOException {
        long bundleID;
        if (this.bundleEntry != null) {
            return new BundleURLConnection(url, this.bundleEntry);
        }
        String host = url.getHost();
        if (host == null) {
            throw new IOException(NLS.bind(AdaptorMsg.URL_NO_BUNDLE_ID, url.toExternalForm()));
        }
        AbstractBundle bundle = null;
        try {
            bundleID = this.getBundleID(host);
        }
        catch (NumberFormatException nfe) {
            throw (MalformedURLException)new MalformedURLException(NLS.bind(AdaptorMsg.URL_INVALID_BUNDLE_ID, host)).initCause(nfe);
        }
        AbstractBundle abstractBundle = bundle = this.adaptor == null ? null : (AbstractBundle)this.adaptor.getBundle(bundleID);
        if (bundle == null) {
            throw new IOException(NLS.bind(AdaptorMsg.URL_NO_BUNDLE_FOUND, url.toExternalForm()));
        }
        if (!url.getAuthority().equals(SECURITY_CHECKED)) {
            this.checkAuthorization(bundle);
        }
        return new BundleURLConnection(url, this.findBundleEntry(url, bundle));
    }

    protected abstract BundleEntry findBundleEntry(URL var1, AbstractBundle var2) throws IOException;

    protected String toExternalForm(URL url) {
        String ref;
        String path;
        int index;
        StringBuffer result = new StringBuffer(url.getProtocol());
        result.append("://");
        String host = url.getHost();
        if (host != null && host.length() > 0) {
            result.append(host);
        }
        if ((index = url.getPort()) > 0) {
            result.append(':').append(index);
        }
        if ((path = url.getPath()) != null) {
            if (path.length() > 0 && path.charAt(0) != '/') {
                result.append("/");
            }
            result.append(path);
        }
        if ((ref = url.getRef()) != null && ref.length() > 0) {
            result.append('#').append(ref);
        }
        return result.toString();
    }

    protected int hashCode(URL url) {
        String host;
        int hash = 0;
        String protocol = url.getProtocol();
        if (protocol != null) {
            hash += protocol.hashCode();
        }
        if ((host = url.getHost()) != null) {
            hash += host.hashCode();
        }
        hash += url.getPort();
        String path = url.getPath();
        if (path != null) {
            hash += path.hashCode();
        }
        if (this.adaptor != null) {
            hash += this.adaptor.hashCode();
        }
        return hash;
    }

    protected boolean equals(URL url1, URL url2) {
        return this.sameFile(url1, url2);
    }

    protected synchronized InetAddress getHostAddress(URL url) {
        return null;
    }

    protected boolean hostsEqual(URL url1, URL url2) {
        String host1 = url1.getHost();
        String host2 = url2.getHost();
        if (host1 != null && host2 != null) {
            return host1.equalsIgnoreCase(host2);
        }
        return host1 == null && host2 == null;
    }

    protected boolean sameFile(URL url1, URL url2) {
        String path2;
        String p2;
        if (url1.hashCode() != url2.hashCode()) {
            return false;
        }
        String p1 = url1.getProtocol();
        if (!(p1 == (p2 = url2.getProtocol()) || p1 != null && p1.equalsIgnoreCase(p2))) {
            return false;
        }
        if (!this.hostsEqual(url1, url2)) {
            return false;
        }
        if (url1.getPort() != url2.getPort()) {
            return false;
        }
        String path1 = url1.getPath();
        return path1 == (path2 = url2.getPath()) || path1 != null && path1.equals(path2);
    }

    protected boolean checkAuthorization(Bundle bundle) {
        SecurityManager sm = System.getSecurityManager();
        if (sm == null) {
            return true;
        }
        if (bundle == null) {
            return false;
        }
        sm.checkPermission(new AdminPermission(bundle, "resource"));
        return true;
    }

    protected static BaseClassLoader getBundleClassLoader(AbstractBundle bundle) {
        BundleLoader loader = bundle.getBundleLoader();
        if (loader == null) {
            return null;
        }
        return (BaseClassLoader)loader.createClassLoader();
    }

    private long getBundleID(String host) {
        int dotIndex = host.indexOf(46);
        return dotIndex >= 0 && dotIndex < host.length() - 1 ? Long.parseLong(host.substring(0, dotIndex)) : Long.parseLong(host);
    }
}

