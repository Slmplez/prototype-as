/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.protocol;

import java.lang.reflect.Method;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;
import java.security.AccessController;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.osgi.framework.adaptor.FrameworkAdaptor;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.framework.internal.protocol.MultiplexingFactory;
import org.eclipse.osgi.framework.internal.protocol.MultiplexingURLStreamHandler;
import org.eclipse.osgi.framework.internal.protocol.ProtocolActivator;
import org.eclipse.osgi.framework.internal.protocol.URLStreamHandlerFactoryProxyFor15;
import org.eclipse.osgi.framework.internal.protocol.URLStreamHandlerProxy;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.framework.util.SecureAction;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.service.url.URLStreamHandlerService;
import org.osgi.util.tracker.ServiceTracker;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class StreamHandlerFactory
extends MultiplexingFactory
implements URLStreamHandlerFactory {
    static final SecureAction secureAction = AccessController.doPrivileged(SecureAction.createSecureAction());
    private ServiceTracker<URLStreamHandlerService, URLStreamHandlerService> handlerTracker;
    protected static final String URLSTREAMHANDLERCLASS = "org.osgi.service.url.URLStreamHandlerService";
    protected static final String PROTOCOL_HANDLER_PKGS = "java.protocol.handler.pkgs";
    protected static final String INTERNAL_PROTOCOL_HANDLER_PKG = "org.eclipse.osgi.framework.internal.protocol";
    private static final List<Class<?>> ignoredClasses;
    private static final boolean useNetProxy;
    private Map<String, URLStreamHandler> proxies;
    private URLStreamHandlerFactory parentFactory;
    private ThreadLocal<List<String>> creatingProtocols = new ThreadLocal();
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    static {
        Class[] classArray = new Class[3];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingURLStreamHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.osgi.framework.internal.protocol.StreamHandlerFactory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[1] = clazz2;
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("java.net.URL");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[2] = clazz3;
        ignoredClasses = Arrays.asList(classArray);
        Class<?> clazz4 = null;
        try {
            clazz4 = Class.forName("java.net.Proxy");
        }
        catch (ClassNotFoundException classNotFoundException) {}
        useNetProxy = clazz4 != null;
    }

    public StreamHandlerFactory(BundleContext context, FrameworkAdaptor adaptor) {
        super(context, adaptor);
        this.proxies = new Hashtable<String, URLStreamHandler>(15);
        this.handlerTracker = new ServiceTracker(context, URLSTREAMHANDLERCLASS, null);
        this.handlerTracker.open();
    }

    private Class<?> getBuiltIn(String protocol, String builtInHandlers, boolean fromFramework) {
        if (builtInHandlers == null) {
            return null;
        }
        StringTokenizer tok = new StringTokenizer(builtInHandlers, "|");
        while (tok.hasMoreElements()) {
            StringBuffer name = new StringBuffer();
            name.append(tok.nextToken());
            name.append(".");
            name.append(protocol);
            name.append(".Handler");
            try {
                Class<?> clazz = fromFramework ? secureAction.forName(name.toString()) : secureAction.loadSystemClass(name.toString());
                if (clazz == null) continue;
                return clazz;
            }
            catch (ClassNotFoundException classNotFoundException) {}
        }
        return null;
    }

    @Override
    public URLStreamHandler createURLStreamHandler(String protocol) {
        if (this.isRecursive(protocol)) {
            return null;
        }
        try {
            String builtInHandlers = secureAction.getProperty(PROTOCOL_HANDLER_PKGS);
            Class<?> clazz = this.getBuiltIn(protocol, builtInHandlers, false);
            if (clazz != null) {
                return null;
            }
            URLStreamHandler result = null;
            if (this.isMultiplexing()) {
                if (this.findAuthorizedURLStreamHandler(protocol) != null) {
                    result = new MultiplexingURLStreamHandler(protocol, this);
                }
            } else {
                result = this.createInternalURLStreamHandler(protocol);
            }
            if (result == null && this.parentFactory != null) {
                result = this.parentFactory.createURLStreamHandler(protocol);
            }
            URLStreamHandler uRLStreamHandler = result;
            return uRLStreamHandler;
        }
        catch (Throwable t) {
            FrameworkLog frameworkLog = this.adaptor.getFrameworkLog();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.osgi.framework.internal.protocol.StreamHandlerFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "Unexpected error in factory.", 0, t, null));
            return null;
        }
        finally {
            this.releaseRecursive(protocol);
        }
    }

    private boolean isRecursive(String protocol) {
        List<String> protocols = this.creatingProtocols.get();
        if (protocols == null) {
            protocols = new ArrayList<String>(1);
            this.creatingProtocols.set(protocols);
        }
        if (protocols.contains(protocol)) {
            return true;
        }
        protocols.add(protocol);
        return false;
    }

    private void releaseRecursive(String protocol) {
        List<String> protocols = this.creatingProtocols.get();
        protocols.remove(protocol);
    }

    public URLStreamHandler createInternalURLStreamHandler(String protocol) {
        String internalHandlerPkgs = secureAction.getProperty("equinox.interal.handler.pkgs");
        internalHandlerPkgs = internalHandlerPkgs == null ? INTERNAL_PROTOCOL_HANDLER_PKG : new StringBuffer(String.valueOf(internalHandlerPkgs)).append('|').append(INTERNAL_PROTOCOL_HANDLER_PKG).toString();
        Class<?> clazz = this.getBuiltIn(protocol, internalHandlerPkgs, true);
        if (clazz == null) {
            URLStreamHandlerProxy handler = (URLStreamHandlerProxy)this.proxies.get(protocol);
            if (handler != null) {
                return handler;
            }
            ServiceReference<URLStreamHandlerService>[] serviceReferences = this.handlerTracker.getServiceReferences();
            if (serviceReferences == null) {
                return null;
            }
            int i = 0;
            while (i < serviceReferences.length) {
                String[] prop = serviceReferences[i].getProperty("url.handler.protocol");
                if (prop instanceof String) {
                    prop = new String[]{(String)prop};
                }
                if (!(prop instanceof String[])) {
                    String message = NLS.bind(Msg.URL_HANDLER_INCORRECT_TYPE, new Object[]{"url.handler.protocol", URLSTREAMHANDLERCLASS, serviceReferences[i].getBundle()});
                    this.adaptor.getFrameworkLog().log(new FrameworkLogEntry("org.eclipse.osgi", 2, 0, message, 0, null, null));
                } else {
                    String[] protocols = prop;
                    int j = 0;
                    while (j < protocols.length) {
                        if (protocols[j].equals(protocol)) {
                            handler = useNetProxy ? new URLStreamHandlerFactoryProxyFor15(protocol, serviceReferences[i], this.context) : new URLStreamHandlerProxy(protocol, serviceReferences[i], this.context);
                            this.proxies.put(protocol, handler);
                            return handler;
                        }
                        ++j;
                    }
                }
                ++i;
            }
            return null;
        }
        try {
            URLStreamHandler handler = (URLStreamHandler)clazz.newInstance();
            if (handler instanceof ProtocolActivator) {
                ((ProtocolActivator)((Object)handler)).start(this.context, this.adaptor);
            }
            return handler;
        }
        catch (Exception exception) {
            return null;
        }
    }

    protected URLStreamHandler findAuthorizedURLStreamHandler(String protocol) {
        Object factory = this.findAuthorizedFactory(ignoredClasses);
        if (factory == null) {
            return null;
        }
        if (factory == this) {
            return this.createInternalURLStreamHandler(protocol);
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
            Method createInternalURLStreamHandlerMethod = clazz.getMethod("createInternalURLStreamHandler", classArray);
            return (URLStreamHandler)createInternalURLStreamHandlerMethod.invoke(factory, protocol);
        }
        catch (Exception e) {
            FrameworkLog frameworkLog = this.adaptor.getFrameworkLog();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.osgi.framework.internal.protocol.StreamHandlerFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "findAuthorizedURLStreamHandler-loop", 0, e, null));
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    @Override
    public Object getParentFactory() {
        return this.parentFactory;
    }

    @Override
    public void setParentFactory(Object parentFactory) {
        if (this.parentFactory == null) {
            this.parentFactory = (URLStreamHandlerFactory)parentFactory;
        }
    }
}

