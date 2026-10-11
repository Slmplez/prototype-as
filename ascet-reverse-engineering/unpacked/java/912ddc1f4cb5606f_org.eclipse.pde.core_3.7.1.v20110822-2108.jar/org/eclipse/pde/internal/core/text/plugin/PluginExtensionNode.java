/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.text.plugin;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.schema.SchemaRegistry;
import org.eclipse.pde.internal.core.text.IDocumentAttributeNode;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.plugin.PluginParentNode;

public class PluginExtensionNode
extends PluginParentNode
implements IPluginExtension {
    private static final long serialVersionUID = 1L;
    private transient ISchema fSchema;

    public String getPoint() {
        return this.getXMLAttributeValue("point");
    }

    public void setPoint(String point) throws CoreException {
        this.setXMLAttribute("point", point);
    }

    public void setName(String name) throws CoreException {
        this.setXMLAttribute("name", name);
    }

    public String getName() {
        return this.getXMLAttributeValue("name");
    }

    public String getTranslatedName() {
        String name = this.getName();
        if (name != null && name.trim().length() > 0) {
            return this.getResourceString(name);
        }
        String point = this.getPoint();
        ISchema schema = PDECore.getDefault().getSchemaRegistry().getSchema(point);
        return schema == null ? "" : schema.getName();
    }

    public String getId() {
        return this.getXMLAttributeValue("id");
    }

    public void setId(String id) throws CoreException {
        this.setXMLAttribute("id", id);
    }

    public String write(boolean indent) {
        String sep = this.getLineDelimiter();
        StringBuffer buffer = new StringBuffer();
        if (indent) {
            buffer.append(this.getIndent());
        }
        buffer.append(this.writeShallow(false));
        IDocumentElementNode[] children = this.getChildNodes();
        int i = 0;
        while (i < children.length) {
            children[i].setLineIndent(this.getLineIndent() + 3);
            buffer.append(String.valueOf(sep) + children[i].write(true));
            ++i;
        }
        buffer.append(String.valueOf(sep) + this.getIndent() + "</extension>");
        return buffer.toString();
    }

    public void write(String indent, PrintWriter writer) {
        writer.write(this.write(true));
    }

    public String writeShallow(boolean terminate) {
        String sep = this.getLineDelimiter();
        String attrIndent = "      ";
        StringBuffer buffer = new StringBuffer("<extension");
        IDocumentAttributeNode attr = this.getDocumentAttribute("id");
        if (attr != null && attr.getAttributeValue().trim().length() > 0) {
            buffer.append(String.valueOf(sep) + this.getIndent() + attrIndent + attr.write());
        }
        if ((attr = this.getDocumentAttribute("name")) != null && attr.getAttributeValue().trim().length() > 0) {
            buffer.append(String.valueOf(sep) + this.getIndent() + attrIndent + attr.write());
        }
        if ((attr = this.getDocumentAttribute("point")) != null && attr.getAttributeValue().trim().length() > 0) {
            buffer.append(String.valueOf(sep) + this.getIndent() + attrIndent + attr.write());
        }
        if (terminate) {
            buffer.append("/");
        }
        buffer.append(">");
        return buffer.toString();
    }

    public Object getSchema() {
        if (this.fSchema == null) {
            SchemaRegistry registry = PDECore.getDefault().getSchemaRegistry();
            this.fSchema = registry.getSchema(this.getPoint());
        } else if (this.fSchema.isDisposed()) {
            this.fSchema = null;
        }
        return this.fSchema;
    }

    public void reconnect(IDocumentElementNode parent, IModel model) {
        super.reconnect(parent, model);
        this.fSchema = null;
    }
}

