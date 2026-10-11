/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.product;

import java.io.PrintWriter;
import org.eclipse.pde.internal.core.iproduct.IConfigurationProperty;
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.eclipse.pde.internal.core.product.ProductObject;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class ConfigurationProperty
extends ProductObject
implements IConfigurationProperty {
    private static final long serialVersionUID = -3549668957352554826L;
    private String fName;
    private String fValue;

    ConfigurationProperty(IProductModel model) {
        super(model);
    }

    public void parse(Node node) {
        if (node.getNodeType() == 1) {
            Element element = (Element)node;
            this.fName = element.getAttribute("name");
            this.fValue = element.getAttribute("value");
        }
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(String.valueOf(indent) + "<property name=\"" + this.fName + "\"");
        writer.print(" value=\"" + this.fValue + "\"");
        writer.println(" />");
    }

    public String getName() {
        return this.fName;
    }

    public String getValue() {
        return this.fValue;
    }

    public void setName(String name) {
        String oldValue = this.fName;
        this.fName = name;
        if (this.isEditable() && !this.fName.equals(oldValue)) {
            this.firePropertyChanged("name", oldValue, this.fName);
        }
    }

    public void setValue(String value) {
        String oldValue = this.fValue;
        this.fValue = value;
        if (this.isEditable() && !this.fValue.equals(oldValue)) {
            this.firePropertyChanged("value", oldValue, this.fValue);
        }
    }

    public String toString() {
        return String.valueOf(this.fName) + " : " + this.fValue;
    }
}

