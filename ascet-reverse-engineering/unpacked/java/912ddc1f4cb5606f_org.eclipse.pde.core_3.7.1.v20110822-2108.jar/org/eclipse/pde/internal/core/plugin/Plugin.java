/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.internal.core.PDEState;
import org.eclipse.pde.internal.core.plugin.PluginBase;
import org.w3c.dom.Node;

public class Plugin
extends PluginBase
implements IPlugin {
    private static final long serialVersionUID = 1L;
    private String fClassname;
    private boolean fHasExtensibleAPI;

    public Plugin(boolean readOnly) {
        super(readOnly);
    }

    public String getClassName() {
        return this.fClassname;
    }

    public IPlugin getPlugin() {
        return this;
    }

    void load(BundleDescription bundleDescription, PDEState state) {
        this.fClassname = state.getClassName(bundleDescription.getBundleId());
        this.fHasExtensibleAPI = state.hasExtensibleAPI(bundleDescription.getBundleId());
        super.load(bundleDescription, state);
    }

    void load(Node node, String schemaVersion) {
        this.fClassname = this.getNodeAttribute(node, "class");
        super.load(node, schemaVersion);
    }

    public void reset() {
        this.fClassname = null;
        super.reset();
    }

    public void setClassName(String newClassName) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fClassname;
        this.fClassname = newClassName;
        this.firePropertyChanged("class", oldValue, this.fClassname);
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("class")) {
            this.setClassName(newValue != null ? newValue.toString() : null);
            return;
        }
        super.restoreProperty(name, oldValue, newValue);
    }

    public void write(String indent, PrintWriter writer) {
        writer.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
        if (this.getSchemaVersion() != null) {
            writer.println("<?eclipse version=\"" + this.getSchemaVersion() + "\"?>");
        }
        writer.print("<plugin");
        if (this.getId() != null) {
            writer.println();
            writer.print("   id=\"" + this.getId() + "\"");
        }
        if (this.getName() != null) {
            writer.println();
            writer.print("   name=\"" + this.getWritableString(this.getName()) + "\"");
        }
        if (this.getVersion() != null) {
            writer.println();
            writer.print("   version=\"" + this.getVersion() + "\"");
        }
        if (this.getProviderName() != null) {
            writer.println();
            writer.print("   provider-name=\"" + this.getWritableString(this.getProviderName()) + "\"");
        }
        if (this.getClassName() != null) {
            writer.println();
            writer.print("   class=\"" + this.getClassName() + "\"");
        }
        writer.println(">");
        writer.println();
        String firstIndent = "   ";
        IPluginObject[] children = this.getLibraries();
        if (children.length > 0) {
            this.writeChildren(firstIndent, "runtime", children, writer);
            writer.println();
        }
        if ((children = this.getImports()).length > 0) {
            this.writeChildren(firstIndent, "requires", children, writer);
            writer.println();
        }
        children = this.getExtensionPoints();
        int i = 0;
        while (i < children.length) {
            ((IPluginExtensionPoint)children[i]).write(firstIndent, writer);
            ++i;
        }
        if (children.length > 0) {
            writer.println();
        }
        children = this.getExtensions();
        i = 0;
        while (i < children.length) {
            ((IPluginExtension)children[i]).write(firstIndent, writer);
            ++i;
        }
        if (children.length > 0) {
            writer.println();
        }
        writer.println("</plugin>");
    }

    public boolean hasExtensibleAPI() {
        return this.fHasExtensibleAPI;
    }
}

