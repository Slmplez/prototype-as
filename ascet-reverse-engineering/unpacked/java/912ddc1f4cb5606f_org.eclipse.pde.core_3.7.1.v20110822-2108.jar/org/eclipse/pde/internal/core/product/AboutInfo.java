/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.product;

import java.io.PrintWriter;
import org.eclipse.pde.internal.core.iproduct.IAboutInfo;
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.eclipse.pde.internal.core.product.ProductObject;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;

public class AboutInfo
extends ProductObject
implements IAboutInfo {
    private static final long serialVersionUID = 1L;
    private String fImagePath;
    private String fAboutText;

    public AboutInfo(IProductModel model) {
        super(model);
    }

    public void setText(String text) {
        String old = this.fAboutText;
        this.fAboutText = text;
        if (this.isEditable()) {
            this.firePropertyChanged("text", old, this.fAboutText);
        }
    }

    public String getText() {
        return this.fAboutText;
    }

    public void setImagePath(String path) {
        String old = this.fImagePath;
        this.fImagePath = path;
        if (this.isEditable()) {
            this.firePropertyChanged("image", old, this.fImagePath);
        }
    }

    public String getImagePath() {
        return this.fImagePath;
    }

    public void write(String indent, PrintWriter writer) {
        if (this.isAboutImageDefined() || this.isAboutTextDefined()) {
            writer.println(String.valueOf(indent) + "<aboutInfo>");
            if (this.isAboutImageDefined()) {
                writer.println(String.valueOf(indent) + "   <image path=\"" + this.getWritableString(this.fImagePath.trim()) + "\"/>");
            }
            if (this.isAboutTextDefined()) {
                writer.println(String.valueOf(indent) + "   <text>");
                writer.println(String.valueOf(indent) + "      " + this.getWritableString(this.fAboutText.trim()));
                writer.println(String.valueOf(indent) + "   </text>");
            }
            writer.println(String.valueOf(indent) + "</aboutInfo>");
        }
    }

    private boolean isAboutTextDefined() {
        return this.fAboutText != null && this.fAboutText.length() > 0;
    }

    private boolean isAboutImageDefined() {
        return this.fImagePath != null && this.fImagePath.length() > 0;
    }

    public void parse(Node node) {
        NodeList children = node.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1) {
                if (child.getNodeName().equals("image")) {
                    this.fImagePath = ((Element)child).getAttribute("path");
                } else if (child.getNodeName().equals("text")) {
                    Node text;
                    child.normalize();
                    if (child.getChildNodes().getLength() > 0 && (text = child.getFirstChild()).getNodeType() == 3) {
                        this.fAboutText = ((Text)text).getData().trim();
                    }
                }
            }
            ++i;
        }
    }
}

