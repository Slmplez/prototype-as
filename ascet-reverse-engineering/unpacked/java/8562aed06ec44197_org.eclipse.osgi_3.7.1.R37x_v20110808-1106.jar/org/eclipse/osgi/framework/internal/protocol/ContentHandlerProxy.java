/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.protocol;

import java.io.IOException;
import java.net.ContentHandler;
import java.net.URLConnection;
import org.eclipse.osgi.framework.internal.protocol.StreamHandlerFactory;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.util.tracker.ServiceTracker;
import org.osgi.util.tracker.ServiceTrackerCustomizer;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ContentHandlerProxy
extends ContentHandler
implements ServiceTrackerCustomizer<ContentHandler, ServiceReference<ContentHandler>> {
    protected ContentHandler realHandler;
    protected ServiceTracker<ContentHandler, ServiceReference<ContentHandler>> contentHandlerServiceTracker;
    protected BundleContext context;
    protected ServiceReference<ContentHandler> contentHandlerServiceReference;
    protected String contentType;
    protected int ranking = Integer.MIN_VALUE;
    static /* synthetic */ Class class$0;

    public ContentHandlerProxy(String contentType, ServiceReference<ContentHandler> reference, BundleContext context) {
        this.context = context;
        this.contentType = contentType;
        this.setNewHandler(reference, this.getRank(reference));
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.net.ContentHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.contentHandlerServiceTracker = new ServiceTracker<ContentHandler, ServiceReference<ContentHandler>>(context, clazz.getName(), this);
        StreamHandlerFactory.secureAction.open(this.contentHandlerServiceTracker);
    }

    private void setNewHandler(ServiceReference<ContentHandler> reference, int rank) {
        if (this.contentHandlerServiceReference != null) {
            this.context.ungetService(this.contentHandlerServiceReference);
        }
        this.contentHandlerServiceReference = reference;
        this.ranking = rank;
        this.realHandler = reference == null ? new DefaultContentHandler() : StreamHandlerFactory.secureAction.getService(reference, this.context);
    }

    @Override
    public ServiceReference<ContentHandler> addingService(ServiceReference<ContentHandler> reference) {
        Object prop = reference.getProperty("url.content.mimetype");
        if (!(prop instanceof String[])) {
            return null;
        }
        String[] contentTypes = (String[])prop;
        int i = 0;
        while (i < contentTypes.length) {
            if (contentTypes[i].equals(this.contentType)) {
                int newServiceRanking = this.getRank(reference);
                if (newServiceRanking > this.ranking || this.contentHandlerServiceReference == null) {
                    this.setNewHandler(reference, newServiceRanking);
                }
                return reference;
            }
            ++i;
        }
        return null;
    }

    @Override
    public void modifiedService(ServiceReference<ContentHandler> reference, ServiceReference<ContentHandler> service) {
        int newrank = this.getRank(reference);
        if (reference == this.contentHandlerServiceReference) {
            ServiceReference<ContentHandler> newReference;
            if (newrank < this.ranking && (newReference = this.contentHandlerServiceTracker.getServiceReference()) != this.contentHandlerServiceReference && newReference != null) {
                this.setNewHandler(newReference, (Integer)newReference.getProperty("service.ranking"));
            }
        } else if (newrank > this.ranking) {
            this.setNewHandler(reference, newrank);
        }
    }

    @Override
    public void removedService(ServiceReference<ContentHandler> reference, ServiceReference<ContentHandler> service) {
        if (reference != this.contentHandlerServiceReference) {
            return;
        }
        ServiceReference<ContentHandler> newReference = this.contentHandlerServiceTracker.getServiceReference();
        this.setNewHandler(newReference, this.getRank(newReference));
    }

    @Override
    public Object getContent(URLConnection uConn) throws IOException {
        return this.realHandler.getContent(uConn);
    }

    private int getRank(ServiceReference<?> reference) {
        if (reference == null) {
            return Integer.MIN_VALUE;
        }
        Object property = reference.getProperty("service.ranking");
        return property instanceof Integer ? (Integer)property : 0;
    }

    class DefaultContentHandler
    extends ContentHandler {
        DefaultContentHandler() {
        }

        public Object getContent(URLConnection uConn) throws IOException {
            return uConn.getInputStream();
        }
    }
}

