/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.text.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginAttribute;
import org.eclipse.pde.core.plugin.IPluginElement;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelFactory;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.internal.core.text.DocumentTextNode;
import org.eclipse.pde.internal.core.text.IDocumentAttributeNode;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.IDocumentNodeFactory;
import org.eclipse.pde.internal.core.text.IDocumentTextNode;
import org.eclipse.pde.internal.core.text.plugin.PluginAttribute;
import org.eclipse.pde.internal.core.text.plugin.PluginBaseNode;
import org.eclipse.pde.internal.core.text.plugin.PluginElementNode;
import org.eclipse.pde.internal.core.text.plugin.PluginExtensionNode;
import org.eclipse.pde.internal.core.text.plugin.PluginExtensionPointNode;
import org.eclipse.pde.internal.core.text.plugin.PluginImportNode;
import org.eclipse.pde.internal.core.text.plugin.PluginLibraryNode;
import org.eclipse.pde.internal.core.text.plugin.PluginModelBase;

public class PluginDocumentNodeFactory
implements IPluginModelFactory,
IDocumentNodeFactory {
    private PluginModelBase fModel;

    public PluginDocumentNodeFactory(PluginModelBase model) {
        this.fModel = model;
    }

    public IDocumentElementNode createDocumentNode(String name, IDocumentElementNode parent) {
        IDocumentElementNode ancestor;
        if (parent == null) {
            return this.createPluginBase(name);
        }
        if (parent instanceof PluginBaseNode) {
            if ("extension".equals(name)) {
                return (IDocumentElementNode)((Object)this.createExtension());
            }
            if ("extension-point".equals(name)) {
                return (IDocumentElementNode)((Object)this.createExtensionPoint());
            }
        } else if (name.equals("import") && parent instanceof PluginElementNode) {
            if (((PluginElementNode)parent).getName().equals("requires") && (ancestor = parent.getParentNode()) != null && ancestor instanceof PluginBaseNode) {
                return (IDocumentElementNode)((Object)this.createImport());
            }
        } else if (name.equals("library") && parent instanceof PluginElementNode && ((PluginElementNode)parent).getName().equals("runtime") && (ancestor = parent.getParentNode()) != null && ancestor instanceof PluginBaseNode) {
            return (IDocumentElementNode)((Object)this.createLibrary());
        }
        IDocumentElementNode node = (IDocumentElementNode)((Object)this.createElement((IPluginObject)((Object)parent)));
        node.setXMLTagName(name);
        return node;
    }

    public IDocumentAttributeNode createAttribute(String name, String value, IDocumentElementNode enclosingElement) {
        PluginAttribute attribute = new PluginAttribute();
        try {
            attribute.setName(name);
            attribute.setValue(value);
        }
        catch (CoreException coreException) {}
        attribute.setEnclosingElement(enclosingElement);
        attribute.setModel(this.fModel);
        attribute.setInTheModel(true);
        return attribute;
    }

    private PluginBaseNode createPluginBase(String name) {
        return (PluginBaseNode)this.fModel.createPluginBase(name.equals("fragment"));
    }

    public IPluginImport createImport() {
        PluginImportNode node = new PluginImportNode();
        node.setModel(this.fModel);
        node.setXMLTagName("import");
        return node;
    }

    public IPluginImport createImport(String pluginId) {
        PluginImportNode node = new PluginImportNode(pluginId);
        node.setModel(this.fModel);
        node.setXMLTagName("import");
        return node;
    }

    public IPluginLibrary createLibrary() {
        PluginLibraryNode node = new PluginLibraryNode();
        node.setModel(this.fModel);
        node.setXMLTagName("library");
        return node;
    }

    public IPluginAttribute createAttribute(IPluginElement element) {
        return null;
    }

    public IPluginElement createElement(IPluginObject parent) {
        PluginElementNode node = new PluginElementNode();
        node.setModel(this.fModel);
        return node;
    }

    public IPluginExtension createExtension() {
        PluginExtensionNode node = new PluginExtensionNode();
        node.setModel(this.fModel);
        node.setXMLTagName("extension");
        return node;
    }

    public IPluginExtensionPoint createExtensionPoint() {
        PluginExtensionPointNode node = new PluginExtensionPointNode();
        node.setModel(this.fModel);
        node.setXMLTagName("extension-point");
        return node;
    }

    public IDocumentTextNode createDocumentTextNode(String content, IDocumentElementNode parent) {
        DocumentTextNode textNode = new DocumentTextNode();
        textNode.setEnclosingElement(parent);
        parent.addTextNode(textNode);
        textNode.setText(content.trim());
        return textNode;
    }
}

