/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Dictionary;
import java.util.Properties;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.util.ManifestElement;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class DevClassPathHelper {
    private static final String FILE_PROTOCOL = "file";
    private static final boolean inDevelopmentMode;
    private static final File devLocation;
    private static String[] devDefaultClasspath;
    private static Dictionary<String, String> devProperties;
    private static long lastModified;
    static /* synthetic */ Class class$0;

    static {
        devProperties = null;
        lastModified = 0L;
        String osgiDev = FrameworkProperties.getProperty("osgi.dev");
        File f = null;
        boolean devMode = false;
        if (osgiDev != null) {
            try {
                devMode = true;
                URL location = new URL(osgiDev);
                if (FILE_PROTOCOL.equals(location.getProtocol())) {
                    f = new File(location.getFile());
                    lastModified = f.lastModified();
                }
                try {
                    DevClassPathHelper.load(location.openStream());
                    devMode = true;
                }
                catch (IOException iOException) {}
            }
            catch (MalformedURLException malformedURLException) {
                devDefaultClasspath = DevClassPathHelper.getArrayFromList(osgiDev);
            }
        }
        inDevelopmentMode = devMode;
        devLocation = f;
    }

    private static void updateDevProperties() {
        if (devLocation == null) {
            return;
        }
        if (devLocation.lastModified() == lastModified) {
            return;
        }
        try {
            DevClassPathHelper.load(new FileInputStream(devLocation));
        }
        catch (FileNotFoundException fileNotFoundException) {
            return;
        }
        lastModified = devLocation.lastModified();
    }

    private static String[] getDevClassPath(String id, Dictionary<String, String> properties, String[] defaultClasspath) {
        String entry;
        String[] result = null;
        if (id != null && properties != null && (entry = properties.get(id)) != null) {
            result = DevClassPathHelper.getArrayFromList(entry);
        }
        if (result == null) {
            result = defaultClasspath;
        }
        return result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static String[] getDevClassPath(String id, Dictionary<String, String> properties) {
        if (properties == null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.osgi.internal.baseadaptor.DevClassPathHelper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Class<?> clazz2 = clazz;
            synchronized (clazz) {
                DevClassPathHelper.updateDevProperties();
                // ** MonitorExit[var2_2] (shouldn't be in output)
                return DevClassPathHelper.getDevClassPath(id, devProperties, devDefaultClasspath);
            }
        }
        return DevClassPathHelper.getDevClassPath(id, properties, DevClassPathHelper.getArrayFromList(properties.get("*")));
    }

    public static String[] getDevClassPath(String id) {
        return DevClassPathHelper.getDevClassPath(id, null);
    }

    public static String[] getArrayFromList(String prop) {
        return ManifestElement.getArrayFromList(prop, ",");
    }

    public static boolean inDevelopmentMode() {
        return inDevelopmentMode;
    }

    private static void load(InputStream input) {
        Properties result;
        Properties props;
        block15: {
            props = new Properties();
            try {
                try {
                    props.load(input);
                }
                catch (IOException iOException) {
                    if (input != null) {
                        try {
                            input.close();
                        }
                        catch (IOException iOException2) {}
                    }
                    break block15;
                }
            }
            catch (Throwable throwable) {
                if (input != null) {
                    try {
                        input.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (input != null) {
                try {
                    input.close();
                }
                catch (IOException iOException) {}
            }
        }
        if ((devProperties = (result = props)) != null) {
            devDefaultClasspath = DevClassPathHelper.getArrayFromList(devProperties.get("*"));
        }
    }
}

