/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.feature;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.core.plugin.IPluginModel;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.feature.VersionableObject;
import org.eclipse.pde.internal.core.ifeature.IFeature;
import org.eclipse.pde.internal.core.ifeature.IFeatureImport;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.util.VersionUtil;
import org.w3c.dom.Node;

public class FeatureImport
extends VersionableObject
implements IFeatureImport {
    private static final long serialVersionUID = 1L;
    private int fMatch = 0;
    private int fIdMatch = 3;
    private int fType = 0;
    private boolean fPatch = false;
    private String fFilter = null;

    public IPlugin getPlugin() {
        if (this.id != null && this.fType == 0) {
            IPluginModelBase model = PluginRegistry.findModel(this.id);
            return model instanceof IPluginModel ? ((IPluginModel)model).getPlugin() : null;
        }
        return null;
    }

    public IFeature getFeature() {
        if (this.id != null && this.fType == 1) {
            return this.findFeature(this.id, this.getVersion(), this.fMatch);
        }
        return null;
    }

    private IFeature findFeature(IFeatureModel[] models, String id, String version, int match) {
        int i = 0;
        while (i < models.length) {
            String pversion;
            IFeatureModel model = models[i];
            IFeature feature = model.getFeature();
            String pid = feature.getId();
            if (VersionUtil.compare(pid, pversion = feature.getVersion(), id, version, match)) {
                return feature;
            }
            ++i;
        }
        return null;
    }

    public IFeature findFeature(String id, String version, int match) {
        IFeatureModel[] models = PDECore.getDefault().getFeatureModelManager().findFeatureModels(id);
        return this.findFeature(models, id, version, match);
    }

    public int getIdMatch() {
        return this.fIdMatch;
    }

    protected void reset() {
        super.reset();
        this.fPatch = false;
        this.fType = 0;
        this.fMatch = 0;
        this.fIdMatch = 3;
        this.fFilter = null;
    }

    protected void parse(Node node) {
        super.parse(node);
        this.id = this.getNodeAttribute(node, "plugin");
        if (this.id != null) {
            this.fType = 0;
        } else {
            this.id = this.getNodeAttribute(node, "feature");
            if (this.id != null) {
                this.fType = 1;
            }
        }
        String mvalue = this.getNodeAttribute(node, "match");
        if (mvalue != null && mvalue.length() > 0) {
            String[] choices = RULE_NAME_TABLE;
            int i = 0;
            while (i < choices.length) {
                if (mvalue.equalsIgnoreCase(choices[i])) {
                    this.fMatch = i;
                    break;
                }
                ++i;
            }
        }
        if ((mvalue = this.getNodeAttribute(node, "id-match")) != null && mvalue.length() > 0 && mvalue.equalsIgnoreCase("prefix")) {
            this.fIdMatch = 5;
        }
        this.fPatch = this.getBooleanAttribute(node, "patch");
        this.fFilter = this.getNodeAttribute(node, "filter");
    }

    public void loadFrom(IFeature feature) {
        this.reset();
        this.fType = 1;
        this.id = feature.getId();
        this.version = feature.getVersion();
    }

    public int getMatch() {
        return this.fMatch;
    }

    public void setMatch(int match) throws CoreException {
        this.ensureModelEditable();
        Integer oldValue = new Integer(this.fMatch);
        this.fMatch = match;
        this.firePropertyChanged("match", oldValue, new Integer(match));
    }

    public void setIdMatch(int idMatch) throws CoreException {
        this.ensureModelEditable();
        Integer oldValue = new Integer(this.fIdMatch);
        this.fIdMatch = idMatch;
        this.firePropertyChanged("id-match", oldValue, new Integer(idMatch));
    }

    public int getType() {
        return this.fType;
    }

    public void setType(int type) throws CoreException {
        this.ensureModelEditable();
        Integer oldValue = new Integer(this.fType);
        this.fType = type;
        this.firePropertyChanged("type", oldValue, new Integer(type));
    }

    public boolean isPatch() {
        return this.fPatch;
    }

    public void setPatch(boolean patch) throws CoreException {
        this.ensureModelEditable();
        Boolean oldValue = new Boolean(this.fPatch);
        this.fPatch = patch;
        this.firePropertyChanged("patch", oldValue, new Boolean(patch));
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("match")) {
            this.setMatch(newValue != null ? (Integer)newValue : 0);
        } else if (name.equals("id-match")) {
            this.setIdMatch(newValue != null ? (Integer)newValue : 0);
        } else if (name.equals("type")) {
            this.setType(newValue != null ? (Integer)newValue : 0);
        } else if (name.equals("patch")) {
            this.setPatch(newValue != null ? (Boolean)newValue : false);
        } else {
            super.restoreProperty(name, oldValue, newValue);
        }
    }

    public void write(String indent, PrintWriter writer) {
        String typeAtt = this.fType == 1 ? "feature" : "plugin";
        writer.print(String.valueOf(indent) + "<import " + typeAtt + "=\"" + this.getId() + "\"");
        String version = this.getVersion();
        if (version != null && version.length() > 0) {
            writer.print(" version=\"" + version + "\"");
        }
        if (!this.fPatch && this.fMatch != 0) {
            writer.print(" match=\"" + RULE_NAME_TABLE[this.fMatch] + "\"");
        }
        if (this.fIdMatch == 5) {
            writer.print(" id-match=\"prefix\"");
        }
        if (this.fPatch) {
            writer.print(" patch=\"true\"");
        }
        if (this.fFilter != null) {
            writer.print(" filter=\"" + this.fFilter + "\"");
        }
        writer.println("/>");
    }

    public String toString() {
        IPlugin plugin = this.getPlugin();
        if (plugin != null) {
            return plugin.getTranslatedName();
        }
        IFeature feature = this.getFeature();
        if (feature != null) {
            return feature.getLabel();
        }
        return this.getId();
    }

    public String getFilter() {
        return this.fFilter;
    }

    public void setFilter(String filter) throws CoreException {
        this.fFilter = filter;
    }
}

