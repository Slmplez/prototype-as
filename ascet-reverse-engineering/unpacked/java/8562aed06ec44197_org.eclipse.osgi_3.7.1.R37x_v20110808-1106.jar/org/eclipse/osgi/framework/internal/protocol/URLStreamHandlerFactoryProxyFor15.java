/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.protocol;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import org.eclipse.osgi.framework.internal.protocol.URLStreamHandlerProxy;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.service.url.URLStreamHandlerService;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class URLStreamHandlerFactoryProxyFor15
extends URLStreamHandlerProxy {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public URLStreamHandlerFactoryProxyFor15(String protocol, ServiceReference<URLStreamHandlerService> reference, BundleContext context) {
        super(protocol, reference, context);
    }

    @Override
    protected URLConnection openConnection(URL u, Proxy p) throws IOException {
        try {
            Class<?> clazz = this.realHandlerService.getClass();
            Class[] classArray = new Class[2];
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("java.net.URL");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz2;
            Class<?> clazz3 = class$1;
            if (clazz3 == null) {
                try {
                    clazz3 = class$1 = Class.forName("java.net.Proxy");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[1] = clazz3;
            Method openConn = clazz.getMethod("openConnection", classArray);
            return (URLConnection)openConn.invoke(this.realHandlerService, u, p);
        }
        catch (InvocationTargetException e) {
            if (e.getTargetException() instanceof IOException) {
                throw (IOException)e.getTargetException();
            }
            throw (RuntimeException)e.getTargetException();
        }
        catch (Exception e) {
            throw (UnsupportedOperationException)new UnsupportedOperationException().initCause(e);
        }
    }
}

