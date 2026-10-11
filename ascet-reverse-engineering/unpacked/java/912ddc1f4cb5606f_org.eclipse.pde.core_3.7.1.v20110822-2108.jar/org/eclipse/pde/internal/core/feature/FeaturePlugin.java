/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.feature;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IFragment;
import org.eclipse.pde.core.plugin.IFragmentModel;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModel;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.ModelEntry;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.feature.FeatureData;
import org.eclipse.pde.internal.core.ifeature.IFeaturePlugin;
import org.w3c.dom.Node;

public class FeaturePlugin
extends FeatureData
implements IFeaturePlugin {
    private static final long serialVersionUID = 1L;
    private boolean fFragment;
    private String fVersion;
    private boolean fUnpack = true;

    protected void reset() {
        super.reset();
        this.fVersion = null;
        this.fFragment = false;
    }

    public boolean isFragment() {
        return this.fFragment;
    }

    public IPluginBase getPluginBase() {
        if (this.id == null) {
            return null;
        }
        String version = this.getVersion();
        IPluginModelBase model = null;
        if (version == null || version.equals("0.0.0")) {
            model = PluginRegistry.findModel(this.id);
        } else {
            ModelEntry entry = PluginRegistry.findEntry(this.id);
            if (entry != null) {
                IPluginModelBase[] bases = entry.getActiveModels();
                int i = 0;
                while (i < bases.length) {
                    if (bases[i].getPluginBase().getVersion().equals(version)) {
                        model = bases[i];
                        break;
                    }
                    ++i;
                }
            }
        }
        if (this.fFragment && model instanceof IFragmentModel) {
            return model.getPluginBase();
        }
        if (!this.fFragment && model instanceof IPluginModel) {
            return model.getPluginBase();
        }
        return null;
    }

    public String getVersion() {
        return this.fVersion;
    }

    public boolean isUnpack() {
        return this.fUnpack;
    }

    public void setVersion(String version) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fVersion;
        this.fVersion = version;
        this.firePropertyChanged(this, "version", oldValue, version);
    }

    public void setUnpack(boolean unpack) throws CoreException {
        this.ensureModelEditable();
        boolean oldValue = this.fUnpack;
        this.fUnpack = unpack;
        this.firePropertyChanged(this, "unpack", new Boolean(oldValue), new Boolean(unpack));
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("version")) {
            this.setVersion(newValue != null ? newValue.toString() : null);
        } else {
            super.restoreProperty(name, oldValue, newValue);
        }
    }

    public void setFragment(boolean fragment) throws CoreException {
        this.ensureModelEditable();
        this.fFragment = fragment;
    }

    protected void parse(Node node) {
        String unpack;
        super.parse(node);
        this.fVersion = this.getNodeAttribute(node, "version");
        String f = this.getNodeAttribute(node, "fragment");
        if (f != null && f.equalsIgnoreCase("true")) {
            this.fFragment = true;
        }
        if ((unpack = this.getNodeAttribute(node, "unpack")) != null && unpack.equalsIgnoreCase("false")) {
            this.fUnpack = false;
        }
    }

    public void loadFrom(IPluginBase plugin) {
        this.id = plugin.getId();
        this.label = plugin.getTranslatedName();
        this.fVersion = plugin.getVersion();
        this.fFragment = plugin instanceof IFragment;
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(String.valueOf(indent) + "<plugin");
        String indent2 = String.valueOf(indent) + "   " + "   ";
        this.writeAttributes(indent2, writer);
        if (this.getVersion() != null) {
            writer.println();
            writer.print(String.valueOf(indent2) + "version=\"" + this.getVersion() + "\"");
        }
        if (this.isFragment()) {
            writer.println();
            writer.print(String.valueOf(indent2) + "fragment=\"true\"");
        }
        if (!this.isUnpack()) {
            writer.println();
            writer.print(String.valueOf(indent2) + "unpack=\"false\"");
        }
        writer.println("/>");
    }

    public String getLabel() {
        IPluginBase pluginBase = this.getPluginBase();
        if (pluginBase != null) {
            return pluginBase.getTranslatedName();
        }
        String name = super.getLabel();
        if (name == null) {
            name = this.getId();
        }
        return name;
    }

    public String toString() {
        return this.getLabel();
    }
}

