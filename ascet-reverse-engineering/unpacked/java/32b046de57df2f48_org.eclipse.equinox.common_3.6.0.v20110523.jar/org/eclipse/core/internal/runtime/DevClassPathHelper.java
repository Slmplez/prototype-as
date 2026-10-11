/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.runtime;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.Vector;
import org.eclipse.core.internal.runtime.Activator;

public class DevClassPathHelper {
    public static final String PROP_DEV = "osgi.dev";
    protected static boolean inDevelopmentMode;
    protected static String[] devDefaultClasspath;
    protected static Properties devProperties;

    static {
        String osgiDev;
        inDevelopmentMode = false;
        devProperties = null;
        String string = osgiDev = Activator.getContext() == null ? System.getProperty(PROP_DEV) : Activator.getContext().getProperty(PROP_DEV);
        if (osgiDev != null) {
            try {
                inDevelopmentMode = true;
                URL location = new URL(osgiDev);
                devProperties = DevClassPathHelper.load(location);
                if (devProperties != null) {
                    devDefaultClasspath = DevClassPathHelper.getArrayFromList(devProperties.getProperty("*"));
                }
            }
            catch (MalformedURLException malformedURLException) {
                devDefaultClasspath = DevClassPathHelper.getArrayFromList(osgiDev);
            }
        }
    }

    public static String[] getDevClassPath(String id) {
        String entry;
        String[] result = null;
        if (id != null && devProperties != null && (entry = devProperties.getProperty(id)) != null) {
            result = DevClassPathHelper.getArrayFromList(entry);
        }
        if (result == null) {
            result = devDefaultClasspath;
        }
        return result;
    }

    public static String[] getArrayFromList(String prop) {
        if (prop == null || prop.trim().equals("")) {
            return new String[0];
        }
        Vector<String> list = new Vector<String>();
        StringTokenizer tokens = new StringTokenizer(prop, ",");
        while (tokens.hasMoreTokens()) {
            String token = tokens.nextToken().trim();
            if (token.equals("")) continue;
            list.addElement(token);
        }
        return list.isEmpty() ? new String[]{} : list.toArray(new String[list.size()]);
    }

    public static boolean inDevelopmentMode() {
        return inDevelopmentMode;
    }

    private static Properties load(URL url) {
        Properties props = new Properties();
        try {
            InputStream is = null;
            try {
                is = url.openStream();
                props.load(is);
            }
            finally {
                if (is != null) {
                    is.close();
                }
            }
        }
        catch (IOException iOException) {}
        return props;
    }
}

