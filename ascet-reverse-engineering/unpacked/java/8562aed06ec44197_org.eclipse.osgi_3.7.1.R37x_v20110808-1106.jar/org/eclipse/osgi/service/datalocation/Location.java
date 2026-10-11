/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.datalocation;

import java.io.IOException;
import java.net.URL;

public interface Location {
    public static final String INSTANCE_FILTER;
    public static final String INSTALL_FILTER;
    public static final String CONFIGURATION_FILTER;
    public static final String USER_FILTER;
    public static final String ECLIPSE_HOME_FILTER;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3;
        Class<?> clazz4;
        Class<?> clazz5;
        try {
            clazz5 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        INSTANCE_FILTER = "(&(objectClass=" + clazz5.getName() + ")(type=osgi.instance.area))";
        try {
            clazz4 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        INSTALL_FILTER = "(&(objectClass=" + clazz4.getName() + ")(type=osgi.install.area))";
        try {
            clazz3 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        CONFIGURATION_FILTER = "(&(objectClass=" + clazz3.getName() + ")(type=osgi.configuration.area))";
        try {
            clazz2 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        USER_FILTER = "(&(objectClass=" + clazz2.getName() + ")(type=osgi.user.area))";
        try {
            clazz = Class.forName("org.eclipse.osgi.service.datalocation.Location");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        ECLIPSE_HOME_FILTER = "(&(objectClass=" + clazz.getName() + ")(type=eclipse.home.location))";
    }

    public boolean allowsDefault();

    public URL getDefault();

    public Location getParentLocation();

    public URL getURL();

    public boolean isSet();

    public boolean isReadOnly();

    public boolean setURL(URL var1, boolean var2) throws IllegalStateException;

    public boolean set(URL var1, boolean var2) throws IllegalStateException, IOException;

    public boolean set(URL var1, boolean var2, String var3) throws IllegalStateException, IOException;

    public boolean lock() throws IOException;

    public void release();

    public boolean isLocked() throws IOException;

    public Location createLocation(Location var1, URL var2, boolean var3);

    public URL getDataArea(String var1) throws IOException;
}

