/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.HostSpecification
 *  org.eclipse.osgi.service.resolver.VersionRange
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.pde.core.plugin.IFragment;
import org.eclipse.pde.core.plugin.IMatchRules;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.internal.core.PDEState;
import org.eclipse.pde.internal.core.plugin.PluginBase;
import org.w3c.dom.Node;

public class Fragment
extends PluginBase
implements IFragment {
    private static final long serialVersionUID = 1L;
    private String fPluginId = "";
    private String fPluginVersion = "";
    private int fMatchRule = 0;
    private boolean fPatch;

    public Fragment(boolean readOnly) {
        super(readOnly);
    }

    public String getPluginId() {
        return this.fPluginId;
    }

    public String getPluginVersion() {
        return this.fPluginVersion;
    }

    public int getRule() {
        return this.fMatchRule;
    }

    protected boolean hasRequiredAttributes() {
        if (this.fPluginId == null || this.fPluginVersion == null) {
            return false;
        }
        return super.hasRequiredAttributes();
    }

    void load(BundleDescription bundleDescription, PDEState state) {
        HostSpecification host = bundleDescription.getHost();
        this.fPluginId = host.getName();
        VersionRange versionRange = host.getVersionRange();
        if (versionRange != null) {
            this.fPluginVersion = versionRange.getMinimum() != null ? versionRange.getMinimum().toString() : null;
            this.fMatchRule = PluginBase.getMatchRule(versionRange);
        }
        this.fPatch = state.isPatchFragment(bundleDescription.getBundleId());
        super.load(bundleDescription, state);
    }

    void load(Node node, String schemaVersion) {
        this.fPluginId = this.getNodeAttribute(node, "plugin-id");
        this.fPluginVersion = this.getNodeAttribute(node, "plugin-version");
        String match = this.getNodeAttribute(node, "match");
        if (match != null) {
            String[] table = IMatchRules.RULE_NAME_TABLE;
            int i = 0;
            while (i < table.length) {
                if (match.equalsIgnoreCase(table[i])) {
                    this.fMatchRule = i;
                    break;
                }
                ++i;
            }
        }
        super.load(node, schemaVersion);
    }

    public void reset() {
        this.fPluginId = "";
        this.fPluginVersion = "";
        this.fMatchRule = 0;
        super.reset();
    }

    public void setPluginId(String newPluginId) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fPluginId;
        this.fPluginId = newPluginId;
        this.firePropertyChanged("plugin-id", oldValue, this.fPluginId);
    }

    public void setPluginVersion(String newPluginVersion) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fPluginVersion;
        this.fPluginVersion = newPluginVersion;
        this.firePropertyChanged("plugin-version", oldValue, this.fPluginVersion);
    }

    public void setRule(int rule) throws CoreException {
        this.ensureModelEditable();
        Integer oldValue = new Integer(this.fMatchRule);
        this.fMatchRule = rule;
        this.firePropertyChanged("match", oldValue, new Integer(rule));
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("plugin-id")) {
            this.setPluginId(newValue != null ? newValue.toString() : null);
            return;
        }
        if (name.equals("plugin-version")) {
            this.setPluginVersion(newValue != null ? newValue.toString() : null);
            return;
        }
        if (name.equals("match")) {
            this.setRule((Integer)newValue);
            return;
        }
        super.restoreProperty(name, oldValue, newValue);
    }

    public void write(String indent, PrintWriter writer) {
        int i;
        String pver;
        String pid;
        writer.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
        if (this.getSchemaVersion() != null) {
            writer.println("<?eclipse version=\"" + this.getSchemaVersion() + "\"?>");
        }
        writer.print("<fragment");
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
        if ((pid = this.getPluginId()) != null && pid.length() > 0) {
            writer.println();
            writer.print("   plugin-id=\"" + this.getPluginId() + "\"");
        }
        if ((pver = this.getPluginVersion()) != null && pver.length() > 0) {
            writer.println();
            writer.print("   plugin-version=\"" + this.getPluginVersion() + "\"");
        }
        if (this.getRule() != 0) {
            writer.println();
            writer.print("   match=\"" + IMatchRules.RULE_NAME_TABLE[this.getRule()] + "\"");
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
        if ((children = this.getExtensionPoints()).length > 0) {
            i = 0;
            while (i < children.length) {
                ((IPluginExtensionPoint)children[i]).write(firstIndent, writer);
                ++i;
            }
            writer.println();
        }
        children = this.getExtensions();
        i = 0;
        while (i < children.length) {
            ((IPluginExtension)children[i]).write(firstIndent, writer);
            ++i;
        }
        writer.println("</fragment>");
    }

    public boolean isPatch() {
        return this.fPatch;
    }
}

