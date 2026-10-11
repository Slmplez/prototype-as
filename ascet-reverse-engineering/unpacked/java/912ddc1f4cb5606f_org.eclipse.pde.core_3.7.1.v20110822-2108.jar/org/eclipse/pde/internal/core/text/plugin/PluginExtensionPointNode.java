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
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.plugin.PluginObjectNode;

public class PluginExtensionPointNode
extends PluginObjectNode
implements IPluginExtensionPoint {
    private static final long serialVersionUID = 1L;

    public String getFullId() {
        String id = this.getId();
        String version = this.getPluginBase().getSchemaVersion();
        if (version != null && Double.parseDouble(version) >= 3.2 && id != null && id.indexOf(46) != -1) {
            return id;
        }
        String pluginID = this.getPluginBase().getId();
        return pluginID != null ? String.valueOf(pluginID) + "." + id : id;
    }

    public String getSchema() {
        return this.getXMLAttributeValue("schema");
    }

    public void setSchema(String schema) throws CoreException {
        this.setXMLAttribute("schema", schema);
    }

    public String getId() {
        return this.getXMLAttributeValue("id");
    }

    public void setId(String id) throws CoreException {
        this.setXMLAttribute("id", id);
    }

    public void setName(String name) throws CoreException {
        this.setXMLAttribute("name", name);
    }

    public String getName() {
        return this.getXMLAttributeValue("name");
    }

    public String write(boolean indent) {
        return indent ? String.valueOf(this.getIndent()) + this.writeShallow(true) : this.writeShallow(true);
    }

    public String writeShallow(boolean terminate) {
        StringBuffer buffer = new StringBuffer("<extension-point");
        this.appendAttribute(buffer, "id");
        this.appendAttribute(buffer, "name");
        this.appendAttribute(buffer, "schema");
        if (terminate) {
            buffer.append("/");
        }
        buffer.append(">");
        return buffer.toString();
    }

    public void reconnect(IDocumentElementNode parent, IModel model) {
        super.reconnect(parent, model);
    }

    public void write(String indent, PrintWriter writer) {
        writer.write(this.write(true));
    }

    public void writeDelimeter(PrintWriter writer) {
        writer.println(this.getIndent());
    }
}

