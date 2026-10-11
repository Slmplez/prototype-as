/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.text.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.internal.core.text.plugin.PluginAttribute;
import org.eclipse.pde.internal.core.text.plugin.PluginObjectNode;

public class PluginImportNode
extends PluginObjectNode
implements IPluginImport {
    private static final long serialVersionUID = 1L;

    public PluginImportNode(String id) {
        String name = "plugin";
        try {
            if (id == null) {
                id = "";
            }
            PluginAttribute attr = new PluginAttribute();
            attr.setName(name);
            attr.setEnclosingElement(this);
            this.getNodeAttributesMap().put(name, attr);
            attr.setValue(id);
        }
        catch (CoreException coreException) {}
    }

    public PluginImportNode() {
    }

    public boolean isReexported() {
        String value = this.getXMLAttributeValue("export");
        return value != null && value.equals("true");
    }

    public boolean isOptional() {
        String value = this.getXMLAttributeValue("optional");
        return value != null && value.equals("true");
    }

    public void setReexported(boolean value) throws CoreException {
        this.setXMLAttribute("export", value ? "true" : "false");
    }

    public void setOptional(boolean value) throws CoreException {
        this.setXMLAttribute("optional", value ? "true" : "false");
    }

    public int getMatch() {
        String match = this.getXMLAttributeValue("match");
        if (match == null || match.trim().length() == 0) {
            return 0;
        }
        if (match.equals("compatible")) {
            return 2;
        }
        if (match.equals("perfect")) {
            return 3;
        }
        if (match.equals("equivalent")) {
            return 1;
        }
        return 4;
    }

    public String getVersion() {
        return this.getXMLAttributeValue("version");
    }

    public void setMatch(int match) throws CoreException {
        switch (match) {
            case 4: {
                this.setXMLAttribute("match", "greaterOrEqual");
                break;
            }
            case 1: {
                this.setXMLAttribute("match", "equivalent");
                break;
            }
            case 2: {
                this.setXMLAttribute("match", "compatible");
                break;
            }
            case 3: {
                this.setXMLAttribute("match", "perfect");
                break;
            }
            default: {
                this.setXMLAttribute("match", null);
            }
        }
    }

    public void setVersion(String version) throws CoreException {
        this.setXMLAttribute("version", version);
    }

    public String getId() {
        return this.getXMLAttributeValue("plugin");
    }

    public void setId(String id) throws CoreException {
        this.setXMLAttribute("plugin", id);
    }

    public String write(boolean indent) {
        return indent ? String.valueOf(this.getIndent()) + this.writeShallow(true) : this.writeShallow(true);
    }

    public String writeShallow(boolean terminate) {
        StringBuffer buffer = new StringBuffer("<import");
        this.appendAttribute(buffer, "plugin");
        this.appendAttribute(buffer, "version");
        this.appendAttribute(buffer, "match");
        this.appendAttribute(buffer, "export", "false");
        this.appendAttribute(buffer, "optional", "false");
        if (terminate) {
            buffer.append("/");
        }
        buffer.append(">");
        return buffer.toString();
    }
}

