/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.TextUtilities
 */
package org.eclipse.pde.internal.core.text.plugin;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IModelChangeProvider;
import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.core.plugin.ISharedPluginModel;
import org.eclipse.pde.internal.core.plugin.IWritableDelimiter;
import org.eclipse.pde.internal.core.text.DocumentElementNode;
import org.eclipse.pde.internal.core.text.IDocumentAttributeNode;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.IDocumentRange;
import org.eclipse.pde.internal.core.text.IEditingModel;
import org.eclipse.pde.internal.core.text.plugin.PluginAttribute;
import org.eclipse.pde.internal.core.util.PDEXMLHelper;

public class PluginObjectNode
extends DocumentElementNode
implements IPluginObject,
IWritableDelimiter {
    private transient boolean fInTheModel;
    private transient ISharedPluginModel fModel;
    private static final long serialVersionUID = 1L;
    private String fName;

    public ISharedPluginModel getModel() {
        return this.fModel;
    }

    public IPluginModelBase getPluginModel() {
        return (IPluginModelBase)this.fModel;
    }

    public String getName() {
        return this.fName;
    }

    public boolean isInTheModel() {
        return this.fInTheModel;
    }

    public String getTranslatedName() {
        return this.getResourceString(this.getName());
    }

    public IPluginObject getParent() {
        return (IPluginObject)((Object)this.getParentNode());
    }

    public IPluginBase getPluginBase() {
        return this.fModel != null ? ((IPluginModelBase)this.fModel).getPluginBase() : null;
    }

    public String getResourceString(String key) {
        return this.fModel != null ? this.fModel.getResourceString(key) : key;
    }

    public void setName(String name) throws CoreException {
        this.fName = name;
    }

    public boolean isValid() {
        return false;
    }

    public void write(String indent, PrintWriter writer) {
    }

    public Object getAdapter(Class adapter) {
        return null;
    }

    public void setInTheModel(boolean inModel) {
        this.fInTheModel = inModel;
    }

    public void setModel(ISharedPluginModel model) {
        this.fModel = model;
    }

    public boolean setXMLAttribute(String name, String value) {
        String oldValue = this.getXMLAttributeValue(name);
        if (oldValue != null && oldValue.equals(value)) {
            return false;
        }
        PluginAttribute attr = (PluginAttribute)this.getNodeAttributesMap().get(name);
        try {
            if (value == null) {
                value = "";
            }
            if (attr == null) {
                attr = new PluginAttribute();
                attr.setName(name);
                attr.setEnclosingElement(this);
                attr.setModel(this.getModel());
                this.getNodeAttributesMap().put(name, attr);
            }
            attr.setValue(value == null ? "" : value);
        }
        catch (CoreException coreException) {}
        if (this.fInTheModel) {
            this.firePropertyChanged(attr.getEnclosingElement(), attr.getAttributeName(), oldValue, value);
        }
        return true;
    }

    protected void firePropertyChanged(IDocumentRange node, String property, Object oldValue, Object newValue) {
        if (this.fModel.isEditable()) {
            this.fModel.fireModelObjectChanged(node, property, oldValue, newValue);
        }
    }

    protected void fireStructureChanged(IPluginObject child, int changeType) {
        ISharedPluginModel model = this.getModel();
        if (model.isEditable() && model instanceof IModelChangeProvider) {
            ModelChangedEvent e = new ModelChangedEvent(this.fModel, changeType, new Object[]{child}, null);
            this.fireModelChanged(e);
        }
    }

    protected void fireStructureChanged(IPluginObject[] children, int changeType) {
        ISharedPluginModel model = this.getModel();
        if (model.isEditable() && model instanceof IModelChangeProvider) {
            ModelChangedEvent e = new ModelChangedEvent(this.fModel, changeType, children, null);
            this.fireModelChanged(e);
        }
    }

    private void fireModelChanged(IModelChangedEvent e) {
        ISharedPluginModel model = this.getModel();
        if (model.isEditable() && model instanceof IModelChangeProvider) {
            IModelChangeProvider provider = model;
            provider.fireModelChanged(e);
        }
    }

    public String getWritableString(String source) {
        return PDEXMLHelper.getWritableString(source);
    }

    protected void appendAttribute(StringBuffer buffer, String attrName) {
        this.appendAttribute(buffer, attrName, "");
    }

    protected void appendAttribute(StringBuffer buffer, String attrName, String defaultValue) {
        String value;
        IDocumentAttributeNode attr = this.getDocumentAttribute(attrName);
        if (attr != null && (value = attr.getAttributeValue()) != null && value.trim().length() > 0 && !value.equals(defaultValue)) {
            buffer.append(" " + attr.write());
        }
    }

    public String getLineDelimiter() {
        ISharedPluginModel model = this.getModel();
        IDocument document = ((IEditingModel)((Object)model)).getDocument();
        return TextUtilities.getDefaultLineDelimiter((IDocument)document);
    }

    public void addChildNode(IDocumentElementNode child, int position) {
        super.addChildNode(child, position);
        ((IPluginObject)((Object)child)).setInTheModel(true);
    }

    public String toString() {
        return this.write(false);
    }

    public void reconnect(IDocumentElementNode parent, IModel model) {
        super.reconnect(parent, model);
        this.fInTheModel = true;
        if (model instanceof ISharedPluginModel) {
            this.fModel = (ISharedPluginModel)model;
        }
    }

    public void writeDelimeter(PrintWriter writer) {
    }

    public String getXMLAttributeValue(String name) {
        PluginAttribute attr = (PluginAttribute)this.getNodeAttributesMap().get(name);
        return attr == null ? null : attr.getValue();
    }

    public String write(boolean indent) {
        return "";
    }

    public String writeShallow(boolean terminate) {
        return "";
    }

    protected String getFileEncoding() {
        if (this.fModel != null && this.fModel instanceof IEditingModel) {
            return ((IEditingModel)((Object)this.fModel)).getCharset();
        }
        return super.getFileEncoding();
    }
}

