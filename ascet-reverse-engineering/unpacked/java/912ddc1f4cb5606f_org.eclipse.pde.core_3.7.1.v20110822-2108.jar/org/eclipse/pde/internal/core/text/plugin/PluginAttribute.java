/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.text.plugin;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginAttribute;
import org.eclipse.pde.internal.core.text.DocumentAttributeNode;
import org.eclipse.pde.internal.core.text.IDocumentAttributeNode;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.plugin.PluginObjectNode;

public class PluginAttribute
extends PluginObjectNode
implements IPluginAttribute,
IDocumentAttributeNode {
    private static final long serialVersionUID = 1L;
    private DocumentAttributeNode fAttribute = new DocumentAttributeNode();
    private String fValue = null;

    public String getValue() {
        return this.fValue;
    }

    public void setValue(String value) throws CoreException {
        this.fValue = value;
    }

    public void setEnclosingElement(IDocumentElementNode node) {
        this.fAttribute.setEnclosingElement(node);
    }

    public IDocumentElementNode getEnclosingElement() {
        return this.fAttribute.getEnclosingElement();
    }

    public void setNameOffset(int offset) {
        this.fAttribute.setNameOffset(offset);
    }

    public int getNameOffset() {
        return this.fAttribute.getNameOffset();
    }

    public void setNameLength(int length) {
        this.fAttribute.setNameLength(length);
    }

    public int getNameLength() {
        return this.fAttribute.getNameLength();
    }

    public void setValueOffset(int offset) {
        this.fAttribute.setValueOffset(offset);
    }

    public int getValueOffset() {
        return this.fAttribute.getValueOffset();
    }

    public void setValueLength(int length) {
        this.fAttribute.setValueLength(length);
    }

    public int getValueLength() {
        return this.fAttribute.getValueLength();
    }

    public String getAttributeName() {
        return this.getName();
    }

    public String getAttributeValue() {
        return this.getValue();
    }

    public String write() {
        return String.valueOf(this.getName()) + "=\"" + this.getWritableString(this.getValue()) + "\"";
    }

    public String getWritableString(String source) {
        return super.getWritableString(source).replaceAll("\\r", "&#x0D;").replaceAll("\\n", "&#x0A;");
    }

    public void setAttributeName(String name) throws CoreException {
        this.setName(name);
    }

    public void setAttributeValue(String value) throws CoreException {
        this.setValue(value);
    }

    public void reconnect(IDocumentElementNode parent) {
        super.reconnect(parent, this.getModel());
        this.fAttribute.reconnect(parent);
    }

    public void write(String indent, PrintWriter writer) {
        writer.write(this.write());
    }
}

