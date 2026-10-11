/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.BundleSpecification
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.eclipse.osgi.util.ManifestElement
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.PrintWriter;
import java.io.Serializable;
import java.util.Locale;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.core.plugin.ISharedPluginModel;
import org.eclipse.pde.internal.core.bundle.BundlePluginBase;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelBase;
import org.eclipse.pde.internal.core.ibundle.IManifestHeader;
import org.eclipse.pde.internal.core.plugin.IdentifiablePluginObject;
import org.eclipse.pde.internal.core.plugin.PluginBase;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.RequireBundleObject;
import org.w3c.dom.Node;

public class PluginImport
extends IdentifiablePluginObject
implements IPluginImport,
Serializable {
    private static final long serialVersionUID = 1L;
    private int match = 0;
    private boolean reexported = false;
    private boolean optional = false;
    private String version;

    public PluginImport() {
    }

    public PluginImport(ISharedPluginModel model, String id) {
        try {
            this.setModel(model);
            this.ensureModelEditable();
            this.fID = id;
        }
        catch (CoreException coreException) {}
    }

    public boolean isValid() {
        return this.getId() != null;
    }

    public int getMatch() {
        return this.match;
    }

    public String getVersion() {
        return this.version;
    }

    public boolean isReexported() {
        return this.reexported;
    }

    public boolean isOptional() {
        return this.optional;
    }

    public void load(BundleDescription description) {
        this.fID = description.getSymbolicName();
    }

    public void load(ManifestElement element, int bundleManifestVersion) {
        this.fID = element.getValue();
        if (bundleManifestVersion >= 2) {
            this.optional = "optional".equals(element.getDirective("resolution"));
            this.reexported = "reexport".equals(element.getDirective("visibility"));
        } else {
            this.optional = "true".equals(element.getAttribute("optional"));
            this.reexported = "true".equals(element.getAttribute("reprovide"));
        }
        String bundleVersion = element.getAttribute("bundle-version");
        if (bundleVersion != null) {
            try {
                VersionRange versionRange = new VersionRange(bundleVersion);
                this.version = bundleVersion;
                this.match = PluginBase.getMatchRule(versionRange);
            }
            catch (IllegalArgumentException illegalArgumentException) {}
        }
    }

    public void load(BundleSpecification importModel) {
        this.fID = importModel.getName();
        this.reexported = importModel.isExported();
        this.optional = importModel.isOptional();
        VersionRange versionRange = importModel.getVersionRange();
        if (versionRange == null || VersionRange.emptyRange.equals((Object)versionRange)) {
            this.version = null;
            this.match = 0;
        } else {
            this.version = versionRange.getMinimum() != null ? versionRange.getMinimum().toString() : null;
            this.match = PluginBase.getMatchRule(versionRange);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (obj instanceof IPluginImport) {
            IPluginImport target = (IPluginImport)obj;
            if (target.getModel().equals(this.getModel())) {
                return false;
            }
            if (target.getId().equals(this.getId()) && target.isReexported() == this.isReexported() && this.stringEqualWithNull(target.getVersion(), this.getVersion()) && target.getMatch() == this.getMatch() && target.isOptional() == this.isOptional()) {
                return true;
            }
        }
        return false;
    }

    void load(Node node) {
        String id = this.getNodeAttribute(node, "plugin");
        String export = this.getNodeAttribute(node, "export");
        String option = this.getNodeAttribute(node, "optional");
        String version = this.getNodeAttribute(node, "version");
        String match = this.getNodeAttribute(node, "match");
        boolean reexport = export != null && export.toLowerCase(Locale.ENGLISH).equals("true");
        boolean optional = option != null && option.toLowerCase(Locale.ENGLISH).equals("true");
        this.match = 0;
        if (match != null) {
            String lmatch = match.toLowerCase(Locale.ENGLISH);
            if (lmatch.equals("exact")) {
                lmatch = "equivalent";
            }
            int i = 0;
            while (i < RULE_NAME_TABLE.length) {
                if (lmatch.equals(RULE_NAME_TABLE[i])) {
                    this.match = i;
                    break;
                }
                ++i;
            }
        }
        this.version = version;
        this.fID = id;
        this.reexported = reexport;
        this.optional = optional;
    }

    public void setMatch(int match) throws CoreException {
        this.ensureModelEditable();
        Integer oldValue = new Integer(this.match);
        this.match = match;
        this.firePropertyChanged("match", oldValue, new Integer(match));
    }

    public void setReexported(boolean value) throws CoreException {
        this.ensureModelEditable();
        Boolean oldValue = new Boolean(this.reexported);
        this.reexported = value;
        this.firePropertyChanged("export", oldValue, new Boolean(value));
    }

    public void setOptional(boolean value) throws CoreException {
        this.ensureModelEditable();
        Boolean oldValue = new Boolean(this.optional);
        this.optional = value;
        this.firePropertyChanged("optional", oldValue, new Boolean(value));
    }

    public void setVersion(String version) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.version;
        this.version = version;
        this.firePropertyChanged("version", oldValue, version);
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("match")) {
            this.setMatch((Integer)newValue);
            return;
        }
        if (name.equals("export")) {
            this.setReexported((Boolean)newValue);
            return;
        }
        if (name.equals("optional")) {
            this.setOptional((Boolean)newValue);
            return;
        }
        if (name.equals("version")) {
            this.setVersion(newValue != null ? newValue.toString() : null);
            return;
        }
        super.restoreProperty(name, oldValue, newValue);
    }

    public void write(String indent, PrintWriter writer) {
        IPluginModelBase modelBase = this.getPluginModel();
        if (!(modelBase instanceof IBundlePluginModelBase)) {
            writer.print(indent);
            writer.print("<import plugin=\"" + this.getId() + "\"");
            if (this.isReexported()) {
                writer.print(" export=\"true\"");
            }
            if (this.isOptional()) {
                writer.print(" optional=\"true\"");
            }
            if (this.version != null && this.version.length() > 0) {
                writer.print(" version=\"" + this.version + "\"");
            }
            if (this.match != 0 && this.match != 2) {
                String matchValue = RULE_NAME_TABLE[this.match];
                writer.print(" match=\"" + matchValue + "\"");
            }
            writer.println("/>");
            return;
        }
        IBundleModel bundleModel = ((IBundlePluginModelBase)modelBase).getBundleModel();
        if (bundleModel == null) {
            return;
        }
        IBundle bundle = bundleModel.getBundle();
        IManifestHeader manifestHeader = bundle.getManifestHeader("Require-Bundle");
        if (!(manifestHeader instanceof ManifestHeader)) {
            return;
        }
        ManifestHeader header = (ManifestHeader)manifestHeader;
        RequireBundleObject element = new RequireBundleObject(header, this.fID);
        int bundleManifestVersion = BundlePluginBase.getBundleManifestVersion(bundle);
        if (this.optional) {
            if (bundleManifestVersion > 1) {
                element.setDirective("resolution", "optional");
            } else {
                element.setAttribute("optional", "true");
            }
        }
        if (this.reexported) {
            if (bundleManifestVersion > 1) {
                element.setDirective("visibility", "reexport");
            } else {
                element.setAttribute("reprovide", "true");
            }
        }
        if (this.version != null && this.version.trim().length() > 0) {
            element.setAttribute("bundle-version", this.version.trim());
        }
        writer.print(element.write());
    }

    public void reconnect(ISharedPluginModel model, IPluginObject parent) {
        super.reconnect(model, parent);
    }

    public void writeDelimeter(PrintWriter writer) {
        writer.println(',');
        writer.print(' ');
    }
}

