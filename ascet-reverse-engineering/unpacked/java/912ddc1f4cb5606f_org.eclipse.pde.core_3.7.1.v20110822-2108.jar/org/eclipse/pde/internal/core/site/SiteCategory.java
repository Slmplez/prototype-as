/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.site;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.isite.ISite;
import org.eclipse.pde.internal.core.isite.ISiteCategory;
import org.eclipse.pde.internal.core.isite.ISiteCategoryDefinition;
import org.eclipse.pde.internal.core.site.SiteObject;
import org.w3c.dom.Node;

public class SiteCategory
extends SiteObject
implements ISiteCategory {
    private static final long serialVersionUID = 1L;
    private String name;

    public String getName() {
        return this.name;
    }

    public boolean isValid() {
        return this.name != null;
    }

    protected void parse(Node node) {
        this.name = this.getNodeAttribute(node, "name");
    }

    protected void reset() {
        this.name = null;
    }

    public void setName(String name) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.name;
        this.name = name;
        this.firePropertyChanged("name", oldValue, name);
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(indent);
        writer.print("<category");
        if (this.name != null) {
            writer.print(" name=\"" + SiteObject.getWritableString(this.name) + "\"");
        }
        writer.println("/>");
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("name")) {
            this.setName(newValue != null ? newValue.toString() : null);
        } else {
            super.restoreProperty(name, oldValue, newValue);
        }
    }

    public ISiteCategoryDefinition getDefinition() {
        ISite site = this.getSite();
        ISiteCategoryDefinition[] definitions = site.getCategoryDefinitions();
        int i = 0;
        while (i < definitions.length) {
            ISiteCategoryDefinition def = definitions[i];
            if (def.getName().equals(this.getName())) {
                return def;
            }
            ++i;
        }
        return null;
    }
}

