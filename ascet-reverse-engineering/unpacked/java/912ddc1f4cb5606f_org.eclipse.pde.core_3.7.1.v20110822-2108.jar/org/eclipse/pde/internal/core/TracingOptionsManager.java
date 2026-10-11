/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.Path;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.PDECore;

public class TracingOptionsManager {
    private Properties template;

    private void createTemplate() {
        this.template = new Properties();
        IPluginModelBase[] models = PluginRegistry.getAllModels();
        int i = 0;
        while (i < models.length) {
            this.addToTemplate(models[i]);
            ++i;
        }
    }

    private void addToTemplate(IPluginModelBase model) {
        Properties modelOptions = this.getOptions(model);
        if (modelOptions == null) {
            return;
        }
        Enumeration keys = modelOptions.keys();
        while (keys.hasMoreElements()) {
            String key = keys.nextElement().toString();
            String value = modelOptions.getProperty(key);
            if (key == null || value == null) continue;
            this.template.setProperty(key, value);
        }
    }

    public Hashtable getTemplateTable(String pluginId) {
        if (this.template == null) {
            this.createTemplate();
        }
        Hashtable defaults = new Hashtable();
        Enumeration keys = this.template.keys();
        while (keys.hasMoreElements()) {
            String key = keys.nextElement().toString();
            if (!this.belongsTo(key, pluginId)) continue;
            defaults.put(key, this.template.get(key));
        }
        return defaults;
    }

    private boolean belongsTo(String option, String pluginId) {
        Path path = new Path(option);
        String firstSegment = path.segment(0);
        return pluginId.equalsIgnoreCase(firstSegment);
    }

    public Properties getTracingOptions(Map storedOptions) {
        Properties defaults = this.getTracingTemplateCopy();
        if (storedOptions != null) {
            Iterator iter = storedOptions.keySet().iterator();
            while (iter.hasNext()) {
                String key = iter.next().toString();
                if (!defaults.containsKey(key)) continue;
                defaults.setProperty(key, (String)storedOptions.get(key));
            }
        }
        return defaults;
    }

    public Properties getTracingTemplateCopy() {
        if (this.template == null) {
            this.createTemplate();
        }
        return (Properties)this.template.clone();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean isTraceable(IPluginModelBase model) {
        ZipFile jarFile;
        InputStream stream;
        block24: {
            File pluginLocation;
            block23: {
                String location = model.getInstallLocation();
                if (location == null) {
                    return false;
                }
                pluginLocation = new File(location);
                stream = null;
                jarFile = null;
                if (!pluginLocation.isDirectory()) break block23;
                boolean bl = new File(pluginLocation, ".options").exists();
                try {
                    if (stream != null) {
                        stream.close();
                    }
                    if (jarFile == null) return bl;
                    jarFile.close();
                    return bl;
                }
                catch (IOException iOException) {}
                return bl;
            }
            try {
                jarFile = new ZipFile(pluginLocation, 1);
                ZipEntry manifestEntry = jarFile.getEntry(".options");
                if (manifestEntry == null) break block24;
                stream = jarFile.getInputStream(manifestEntry);
            }
            catch (FileNotFoundException fileNotFoundException) {
                try {
                    if (stream != null) {
                        stream.close();
                    }
                    if (jarFile == null) return stream != null;
                    jarFile.close();
                    return stream != null;
                }
                catch (IOException iOException) {}
                return stream != null;
            }
            catch (IOException iOException) {
                try {}
                catch (Throwable throwable) {
                    try {
                        if (stream != null) {
                            stream.close();
                        }
                        if (jarFile == null) throw throwable;
                        jarFile.close();
                        throw throwable;
                    }
                    catch (IOException iOException2) {}
                    throw throwable;
                }
                try {
                    if (stream != null) {
                        stream.close();
                    }
                    if (jarFile == null) return stream != null;
                    jarFile.close();
                    return stream != null;
                }
                catch (IOException iOException3) {}
                return stream != null;
            }
        }
        try {
            if (stream != null) {
                stream.close();
            }
            if (jarFile == null) return stream != null;
            jarFile.close();
            return stream != null;
        }
        catch (IOException iOException) {}
        return stream != null;
    }

    public void reset() {
        this.template = null;
    }

    private void save(String fileName, Properties properties) {
        FileOutputStream stream = null;
        try {
            try {
                stream = new FileOutputStream(fileName);
                properties.store(stream, "Master Tracing Options");
                stream.flush();
            }
            catch (IOException e) {
                PDECore.logException(e);
                try {
                    if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException e2) {
                    PDECore.logException(e2);
                }
            }
        }
        finally {
            try {
                if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException e) {
                PDECore.logException(e);
            }
        }
    }

    public void save(String filename, Map map, HashSet selected) {
        Properties properties = this.getTracingOptions(map);
        Enumeration keys = properties.keys();
        while (keys.hasMoreElements()) {
            String key = keys.nextElement().toString();
            Path path = new Path(key);
            if (path.segmentCount() >= 1 && selected.contains(path.segment(0).toString())) continue;
            properties.remove(key);
        }
        this.save(filename, properties);
    }

    public void save(String filename, Map map) {
        this.save(filename, this.getTracingOptions(map));
    }

    private Properties getOptions(IPluginModelBase model) {
        String location = model.getInstallLocation();
        if (location == null) {
            return null;
        }
        File pluginLocation = new File(location);
        InputStream stream = null;
        ZipFile jarFile = null;
        try {
            if (pluginLocation.isDirectory()) {
                File file = new File(pluginLocation, ".options");
                if (file.exists()) {
                    stream = new FileInputStream(file);
                }
            } else {
                jarFile = new ZipFile(pluginLocation, 1);
                ZipEntry manifestEntry = jarFile.getEntry(".options");
                if (manifestEntry != null) {
                    stream = jarFile.getInputStream(manifestEntry);
                }
            }
            if (stream != null) {
                Properties modelOptions = new Properties();
                modelOptions.load(stream);
                Properties properties = modelOptions;
                return properties;
            }
        }
        catch (FileNotFoundException e) {
            PDECore.logException(e);
        }
        catch (IOException e) {
            PDECore.logException(e);
        }
        finally {
            try {
                if (stream != null) {
                    stream.close();
                }
                if (jarFile != null) {
                    jarFile.close();
                }
            }
            catch (IOException e) {
                PDECore.logException(e);
            }
        }
        return null;
    }
}

