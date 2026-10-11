/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.site;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.isite.ISiteDescription;
import org.eclipse.pde.internal.core.site.SiteObject;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class SiteDescription
extends SiteObject
implements ISiteDescription {
    private static final long serialVersionUID = 1L;
    private String name;
    private String url;
    private String text;

    public String getName() {
        return this.name;
    }

    public String getURL() {
        return this.url;
    }

    public String getText() {
        return this.text;
    }

    public void setName(String name) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.name;
        this.name = name;
        this.firePropertyChanged("url", oldValue, name);
    }

    public void setURL(String url) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.url;
        this.url = url;
        this.firePropertyChanged("url", oldValue, url);
    }

    public void setText(String text) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.text;
        this.text = text;
        this.firePropertyChanged("text", oldValue, text);
    }

    protected void reset() {
        this.name = null;
        this.url = null;
        this.text = null;
    }

    protected void parse(Node node) {
        this.name = this.getNodeAttribute(node, "name");
        this.url = this.getNodeAttribute(node, "url");
        NodeList children = node.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 3) {
                Node firstChild = node.getFirstChild();
                if (firstChild == null) break;
                this.text = this.getNormalizedText(firstChild.getNodeValue());
                break;
            }
            ++i;
        }
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("name")) {
            this.setName(newValue != null ? newValue.toString() : null);
        } else if (name.equals("url")) {
            this.setURL(newValue != null ? newValue.toString() : null);
        } else if (name.equals("text")) {
            this.setText(newValue != null ? newValue.toString() : null);
        } else {
            super.restoreProperty(name, oldValue, newValue);
        }
    }

    public void write(String indent, PrintWriter writer) {
        if (!(this.name != null && this.name.length() > 0 || this.url != null && this.url.length() > 0 || this.text != null && this.text.trim().length() > 0)) {
            return;
        }
        writer.print(indent);
        writer.print("<description");
        if (this.name != null && this.name.length() > 0) {
            writer.print(" name=\"" + SiteObject.getWritableString(this.name) + "\"");
        }
        if (this.url != null && this.url.length() > 0) {
            writer.print(" url=\"" + SiteObject.getWritableString(this.url) + "\"");
        }
        writer.println(">");
        if (this.text != null) {
            writer.println(String.valueOf(indent) + "   " + SiteObject.getWritableString(this.getNormalizedText(this.text)));
        }
        writer.println(String.valueOf(indent) + "</description>");
    }

    public boolean isValid() {
        return true;
    }
}

