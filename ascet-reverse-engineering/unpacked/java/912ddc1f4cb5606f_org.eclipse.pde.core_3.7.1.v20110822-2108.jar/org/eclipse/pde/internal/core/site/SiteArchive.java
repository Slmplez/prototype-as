/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.site;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.isite.ISiteArchive;
import org.eclipse.pde.internal.core.site.SiteObject;
import org.w3c.dom.Node;

public class SiteArchive
extends SiteObject
implements ISiteArchive {
    private static final long serialVersionUID = 1L;
    private String url;
    private String path;

    public boolean isValid() {
        return this.url != null && this.path != null;
    }

    public String getURL() {
        return this.url;
    }

    public void setURL(String url) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.url;
        this.url = url;
        this.firePropertyChanged("url", oldValue, url);
    }

    public String getPath() {
        return this.path;
    }

    public void setPath(String path) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.path;
        this.path = path;
        this.firePropertyChanged("path", oldValue, path);
    }

    public void reset() {
        super.reset();
        this.url = null;
        this.path = null;
    }

    protected void parse(Node node) {
        super.parse(node);
        this.path = this.getNodeAttribute(node, "path");
        this.url = this.getNodeAttribute(node, "url");
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(indent);
        writer.print("<archive");
        if (this.path != null) {
            writer.print(" path=\"" + SiteObject.getWritableString(this.path) + "\"");
        }
        if (this.url != null) {
            writer.print(" url=\"" + SiteObject.getWritableString(this.url) + "\"");
        }
        writer.println("/>");
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("path")) {
            this.setPath(newValue != null ? newValue.toString() : null);
        } else if (name.equals("url")) {
            this.setURL(newValue != null ? newValue.toString() : null);
        } else {
            super.restoreProperty(name, oldValue, newValue);
        }
    }
}

