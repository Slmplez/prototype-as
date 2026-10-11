/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.feature;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.feature.IdentifiableObject;
import org.eclipse.pde.internal.core.ifeature.IFeature;
import org.eclipse.pde.internal.core.ifeature.IFeatureChild;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.w3c.dom.Node;

public class FeatureChild
extends IdentifiableObject
implements IFeatureChild {
    private static final long serialVersionUID = 1L;
    private String fVersion;
    private String fName;
    private boolean fOptional;
    private int fSearchLocation = 0;
    private int fMatch = 0;
    private String fOs;
    private String fWs;
    private String fArch;
    private String fNl;
    private String fFilter;

    protected void reset() {
        super.reset();
        this.fVersion = null;
        this.fOptional = false;
        this.fName = null;
        this.fSearchLocation = 0;
        this.fMatch = 0;
        this.fOs = null;
        this.fWs = null;
        this.fArch = null;
        this.fNl = null;
        this.fFilter = null;
    }

    protected void parse(Node node) {
        String searchLocationName;
        super.parse(node);
        this.fVersion = this.getNodeAttribute(node, "version");
        this.fName = this.getNodeAttribute(node, "name");
        this.fOptional = this.getBooleanAttribute(node, "optional");
        this.fOs = this.getNodeAttribute(node, "os");
        this.fWs = this.getNodeAttribute(node, "ws");
        this.fArch = this.getNodeAttribute(node, "arch");
        this.fNl = this.getNodeAttribute(node, "nl");
        this.fFilter = this.getNodeAttribute(node, "filter");
        String matchName = this.getNodeAttribute(node, "match");
        if (matchName != null) {
            int i = 0;
            while (i < RULE_NAME_TABLE.length) {
                if (matchName.equals(RULE_NAME_TABLE[i])) {
                    this.fMatch = i;
                    break;
                }
                ++i;
            }
        }
        if ((searchLocationName = this.getNodeAttribute(node, "search_location")) == null) {
            searchLocationName = this.getNodeAttribute(node, "search-location");
        }
        if (searchLocationName != null) {
            if (searchLocationName.equals("root")) {
                this.fSearchLocation = 0;
            } else if (searchLocationName.equals("self")) {
                this.fSearchLocation = 1;
            } else if (searchLocationName.equals("both")) {
                this.fSearchLocation = 2;
            }
        }
    }

    public void loadFrom(IFeature feature) {
        this.id = feature.getId();
        this.fVersion = feature.getVersion();
        this.fOptional = false;
        this.fName = null;
    }

    public String getVersion() {
        return this.fVersion;
    }

    public boolean isOptional() {
        return this.fOptional;
    }

    public String getName() {
        return this.fName;
    }

    public int getSearchLocation() {
        return this.fSearchLocation;
    }

    public int getMatch() {
        return this.fMatch;
    }

    public String getOS() {
        return this.fOs;
    }

    public String getWS() {
        return this.fWs;
    }

    public String getArch() {
        return this.fArch;
    }

    public String getNL() {
        return this.fNl;
    }

    public String getFilter() {
        return this.fFilter;
    }

    public IFeature getReferencedFeature() {
        IFeatureModel workspaceModel = PDECore.getDefault().getFeatureModelManager().findFeatureModel(this.getId(), this.fVersion);
        if (workspaceModel != null) {
            return workspaceModel.getFeature();
        }
        return null;
    }

    public void setVersion(String version) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fVersion;
        this.fVersion = version;
        this.firePropertyChanged("version", oldValue, version);
    }

    public void setName(String name) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fName;
        this.fName = name;
        this.firePropertyChanged("name", oldValue, name);
    }

    public void setMatch(int match) throws CoreException {
        this.ensureModelEditable();
        Integer oldValue = new Integer(this.fMatch);
        this.fMatch = match;
        this.firePropertyChanged("match", oldValue, new Integer(match));
    }

    public void setSearchLocation(int searchLocation) throws CoreException {
        this.ensureModelEditable();
        Integer oldValue = new Integer(this.fSearchLocation);
        this.fSearchLocation = searchLocation;
        this.firePropertyChanged("search-location", oldValue, new Integer(searchLocation));
    }

    public void setOptional(boolean optional) throws CoreException {
        this.ensureModelEditable();
        Boolean oldValue = new Boolean(this.fOptional);
        this.fOptional = optional;
        this.firePropertyChanged("name", oldValue, new Boolean(optional));
    }

    public void setOS(String os) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fOs;
        this.fOs = os;
        this.firePropertyChanged("os", oldValue, os);
    }

    public void setWS(String ws) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fWs;
        this.fWs = ws;
        this.firePropertyChanged("ws", oldValue, ws);
    }

    public void setArch(String arch) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fArch;
        this.fArch = arch;
        this.firePropertyChanged("arch", oldValue, arch);
    }

    public void setNL(String nl) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fNl;
        this.fNl = nl;
        this.firePropertyChanged("nl", oldValue, nl);
    }

    public void setFilter(String filter) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fFilter;
        this.fFilter = filter;
        this.firePropertyChanged("filter", oldValue, filter);
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("version")) {
            this.setVersion((String)newValue);
        } else if (name.equals("optional")) {
            this.setOptional((Boolean)newValue);
        } else if (name.equals("name")) {
            this.setName((String)newValue);
        } else if (name.equals("match")) {
            this.setMatch(newValue != null ? (Integer)newValue : 0);
        } else if (name.equals("os")) {
            this.setOS((String)newValue);
        } else if (name.equals("ws")) {
            this.setWS((String)newValue);
        } else if (name.equals("arch")) {
            this.setArch((String)newValue);
        } else if (name.equals("nl")) {
            this.setNL((String)newValue);
        } else if (name.equals("search-location")) {
            this.setSearchLocation(newValue != null ? (Integer)newValue : 0);
        } else {
            super.restoreProperty(name, oldValue, newValue);
        }
    }

    public void setId(String id) throws CoreException {
        super.setId(id);
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(String.valueOf(indent) + "<includes");
        String indent2 = String.valueOf(indent) + "   " + "   ";
        if (this.getId() != null) {
            writer.println();
            writer.print(String.valueOf(indent2) + "id=\"" + this.getId() + "\"");
        }
        if (this.getVersion() != null) {
            writer.println();
            writer.print(String.valueOf(indent2) + "version=\"" + this.getVersion() + "\"");
        }
        if (this.getName() != null) {
            writer.println();
            writer.print(String.valueOf(indent2) + "name=\"" + this.getName() + "\"");
        }
        if (this.isOptional()) {
            writer.println();
            writer.print(String.valueOf(indent2) + "optional=\"true\"");
        }
        if (this.fMatch != 0) {
            writer.println();
            writer.print(String.valueOf(indent2) + "match=\"" + RULE_NAME_TABLE[this.fMatch] + "\"");
        }
        if (this.getOS() != null) {
            writer.println();
            writer.print(String.valueOf(indent2) + "os=\"" + this.getOS() + "\"");
        }
        if (this.getWS() != null) {
            writer.println();
            writer.print(String.valueOf(indent2) + "ws=\"" + this.getWS() + "\"");
        }
        if (this.getArch() != null) {
            writer.println();
            writer.print(String.valueOf(indent2) + "arch=\"" + this.getArch() + "\"");
        }
        if (this.getNL() != null) {
            writer.println();
            writer.print(String.valueOf(indent2) + "nl=\"" + this.getNL() + "\"");
        }
        if (this.fSearchLocation != 0) {
            writer.println();
            String value = this.fSearchLocation == 1 ? "self" : "both";
            writer.print(String.valueOf(indent2) + "search-location=\"" + value + "\"");
        }
        if (this.getFilter() != null) {
            writer.println();
            writer.print(String.valueOf(indent2) + "filter=\"" + this.getFilter() + "\"");
        }
        writer.println("/>");
    }
}

