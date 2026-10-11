/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.pde.internal.core;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Dictionary;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import org.eclipse.core.runtime.Platform;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.PDECore;

public class TargetWeaver {
    private static boolean fgIsDev = false;
    private static String fgDevPropertiesURL = null;
    private static Properties fgDevProperties = null;

    static {
        fgIsDev = Platform.inDevelopmentMode();
        if (fgIsDev) {
            fgDevPropertiesURL = System.getProperty("osgi.dev");
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected static Properties getDevProperties() {
        if (!fgIsDev) return null;
        if (fgDevProperties != null) return fgDevProperties;
        fgDevProperties = new Properties();
        if (fgDevPropertiesURL == null) return fgDevProperties;
        try {
            File file;
            URL url = new URL(fgDevPropertiesURL);
            String path = url.getFile();
            if (path == null || path.length() <= 0 || !(file = new File(path)).exists()) return fgDevProperties;
            BufferedInputStream stream = null;
            try {
                try {
                    stream = new BufferedInputStream(new FileInputStream(file));
                    fgDevProperties.load(stream);
                    return fgDevProperties;
                }
                catch (FileNotFoundException e) {
                    PDECore.log(e);
                    if (stream == null) return fgDevProperties;
                    stream.close();
                    return fgDevProperties;
                }
                catch (IOException e) {
                    PDECore.log(e);
                    if (stream == null) return fgDevProperties;
                    stream.close();
                    return fgDevProperties;
                }
            }
            finally {
                if (stream != null) {
                    stream.close();
                }
            }
        }
        catch (MalformedURLException e) {
            PDECore.log(e);
            return fgDevProperties;
        }
        catch (IOException e) {
            PDECore.log(e);
        }
        return fgDevProperties;
    }

    public static void weaveManifest(Dictionary manifest) {
        if (manifest != null && fgIsDev) {
            Properties properties = TargetWeaver.getDevProperties();
            String id = (String)manifest.get("Bundle-SymbolicName");
            if (id != null) {
                String property;
                int index = id.indexOf(59);
                if (index != -1) {
                    id = id.substring(0, index);
                }
                if ((property = properties.getProperty(id, null)) != null) {
                    manifest.put("Bundle-ClassPath", property);
                }
            }
        }
    }

    public static void weaveDevProperties(Properties properties) {
        Properties devProperties;
        if (fgIsDev && (devProperties = TargetWeaver.getDevProperties()) != null) {
            Set entries = devProperties.entrySet();
            Iterator iterator = entries.iterator();
            while (iterator.hasNext()) {
                Map.Entry entry = iterator.next();
                properties.setProperty((String)entry.getKey(), (String)entry.getValue());
            }
        }
    }

    public static String getWeavedSourceLibraryName(IPluginModelBase model, String libraryName) {
        if (fgIsDev && !new File(libraryName).isAbsolute()) {
            String property;
            Properties properties = TargetWeaver.getDevProperties();
            String id = null;
            if (model.getBundleDescription() != null) {
                id = model.getBundleDescription().getSymbolicName();
            }
            if (id != null && (property = properties.getProperty(id, null)) != null) {
                return "";
            }
        }
        return libraryName;
    }
}

