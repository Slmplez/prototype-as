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
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaDescriptor;
import org.eclipse.pde.internal.core.schema.Schema;
import org.eclipse.pde.internal.core.schema.SchemaRegistry;

public class IncludedSchemaDescriptor
implements ISchemaDescriptor {
    private URL fSchemaURL;
    private String fSchemaLocation;
    private Schema fSchema;
    private long fLastModified;

    public IncludedSchemaDescriptor(URL schemaURL) {
        this.fSchemaURL = schemaURL;
        File file = new File(this.fSchemaURL.getFile());
        if (file.exists()) {
            this.fLastModified = file.lastModified();
        }
    }

    public static URL computeURL(ISchemaDescriptor parentDesc, String schemaLocation) throws MalformedURLException {
        URL parentURL;
        URL uRL = parentURL = parentDesc == null ? null : parentDesc.getSchemaURL();
        if (schemaLocation.startsWith("schema://")) {
            Path path = new Path(schemaLocation.substring(9));
            return IncludedSchemaDescriptor.getPluginRelativePath(path.segment(0), path.removeFirstSegments(1), parentURL);
        }
        if (parentURL == null) {
            return null;
        }
        Path path = new Path(parentURL.getPath());
        path = path.removeLastSegments(1).append(schemaLocation);
        return new URL(parentURL.getProtocol(), parentURL.getHost(), path.toString());
    }

    private static URL getPluginRelativePath(String pluginID, IPath path, URL parentURL) {
        URL url;
        block5: {
            String parentFile;
            block6: {
                IPluginModelBase model;
                url = SchemaRegistry.getSchemaURL(pluginID, path.toString());
                if (url == null && (model = PluginRegistry.findModel(pluginID)) != null) {
                    url = SchemaRegistry.getSchemaFromSourceExtension(model.getPluginBase(), path);
                }
                try {
                    if (url != null || parentURL == null) break block5;
                    parentFile = parentURL.getFile();
                    if (parentFile != null) break block6;
                    return null;
                }
                catch (MalformedURLException malformedURLException) {}
            }
            int lastSep = parentFile.lastIndexOf(File.separatorChar);
            parentFile = parentFile.substring(0, lastSep + 1);
            File file = new File(String.valueOf(parentFile) + "../../" + pluginID + "/" + path.toString());
            if (file.exists() && file.isFile()) {
                url = file.toURL();
            }
        }
        return url;
    }

    public boolean isEnabled() {
        return true;
    }

    public String getPointId() {
        int dotLoc = this.fSchemaLocation.lastIndexOf(46);
        if (dotLoc != -1) {
            return this.fSchemaLocation.substring(0, dotLoc);
        }
        return null;
    }

    public URL getSchemaURL() {
        return this.fSchemaURL;
    }

    public ISchema getSchema(boolean abbreviated) {
        if (this.fSchema == null && this.fSchemaURL != null) {
            this.fSchema = new Schema(this, this.fSchemaURL, abbreviated);
            this.fSchema.load();
        }
        return this.fSchema;
    }

    public boolean isStandalone() {
        return false;
    }

    public long getLastModified() {
        return this.fLastModified;
    }
}

