/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.pde.internal.core.schema;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.pde.core.plugin.IFragment;
import org.eclipse.pde.core.plugin.IFragmentModel;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.ModelEntry;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.SourceLocationManager;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaDescriptor;
import org.eclipse.pde.internal.core.schema.IncludedSchemaDescriptor;
import org.eclipse.pde.internal.core.schema.SchemaDescriptor;
import org.eclipse.pde.internal.core.text.plugin.PluginExtensionPointNode;
import org.eclipse.pde.internal.core.util.CoreUtility;

public class SchemaRegistry {
    private HashMap fRegistry = new HashMap();

    public ISchema getSchema(String extPointID) {
        IPluginExtensionPoint point = PDECore.getDefault().getExtensionsRegistry().findExtensionPoint(extPointID);
        if (point == null) {
            if (this.fRegistry.containsKey(extPointID)) {
                this.fRegistry.remove(extPointID);
            }
            return null;
        }
        URL url = SchemaRegistry.getSchemaURL(point);
        if (url == null) {
            return null;
        }
        ISchemaDescriptor desc = this.getExistingDescriptor(extPointID, url);
        if (desc == null) {
            desc = new SchemaDescriptor(extPointID, url);
            this.fRegistry.put(extPointID, desc);
        }
        return desc == null ? null : desc.getSchema(true);
    }

    public ISchema getIncludedSchema(ISchemaDescriptor parent, String schemaLocation) {
        URL url;
        block4: {
            try {
                url = IncludedSchemaDescriptor.computeURL(parent, schemaLocation);
                if (url != null) break block4;
                return null;
            }
            catch (MalformedURLException malformedURLException) {
                return null;
            }
        }
        ISchemaDescriptor desc = this.getExistingDescriptor(url.toString(), url);
        if (desc == null) {
            desc = new IncludedSchemaDescriptor(url);
            this.fRegistry.put(url.toString(), desc);
        }
        return desc.getSchema(true);
    }

    private ISchemaDescriptor getExistingDescriptor(String key, URL url) {
        ISchemaDescriptor desc = null;
        if (this.fRegistry.containsKey(key) && this.hasSchemaChanged(desc = (ISchemaDescriptor)this.fRegistry.get(key), url)) {
            desc = null;
        }
        return desc;
    }

    public static URL getSchemaURL(IPluginExtensionPoint point, IPluginModelBase base) {
        URL url = SchemaRegistry.getSchemaURL(point);
        if (url != null) {
            return url;
        }
        String schema = point.getSchema();
        if (schema == null || schema.trim().length() == 0) {
            return null;
        }
        return SchemaRegistry.getSchemaURL(SchemaRegistry.getId(point, base), schema);
    }

    public static URL getSchemaURL(IPluginExtensionPoint point) {
        String schema = point.getSchema();
        if (schema == null || schema.trim().length() == 0) {
            return null;
        }
        IPluginModelBase model = point.getPluginModel();
        URL url = SchemaRegistry.getSchemaURL(model.getPluginBase().getId(), schema);
        if (url == null) {
            url = SchemaRegistry.getSchemaFromSourceExtension(point.getPluginBase(), (IPath)new Path(schema));
        }
        return url;
    }

    public static URL getSchemaFromSourceExtension(IPluginBase plugin, IPath path) {
        SourceLocationManager mgr = PDECore.getDefault().getSourceLocationManager();
        return mgr.findSourceFile(plugin, path);
    }

    public static URL getSchemaURL(String pluginID, String schema) {
        if (pluginID == null) {
            return null;
        }
        URL url = null;
        ModelEntry entry = PluginRegistry.findEntry(pluginID);
        if (entry != null) {
            IPluginModelBase[] models = entry.getWorkspaceModels();
            int i = 0;
            while (i < models.length) {
                url = SchemaRegistry.getSchemaURL(models[i], schema);
                if (url != null) break;
                ++i;
            }
            if (url == null) {
                models = entry.getExternalModels();
                i = 0;
                while (i < models.length) {
                    url = SchemaRegistry.getSchemaURL(models[i], schema);
                    if (url != null) break;
                    ++i;
                }
            }
        }
        return url;
    }

    private static URL getSchemaURL(IPluginModelBase model, String schema) {
        String location;
        block9: {
            block8: {
                try {
                    if (model != null) break block8;
                    return null;
                }
                catch (MalformedURLException malformedURLException) {}
            }
            location = model.getInstallLocation();
            if (location != null) break block9;
            return null;
        }
        File file = new File(location);
        if (file.isDirectory()) {
            File schemaFile = new File(file, schema);
            if (schemaFile.exists()) {
                return schemaFile.toURL();
            }
        } else if (CoreUtility.jarContainsResource(file, schema, false)) {
            return new URL("jar:file:" + file.getAbsolutePath() + "!/" + schema);
        }
        return null;
    }

    private boolean hasSchemaChanged(ISchemaDescriptor desc, URL url) {
        if (!desc.getSchemaURL().equals(url)) {
            return true;
        }
        File file = new File(url.getFile());
        return desc.getLastModified() != file.lastModified();
    }

    public void shutdown() {
        this.fRegistry.clear();
    }

    private static String getId(IPluginExtensionPoint point, IPluginModelBase base) {
        String id = null;
        if (point instanceof PluginExtensionPointNode) {
            IFragment fragment;
            if (base instanceof IFragmentModel && (fragment = ((IFragmentModel)base).getFragment()) != null) {
                id = fragment.getPluginId();
            }
            if (id == null) {
                id = base.getPluginBase().getId();
            }
        }
        return id;
    }
}

