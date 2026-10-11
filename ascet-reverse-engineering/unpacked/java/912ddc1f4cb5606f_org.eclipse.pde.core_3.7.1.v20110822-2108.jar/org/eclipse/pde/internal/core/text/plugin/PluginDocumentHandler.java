/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.pde.internal.core.text.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.internal.core.TargetPlatformHelper;
import org.eclipse.pde.internal.core.text.DocumentHandler;
import org.eclipse.pde.internal.core.text.IDocumentAttributeNode;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.IDocumentTextNode;
import org.eclipse.pde.internal.core.text.plugin.PluginDocumentNodeFactory;
import org.eclipse.pde.internal.core.text.plugin.PluginModelBase;
import org.xml.sax.SAXException;

public class PluginDocumentHandler
extends DocumentHandler {
    private PluginModelBase fModel;
    private String fSchemaVersion;
    protected PluginDocumentNodeFactory fFactory;

    public PluginDocumentHandler(PluginModelBase model, boolean reconciling) {
        super(reconciling);
        this.fModel = model;
        this.fFactory = (PluginDocumentNodeFactory)this.getModel().getPluginFactory();
    }

    protected IDocument getDocument() {
        return this.fModel.getDocument();
    }

    public void endDocument() throws SAXException {
        IPluginBase pluginBase = this.fModel.getPluginBase(false);
        try {
            if (pluginBase != null) {
                pluginBase.setSchemaVersion(this.fSchemaVersion);
            }
        }
        catch (CoreException coreException) {}
    }

    public void processingInstruction(String target, String data) throws SAXException {
        if ("eclipse".equals(target)) {
            this.fSchemaVersion = data.length() > 10 && data.substring(0, 9).equals("version=\"") && data.charAt(data.length() - 1) == '\"' ? TargetPlatformHelper.getSchemaVersionForTargetVersion(data.substring(9, data.length() - 1)) : TargetPlatformHelper.getSchemaVersion();
        }
    }

    public void startDocument() throws SAXException {
        super.startDocument();
        this.fSchemaVersion = null;
    }

    protected PluginModelBase getModel() {
        return this.fModel;
    }

    protected IDocumentElementNode getDocumentNode(String name, IDocumentElementNode parent) {
        int i;
        IDocumentElementNode node = null;
        if (parent == null) {
            node = (IDocumentElementNode)((Object)this.getModel().getPluginBase(false));
            if (node != null) {
                node.setOffset(-1);
                node.setLength(-1);
            }
        } else {
            IDocumentElementNode[] children = parent.getChildNodes();
            i = 0;
            while (i < children.length) {
                if (children[i].getOffset() < 0) {
                    if (!name.equals(children[i].getXMLTagName())) break;
                    node = children[i];
                    break;
                }
                ++i;
            }
        }
        if (node == null) {
            return this.fFactory.createDocumentNode(name, parent);
        }
        IDocumentAttributeNode[] attrs = node.getNodeAttributes();
        i = 0;
        while (i < attrs.length) {
            attrs[i].setNameOffset(-1);
            attrs[i].setNameLength(-1);
            attrs[i].setValueOffset(-1);
            attrs[i].setValueLength(-1);
            ++i;
        }
        i = 0;
        while (i < node.getChildNodes().length) {
            IDocumentElementNode child = node.getChildAt(i);
            child.setOffset(-1);
            child.setLength(-1);
            ++i;
        }
        if (this.isReconciling()) {
            node.removeTextNode();
            node.setIsErrorNode(false);
        }
        return node;
    }

    protected IDocumentAttributeNode getDocumentAttribute(String name, String value, IDocumentElementNode parent) {
        IDocumentAttributeNode attr = parent.getDocumentAttribute(name);
        try {
            if (attr == null) {
                attr = this.fFactory.createAttribute(name, value, parent);
            } else {
                if (!name.equals(attr.getAttributeName())) {
                    attr.setAttributeName(name);
                }
                if (!value.equals(attr.getAttributeValue())) {
                    attr.setAttributeValue(value);
                }
            }
        }
        catch (CoreException coreException) {}
        return attr;
    }

    protected IDocumentTextNode getDocumentTextNode(String content, IDocumentElementNode parent) {
        IDocumentTextNode textNode = parent.getTextNode();
        if (textNode == null) {
            if (content.trim().length() > 0) {
                textNode = this.fFactory.createDocumentTextNode(content, parent);
            }
        } else {
            String newContent = String.valueOf(textNode.getText()) + content;
            textNode.setText(newContent);
        }
        return textNode;
    }
}

