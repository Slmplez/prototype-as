/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.product;

import java.io.PrintWriter;
import org.eclipse.pde.internal.core.iproduct.IProductFeature;
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.eclipse.pde.internal.core.product.ProductObject;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class ProductFeature
extends ProductObject
implements IProductFeature {
    private static final long serialVersionUID = 1L;
    private String fId;
    private String fVersion;

    public ProductFeature(IProductModel model) {
        super(model);
    }

    public void parse(Node node) {
        if (node.getNodeType() == 1) {
            Element element = (Element)node;
            this.fId = element.getAttribute("id");
            this.fVersion = element.getAttribute("version");
        }
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(String.valueOf(indent) + "<feature id=\"" + this.fId + "\"");
        if (this.fVersion != null && this.fVersion.length() > 0 && !this.fVersion.equals("0.0.0")) {
            writer.print(" version=\"" + this.fVersion + "\"");
        }
        writer.println("/>");
    }

    public String getId() {
        return this.fId;
    }

    public void setId(String id) {
        this.fId = id;
    }

    public String getVersion() {
        return this.fVersion;
    }

    public void setVersion(String version) {
        String old = this.fVersion;
        this.fVersion = version;
        if (this.isEditable()) {
            this.firePropertyChanged("version", old, this.fVersion);
        }
    }
}

