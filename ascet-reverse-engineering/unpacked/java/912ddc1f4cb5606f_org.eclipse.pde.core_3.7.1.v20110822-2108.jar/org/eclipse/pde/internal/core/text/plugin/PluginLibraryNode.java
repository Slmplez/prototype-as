/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.text.plugin;

import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.internal.core.text.IDocumentAttributeNode;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.plugin.PluginElementNode;
import org.eclipse.pde.internal.core.text.plugin.PluginObjectNode;

public class PluginLibraryNode
extends PluginObjectNode
implements IPluginLibrary {
    private static final long serialVersionUID = 1L;

    public String[] getContentFilters() {
        IDocumentElementNode[] children = this.getChildNodes();
        ArrayList<String> result = new ArrayList<String>();
        int i = 0;
        while (i < children.length) {
            String name;
            PluginObjectNode node = (PluginObjectNode)children[i];
            if (node.getName().equals("export") && (name = children[i].getXMLAttributeValue("name")) != null && !name.equals("*")) {
                int index = name.indexOf(".*");
                if (index != -1) {
                    name = name.substring(0, index);
                }
                result.add(name);
            }
            ++i;
        }
        return result.toArray(new String[result.size()]);
    }

    public String[] getPackages() {
        return new String[0];
    }

    public boolean isExported() {
        IDocumentElementNode[] children = this.getChildNodes();
        int i = 0;
        while (i < children.length) {
            PluginObjectNode node = (PluginObjectNode)children[i];
            if (node.getName().equals("export")) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean isFullyExported() {
        IDocumentElementNode[] children = this.getChildNodes();
        int i = 0;
        while (i < children.length) {
            String name;
            PluginObjectNode node = (PluginObjectNode)children[i];
            if (node.getName().equals("export") && (name = children[i].getXMLAttributeValue("name")) != null && name.equals("*")) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public String getType() {
        String type = this.getXMLAttributeValue("type");
        return type != null && type.equals("resource") ? "resource" : "code";
    }

    public void setContentFilters(String[] filters) throws CoreException {
    }

    public void addContentFilter(String filter) throws CoreException {
        PluginElementNode node = new PluginElementNode();
        node.setXMLTagName("export");
        node.setParentNode(this);
        node.setModel(this.getModel());
        node.setXMLAttribute("name", "*".equals(filter) || filter.endsWith(".*") ? filter : String.valueOf(filter) + ".*");
        this.addContentFilter(node);
    }

    public void addContentFilter(PluginElementNode node) {
        this.addChildNode(node);
        if (this.isInTheModel()) {
            node.setInTheModel(true);
            this.fireStructureChanged(node, 1);
        }
    }

    public void removeContentFilter(String filter) throws CoreException {
        if (!filter.endsWith(".*")) {
            filter = String.valueOf(filter) + ".*";
        }
        IDocumentElementNode[] children = this.getChildNodes();
        int i = 0;
        while (i < children.length) {
            if (children[i].getXMLTagName().equals("export") && filter.equals(children[i].getXMLAttributeValue("name"))) {
                this.removeContentFilter((PluginElementNode)children[i]);
            }
            ++i;
        }
    }

    public void removeContentFilter(PluginElementNode node) {
        this.removeChildNode(node);
        if (this.isInTheModel()) {
            node.setInTheModel(false);
            this.fireStructureChanged(node, 2);
        }
    }

    public void setPackages(String[] packages) throws CoreException {
    }

    public void setExported(boolean exported) throws CoreException {
        IDocumentElementNode[] children = this.getChildNodes();
        boolean alreadyExported = false;
        int i = 0;
        while (i < children.length) {
            if (children[i].getXMLTagName().equals("export")) {
                if (!"*".equals(children[i].getXMLAttributeValue("name"))) {
                    this.removeContentFilter((PluginElementNode)children[i]);
                } else {
                    alreadyExported = true;
                    if (!exported) {
                        this.removeContentFilter((PluginElementNode)children[i]);
                    }
                }
            }
            ++i;
        }
        if (exported && !alreadyExported) {
            this.addContentFilter("*");
        }
    }

    public void setType(String type) throws CoreException {
    }

    public String getName() {
        return this.getXMLAttributeValue("name");
    }

    public void setName(String name) throws CoreException {
        this.setXMLAttribute("name", name);
    }

    public String write(boolean indent) {
        IDocumentElementNode[] children;
        String sep = this.getLineDelimiter();
        StringBuffer buffer = new StringBuffer();
        if (indent) {
            buffer.append(this.getIndent());
        }
        if ((children = this.getChildNodes()).length > 0) {
            buffer.append(String.valueOf(this.writeShallow(false)) + sep);
            int i = 0;
            while (i < children.length) {
                children[i].setLineIndent(this.getLineIndent() + 3);
                buffer.append(String.valueOf(children[i].write(true)) + sep);
                ++i;
            }
            buffer.append(String.valueOf(this.getIndent()) + "</" + this.getXMLTagName() + ">");
        } else {
            buffer.append(this.writeShallow(true));
        }
        return buffer.toString();
    }

    public String writeShallow(boolean terminate) {
        StringBuffer buffer = new StringBuffer("<" + this.getXMLTagName());
        IDocumentAttributeNode[] attrs = this.getNodeAttributes();
        int i = 0;
        while (i < attrs.length) {
            this.appendAttribute(buffer, attrs[i].getAttributeName());
            ++i;
        }
        if (terminate) {
            buffer.append("/");
        }
        buffer.append(">");
        return buffer.toString();
    }

    public String toString() {
        return this.getName();
    }
}

