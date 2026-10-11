/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.protocol;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.framework.internal.protocol.StreamHandlerFactory;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;

public class MultiplexingURLStreamHandler
extends URLStreamHandler {
    private static Method openConnectionMethod;
    private static Method equalsMethod;
    private static Method getDefaultPortMethod;
    private static Method getHostAddressMethod;
    private static Method hashCodeMethod;
    private static Method hostsEqualMethod;
    private static Method parseURLMethod;
    private static Method sameFileMethod;
    private static Method setURLMethod;
    private static Method toExternalFormMethod;
    private static Field handlerField;
    private static boolean methodsInitialized;
    private String protocol;
    private StreamHandlerFactory factory;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    static {
        methodsInitialized = false;
    }

    private static synchronized void initializeMethods(StreamHandlerFactory factory) {
        if (methodsInitialized) {
            return;
        }
        try {
            block140: {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("java.net.URLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Class[] classArray = new Class[1];
                Class<?> clazz2 = class$1;
                if (clazz2 == null) {
                    try {
                        clazz2 = class$1 = Class.forName("java.net.URL");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray[0] = clazz2;
                openConnectionMethod = clazz.getDeclaredMethod("openConnection", classArray);
                openConnectionMethod.setAccessible(true);
                Class<?> clazz3 = class$0;
                if (clazz3 == null) {
                    try {
                        clazz3 = class$0 = Class.forName("java.net.URLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Class[] classArray2 = new Class[2];
                Class<?> clazz4 = class$1;
                if (clazz4 == null) {
                    try {
                        clazz4 = class$1 = Class.forName("java.net.URL");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray2[0] = clazz4;
                Class<?> clazz5 = class$1;
                if (clazz5 == null) {
                    try {
                        clazz5 = class$1 = Class.forName("java.net.URL");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray2[1] = clazz5;
                equalsMethod = clazz3.getDeclaredMethod("equals", classArray2);
                equalsMethod.setAccessible(true);
                Class<?> clazz6 = class$0;
                if (clazz6 == null) {
                    try {
                        clazz6 = class$0 = Class.forName("java.net.URLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                getDefaultPortMethod = clazz6.getDeclaredMethod("getDefaultPort", null);
                getDefaultPortMethod.setAccessible(true);
                Class<?> clazz7 = class$0;
                if (clazz7 == null) {
                    try {
                        clazz7 = class$0 = Class.forName("java.net.URLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Class[] classArray3 = new Class[1];
                Class<?> clazz8 = class$1;
                if (clazz8 == null) {
                    try {
                        clazz8 = class$1 = Class.forName("java.net.URL");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray3[0] = clazz8;
                getHostAddressMethod = clazz7.getDeclaredMethod("getHostAddress", classArray3);
                getHostAddressMethod.setAccessible(true);
                Class<?> clazz9 = class$0;
                if (clazz9 == null) {
                    try {
                        clazz9 = class$0 = Class.forName("java.net.URLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Class[] classArray4 = new Class[1];
                Class<?> clazz10 = class$1;
                if (clazz10 == null) {
                    try {
                        clazz10 = class$1 = Class.forName("java.net.URL");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray4[0] = clazz10;
                hashCodeMethod = clazz9.getDeclaredMethod("hashCode", classArray4);
                hashCodeMethod.setAccessible(true);
                Class<?> clazz11 = class$0;
                if (clazz11 == null) {
                    try {
                        clazz11 = class$0 = Class.forName("java.net.URLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Class[] classArray5 = new Class[2];
                Class<?> clazz12 = class$1;
                if (clazz12 == null) {
                    try {
                        clazz12 = class$1 = Class.forName("java.net.URL");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray5[0] = clazz12;
                Class<?> clazz13 = class$1;
                if (clazz13 == null) {
                    try {
                        clazz13 = class$1 = Class.forName("java.net.URL");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray5[1] = clazz13;
                hostsEqualMethod = clazz11.getDeclaredMethod("hostsEqual", classArray5);
                hostsEqualMethod.setAccessible(true);
                Class<?> clazz14 = class$0;
                if (clazz14 == null) {
                    try {
                        clazz14 = class$0 = Class.forName("java.net.URLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Class[] classArray6 = new Class[4];
                Class<?> clazz15 = class$1;
                if (clazz15 == null) {
                    try {
                        clazz15 = class$1 = Class.forName("java.net.URL");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray6[0] = clazz15;
                Class<?> clazz16 = class$2;
                if (clazz16 == null) {
                    try {
                        clazz16 = class$2 = Class.forName("java.lang.String");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray6[1] = clazz16;
                classArray6[2] = Integer.TYPE;
                classArray6[3] = Integer.TYPE;
                parseURLMethod = clazz14.getDeclaredMethod("parseURL", classArray6);
                parseURLMethod.setAccessible(true);
                Class<?> clazz17 = class$0;
                if (clazz17 == null) {
                    try {
                        clazz17 = class$0 = Class.forName("java.net.URLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Class[] classArray7 = new Class[2];
                Class<?> clazz18 = class$1;
                if (clazz18 == null) {
                    try {
                        clazz18 = class$1 = Class.forName("java.net.URL");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray7[0] = clazz18;
                Class<?> clazz19 = class$1;
                if (clazz19 == null) {
                    try {
                        clazz19 = class$1 = Class.forName("java.net.URL");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray7[1] = clazz19;
                sameFileMethod = clazz17.getDeclaredMethod("sameFile", classArray7);
                sameFileMethod.setAccessible(true);
                Class<?> clazz20 = class$0;
                if (clazz20 == null) {
                    try {
                        clazz20 = class$0 = Class.forName("java.net.URLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Class[] classArray8 = new Class[9];
                Class<?> clazz21 = class$1;
                if (clazz21 == null) {
                    try {
                        clazz21 = class$1 = Class.forName("java.net.URL");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray8[0] = clazz21;
                Class<?> clazz22 = class$2;
                if (clazz22 == null) {
                    try {
                        clazz22 = class$2 = Class.forName("java.lang.String");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray8[1] = clazz22;
                Class<?> clazz23 = class$2;
                if (clazz23 == null) {
                    try {
                        clazz23 = class$2 = Class.forName("java.lang.String");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray8[2] = clazz23;
                classArray8[3] = Integer.TYPE;
                Class<?> clazz24 = class$2;
                if (clazz24 == null) {
                    try {
                        clazz24 = class$2 = Class.forName("java.lang.String");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray8[4] = clazz24;
                Class<?> clazz25 = class$2;
                if (clazz25 == null) {
                    try {
                        clazz25 = class$2 = Class.forName("java.lang.String");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray8[5] = clazz25;
                Class<?> clazz26 = class$2;
                if (clazz26 == null) {
                    try {
                        clazz26 = class$2 = Class.forName("java.lang.String");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray8[6] = clazz26;
                Class<?> clazz27 = class$2;
                if (clazz27 == null) {
                    try {
                        clazz27 = class$2 = Class.forName("java.lang.String");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray8[7] = clazz27;
                Class<?> clazz28 = class$2;
                if (clazz28 == null) {
                    try {
                        clazz28 = class$2 = Class.forName("java.lang.String");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray8[8] = clazz28;
                setURLMethod = clazz20.getDeclaredMethod("setURL", classArray8);
                setURLMethod.setAccessible(true);
                Class<?> clazz29 = class$0;
                if (clazz29 == null) {
                    try {
                        clazz29 = class$0 = Class.forName("java.net.URLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Class[] classArray9 = new Class[1];
                Class<?> clazz30 = class$1;
                if (clazz30 == null) {
                    try {
                        clazz30 = class$1 = Class.forName("java.net.URL");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray9[0] = clazz30;
                toExternalFormMethod = clazz29.getDeclaredMethod("toExternalForm", classArray9);
                toExternalFormMethod.setAccessible(true);
                try {
                    Class<?> clazz31 = class$1;
                    if (clazz31 == null) {
                        try {
                            clazz31 = class$1 = Class.forName("java.net.URL");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    handlerField = clazz31.getDeclaredField("handler");
                }
                catch (NoSuchFieldException e) {
                    Class<?> clazz32;
                    Class<?> clazz33 = class$1;
                    if (clazz33 == null) {
                        try {
                            clazz33 = class$1 = Class.forName("java.net.URL");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    if ((clazz32 = class$0) == null) {
                        try {
                            clazz32 = class$0 = Class.forName("java.net.URLStreamHandler");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    if ((handlerField = Framework.getField(clazz33, clazz32, true)) != null) break block140;
                    throw e;
                }
            }
            handlerField.setAccessible(true);
        }
        catch (Exception e) {
            FrameworkLog frameworkLog = factory.adaptor.getFrameworkLog();
            Class<?> clazz = class$3;
            if (clazz == null) {
                try {
                    clazz = class$3 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingURLStreamHandler");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "initializeMethods", 0, e, null));
            throw new RuntimeException(e.getMessage(), e);
        }
        methodsInitialized = true;
    }

    public MultiplexingURLStreamHandler(String protocol, StreamHandlerFactory factory) {
        this.protocol = protocol;
        this.factory = factory;
        MultiplexingURLStreamHandler.initializeMethods(factory);
    }

    protected URLConnection openConnection(URL url) throws IOException {
        URLStreamHandler handler = this.factory.findAuthorizedURLStreamHandler(this.protocol);
        if (handler != null) {
            try {
                return (URLConnection)openConnectionMethod.invoke(handler, url);
            }
            catch (InvocationTargetException e) {
                if (e.getTargetException() instanceof IOException) {
                    throw (IOException)e.getTargetException();
                }
                throw (RuntimeException)e.getTargetException();
            }
            catch (Exception e) {
                FrameworkLog frameworkLog = this.factory.adaptor.getFrameworkLog();
                Class<?> clazz = class$3;
                if (clazz == null) {
                    try {
                        clazz = class$3 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingURLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "openConnection", 0, e, null));
                throw new RuntimeException(e.getMessage(), e);
            }
        }
        throw new MalformedURLException();
    }

    protected boolean equals(URL url1, URL url2) {
        URLStreamHandler handler = this.factory.findAuthorizedURLStreamHandler(this.protocol);
        if (handler != null) {
            try {
                return (Boolean)equalsMethod.invoke(handler, url1, url2);
            }
            catch (InvocationTargetException e) {
                throw (RuntimeException)e.getTargetException();
            }
            catch (Exception e) {
                FrameworkLog frameworkLog = this.factory.adaptor.getFrameworkLog();
                Class<?> clazz = class$3;
                if (clazz == null) {
                    try {
                        clazz = class$3 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingURLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "equals", 0, e, null));
                throw new RuntimeException(e.getMessage(), e);
            }
        }
        throw new IllegalStateException();
    }

    protected int getDefaultPort() {
        URLStreamHandler handler = this.factory.findAuthorizedURLStreamHandler(this.protocol);
        if (handler != null) {
            try {
                return (Integer)getDefaultPortMethod.invoke(handler, null);
            }
            catch (InvocationTargetException e) {
                throw (RuntimeException)e.getTargetException();
            }
            catch (Exception e) {
                FrameworkLog frameworkLog = this.factory.adaptor.getFrameworkLog();
                Class<?> clazz = class$3;
                if (clazz == null) {
                    try {
                        clazz = class$3 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingURLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "getDefaultPort", 0, e, null));
                throw new RuntimeException(e.getMessage(), e);
            }
        }
        throw new IllegalStateException();
    }

    protected InetAddress getHostAddress(URL url) {
        URLStreamHandler handler = this.factory.findAuthorizedURLStreamHandler(this.protocol);
        if (handler != null) {
            try {
                return (InetAddress)getHostAddressMethod.invoke(handler, url);
            }
            catch (InvocationTargetException e) {
                throw (RuntimeException)e.getTargetException();
            }
            catch (Exception e) {
                FrameworkLog frameworkLog = this.factory.adaptor.getFrameworkLog();
                Class<?> clazz = class$3;
                if (clazz == null) {
                    try {
                        clazz = class$3 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingURLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "hashCode", 0, e, null));
                throw new RuntimeException(e.getMessage(), e);
            }
        }
        throw new IllegalStateException();
    }

    protected int hashCode(URL url) {
        URLStreamHandler handler = this.factory.findAuthorizedURLStreamHandler(this.protocol);
        if (handler != null) {
            try {
                return (Integer)hashCodeMethod.invoke(handler, url);
            }
            catch (InvocationTargetException e) {
                throw (RuntimeException)e.getTargetException();
            }
            catch (Exception e) {
                FrameworkLog frameworkLog = this.factory.adaptor.getFrameworkLog();
                Class<?> clazz = class$3;
                if (clazz == null) {
                    try {
                        clazz = class$3 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingURLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "hashCode", 0, e, null));
                throw new RuntimeException(e.getMessage(), e);
            }
        }
        throw new IllegalStateException();
    }

    protected boolean hostsEqual(URL url1, URL url2) {
        URLStreamHandler handler = this.factory.findAuthorizedURLStreamHandler(this.protocol);
        if (handler != null) {
            try {
                return (Boolean)hostsEqualMethod.invoke(handler, url1, url2);
            }
            catch (InvocationTargetException e) {
                throw (RuntimeException)e.getTargetException();
            }
            catch (Exception e) {
                FrameworkLog frameworkLog = this.factory.adaptor.getFrameworkLog();
                Class<?> clazz = class$3;
                if (clazz == null) {
                    try {
                        clazz = class$3 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingURLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "hostsEqual", 0, e, null));
                throw new RuntimeException(e.getMessage(), e);
            }
        }
        throw new IllegalStateException();
    }

    protected void parseURL(URL arg0, String arg1, int arg2, int arg3) {
        URLStreamHandler handler = this.factory.findAuthorizedURLStreamHandler(this.protocol);
        if (handler != null) {
            try {
                handlerField.set(arg0, handler);
                parseURLMethod.invoke(handler, arg0, arg1, new Integer(arg2), new Integer(arg3));
                return;
            }
            catch (InvocationTargetException e) {
                throw (RuntimeException)e.getTargetException();
            }
            catch (Exception e) {
                FrameworkLog frameworkLog = this.factory.adaptor.getFrameworkLog();
                Class<?> clazz = class$3;
                if (clazz == null) {
                    try {
                        clazz = class$3 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingURLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "parseURL", 0, e, null));
                throw new RuntimeException(e.getMessage(), e);
            }
        }
        throw new IllegalStateException();
    }

    protected boolean sameFile(URL url1, URL url2) {
        URLStreamHandler handler = this.factory.findAuthorizedURLStreamHandler(this.protocol);
        if (handler != null) {
            try {
                return (Boolean)sameFileMethod.invoke(handler, url1, url2);
            }
            catch (InvocationTargetException e) {
                throw (RuntimeException)e.getTargetException();
            }
            catch (Exception e) {
                FrameworkLog frameworkLog = this.factory.adaptor.getFrameworkLog();
                Class<?> clazz = class$3;
                if (clazz == null) {
                    try {
                        clazz = class$3 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingURLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "sameFile", 0, e, null));
                throw new RuntimeException(e.getMessage(), e);
            }
        }
        throw new IllegalStateException();
    }

    protected void setURL(URL arg0, String arg1, String arg2, int arg3, String arg4, String arg5, String arg6, String arg7, String arg8) {
        URLStreamHandler handler = this.factory.findAuthorizedURLStreamHandler(this.protocol);
        if (handler != null) {
            try {
                handlerField.set(arg0, handler);
                setURLMethod.invoke(handler, arg0, arg1, arg2, new Integer(arg3), arg4, arg5, arg6, arg7, arg8);
                return;
            }
            catch (InvocationTargetException e) {
                throw (RuntimeException)e.getTargetException();
            }
            catch (Exception e) {
                FrameworkLog frameworkLog = this.factory.adaptor.getFrameworkLog();
                Class<?> clazz = class$3;
                if (clazz == null) {
                    try {
                        clazz = class$3 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingURLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "setURL", 0, e, null));
                throw new RuntimeException(e.getMessage(), e);
            }
        }
        throw new IllegalStateException();
    }

    protected String toExternalForm(URL url) {
        URLStreamHandler handler = this.factory.findAuthorizedURLStreamHandler(this.protocol);
        if (handler != null) {
            try {
                return (String)toExternalFormMethod.invoke(handler, url);
            }
            catch (InvocationTargetException e) {
                throw (RuntimeException)e.getTargetException();
            }
            catch (Exception e) {
                FrameworkLog frameworkLog = this.factory.adaptor.getFrameworkLog();
                Class<?> clazz = class$3;
                if (clazz == null) {
                    try {
                        clazz = class$3 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingURLStreamHandler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "toExternalForm", 0, e, null));
                throw new RuntimeException(e.getMessage(), e);
            }
        }
        throw new IllegalStateException();
    }
}

