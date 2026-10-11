/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.core.internal.registry;

import java.util.Properties;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.osgi.framework.BundleContext;

public class RegistryProperties {
    public static final String empty = "";
    private static Properties registryProperties = new Properties();
    private static Object context = null;

    public static void setContext(Object object) {
        context = object;
    }

    public static String getProperty(String propertyName) {
        String propertyValue = registryProperties.getProperty(propertyName);
        if (propertyValue != null) {
            return propertyValue;
        }
        return RegistryProperties.getContextProperty(propertyName);
    }

    public static String getProperty(String property, String defaultValue) {
        String result = RegistryProperties.getProperty(property);
        return result == null ? defaultValue : result;
    }

    public static void setProperty(String propertyName, String propertyValue) {
        registryProperties.setProperty(propertyName, propertyValue);
    }

    private static String getContextProperty(final String propertyName) {
        if (context == null) {
            return System.getProperty(propertyName);
        }
        final String[] result = new String[1];
        try {
            Runnable innerClass = new Runnable(){

                public void run() {
                    BundleContext bundleContext = (BundleContext)context;
                    result[0] = bundleContext.getProperty(propertyName);
                }
            };
            innerClass.run();
        }
        catch (Exception e) {
            Status status = new Status(4, "org.eclipse.core.runtime", 0, e.getMessage(), (Throwable)e);
            RuntimeLog.log((IStatus)status);
            return null;
        }
        return result[0];
    }
}

