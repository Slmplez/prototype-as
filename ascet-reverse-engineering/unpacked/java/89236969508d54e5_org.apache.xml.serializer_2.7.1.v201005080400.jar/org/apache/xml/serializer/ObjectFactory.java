/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xml.serializer;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.Properties;
import org.apache.xml.serializer.SecuritySupport;

class ObjectFactory {
    private static final String DEFAULT_PROPERTIES_FILENAME = "xalan.properties";
    private static final String SERVICES_PATH = "META-INF/services/";
    private static final boolean DEBUG = false;
    private static Properties fXalanProperties = null;
    private static long fLastModified = -1L;
    static /* synthetic */ Class class$org$apache$xml$serializer$ObjectFactory;

    ObjectFactory() {
    }

    static Object createObject(String factoryId, String fallbackClassName) throws ConfigurationError {
        return ObjectFactory.createObject(factoryId, null, fallbackClassName);
    }

    static Object createObject(String factoryId, String propertiesFilename, String fallbackClassName) throws ConfigurationError {
        Class factoryClass = ObjectFactory.lookUpFactoryClass(factoryId, propertiesFilename, fallbackClassName);
        if (factoryClass == null) {
            throw new ConfigurationError("Provider for " + factoryId + " cannot be found", null);
        }
        try {
            Object instance = factoryClass.newInstance();
            ObjectFactory.debugPrintln("created new instance of factory " + factoryId);
            return instance;
        }
        catch (Exception x) {
            throw new ConfigurationError("Provider for factory " + factoryId + " could not be instantiated: " + x, x);
        }
    }

    static Class lookUpFactoryClass(String factoryId) throws ConfigurationError {
        return ObjectFactory.lookUpFactoryClass(factoryId, null, null);
    }

    static Class lookUpFactoryClass(String factoryId, String propertiesFilename, String fallbackClassName) throws ConfigurationError {
        String factoryClassName = ObjectFactory.lookUpFactoryClassName(factoryId, propertiesFilename, fallbackClassName);
        ClassLoader cl = ObjectFactory.findClassLoader();
        if (factoryClassName == null) {
            factoryClassName = fallbackClassName;
        }
        try {
            Class providerClass = ObjectFactory.findProviderClass(factoryClassName, cl, true);
            ObjectFactory.debugPrintln("created new instance of " + providerClass + " using ClassLoader: " + cl);
            return providerClass;
        }
        catch (ClassNotFoundException x) {
            throw new ConfigurationError("Provider " + factoryClassName + " not found", x);
        }
        catch (Exception x) {
            throw new ConfigurationError("Provider " + factoryClassName + " could not be instantiated: " + x, x);
        }
    }

    /*
     * Unable to fully structure code
     */
    static String lookUpFactoryClassName(String factoryId, String propertiesFilename, String fallbackClassName) {
        block42: {
            ss = SecuritySupport.getInstance();
            try {
                systemProp = ss.getSystemProperty(factoryId);
                if (systemProp != null) {
                    ObjectFactory.debugPrintln("found system property, value=" + systemProp);
                    return systemProp;
                }
            }
            catch (SecurityException se) {
                // empty catch block
            }
            factoryClassName = null;
            if (propertiesFilename == null) {
                propertiesFile = null;
                propertiesFileExists = false;
                try {
                    javah = ss.getSystemProperty("java.home");
                    propertiesFilename = javah + File.separator + "lib" + File.separator + "xalan.properties";
                    propertiesFile = new File(propertiesFilename);
                    propertiesFileExists = ss.getFileExists(propertiesFile);
                }
                catch (SecurityException e) {
                    ObjectFactory.fLastModified = -1L;
                    ObjectFactory.fXalanProperties = null;
                }
                var7_11 = ObjectFactory.class$org$apache$xml$serializer$ObjectFactory == null ? (ObjectFactory.class$org$apache$xml$serializer$ObjectFactory = ObjectFactory.class$("org.apache.xml.serializer.ObjectFactory")) : ObjectFactory.class$org$apache$xml$serializer$ObjectFactory;
                synchronized (var7_11) {
                    block41: {
                        loadProperties = false;
                        fis = null;
                        try {
                            block40: {
                                if (ObjectFactory.fLastModified >= 0L) {
                                    if (propertiesFileExists && ObjectFactory.fLastModified < (ObjectFactory.fLastModified = ss.getLastModified(propertiesFile))) {
                                        loadProperties = true;
                                    } else if (!propertiesFileExists) {
                                        ObjectFactory.fLastModified = -1L;
                                        ObjectFactory.fXalanProperties = null;
                                    }
                                } else if (propertiesFileExists) {
                                    loadProperties = true;
                                    ObjectFactory.fLastModified = ss.getLastModified(propertiesFile);
                                }
                                if (!loadProperties) break block40;
                                ObjectFactory.fXalanProperties = new Properties();
                                fis = ss.getFileInputStream(propertiesFile);
                                ObjectFactory.fXalanProperties.load(fis);
                            }
                            var12_15 = null;
                            ** if (fis == null) goto lbl-1000
                        }
                        catch (Throwable var11_22) {
                            var12_17 = null;
                            if (fis != null) {
                                try {
                                    fis.close();
                                }
                                catch (IOException exc) {
                                    // empty catch block
                                }
                            }
                            throw var11_22;
                        }
lbl-1000:
                        // 1 sources

                        {
                            try {
                                fis.close();
                            }
                            catch (IOException exc) {}
                        }
lbl-1000:
                        // 2 sources

                        {
                            break block41;
                            catch (Exception x) {
                                ObjectFactory.fXalanProperties = null;
                                ObjectFactory.fLastModified = -1L;
                                var12_16 = null;
                                if (fis != null) {
                                    try {
                                        fis.close();
                                    }
                                    catch (IOException exc) {}
                                }
                            }
                        }
                    }
                }
                if (ObjectFactory.fXalanProperties != null) {
                    factoryClassName = ObjectFactory.fXalanProperties.getProperty(factoryId);
                }
            } else {
                fis = null;
                try {
                    fis = ss.getFileInputStream(new File(propertiesFilename));
                    props = new Properties();
                    props.load(fis);
                    factoryClassName = props.getProperty(factoryId);
                    var16_24 = null;
                    ** if (fis == null) goto lbl-1000
                }
                catch (Throwable var15_30) {
                    var16_26 = null;
                    if (fis != null) {
                        try {
                            fis.close();
                        }
                        catch (IOException exc) {
                            // empty catch block
                        }
                    }
                    throw var15_30;
                }
lbl-1000:
                // 1 sources

                {
                    try {
                        fis.close();
                    }
                    catch (IOException exc) {}
                }
lbl-1000:
                // 2 sources

                {
                    break block42;
                    catch (Exception x) {
                        var16_25 = null;
                        if (fis != null) {
                            try {
                                fis.close();
                            }
                            catch (IOException exc) {}
                        }
                    }
                }
            }
        }
        if (factoryClassName != null) {
            ObjectFactory.debugPrintln("found in " + propertiesFilename + ", value=" + factoryClassName);
            return factoryClassName;
        }
        return ObjectFactory.findJarServiceProviderName(factoryId);
    }

    private static void debugPrintln(String msg) {
    }

    static ClassLoader findClassLoader() throws ConfigurationError {
        ClassLoader system;
        SecuritySupport ss = SecuritySupport.getInstance();
        ClassLoader context = ss.getContextClassLoader();
        ClassLoader chain = system = ss.getSystemClassLoader();
        while (true) {
            if (context == chain) {
                ClassLoader current = (class$org$apache$xml$serializer$ObjectFactory == null ? (class$org$apache$xml$serializer$ObjectFactory = ObjectFactory.class$("org.apache.xml.serializer.ObjectFactory")) : class$org$apache$xml$serializer$ObjectFactory).getClassLoader();
                chain = system;
                while (true) {
                    if (current == chain) {
                        return system;
                    }
                    if (chain == null) break;
                    chain = ss.getParentClassLoader(chain);
                }
                return current;
            }
            if (chain == null) break;
            chain = ss.getParentClassLoader(chain);
        }
        return context;
    }

    static Object newInstance(String className, ClassLoader cl, boolean doFallback) throws ConfigurationError {
        try {
            Class providerClass = ObjectFactory.findProviderClass(className, cl, doFallback);
            Object instance = providerClass.newInstance();
            ObjectFactory.debugPrintln("created new instance of " + providerClass + " using ClassLoader: " + cl);
            return instance;
        }
        catch (ClassNotFoundException x) {
            throw new ConfigurationError("Provider " + className + " not found", x);
        }
        catch (Exception x) {
            throw new ConfigurationError("Provider " + className + " could not be instantiated: " + x, x);
        }
    }

    static Class findProviderClass(String className, ClassLoader cl, boolean doFallback) throws ClassNotFoundException, ConfigurationError {
        Class<?> providerClass;
        SecurityManager security = System.getSecurityManager();
        if (security != null) {
            int lastDot = className.lastIndexOf(".");
            String packageName = className;
            if (lastDot != -1) {
                packageName = className.substring(0, lastDot);
            }
            security.checkPackageAccess(packageName);
        }
        if (cl == null) {
            providerClass = Class.forName(className);
        } else {
            try {
                providerClass = cl.loadClass(className);
            }
            catch (ClassNotFoundException x) {
                if (doFallback) {
                    ClassLoader current = (class$org$apache$xml$serializer$ObjectFactory == null ? (class$org$apache$xml$serializer$ObjectFactory = ObjectFactory.class$("org.apache.xml.serializer.ObjectFactory")) : class$org$apache$xml$serializer$ObjectFactory).getClassLoader();
                    if (current == null) {
                        providerClass = Class.forName(className);
                    }
                    if (cl != current) {
                        cl = current;
                        providerClass = cl.loadClass(className);
                    }
                    throw x;
                }
                throw x;
            }
        }
        return providerClass;
    }

    /*
     * Loose catch block
     */
    private static String findJarServiceProviderName(String factoryId) {
        String factoryClassName;
        block14: {
            BufferedReader rd;
            ClassLoader current;
            SecuritySupport ss = SecuritySupport.getInstance();
            String serviceId = SERVICES_PATH + factoryId;
            InputStream is = null;
            ClassLoader cl = ObjectFactory.findClassLoader();
            is = ss.getResourceAsStream(cl, serviceId);
            if (is == null && cl != (current = (class$org$apache$xml$serializer$ObjectFactory == null ? (class$org$apache$xml$serializer$ObjectFactory = ObjectFactory.class$("org.apache.xml.serializer.ObjectFactory")) : class$org$apache$xml$serializer$ObjectFactory).getClassLoader())) {
                cl = current;
                is = ss.getResourceAsStream(cl, serviceId);
            }
            if (is == null) {
                return null;
            }
            ObjectFactory.debugPrintln("found jar resource=" + serviceId + " using ClassLoader: " + cl);
            try {
                rd = new BufferedReader(new InputStreamReader(is, "UTF-8"));
            }
            catch (UnsupportedEncodingException e) {
                rd = new BufferedReader(new InputStreamReader(is));
            }
            factoryClassName = null;
            factoryClassName = rd.readLine();
            Object var10_8 = null;
            try {
                rd.close();
            }
            catch (IOException exc) {}
            break block14;
            {
                catch (IOException x) {
                    String string = null;
                    Object var10_9 = null;
                    try {
                        rd.close();
                    }
                    catch (IOException exc) {
                        // empty catch block
                    }
                    return string;
                }
            }
            catch (Throwable throwable) {
                Object var10_10 = null;
                try {
                    rd.close();
                }
                catch (IOException exc) {
                    // empty catch block
                }
                throw throwable;
            }
        }
        if (factoryClassName != null && !"".equals(factoryClassName)) {
            ObjectFactory.debugPrintln("found in resource, value=" + factoryClassName);
            return factoryClassName;
        }
        return null;
    }

    static /* synthetic */ Class class$(String x0) {
        try {
            return Class.forName(x0);
        }
        catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    static class ConfigurationError
    extends Error {
        static final long serialVersionUID = 8859254254255146542L;
        private Exception exception;

        ConfigurationError(String msg, Exception x) {
            super(msg);
            this.exception = x;
        }

        Exception getException() {
            return this.exception;
        }
    }
}

