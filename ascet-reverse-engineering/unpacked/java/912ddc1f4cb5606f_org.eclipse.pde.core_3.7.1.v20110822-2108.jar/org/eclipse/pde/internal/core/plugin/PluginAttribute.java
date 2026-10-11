/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IModelChangeProvider;
import org.eclipse.pde.core.plugin.IPluginAttribute;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaAttribute;
import org.eclipse.pde.internal.core.ischema.ISchemaElement;
import org.eclipse.pde.internal.core.plugin.AttributeChangedEvent;
import org.eclipse.pde.internal.core.plugin.PluginElement;
import org.eclipse.pde.internal.core.plugin.PluginObject;
import org.w3c.dom.Node;

public class PluginAttribute
extends PluginObject
implements IPluginAttribute {
    private static final long serialVersionUID = 1L;
    protected String fValue;
    private transient ISchemaAttribute attributeInfo;

    public PluginAttribute() {
    }

    PluginAttribute(IPluginAttribute attribute) {
        this.setModel(attribute.getModel());
        this.setParent(attribute.getParent());
        this.fName = attribute.getName();
        this.fValue = attribute.getValue();
        this.attributeInfo = ((PluginAttribute)attribute).getAttributeInfo();
    }

    public Object clone() {
        return new PluginAttribute(this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (obj instanceof IPluginAttribute) {
            IPluginAttribute target = (IPluginAttribute)obj;
            if (target.getModel().equals(this.getModel())) {
                return false;
            }
            if (this.stringEqualWithNull(this.getName(), target.getName()) && this.stringEqualWithNull(this.getValue(), target.getValue())) {
                return true;
            }
        }
        return false;
    }

    public ISchemaAttribute getAttributeInfo() {
        PluginElement element;
        ISchemaElement elementInfo;
        ISchema schema;
        if (this.attributeInfo != null && (schema = this.attributeInfo.getSchema()).isDisposed()) {
            this.attributeInfo = null;
        }
        if (this.attributeInfo == null && (elementInfo = (ISchemaElement)(element = (PluginElement)this.getParent()).getElementInfo()) != null) {
            this.attributeInfo = elementInfo.getAttribute(this.getName());
        }
        return this.attributeInfo;
    }

    public String getValue() {
        return this.fValue;
    }

    void load(Node node) {
        this.fName = node.getNodeName();
        this.fValue = node.getNodeValue();
    }

    void load(String name, String value) {
        this.fName = name;
        this.fValue = value;
    }

    public void setAttributeInfo(ISchemaAttribute newAttributeInfo) {
        this.attributeInfo = newAttributeInfo;
    }

    public void setValue(String newValue) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fValue;
        this.fValue = newValue;
        AttributeChangedEvent e = new AttributeChangedEvent((IModelChangeProvider)this.getModel(), (Object)this.getParent(), this, oldValue, newValue);
        this.fireModelChanged(e);
    }

    public void write(String indent, PrintWriter writer) {
        if (this.fValue == null) {
            return;
        }
        writer.print(indent);
        writer.print(String.valueOf(this.getName()) + "=\"" + this.getWritableString(this.fValue) + "\"");
    }
}

