/*
 * Decompiled with CFR 0.152.
 */
package org.xml.sax.helpers;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import org.xml.sax.helpers.SecuritySupport12;

class SecuritySupport {
    private static final Object securitySupport;

    SecuritySupport() {
    }

    public static SecuritySupport getInstance() {
        return (SecuritySupport)securitySupport;
    }

    public ClassLoader getContextClassLoader() {
        return null;
    }

    public String getSystemProperty(String string) {
        return System.getProperty(string);
    }

    public FileInputStream getFileInputStream(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    public InputStream getResourceAsStream(ClassLoader classLoader, String string) {
        InputStream inputStream = classLoader == null ? ClassLoader.getSystemResourceAsStream(string) : classLoader.getResourceAsStream(string);
        return inputStream;
    }

    static {
        SecuritySupport securitySupport = null;
        try {
            try {
                Class<?> clazz = Class.forName("java.security.AccessController");
                securitySupport = new SecuritySupport12();
            }
            catch (Exception exception) {
                Object var3_4 = null;
                if (securitySupport == null) {
                    securitySupport = new SecuritySupport();
                }
                SecuritySupport.securitySupport = securitySupport;
            }
            Object var3_3 = null;
            if (securitySupport == null) {
                securitySupport = new SecuritySupport();
            }
            SecuritySupport.securitySupport = securitySupport;
        }
        catch (Throwable throwable) {
            Object var3_5 = null;
            if (securitySupport == null) {
                securitySupport = new SecuritySupport();
            }
            SecuritySupport.securitySupport = securitySupport;
            throw throwable;
        }
    }
}

