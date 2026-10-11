/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.feature;

import java.io.File;
import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.feature.IdentifiableObject;
import org.eclipse.pde.internal.core.ifeature.IFeatureData;
import org.w3c.dom.Node;

public class FeatureData
extends IdentifiableObject
implements IFeatureData {
    private static final long serialVersionUID = 1L;
    private String os;
    private String ws;
    private String nl;
    private String arch;
    private String filter;
    private long downloadSize;
    private long installSize;

    protected void reset() {
        super.reset();
        this.os = null;
        this.ws = null;
        this.nl = null;
        this.arch = null;
        this.downloadSize = 0L;
        this.installSize = 0L;
    }

    public boolean exists() {
        String location = this.getModel().getInstallLocation();
        if (location.startsWith("file:")) {
            location = location.substring(5);
        }
        File file = new File(String.valueOf(location) + File.separator + this.getId());
        return file.exists();
    }

    protected void parse(Node node) {
        super.parse(node);
        this.os = this.getNodeAttribute(node, "os");
        this.ws = this.getNodeAttribute(node, "ws");
        this.nl = this.getNodeAttribute(node, "nl");
        this.arch = this.getNodeAttribute(node, "arch");
        this.filter = this.getNodeAttribute(node, "filter");
        this.downloadSize = this.getIntegerAttribute(node, "download-size");
        this.installSize = this.getIntegerAttribute(node, "install-size");
    }

    protected void writeAttributes(String indent2, PrintWriter writer) {
        this.writeAttribute("id", this.getId(), indent2, writer);
        this.writeAttribute("os", this.getOS(), indent2, writer);
        this.writeAttribute("ws", this.getWS(), indent2, writer);
        this.writeAttribute("nl", this.getNL(), indent2, writer);
        this.writeAttribute("arch", this.getArch(), indent2, writer);
        this.writeAttribute("filter", this.getFilter(), indent2, writer);
        writer.println();
        writer.print(String.valueOf(indent2) + "download-size=\"" + this.getDownloadSize() + "\"");
        writer.println();
        writer.print(String.valueOf(indent2) + "install-size=\"" + this.getInstallSize() + "\"");
    }

    private void writeAttribute(String attribute, String value, String indent2, PrintWriter writer) {
        if (value != null && value.length() > 0) {
            writer.println();
            writer.print(indent2);
            writer.print(attribute);
            writer.print("=\"");
            writer.print(value);
            writer.print("\"");
        }
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(String.valueOf(indent) + "<data");
        String indent2 = String.valueOf(indent) + "   " + "   ";
        this.writeAttributes(indent2, writer);
        writer.println("/>");
    }

    public String getOS() {
        return this.os;
    }

    public void setOS(String os) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.os;
        this.os = os;
        this.firePropertyChanged("p_os", oldValue, os);
    }

    public String getWS() {
        return this.ws;
    }

    public void setWS(String ws) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.ws;
        this.ws = ws;
        this.firePropertyChanged("p_ws", oldValue, ws);
    }

    public String getNL() {
        return this.nl;
    }

    public void setNL(String nl) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.nl;
        this.nl = nl;
        this.firePropertyChanged("p_nl", oldValue, nl);
    }

    public String getArch() {
        return this.arch;
    }

    public void setArch(String arch) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.arch;
        this.arch = arch;
        this.firePropertyChanged("p_arch", oldValue, arch);
    }

    public String getFilter() {
        return this.filter;
    }

    public void setFilter(String filter) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.filter;
        this.filter = filter;
        this.firePropertyChanged("p_filter", oldValue, filter);
    }

    public long getDownloadSize() {
        return this.downloadSize;
    }

    public void setDownloadSize(long downloadSize) throws CoreException {
        this.ensureModelEditable();
        Long oldValue = new Long(this.downloadSize);
        this.downloadSize = downloadSize;
        this.firePropertyChanged("p_download_size", oldValue, new Long(downloadSize));
    }

    public long getInstallSize() {
        return this.installSize;
    }

    public void setInstallSize(long installSize) throws CoreException {
        this.ensureModelEditable();
        Long oldValue = new Long(this.installSize);
        this.installSize = installSize;
        this.firePropertyChanged("p_install_size", oldValue, new Long(installSize));
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("p_os")) {
            this.setOS((String)newValue);
        } else if (name.equals("p_ws")) {
            this.setWS((String)newValue);
        } else if (name.equals("p_nl")) {
            this.setNL((String)newValue);
        } else if (name.equals("p_arch")) {
            this.setArch((String)newValue);
        } else if (name.equals("p_download_size")) {
            this.setDownloadSize(newValue != null ? (Integer)newValue : 0);
        } else if (name.equals("p_install_size")) {
            this.setInstallSize(newValue != null ? (Integer)newValue : 0);
        } else {
            super.restoreProperty(name, oldValue, newValue);
        }
    }

    public String getLabel() {
        return this.getId();
    }

    public String toString() {
        return this.getLabel();
    }
}

