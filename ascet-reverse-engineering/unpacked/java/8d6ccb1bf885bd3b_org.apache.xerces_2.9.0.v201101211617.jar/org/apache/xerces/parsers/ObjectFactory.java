/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.parsers;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.Properties;
import org.apache.xerces.parsers.SecuritySupport;

final class ObjectFactory {
    private static final String DEFAULT_PROPERTIES_FILENAME = "xerces.properties";
    private static final boolean DEBUG = false;
    private static final int DEFAULT_LINE_LENGTH = 80;
    private static Properties fXercesProperties = null;
    private static long fLastModified = -1L;
    static /* synthetic */ Class class$org$apache$xerces$parsers$ObjectFactory;

    ObjectFactory() {
    }

    static Object createObject(String string, String string2) throws ConfigurationError {
        return ObjectFactory.createObject(string, null, string2);
    }

    /*
     * Unable to fully structure code
     */
    static Object createObject(String var0, String var1_1, String var2_2) throws ConfigurationError {
        block44: {
            var3_3 = ObjectFactory.findClassLoader();
            try {
                var4_4 = SecuritySupport.getSystemProperty(var0);
                if (var4_4 != null) {
                    return ObjectFactory.newInstance(var4_4, var3_3, true);
                }
            }
            catch (SecurityException var4_5) {
                // empty catch block
            }
            var4_4 = null;
            if (var1_1 == null) {
                var5_6 = null;
                var6_7 = false;
                try {
                    var7_10 = SecuritySupport.getSystemProperty("java.home");
                    var1_1 = (String)var7_10 + File.separator + "lib" + File.separator + "xerces.properties";
                    var5_6 = new File(var1_1);
                    var6_7 = SecuritySupport.getFileExists((File)var5_6);
                }
                catch (SecurityException var7_11) {
                    ObjectFactory.fLastModified = -1L;
                    ObjectFactory.fXercesProperties = null;
                }
                var7_10 = ObjectFactory.class$org$apache$xerces$parsers$ObjectFactory == null ? (ObjectFactory.class$org$apache$xerces$parsers$ObjectFactory = ObjectFactory.class$("org.apache.xerces.parsers.ObjectFactory")) : ObjectFactory.class$org$apache$xerces$parsers$ObjectFactory;
                synchronized (var7_10) {
                    block43: {
                        var8_12 = false;
                        var9_13 = null;
                        try {
                            block42: {
                                if (ObjectFactory.fLastModified >= 0L) {
                                    if (var6_7 && ObjectFactory.fLastModified < (ObjectFactory.fLastModified = SecuritySupport.getLastModified((File)var5_6))) {
                                        var8_12 = true;
                                    } else if (!var6_7) {
                                        ObjectFactory.fLastModified = -1L;
                                        ObjectFactory.fXercesProperties = null;
                                    }
                                } else if (var6_7) {
                                    var8_12 = true;
                                    ObjectFactory.fLastModified = SecuritySupport.getLastModified((File)var5_6);
                                }
                                if (!var8_12) break block42;
                                ObjectFactory.fXercesProperties = new Properties();
                                var9_13 = SecuritySupport.getFileInputStream((File)var5_6);
                                ObjectFactory.fXercesProperties.load(var9_13);
                            }
                            var12_14 = null;
                            ** if (var9_13 == null) goto lbl-1000
                        }
                        catch (Throwable var11_21) {
                            var12_16 = null;
                            if (var9_13 != null) {
                                try {
                                    var9_13.close();
                                }
                                catch (IOException var13_19) {
                                    // empty catch block
                                }
                            }
                            throw var11_21;
                        }
lbl-1000:
                        // 1 sources

                        {
                            try {
                                var9_13.close();
                            }
                            catch (IOException var13_17) {}
                        }
lbl-1000:
                        // 2 sources

                        {
                            break block43;
                            catch (Exception var10_20) {
                                ObjectFactory.fXercesProperties = null;
                                ObjectFactory.fLastModified = -1L;
                                var12_15 = null;
                                if (var9_13 != null) {
                                    try {
                                        var9_13.close();
                                    }
                                    catch (IOException var13_18) {}
                                }
                            }
                        }
                    }
                }
                if (ObjectFactory.fXercesProperties != null) {
                    var4_4 = ObjectFactory.fXercesProperties.getProperty(var0);
                }
            } else {
                var5_6 = null;
                try {
                    var5_6 = SecuritySupport.getFileInputStream(new File(var1_1));
                    var6_8 = new Properties();
                    var6_8.load((InputStream)var5_6);
                    var4_4 = var6_8.getProperty(var0);
                    var16_23 = null;
                    ** if (var5_6 == null) goto lbl-1000
                }
                catch (Throwable var15_29) {
                    var16_25 = null;
                    if (var5_6 != null) {
                        try {
                            var5_6.close();
                        }
                        catch (IOException var17_28) {
                            // empty catch block
                        }
                    }
                    throw var15_29;
                }
lbl-1000:
                // 1 sources

                {
                    try {
                        var5_6.close();
                    }
                    catch (IOException var17_26) {}
                }
lbl-1000:
                // 2 sources

                {
                    break block44;
                    catch (Exception var6_9) {
                        var16_24 = null;
                        if (var5_6 != null) {
                            try {
                                var5_6.close();
                            }
                            catch (IOException var17_27) {}
                        }
                    }
                }
            }
        }
        if (var4_4 != null) {
            return ObjectFactory.newInstance(var4_4, var3_3, true);
        }
        var5_6 = ObjectFactory.findJarServiceProvider(var0);
        if (var5_6 != null) {
            return var5_6;
        }
        if (var2_2 == null) {
            throw new ConfigurationError("Provider for " + var0 + " cannot be found", null);
        }
        return ObjectFactory.newInstance(var2_2, var3_3, true);
    }

    private static void debugPrintln(String string) {
    }

    static ClassLoader findClassLoader() throws ConfigurationError {
        ClassLoader classLoader;
        ClassLoader classLoader2 = SecuritySupport.getContextClassLoader();
        ClassLoader classLoader3 = classLoader = SecuritySupport.getSystemClassLoader();
        while (true) {
            if (classLoader2 == classLoader3) {
                ClassLoader classLoader4 = (class$org$apache$xerces$parsers$ObjectFactory == null ? (class$org$apache$xerces$parsers$ObjectFactory = ObjectFactory.class$("org.apache.xerces.parsers.ObjectFactory")) : class$org$apache$xerces$parsers$ObjectFactory).getClassLoader();
                classLoader3 = classLoader;
                while (true) {
                    if (classLoader4 == classLoader3) {
                        return classLoader;
                    }
                    if (classLoader3 == null) break;
                    classLoader3 = SecuritySupport.getParentClassLoader(classLoader3);
                }
                return classLoader4;
            }
            if (classLoader3 == null) break;
            classLoader3 = SecuritySupport.getParentClassLoader(classLoader3);
        }
        return classLoader2;
    }

    static Object newInstance(String string, ClassLoader classLoader, boolean bl) throws ConfigurationError {
        try {
            Class clazz = ObjectFactory.findProviderClass(string, classLoader, bl);
            Object t = clazz.newInstance();
            return t;
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new ConfigurationError("Provider " + string + " not found", classNotFoundException);
        }
        catch (Exception exception) {
            throw new ConfigurationError("Provider " + string + " could not be instantiated: " + exception, exception);
        }
    }

    static Class findProviderClass(String string, ClassLoader classLoader, boolean bl) throws ClassNotFoundException, ConfigurationError {
        Class<?> clazz;
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            int n = string.lastIndexOf(".");
            String string2 = string;
            if (n != -1) {
                string2 = string.substring(0, n);
            }
            securityManager.checkPackageAccess(string2);
        }
        if (classLoader == null) {
            clazz = Class.forName(string);
        } else {
            try {
                clazz = classLoader.loadClass(string);
            }
            catch (ClassNotFoundException classNotFoundException) {
                if (bl) {
                    ClassLoader classLoader2 = (class$org$apache$xerces$parsers$ObjectFactory == null ? (class$org$apache$xerces$parsers$ObjectFactory = ObjectFactory.class$("org.apache.xerces.parsers.ObjectFactory")) : class$org$apache$xerces$parsers$ObjectFactory).getClassLoader();
                    if (classLoader2 == null) {
                        clazz = Class.forName(string);
                    }
                    if (classLoader != classLoader2) {
                        classLoader = classLoader2;
                        clazz = classLoader.loadClass(string);
                    }
                    throw classNotFoundException;
                }
                throw classNotFoundException;
            }
        }
        return clazz;
    }

    /*
     * Loose catch block
     */
    private static Object findJarServiceProvider(String string) throws ConfigurationError {
        String string2;
        ClassLoader classLoader;
        block14: {
            Object object;
            String string3 = "META-INF/services/" + string;
            InputStream inputStream = null;
            classLoader = ObjectFactory.findClassLoader();
            inputStream = SecuritySupport.getResourceAsStream(classLoader, string3);
            if (inputStream == null && classLoader != (object = (class$org$apache$xerces$parsers$ObjectFactory == null ? (class$org$apache$xerces$parsers$ObjectFactory = ObjectFactory.class$("org.apache.xerces.parsers.ObjectFactory")) : class$org$apache$xerces$parsers$ObjectFactory).getClassLoader())) {
                classLoader = object;
                inputStream = SecuritySupport.getResourceAsStream(classLoader, string3);
            }
            if (inputStream == null) {
                return null;
            }
            try {
                object = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"), 80);
            }
            catch (UnsupportedEncodingException unsupportedEncodingException) {
                object = new BufferedReader(new InputStreamReader(inputStream), 80);
            }
            string2 = null;
            string2 = ((BufferedReader)object).readLine();
            Object var9_7 = null;
            try {
                ((BufferedReader)object).close();
            }
            catch (IOException iOException) {}
            break block14;
            {
                catch (IOException iOException) {
                    Object var7_14 = null;
                    Object var9_8 = null;
                    try {
                        ((BufferedReader)object).close();
                    }
                    catch (IOException iOException2) {
                        // empty catch block
                    }
                    return var7_14;
                }
            }
            catch (Throwable throwable) {
                Object var9_9 = null;
                try {
                    ((BufferedReader)object).close();
                }
                catch (IOException iOException) {
                    // empty catch block
                }
                throw throwable;
            }
        }
        if (string2 != null && !"".equals(string2)) {
            return ObjectFactory.newInstance(string2, classLoader, false);
        }
        return null;
    }

    static /* synthetic */ Class class$(String string) {
        try {
            return Class.forName(string);
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
    }

    static final class ConfigurationError
    extends Error {
        static final long serialVersionUID = -7285495612271660427L;
        private Exception exception;

        ConfigurationError(String string, Exception exception) {
            super(string);
            this.exception = exception;
        }

        Exception getException() {
            return this.exception;
        }
    }
}

