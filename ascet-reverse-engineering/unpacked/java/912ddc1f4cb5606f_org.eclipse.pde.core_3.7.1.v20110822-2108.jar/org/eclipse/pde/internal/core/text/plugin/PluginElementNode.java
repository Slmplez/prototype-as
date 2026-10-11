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
import org.eclipse.pde.core.plugin.IPluginAttribute;
import org.eclipse.pde.core.plugin.IPluginElement;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaElement;
import org.eclipse.pde.internal.core.text.DocumentTextNode;
import org.eclipse.pde.internal.core.text.IDocumentAttributeNode;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.IDocumentTextNode;
import org.eclipse.pde.internal.core.text.plugin.PluginParentNode;

public class PluginElementNode
extends PluginParentNode
implements IPluginElement {
    private static final long serialVersionUID = 1L;
    private transient ISchemaElement elementInfo;

    public IPluginElement createCopy() {
        return null;
    }

    public IPluginAttribute getAttribute(String name) {
        return (IPluginAttribute)this.getNodeAttributesMap().get(name);
    }

    public IPluginAttribute[] getAttributes() {
        return this.getNodeAttributesMap().values().toArray(new IPluginAttribute[this.getNodeAttributesMap().size()]);
    }

    public int getAttributeCount() {
        return this.getNodeAttributesMap().size();
    }

    public String getText() {
        IDocumentTextNode node = this.getTextNode();
        return node == null ? "" : node.getText();
    }

    public void setAttribute(String name, String value) throws CoreException {
        this.setXMLAttribute(name, value);
    }

    public void setText(String text) throws CoreException {
        String oldText;
        IDocumentTextNode node = this.getTextNode();
        String string = oldText = node == null ? null : node.getText();
        if (node == null) {
            node = new DocumentTextNode();
            node.setEnclosingElement(this);
            this.addTextNode(node);
        }
        node.setText(text.trim());
        this.firePropertyChanged(node, "text", oldText, text);
    }

    public String write(boolean indent) {
        String sep = this.getLineDelimiter();
        StringBuffer buffer = new StringBuffer();
        if (indent) {
            buffer.append(this.getIndent());
        }
        IDocumentElementNode[] children = this.getChildNodes();
        String text = this.getText();
        buffer.append(this.writeShallow(false));
        if (this.getAttributeCount() > 0 || children.length > 0 || text.length() > 0) {
            buffer.append(sep);
        }
        if (children.length > 0 || text.length() > 0) {
            if (text.length() > 0) {
                buffer.append(this.getIndent());
                buffer.append("   ");
                buffer.append(text);
                buffer.append(sep);
            }
            int i = 0;
            while (i < children.length) {
                children[i].setLineIndent(this.getLineIndent() + 3);
                buffer.append(children[i].write(true));
                buffer.append(sep);
                ++i;
            }
        }
        if (this.getAttributeCount() > 0 || children.length > 0 || text.length() > 0) {
            buffer.append(this.getIndent());
        }
        buffer.append("</" + this.getXMLTagName() + ">");
        return buffer.toString();
    }

    public String writeShallow(boolean terminate) {
        String sep = this.getLineDelimiter();
        StringBuffer buffer = new StringBuffer("<" + this.getXMLTagName());
        IDocumentAttributeNode[] attrs = this.getNodeAttributes();
        int i = 0;
        while (i < attrs.length) {
            if (attrs[i].getAttributeValue().length() > 0) {
                buffer.append(String.valueOf(sep) + this.getIndent() + "      " + attrs[i].write());
            }
            ++i;
        }
        if (terminate) {
            buffer.append("/");
        }
        buffer.append(">");
        return buffer.toString();
    }

    public String getName() {
        return this.getXMLTagName();
    }

    public void setName(String name) throws CoreException {
        this.setXMLTagName(name);
    }

    public Object getElementInfo() {
        if (this.elementInfo == null) {
            IPluginExtension extension;
            ISchema schema;
            IDocumentElementNode node;
            for (node = this.getParentNode(); node != null && !(node instanceof IPluginExtension); node = node.getParentNode()) {
            }
            if (node != null && (schema = (ISchema)(extension = (IPluginExtension)((Object)node)).getSchema()) != null) {
                this.elementInfo = schema.findElement(this.getName());
            }
        }
        return this.elementInfo;
    }

    public void reconnect(IDocumentElementNode parent, IModel model) {
        super.reconnect(parent, model);
        this.elementInfo = null;
    }

    public void write(String indent, PrintWriter writer) {
        writer.write(this.write(true));
    }
}

