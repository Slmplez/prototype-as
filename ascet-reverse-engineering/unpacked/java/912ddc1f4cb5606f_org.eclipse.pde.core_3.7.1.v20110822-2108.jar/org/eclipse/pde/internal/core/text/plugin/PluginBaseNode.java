/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.text.plugin;

import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginElement;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.plugin.PluginElementNode;
import org.eclipse.pde.internal.core.text.plugin.PluginExtensionNode;
import org.eclipse.pde.internal.core.text.plugin.PluginExtensionPointNode;
import org.eclipse.pde.internal.core.text.plugin.PluginImportNode;
import org.eclipse.pde.internal.core.text.plugin.PluginLibraryNode;
import org.eclipse.pde.internal.core.text.plugin.PluginObjectNode;

public abstract class PluginBaseNode
extends PluginObjectNode
implements IPluginBase {
    private static final long serialVersionUID = 1L;
    private String fSchemaVersion;

    public void add(IPluginLibrary library) throws CoreException {
        IDocumentElementNode parent = this.getEnclosingElement("runtime", true);
        if (library instanceof PluginLibraryNode) {
            PluginLibraryNode node = (PluginLibraryNode)library;
            node.setModel(this.getModel());
            parent.addChildNode(node);
            this.fireStructureChanged(library, 1);
        }
    }

    public void add(IPluginImport pluginImport) throws CoreException {
        IDocumentElementNode parent = this.getEnclosingElement("requires", true);
        if (pluginImport instanceof PluginImportNode) {
            PluginImportNode node = (PluginImportNode)pluginImport;
            parent.addChildNode(node);
            this.fireStructureChanged(pluginImport, 1);
        }
    }

    public void add(IPluginImport[] pluginImports) {
        IDocumentElementNode parent = this.getEnclosingElement("requires", true);
        int i = 0;
        while (i < pluginImports.length) {
            if (pluginImports[i] != null && pluginImports[i] instanceof PluginImportNode) {
                PluginImportNode node = (PluginImportNode)pluginImports[i];
                parent.addChildNode(node);
            }
            ++i;
        }
        this.fireStructureChanged(pluginImports, 1);
    }

    public void remove(IPluginImport pluginImport) throws CoreException {
        IDocumentElementNode parent = this.getEnclosingElement("requires", false);
        if (parent != null) {
            parent.removeChildNode((IDocumentElementNode)((Object)pluginImport));
            pluginImport.setInTheModel(false);
            this.fireStructureChanged(pluginImport, 2);
        }
    }

    public void remove(IPluginImport[] pluginImports) {
        IDocumentElementNode parent = this.getEnclosingElement("requires", false);
        if (parent != null) {
            int i = 0;
            while (i < pluginImports.length) {
                parent.removeChildNode((IDocumentElementNode)((Object)pluginImports[i]));
                pluginImports[i].setInTheModel(false);
                ++i;
            }
            this.fireStructureChanged(pluginImports, 2);
        }
    }

    public IPluginLibrary[] getLibraries() {
        ArrayList<IDocumentElementNode> result = new ArrayList<IDocumentElementNode>();
        IDocumentElementNode requiresNode = this.getEnclosingElement("runtime", false);
        if (requiresNode != null) {
            IDocumentElementNode[] children = requiresNode.getChildNodes();
            int i = 0;
            while (i < children.length) {
                if (children[i] instanceof IPluginLibrary) {
                    result.add(children[i]);
                }
                ++i;
            }
        }
        return result.toArray(new IPluginLibrary[result.size()]);
    }

    private IDocumentElementNode getEnclosingElement(String elementName, boolean create) {
        PluginElementNode element = null;
        IDocumentElementNode[] children = this.getChildNodes();
        int i = 0;
        while (i < children.length) {
            if (children[i] instanceof IPluginElement && ((PluginElementNode)children[i]).getXMLTagName().equals(elementName)) {
                element = (PluginElementNode)children[i];
                break;
            }
            ++i;
        }
        if (element == null && create) {
            element = new PluginElementNode();
            element.setXMLTagName(elementName);
            element.setParentNode(this);
            element.setModel(this.getModel());
            element.setInTheModel(true);
            if (elementName.equals("runtime")) {
                this.addChildNode(element, 0);
            } else if (elementName.equals("requires")) {
                if (children.length > 0 && children[0].getXMLTagName().equals("runtime")) {
                    this.addChildNode(element, 1);
                } else {
                    this.addChildNode(element, 0);
                }
            }
        }
        return element;
    }

    public IPluginImport[] getImports() {
        ArrayList<IDocumentElementNode> result = new ArrayList<IDocumentElementNode>();
        IDocumentElementNode requiresNode = this.getEnclosingElement("requires", false);
        if (requiresNode != null) {
            IDocumentElementNode[] children = requiresNode.getChildNodes();
            int i = 0;
            while (i < children.length) {
                if (children[i] instanceof IPluginImport) {
                    result.add(children[i]);
                }
                ++i;
            }
        }
        return result.toArray(new IPluginImport[result.size()]);
    }

    public String getProviderName() {
        return this.getXMLAttributeValue("provider-name");
    }

    public String getVersion() {
        return this.getXMLAttributeValue("version");
    }

    public void remove(IPluginLibrary library) throws CoreException {
        IDocumentElementNode parent = this.getEnclosingElement("runtime", false);
        if (parent != null) {
            parent.removeChildNode((IDocumentElementNode)((Object)library));
            library.setInTheModel(false);
            this.fireStructureChanged(library, 2);
        }
    }

    public void setProviderName(String providerName) throws CoreException {
        this.setXMLAttribute("provider-name", providerName);
    }

    public void setVersion(String version) throws CoreException {
        this.setXMLAttribute("version", version);
    }

    public void swap(IPluginLibrary l1, IPluginLibrary l2) throws CoreException {
        IDocumentElementNode node = this.getEnclosingElement("runtime", false);
        if (node != null) {
            node.swap((IDocumentElementNode)((Object)l1), (IDocumentElementNode)((Object)l2));
            this.firePropertyChanged(node, "library_order", l1, l2);
        }
    }

    public String getSchemaVersion() {
        return this.fSchemaVersion;
    }

    public void setSchemaVersion(String schemaVersion) throws CoreException {
        this.fSchemaVersion = schemaVersion;
    }

    public void add(IPluginExtension extension) throws CoreException {
        if (extension instanceof PluginExtensionNode) {
            PluginExtensionNode node = (PluginExtensionNode)extension;
            node.setModel(this.getModel());
            this.addChildNode(node);
            this.fireStructureChanged(extension, 1);
        }
    }

    public void add(IPluginExtension extension, int position) throws CoreException {
        if (!(extension instanceof PluginExtensionNode)) {
            return;
        }
        if (position < 0 || position > this.getChildCount()) {
            return;
        }
        PluginExtensionNode node = (PluginExtensionNode)extension;
        node.setModel(this.getModel());
        this.addChildNode(node, position);
        this.fireStructureChanged(extension, 1);
    }

    public void add(IPluginExtensionPoint extensionPoint) throws CoreException {
        if (extensionPoint instanceof PluginExtensionPointNode) {
            PluginExtensionPointNode node = (PluginExtensionPointNode)extensionPoint;
            node.setModel(this.getModel());
            extensionPoint.setInTheModel(true);
            node.setParentNode(this);
            IPluginExtensionPoint[] extPoints = this.getExtensionPoints();
            if (extPoints.length > 0) {
                this.addChildNode(node, this.indexOf((IDocumentElementNode)((Object)extPoints[extPoints.length - 1])) + 1);
            } else {
                IDocumentElementNode requires = this.getEnclosingElement("requires", false);
                if (requires != null) {
                    this.addChildNode(node, this.indexOf(requires) + 1);
                } else {
                    IDocumentElementNode runtime = this.getEnclosingElement("runtime", false);
                    if (runtime != null) {
                        this.addChildNode(node, this.indexOf(runtime) + 1);
                    } else {
                        this.addChildNode(node, 0);
                    }
                }
            }
            this.fireStructureChanged(extensionPoint, 1);
        }
    }

    public IPluginExtensionPoint[] getExtensionPoints() {
        ArrayList<IDocumentElementNode> result = new ArrayList<IDocumentElementNode>();
        IDocumentElementNode[] children = this.getChildNodes();
        int i = 0;
        while (i < children.length) {
            if (children[i] instanceof IPluginExtensionPoint) {
                result.add(children[i]);
            }
            ++i;
        }
        return result.toArray(new IPluginExtensionPoint[result.size()]);
    }

    public IPluginExtension[] getExtensions() {
        ArrayList<IDocumentElementNode> result = new ArrayList<IDocumentElementNode>();
        IDocumentElementNode[] children = this.getChildNodes();
        int i = 0;
        while (i < children.length) {
            if (children[i] instanceof IPluginExtension) {
                result.add(children[i]);
            }
            ++i;
        }
        return result.toArray(new IPluginExtension[result.size()]);
    }

    public int getIndexOf(IPluginExtension e) {
        IPluginExtension[] children = this.getExtensions();
        int i = 0;
        while (i < children.length) {
            if (children[i].equals(e)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public void remove(IPluginExtension extension) throws CoreException {
        if (extension instanceof IDocumentElementNode) {
            this.removeChildNode((IDocumentElementNode)((Object)extension));
            extension.setInTheModel(false);
            this.fireStructureChanged(extension, 2);
        }
    }

    public void remove(IPluginExtensionPoint extensionPoint) throws CoreException {
        if (extensionPoint instanceof IDocumentElementNode) {
            this.removeChildNode((IDocumentElementNode)((Object)extensionPoint));
            extensionPoint.setInTheModel(false);
            this.fireStructureChanged(extensionPoint, 2);
        }
    }

    public void remove(IPluginObject node) {
        if (node instanceof IDocumentElementNode) {
            this.removeChildNode((IDocumentElementNode)((Object)node));
            node.setInTheModel(false);
            this.fireStructureChanged(node, 2);
        }
    }

    public void swap(IPluginExtension e1, IPluginExtension e2) throws CoreException {
        this.swap((IDocumentElementNode)((Object)e1), (IDocumentElementNode)((Object)e2));
        this.firePropertyChanged(this, "extension_order", e1, e2);
    }

    public void swap(IPluginImport import1, IPluginImport import2) throws CoreException {
        IDocumentElementNode node = this.getEnclosingElement("requires", false);
        if (node != null) {
            node.swap((IDocumentElementNode)((Object)import1), (IDocumentElementNode)((Object)import2));
            this.firePropertyChanged(node, "import_order", import1, import2);
        }
    }

    public String getId() {
        return this.getXMLAttributeValue("id");
    }

    public void setId(String id) throws CoreException {
        this.setXMLAttribute("id", id);
    }

    public String getName() {
        return this.getXMLAttributeValue("name");
    }

    public void setName(String name) throws CoreException {
        this.setXMLAttribute("name", name);
    }

    public String write(boolean indent) {
        IDocumentElementNode requires;
        String newLine = this.getLineDelimiter();
        StringBuffer buffer = new StringBuffer();
        buffer.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>" + newLine);
        buffer.append("<?eclipse version=\"3.0\"?>" + newLine);
        buffer.append(String.valueOf(this.writeShallow(false)) + newLine);
        IDocumentElementNode runtime = this.getEnclosingElement("runtime", false);
        if (runtime != null) {
            runtime.setLineIndent(this.getLineIndent() + 3);
            buffer.append(String.valueOf(runtime.write(true)) + newLine);
        }
        if ((requires = this.getEnclosingElement("requires", false)) != null) {
            requires.setLineIndent(this.getLineIndent() + 3);
            buffer.append(String.valueOf(requires.write(true)) + newLine);
        }
        IPluginExtensionPoint[] extPoints = this.getExtensionPoints();
        int i = 0;
        while (i < extPoints.length) {
            IDocumentElementNode extPoint = (IDocumentElementNode)((Object)extPoints[i]);
            extPoint.setLineIndent(this.getLineIndent() + 3);
            buffer.append(String.valueOf(extPoint.write(true)) + newLine);
            ++i;
        }
        IPluginExtension[] extensions = this.getExtensions();
        int i2 = 0;
        while (i2 < extensions.length) {
            IDocumentElementNode extension = (IDocumentElementNode)((Object)extensions[i2]);
            extension.setLineIndent(this.getLineIndent() + 3);
            buffer.append(String.valueOf(extension.write(true)) + newLine);
            ++i2;
        }
        buffer.append("</" + this.getXMLTagName() + ">");
        return buffer.toString();
    }

    public String writeShallow(boolean terminate) {
        String provider;
        String version;
        String name;
        String newLine = System.getProperty("line.separator");
        StringBuffer buffer = new StringBuffer();
        buffer.append("<" + this.getXMLTagName());
        buffer.append(newLine);
        String id = this.getId();
        if (id != null && id.trim().length() > 0) {
            buffer.append("   id=\"" + this.getWritableString(id) + "\"" + newLine);
        }
        if ((name = this.getName()) != null && name.trim().length() > 0) {
            buffer.append("   name=\"" + this.getWritableString(name) + "\"" + newLine);
        }
        if ((version = this.getVersion()) != null && version.trim().length() > 0) {
            buffer.append("   version=\"" + this.getWritableString(version) + "\"" + newLine);
        }
        if ((provider = this.getProviderName()) != null && provider.trim().length() > 0) {
            buffer.append("   provider-name=\"" + this.getWritableString(provider) + "\"");
        }
        String[] specific = this.getSpecificAttributes();
        int i = 0;
        while (i < specific.length) {
            buffer.append(String.valueOf(newLine) + specific[i]);
            ++i;
        }
        if (terminate) {
            buffer.append("/");
        }
        buffer.append(">");
        return buffer.toString();
    }

    protected abstract String[] getSpecificAttributes();

    public boolean isRoot() {
        return true;
    }
}

