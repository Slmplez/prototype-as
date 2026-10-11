/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.pde.internal.core.site;

import java.io.PrintWriter;
import java.util.Vector;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.pde.internal.core.isite.ISiteCategory;
import org.eclipse.pde.internal.core.isite.ISiteFeature;
import org.eclipse.pde.internal.core.site.SiteCategory;
import org.eclipse.pde.internal.core.site.VersionableObject;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class SiteFeature
extends VersionableObject
implements ISiteFeature {
    private static final long serialVersionUID = 1L;
    private Vector fCategories = new Vector();
    private String fType;
    private String fUrl;
    private String fOS;
    private String fWS;
    private String fArch;
    private String fNL;
    private boolean fIsPatch;

    public boolean isValid() {
        if (this.fUrl == null) {
            return false;
        }
        int i = 0;
        while (i < this.fCategories.size()) {
            ISiteCategory category = (ISiteCategory)this.fCategories.get(i);
            if (!category.isValid()) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public void addCategories(ISiteCategory[] newCategories) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < newCategories.length) {
            ISiteCategory category = newCategories[i];
            ((SiteCategory)category).setInTheModel(true);
            this.fCategories.add(newCategories[i]);
            ++i;
        }
        this.fireStructureChanged(newCategories, 1);
    }

    public void removeCategories(ISiteCategory[] newCategories) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < newCategories.length) {
            ISiteCategory category = newCategories[i];
            ((SiteCategory)category).setInTheModel(false);
            this.fCategories.remove(newCategories[i]);
            ++i;
        }
        this.fireStructureChanged(newCategories, 2);
    }

    public ISiteCategory[] getCategories() {
        return this.fCategories.toArray(new ISiteCategory[this.fCategories.size()]);
    }

    public String getType() {
        return this.fType;
    }

    public String getURL() {
        return this.fUrl;
    }

    public void setType(String type) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fType;
        this.fType = type;
        this.firePropertyChanged("type", oldValue, this.fType);
    }

    public void setURL(String url) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fUrl;
        this.fUrl = url;
        this.firePropertyChanged("type", oldValue, url);
    }

    protected void parse(Node node) {
        super.parse(node);
        this.fType = this.getNodeAttribute(node, "type");
        this.fUrl = this.getNodeAttribute(node, "url");
        this.fOS = this.getNodeAttribute(node, "os");
        this.fNL = this.getNodeAttribute(node, "nl");
        this.fWS = this.getNodeAttribute(node, "ws");
        this.fArch = this.getNodeAttribute(node, "arch");
        String value = this.getNodeAttribute(node, "patch");
        this.fIsPatch = value != null && value.equals("true");
        NodeList children = node.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1 && child.getNodeName().equalsIgnoreCase("category")) {
                SiteCategory category = (SiteCategory)this.getModel().getFactory().createCategory(this);
                category.parse(child);
                category.setInTheModel(true);
                this.fCategories.add(category);
            }
            ++i;
        }
    }

    protected void reset() {
        super.reset();
        this.fType = null;
        this.fUrl = null;
        this.fOS = null;
        this.fWS = null;
        this.fArch = null;
        this.fNL = null;
        this.fIsPatch = false;
        this.fCategories.clear();
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("type")) {
            this.setType(newValue != null ? newValue.toString() : null);
        } else if (name.equals("url")) {
            this.setURL(newValue != null ? newValue.toString() : null);
        } else if (name.equals("arch")) {
            this.setArch(newValue != null ? newValue.toString() : null);
        } else if (name.equals("nl")) {
            this.setNL(newValue != null ? newValue.toString() : null);
        } else if (name.equals("os")) {
            this.setOS(newValue != null ? newValue.toString() : null);
        } else if (name.equals("ws")) {
            this.setWS(newValue != null ? newValue.toString() : null);
        } else if (name.equals("patch")) {
            this.setIsPatch((Boolean)newValue);
        } else {
            super.restoreProperty(name, oldValue, newValue);
        }
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(indent);
        writer.print("<feature");
        if (this.fType != null) {
            writer.print(" type=\"" + this.fType + "\"");
        }
        if (this.fUrl != null) {
            writer.print(" url=\"" + this.fUrl + "\"");
        }
        if (this.id != null) {
            writer.print(" id=\"" + this.getId() + "\"");
        }
        if (this.version != null) {
            writer.print(" version=\"" + this.getVersion() + "\"");
        }
        if (this.label != null) {
            writer.print(" label=\"" + this.getLabel() + "\"");
        }
        if (this.fOS != null) {
            writer.print(" os=\"" + this.fOS + "\"");
        }
        if (this.fWS != null) {
            writer.print(" ws=\"" + this.fWS + "\"");
        }
        if (this.fNL != null) {
            writer.print(" nl=\"" + this.fNL + "\"");
        }
        if (this.fArch != null) {
            writer.print(" arch=\"" + this.fArch + "\"");
        }
        if (this.fIsPatch) {
            writer.print(" patch=\"true\"");
        }
        if (this.fCategories.size() > 0) {
            writer.println(">");
            String indent2 = String.valueOf(indent) + "   ";
            int i = 0;
            while (i < this.fCategories.size()) {
                ISiteCategory category = (ISiteCategory)this.fCategories.get(i);
                category.write(indent2, writer);
                ++i;
            }
            writer.println(String.valueOf(indent) + "</feature>");
        } else {
            writer.println("/>");
        }
    }

    public IFile getArchiveFile() {
        if (this.fUrl == null) {
            return null;
        }
        IResource resource = this.getModel().getUnderlyingResource();
        if (resource == null) {
            return null;
        }
        IProject project = resource.getProject();
        IFile file = project.getFile((IPath)new Path(this.fUrl));
        if (file.exists()) {
            return file;
        }
        return null;
    }

    public String getOS() {
        return this.fOS;
    }

    public String getNL() {
        return this.fNL;
    }

    public String getArch() {
        return this.fArch;
    }

    public String getWS() {
        return this.fWS;
    }

    public void setOS(String os) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fOS;
        this.fOS = os;
        this.firePropertyChanged("os", oldValue, this.fOS);
    }

    public void setWS(String ws) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fWS;
        this.fWS = ws;
        this.firePropertyChanged("ws", oldValue, this.fWS);
    }

    public void setArch(String arch) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fArch;
        this.fArch = arch;
        this.firePropertyChanged("arch", oldValue, this.fArch);
    }

    public void setNL(String nl) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fNL;
        this.fNL = nl;
        this.firePropertyChanged("nl", oldValue, this.fNL);
    }

    public boolean isPatch() {
        return this.fIsPatch;
    }

    public void setIsPatch(boolean patch) throws CoreException {
        this.ensureModelEditable();
        Boolean oldValue = new Boolean(this.fIsPatch);
        this.fIsPatch = patch;
        this.firePropertyChanged("patch", oldValue, new Boolean(this.fIsPatch));
    }
}

