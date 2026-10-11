/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.protocol;

import java.lang.reflect.Method;
import java.net.ContentHandler;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.osgi.framework.adaptor.FrameworkAdaptor;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.framework.internal.protocol.ContentHandlerProxy;
import org.eclipse.osgi.framework.internal.protocol.MultiplexingContentHandler;
import org.eclipse.osgi.framework.internal.protocol.MultiplexingFactory;
import org.eclipse.osgi.framework.internal.protocol.StreamHandlerFactory;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.util.tracker.ServiceTracker;

public class ContentHandlerFactory
extends MultiplexingFactory
implements java.net.ContentHandlerFactory {
    private ServiceTracker<ContentHandler, ContentHandler> contentHandlerTracker;
    private static final String contentHandlerClazz = "java.net.ContentHandler";
    private static final String CONTENT_HANDLER_PKGS = "java.content.handler.pkgs";
    private static final String DEFAULT_VM_CONTENT_HANDLERS = "sun.net.www.content";
    private static final List<Class<?>> ignoredClasses;
    private Map<String, ContentHandlerProxy> proxies = new Hashtable<String, ContentHandlerProxy>(5);
    private java.net.ContentHandlerFactory parentFactory;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    static {
        Class[] classArray = new Class[3];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingContentHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.osgi.framework.internal.protocol.ContentHandlerFactory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[1] = clazz2;
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("java.net.URLConnection");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[2] = clazz3;
        ignoredClasses = Arrays.asList(classArray);
    }

    public ContentHandlerFactory(BundleContext context, FrameworkAdaptor adaptor) {
        super(context, adaptor);
        this.contentHandlerTracker = new ServiceTracker(context, contentHandlerClazz, null);
        this.contentHandlerTracker.open();
    }

    public ContentHandler createContentHandler(String contentType) {
        String builtInHandlers = StreamHandlerFactory.secureAction.getProperty(CONTENT_HANDLER_PKGS);
        builtInHandlers = builtInHandlers == null ? DEFAULT_VM_CONTENT_HANDLERS : "sun.net.www.content|" + builtInHandlers;
        Class<?> clazz = null;
        if (builtInHandlers != null) {
            String convertedContentType = contentType.replace('.', '_');
            convertedContentType = convertedContentType.replace('/', '.');
            convertedContentType = convertedContentType.replace('-', '_');
            StringTokenizer tok = new StringTokenizer(builtInHandlers, "|");
            while (tok.hasMoreElements()) {
                StringBuffer name = new StringBuffer();
                name.append(tok.nextToken());
                name.append(".");
                name.append(convertedContentType);
                try {
                    clazz = StreamHandlerFactory.secureAction.loadSystemClass(name.toString());
                    if (clazz == null) continue;
                    return null;
                }
                catch (ClassNotFoundException classNotFoundException) {}
            }
        }
        if (this.isMultiplexing()) {
            return new MultiplexingContentHandler(contentType, this);
        }
        return this.createInternalContentHandler(contentType);
    }

    public ContentHandler createInternalContentHandler(String contentType) {
        ContentHandler parentHandler;
        ContentHandlerProxy proxy = this.proxies.get(contentType);
        if (proxy != null) {
            return proxy;
        }
        ServiceReference<ContentHandler>[] serviceReferences = this.contentHandlerTracker.getServiceReferences();
        if (serviceReferences != null) {
            int i = 0;
            while (i < serviceReferences.length) {
                String[] prop = serviceReferences[i].getProperty("url.content.mimetype");
                if (prop instanceof String) {
                    prop = new String[]{(String)prop};
                }
                if (!(prop instanceof String[])) {
                    String message = NLS.bind(Msg.URL_HANDLER_INCORRECT_TYPE, new Object[]{"url.content.mimetype", contentHandlerClazz, serviceReferences[i].getBundle()});
                    this.adaptor.getFrameworkLog().log(new FrameworkLogEntry("org.eclipse.osgi", 2, 0, message, 0, null, null));
                } else {
                    String[] contentHandler = prop;
                    int j = 0;
                    while (j < contentHandler.length) {
                        if (contentHandler[j].equals(contentType)) {
                            proxy = new ContentHandlerProxy(contentType, serviceReferences[i], this.context);
                            this.proxies.put(contentType, proxy);
                            return proxy;
                        }
                        ++j;
                    }
                }
                ++i;
            }
        }
        if (this.parentFactory != null && (parentHandler = this.parentFactory.createContentHandler(contentType)) != null) {
            return parentHandler;
        }
        proxy = new ContentHandlerProxy(contentType, null, this.context);
        this.proxies.put(contentType, proxy);
        return proxy;
    }

    public synchronized ContentHandler findAuthorizedContentHandler(String contentType) {
        Object factory = this.findAuthorizedFactory(ignoredClasses);
        if (factory == null) {
            return null;
        }
        if (factory == this) {
            return this.createInternalContentHandler(contentType);
        }
        try {
            Class<?> clazz = factory.getClass();
            Class[] classArray = new Class[1];
            Class<?> clazz2 = class$3;
            if (clazz2 == null) {
                try {
                    clazz2 = class$3 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz2;
            Method createInternalContentHandlerMethod = clazz.getMethod("createInternalContentHandler", classArray);
            return (ContentHandler)createInternalContentHandlerMethod.invoke(factory, contentType);
        }
        catch (Exception e) {
            FrameworkLog frameworkLog = this.adaptor.getFrameworkLog();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.osgi.framework.internal.protocol.ContentHandlerFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "findAuthorizedContentHandler-loop", 0, e, null));
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public Object getParentFactory() {
        return this.parentFactory;
    }

    public void setParentFactory(Object parentFactory) {
        if (this.parentFactory == null) {
            this.parentFactory = (java.net.ContentHandlerFactory)parentFactory;
        }
    }
}

