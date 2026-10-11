/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.site;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.isite.ISiteCategoryDefinition;
import org.eclipse.pde.internal.core.isite.ISiteDescription;
import org.eclipse.pde.internal.core.site.SiteDescription;
import org.eclipse.pde.internal.core.site.SiteObject;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class SiteCategoryDefinition
extends SiteObject
implements ISiteCategoryDefinition {
    private static final long serialVersionUID = 1L;
    private String name;
    private ISiteDescription description;

    public String getName() {
        return this.name;
    }

    public boolean isValid() {
        return this.name != null && this.getLabel() != null;
    }

    public void setName(String name) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.name;
        this.name = name;
        this.firePropertyChanged("name", oldValue, name);
    }

    public ISiteDescription getDescription() {
        return this.description;
    }

    public void setDescription(ISiteDescription description) throws CoreException {
        this.ensureModelEditable();
        ISiteDescription oldValue = this.description;
        this.description = description;
        this.firePropertyChanged("description", oldValue, description);
    }

    protected void reset() {
        super.reset();
        this.name = null;
        this.description = null;
    }

    protected void parse(Node node) {
        super.parse(node);
        this.name = this.getNodeAttribute(node, "name");
        NodeList children = node.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1 && child.getNodeName().equalsIgnoreCase("description")) {
                this.description = this.getModel().getFactory().createDescription(this);
                ((SiteDescription)this.description).parse(child);
                ((SiteDescription)this.description).setInTheModel(true);
                break;
            }
            ++i;
        }
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("name")) {
            this.setName(newValue != null ? newValue.toString() : null);
        } else if (name.equals("description") && newValue instanceof ISiteDescription) {
            this.setDescription((ISiteDescription)newValue);
        } else {
            super.restoreProperty(name, oldValue, newValue);
        }
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(indent);
        writer.print("<category-def");
        if (this.name != null) {
            writer.print(" name=\"" + SiteObject.getWritableString(this.name) + "\"");
        }
        if (this.label != null) {
            writer.print(" label=\"" + SiteObject.getWritableString(this.label) + "\"");
        }
        if (this.description != null) {
            writer.println(">");
            this.description.write(String.valueOf(indent) + "   ", writer);
            writer.println(String.valueOf(indent) + "</category-def>");
        } else {
            writer.println("/>");
        }
    }
}

