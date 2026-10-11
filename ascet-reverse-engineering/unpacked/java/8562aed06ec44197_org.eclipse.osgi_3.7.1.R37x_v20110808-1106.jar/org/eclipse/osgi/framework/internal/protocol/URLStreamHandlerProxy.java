/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.protocol;

import java.io.IOException;
import java.net.InetAddress;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import org.eclipse.osgi.framework.internal.protocol.NullURLStreamHandlerService;
import org.eclipse.osgi.framework.internal.protocol.StreamHandlerFactory;
import org.eclipse.osgi.framework.internal.protocol.URLStreamHandlerSetter;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.service.url.URLStreamHandlerService;
import org.osgi.util.tracker.ServiceTracker;
import org.osgi.util.tracker.ServiceTrackerCustomizer;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class URLStreamHandlerProxy
extends URLStreamHandler
implements ServiceTrackerCustomizer<URLStreamHandlerService, ServiceReference<URLStreamHandlerService>> {
    protected URLStreamHandlerService realHandlerService;
    protected URLStreamHandlerSetter urlSetter;
    protected ServiceTracker<URLStreamHandlerService, ServiceReference<URLStreamHandlerService>> urlStreamHandlerServiceTracker;
    protected BundleContext context;
    protected ServiceReference<URLStreamHandlerService> urlStreamServiceReference;
    protected String protocol;
    protected int ranking = Integer.MIN_VALUE;

    public URLStreamHandlerProxy(String protocol, ServiceReference<URLStreamHandlerService> reference, BundleContext context) {
        this.context = context;
        this.protocol = protocol;
        this.urlSetter = new URLStreamHandlerSetter(this);
        this.setNewHandler(reference, this.getRank(reference));
        this.urlStreamHandlerServiceTracker = new ServiceTracker<URLStreamHandlerService, ServiceReference<URLStreamHandlerService>>(context, "org.osgi.service.url.URLStreamHandlerService", this);
        StreamHandlerFactory.secureAction.open(this.urlStreamHandlerServiceTracker);
    }

    private void setNewHandler(ServiceReference<URLStreamHandlerService> reference, int rank) {
        if (this.urlStreamServiceReference != null) {
            this.context.ungetService(this.urlStreamServiceReference);
        }
        this.urlStreamServiceReference = reference;
        this.ranking = rank;
        this.realHandlerService = reference == null ? new NullURLStreamHandlerService() : StreamHandlerFactory.secureAction.getService(reference, this.context);
    }

    @Override
    protected boolean equals(URL url1, URL url2) {
        return this.realHandlerService.equals(url1, url2);
    }

    @Override
    protected int getDefaultPort() {
        return this.realHandlerService.getDefaultPort();
    }

    @Override
    protected InetAddress getHostAddress(URL url) {
        return this.realHandlerService.getHostAddress(url);
    }

    @Override
    protected int hashCode(URL url) {
        return this.realHandlerService.hashCode(url);
    }

    @Override
    protected boolean hostsEqual(URL url1, URL url2) {
        return this.realHandlerService.hostsEqual(url1, url2);
    }

    @Override
    protected URLConnection openConnection(URL url) throws IOException {
        return this.realHandlerService.openConnection(url);
    }

    @Override
    protected void parseURL(URL url, String str, int start, int end) {
        this.realHandlerService.parseURL(this.urlSetter, url, str, start, end);
    }

    @Override
    protected boolean sameFile(URL url1, URL url2) {
        return this.realHandlerService.sameFile(url1, url2);
    }

    @Override
    protected String toExternalForm(URL url) {
        return this.realHandlerService.toExternalForm(url);
    }

    @Override
    public void setURL(URL u, String protocol, String host, int port, String authority, String userInfo, String file, String query, String ref) {
        super.setURL(u, protocol, host, port, authority, userInfo, file, query, ref);
    }

    @Override
    public void setURL(URL url, String protocol, String host, int port, String file, String ref) {
        super.setURL(url, protocol, host, port, null, null, file, null, ref);
    }

    @Override
    public ServiceReference<URLStreamHandlerService> addingService(ServiceReference<URLStreamHandlerService> reference) {
        Object prop = reference.getProperty("url.handler.protocol");
        if (!(prop instanceof String[])) {
            return null;
        }
        String[] protocols = (String[])prop;
        int i = 0;
        while (i < protocols.length) {
            if (protocols[i].equals(this.protocol)) {
                int newServiceRanking = this.getRank(reference);
                if (newServiceRanking > this.ranking || this.urlStreamServiceReference == null) {
                    this.setNewHandler(reference, newServiceRanking);
                }
                return reference;
            }
            ++i;
        }
        return null;
    }

    @Override
    public void modifiedService(ServiceReference<URLStreamHandlerService> reference, ServiceReference<URLStreamHandlerService> service) {
        int newRank = this.getRank(reference);
        if (reference == this.urlStreamServiceReference) {
            ServiceReference<URLStreamHandlerService> newReference;
            if (newRank < this.ranking && (newReference = this.urlStreamHandlerServiceTracker.getServiceReference()) != this.urlStreamServiceReference && newReference != null) {
                this.setNewHandler(newReference, (Integer)newReference.getProperty("service.ranking"));
            }
        } else if (newRank > this.ranking) {
            this.setNewHandler(reference, newRank);
        }
    }

    @Override
    public void removedService(ServiceReference<URLStreamHandlerService> reference, ServiceReference<URLStreamHandlerService> service) {
        if (reference != this.urlStreamServiceReference) {
            return;
        }
        ServiceReference<URLStreamHandlerService> newReference = this.urlStreamHandlerServiceTracker.getServiceReference();
        this.setNewHandler(newReference, this.getRank(newReference));
    }

    private int getRank(ServiceReference<?> reference) {
        if (reference == null) {
            return Integer.MIN_VALUE;
        }
        Object property = reference.getProperty("service.ranking");
        return property instanceof Integer ? (Integer)property : 0;
    }
}

