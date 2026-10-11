/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.URL;
import java.security.CodeSource;
import java.util.Map;
import java.util.Properties;
import java.util.PropertyPermission;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FrameworkProperties {
    private static Properties properties;
    private static final String USING_SYSTEM_PROPERTIES_KEY = "osgi.framework.useSystemProperties";
    private static final String PROP_FRAMEWORK = "osgi.framework";
    private static final String PROP_INSTALL_AREA = "osgi.install.area";
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public static Properties getProperties() {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPropertiesAccess();
        }
        return FrameworkProperties.internalGetProperties(null);
    }

    public static String getProperty(String key) {
        return FrameworkProperties.getProperty(key, null);
    }

    public static String getProperty(String key, String defaultValue) {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPropertyAccess(key);
        }
        return FrameworkProperties.internalGetProperties(null).getProperty(key, defaultValue);
    }

    public static String setProperty(String key, String value) {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPermission(new PropertyPermission(key, "write"));
        }
        return FrameworkProperties.internalGetProperties(null).put(key, value);
    }

    public static String clearProperty(String key) {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPermission(new PropertyPermission(key, "write"));
        }
        return (String)FrameworkProperties.internalGetProperties(null).remove(key);
    }

    private static synchronized Properties internalGetProperties(String usingSystemProperties) {
        if (properties == null) {
            Properties systemProperties = System.getProperties();
            if (usingSystemProperties == null) {
                usingSystemProperties = systemProperties.getProperty(USING_SYSTEM_PROPERTIES_KEY);
            }
            if (usingSystemProperties == null || usingSystemProperties.equalsIgnoreCase(Boolean.TRUE.toString())) {
                properties = systemProperties;
            } else {
                properties = new Properties();
                properties.putAll(systemProperties);
            }
        }
        return properties;
    }

    public static synchronized void setProperties(Map<String, String> input) {
        if (input == null) {
            FrameworkProperties.internalGetProperties("false");
            return;
        }
        properties = null;
        Properties toSet = FrameworkProperties.internalGetProperties("false");
        for (String key : input.keySet()) {
            String value = input.get(key);
            if (value instanceof String) {
                toSet.setProperty(key, value);
                continue;
            }
            value = input.get(key);
            if (value != null) {
                toSet.put(key, value);
                continue;
            }
            toSet.remove(key);
        }
    }

    public static synchronized boolean inUse() {
        return properties != null;
    }

    public static void initializeProperties() {
        if (FrameworkProperties.getProperty(PROP_FRAMEWORK) == null || FrameworkProperties.getProperty(PROP_INSTALL_AREA) == null) {
            CodeSource cs;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.osgi.framework.internal.core.FrameworkProperties");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((cs = clazz.getProtectionDomain().getCodeSource()) == null) {
                throw new IllegalArgumentException(NLS.bind(EclipseAdaptorMsg.ECLIPSE_STARTUP_PROPS_NOT_SET, "osgi.framework, osgi.install.area"));
            }
            URL url = cs.getLocation();
            if (FrameworkProperties.getProperty(PROP_FRAMEWORK) == null) {
                FrameworkProperties.setProperty(PROP_FRAMEWORK, url.toExternalForm());
            }
            if (FrameworkProperties.getProperty(PROP_INSTALL_AREA) == null) {
                String filePart = url.getFile();
                FrameworkProperties.setProperty(PROP_INSTALL_AREA, filePart.substring(0, filePart.lastIndexOf(47)));
            }
        }
        FrameworkProperties.setProperty(PROP_FRAMEWORK, FrameworkProperties.decode(FrameworkProperties.getProperty(PROP_FRAMEWORK)));
        FrameworkProperties.setProperty(PROP_INSTALL_AREA, FrameworkProperties.decode(FrameworkProperties.getProperty(PROP_INSTALL_AREA)));
    }

    public static String decode(String urlString) {
        try {
            Object result;
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("java.net.URLDecoder");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Class<?> clazz2 = clazz;
            Class[] classArray = new Class[2];
            Class<?> clazz3 = class$2;
            if (clazz3 == null) {
                try {
                    clazz3 = class$2 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz3;
            Class<?> clazz4 = class$2;
            if (clazz4 == null) {
                try {
                    clazz4 = class$2 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[1] = clazz4;
            Method method = clazz2.getDeclaredMethod("decode", classArray);
            if (urlString.indexOf(43) >= 0) {
                int len = urlString.length();
                StringBuffer buf = new StringBuffer(len);
                int i = 0;
                while (i < len) {
                    char c = urlString.charAt(i);
                    if (c == '+') {
                        buf.append("%2B");
                    } else {
                        buf.append(c);
                    }
                    ++i;
                }
                urlString = buf.toString();
            }
            if ((result = method.invoke(null, urlString, "UTF-8")) != null) {
                return (String)result;
            }
        }
        catch (Exception exception) {}
        boolean replaced = false;
        byte[] encodedBytes = urlString.getBytes();
        int encodedLength = encodedBytes.length;
        byte[] decodedBytes = new byte[encodedLength];
        int decodedLength = 0;
        int i = 0;
        while (i < encodedLength) {
            byte b = encodedBytes[i];
            if (b == 37) {
                byte enc1 = encodedBytes[++i];
                byte enc2 = encodedBytes[++i];
                b = (byte)((FrameworkProperties.hexToByte(enc1) << 4) + FrameworkProperties.hexToByte(enc2));
                replaced = true;
            }
            decodedBytes[decodedLength++] = b;
            ++i;
        }
        if (!replaced) {
            return urlString;
        }
        try {
            return new String(decodedBytes, 0, decodedLength, "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            return new String(decodedBytes, 0, decodedLength);
        }
    }

    private static int hexToByte(byte b) {
        switch (b) {
            case 48: {
                return 0;
            }
            case 49: {
                return 1;
            }
            case 50: {
                return 2;
            }
            case 51: {
                return 3;
            }
            case 52: {
                return 4;
            }
            case 53: {
                return 5;
            }
            case 54: {
                return 6;
            }
            case 55: {
                return 7;
            }
            case 56: {
                return 8;
            }
            case 57: {
                return 9;
            }
            case 65: 
            case 97: {
                return 10;
            }
            case 66: 
            case 98: {
                return 11;
            }
            case 67: 
            case 99: {
                return 12;
            }
            case 68: 
            case 100: {
                return 13;
            }
            case 69: 
            case 101: {
                return 14;
            }
            case 70: 
            case 102: {
                return 15;
            }
        }
        throw new IllegalArgumentException("Switch error decoding URL");
    }
}

