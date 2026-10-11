/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.HostSpecification
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.Path;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.util.CoreUtility;

public class JavadocLocationManager {
    public static final String JAVADOC_ID = "org.eclipse.pde.core.javadoc";
    private HashMap fLocations;

    public String getJavadocLocation(IPluginModelBase model) {
        File file = new File(model.getInstallLocation());
        if (file.isDirectory()) {
            File doc = new File(file, "doc");
            if (new File(doc, "package-list").exists()) {
                return "file:/" + doc.getAbsolutePath();
            }
        } else if (CoreUtility.jarContainsResource(file, "doc/package-list", false)) {
            return "jar:file:/" + file.getAbsolutePath() + "!/doc";
        }
        return this.getEntry(model);
    }

    private synchronized String getEntry(IPluginModelBase model) {
        this.initialize();
        BundleDescription desc = model.getBundleDescription();
        if (desc != null) {
            String id;
            HostSpecification host = desc.getHost();
            String string = id = host == null ? desc.getSymbolicName() : host.getName();
            if (id != null) {
                Iterator iter = this.fLocations.keySet().iterator();
                while (iter.hasNext()) {
                    String location = iter.next().toString();
                    Set set = (Set)this.fLocations.get(location);
                    if (!set.contains(id)) continue;
                    return location;
                }
            }
        }
        return null;
    }

    private synchronized void initialize() {
        if (this.fLocations != null) {
            return;
        }
        this.fLocations = new HashMap();
        IExtension[] extensions = PDECore.getDefault().getExtensionsRegistry().findExtensions(JAVADOC_ID, false);
        int i = 0;
        while (i < extensions.length) {
            IPluginModelBase base = PluginRegistry.findModel(extensions[i].getContributor().getName());
            if (base != null && base.getUnderlyingResource() == null) {
                this.processExtension(extensions[i], base);
            }
            ++i;
        }
    }

    private void processExtension(IExtension extension, IPluginModelBase base) {
        IConfigurationElement[] children = extension.getConfigurationElements();
        int i = 0;
        while (i < children.length) {
            String path;
            if (children[i].getName().equals("javadoc") && (path = children[i].getAttribute("path")) != null) {
                try {
                    new URL(path);
                    this.processPlugins(path, children[i].getChildren());
                }
                catch (MalformedURLException malformedURLException) {
                    String attr = children[i].getAttribute("archive");
                    boolean archive = attr == null ? false : "true".equals(attr);
                    Path modelPath = new Path(base.getInstallLocation());
                    StringBuffer buffer = new StringBuffer();
                    File file = modelPath.toFile();
                    if (file.exists()) {
                        try {
                            buffer.append(file.toURI().toURL());
                        }
                        catch (MalformedURLException malformedURLException2) {
                            buffer.append("file:/");
                            buffer.append(modelPath.toPortableString());
                        }
                        if (file.isFile()) {
                            buffer.append("!/");
                            archive = true;
                        }
                    }
                    buffer.append(path);
                    if (archive) {
                        buffer.insert(0, "jar:");
                        if (buffer.indexOf("!") == -1) {
                            buffer.append("!/");
                        }
                    }
                    this.processPlugins(buffer.toString(), children[i].getChildren());
                }
            }
            ++i;
        }
    }

    private void processPlugins(String path, IConfigurationElement[] plugins) {
        int i = 0;
        while (i < plugins.length) {
            String id;
            if (plugins[i].getName().equals("plugin") && (id = plugins[i].getAttribute("id")) != null) {
                HashSet<String> set = (HashSet<String>)this.fLocations.get(path);
                if (set == null) {
                    set = new HashSet<String>();
                    this.fLocations.put(path, set);
                }
                set.add(id);
            }
            ++i;
        }
    }

    public synchronized void reset() {
        this.fLocations = null;
    }
}

