/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.pde.core.plugin.IPluginAttribute;
import org.eclipse.pde.core.plugin.IPluginElement;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaElement;
import org.eclipse.pde.internal.core.plugin.PluginAttribute;
import org.eclipse.pde.internal.core.plugin.PluginExtension;
import org.eclipse.pde.internal.core.plugin.PluginParent;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class PluginElement
extends PluginParent
implements IPluginElement {
    private static final long serialVersionUID = 1L;
    static final String ATTRIBUTE_SHIFT = "      ";
    static final String ELEMENT_SHIFT = "   ";
    private transient ISchemaElement fElementInfo;
    protected String fText;
    protected Hashtable fAttributes;
    private IConfigurationElement fElement = null;

    public PluginElement() {
    }

    public PluginElement(IConfigurationElement element) {
        this.fElement = element;
    }

    PluginElement(PluginElement element) {
        this.setModel(element.getModel());
        this.setParent(element.getParent());
        this.fName = element.getName();
        IPluginAttribute[] atts = element.getAttributes();
        int i = 0;
        while (i < atts.length) {
            PluginAttribute att = (PluginAttribute)atts[i];
            this.getAttributeMap().put(att.getName(), att.clone());
            ++i;
        }
        this.fText = element.getText();
        this.fElementInfo = (ISchemaElement)element.getElementInfo();
        this.fElement = element.fElement;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (obj instanceof IPluginElement) {
            IPluginElement target = (IPluginElement)obj;
            if (target.getModel().equals(this.getModel())) {
                return false;
            }
            if (target.getAttributeCount() != this.getAttributeCount()) {
                return false;
            }
            IPluginAttribute[] tatts = target.getAttributes();
            int i = 0;
            while (i < tatts.length) {
                IPluginAttribute tatt = tatts[i];
                IPluginAttribute att = (IPluginAttribute)this.getAttributeMap().get(tatt.getName());
                if (att == null || !att.equals(tatt)) {
                    return false;
                }
                ++i;
            }
            return super.equals(obj);
        }
        return false;
    }

    public IPluginElement createCopy() {
        return new PluginElement(this);
    }

    public IPluginAttribute getAttribute(String name) {
        return (IPluginAttribute)this.getAttributeMap().get(name);
    }

    public IPluginAttribute[] getAttributes() {
        Collection values = this.getAttributeMap().values();
        IPluginAttribute[] result = new IPluginAttribute[values.size()];
        return values.toArray(result);
    }

    public int getAttributeCount() {
        if (this.fAttributes == null && this.fElement != null) {
            return this.fElement.getAttributeNames().length;
        }
        return this.getAttributeMap().size();
    }

    public Object getElementInfo() {
        ISchema schema;
        if (this.fElementInfo != null && (schema = this.fElementInfo.getSchema()).isDisposed()) {
            this.fElementInfo = null;
        }
        if (this.fElementInfo == null) {
            PluginExtension extension;
            ISchema schema2;
            IPluginObject parent = this.getParent();
            while (parent != null && !(parent instanceof IPluginExtension)) {
                parent = parent.getParent();
            }
            if (parent != null && (schema2 = (ISchema)(extension = (PluginExtension)parent).getSchema()) != null) {
                this.fElementInfo = schema2.findElement(this.getName());
            }
        }
        return this.fElementInfo;
    }

    public String getText() {
        if (this.fText == null && this.fElement != null) {
            this.fText = this.fElement.getValue();
        }
        return this.fText;
    }

    void load(Node node) {
        this.fName = node.getNodeName();
        if (this.fAttributes == null) {
            this.fAttributes = new Hashtable();
        }
        NamedNodeMap attributes = node.getAttributes();
        int i = 0;
        while (i < attributes.getLength()) {
            Node attribute = attributes.item(i);
            IPluginAttribute att = this.getModel().getFactory().createAttribute(this);
            ((PluginAttribute)att).load(attribute);
            ((PluginAttribute)att).setInTheModel(true);
            this.fAttributes.put(attribute.getNodeName(), att);
            ++i;
        }
        if (this.fChildren == null) {
            this.fChildren = new ArrayList();
        }
        NodeList children = node.getChildNodes();
        int i2 = 0;
        while (i2 < children.getLength()) {
            Node child = children.item(i2);
            if (child.getNodeType() == 1) {
                PluginElement childElement = new PluginElement();
                childElement.setModel(this.getModel());
                childElement.setInTheModel(true);
                this.fChildren.add(childElement);
                childElement.setParent(this);
                childElement.load(child);
            } else if (child.getNodeType() == 3 && child.getNodeValue() != null) {
                String text = child.getNodeValue();
                if (PluginElement.isNotEmpty(text = text.trim())) {
                    this.fText = text;
                }
            }
            ++i2;
        }
    }

    public void removeAttribute(String name) throws CoreException {
        this.ensureModelEditable();
        PluginAttribute att = (PluginAttribute)this.getAttributeMap().remove(name);
        String oldValue = att.getValue();
        if (att != null) {
            att.setInTheModel(false);
        }
        this.firePropertyChanged("attribute", oldValue, null);
    }

    public void setAttribute(String name, String value) throws CoreException {
        this.ensureModelEditable();
        if (value == null) {
            this.removeAttribute(name);
            return;
        }
        IPluginAttribute attribute = this.getAttribute(name);
        if (attribute == null) {
            attribute = this.getModel().getFactory().createAttribute(this);
            attribute.setName(name);
            this.getAttributeMap().put(name, attribute);
            ((PluginAttribute)attribute).setInTheModel(true);
        }
        attribute.setValue(value);
    }

    public void setElementInfo(ISchemaElement newElementInfo) {
        this.fElementInfo = newElementInfo;
        if (this.fElementInfo == null) {
            Enumeration atts = this.getAttributeMap().elements();
            while (atts.hasMoreElements()) {
                PluginAttribute att = (PluginAttribute)atts.nextElement();
                att.setAttributeInfo(null);
            }
        }
    }

    public void setText(String newText) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fText;
        this.fText = newText;
        this.firePropertyChanged("text", oldValue, this.fText);
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(indent);
        writer.print("<" + this.getName());
        String newIndent = String.valueOf(indent) + ATTRIBUTE_SHIFT;
        if (!this.getAttributeMap().isEmpty()) {
            writer.println();
            Iterator iter = this.getAttributeMap().values().iterator();
            while (iter.hasNext()) {
                IPluginAttribute attribute = (IPluginAttribute)iter.next();
                attribute.write(newIndent, writer);
                if (!iter.hasNext()) continue;
                writer.println();
            }
        }
        writer.println(">");
        newIndent = String.valueOf(indent) + ELEMENT_SHIFT;
        IPluginObject[] children = this.getChildren();
        int i = 0;
        while (i < children.length) {
            IPluginElement element = (IPluginElement)children[i];
            element.write(newIndent, writer);
            ++i;
        }
        if (this.getText() != null) {
            writer.println(String.valueOf(newIndent) + this.getWritableString(this.getText()));
        }
        writer.println(String.valueOf(indent) + "</" + this.getName() + ">");
    }

    protected Hashtable getAttributeMap() {
        if (this.fAttributes == null) {
            this.fAttributes = new Hashtable();
            if (this.fElement != null) {
                String[] names = this.fElement.getAttributeNames();
                int i = 0;
                while (i < names.length) {
                    IPluginAttribute attr = this.createAttribute(names[i], this.fElement.getAttribute(names[i]));
                    if (attr != null) {
                        this.fAttributes.put(names[i], attr);
                    }
                    ++i;
                }
            }
        }
        return this.fAttributes;
    }

    private IPluginAttribute createAttribute(String name, String value) {
        if (name == null || value == null) {
            return null;
        }
        try {
            IPluginAttribute attr = this.getPluginModel().getFactory().createAttribute(this);
            if (attr instanceof PluginAttribute) {
                ((PluginAttribute)attr).load(name, value);
            } else {
                attr.setName(name);
                attr.setValue(value);
            }
            return attr;
        }
        catch (CoreException coreException) {
            return null;
        }
    }

    protected ArrayList getChildrenList() {
        if (this.fChildren == null) {
            this.fChildren = new ArrayList();
            if (this.fElement != null) {
                IConfigurationElement[] elements = this.fElement.getChildren();
                int i = 0;
                while (i < elements.length) {
                    PluginElement element = new PluginElement(elements[i]);
                    element.setModel(this.getModel());
                    element.setParent(this);
                    this.fChildren.add(element);
                    ++i;
                }
            }
        }
        return this.fChildren;
    }

    public String getName() {
        if (this.fName == null && this.fElement != null) {
            this.fName = this.fElement.getName();
        }
        return this.fName;
    }
}

