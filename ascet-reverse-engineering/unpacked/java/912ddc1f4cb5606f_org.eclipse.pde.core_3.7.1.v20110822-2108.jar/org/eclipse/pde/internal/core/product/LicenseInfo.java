/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.product;

import java.io.PrintWriter;
import org.eclipse.pde.internal.core.iproduct.ILicenseInfo;
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.eclipse.pde.internal.core.product.ProductObject;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;

public class LicenseInfo
extends ProductObject
implements ILicenseInfo {
    public static final String P_URL = "url";
    public static final String P_LICENSE = "text";
    private static final long serialVersionUID = 1L;
    private String fURL;
    private String fLicense;

    public LicenseInfo(IProductModel model) {
        super(model);
    }

    public void setURL(String url) {
        String old = this.fURL;
        this.fURL = url;
        if (this.isEditable()) {
            this.firePropertyChanged(P_URL, old, this.fURL);
        }
    }

    public String getURL() {
        return this.fURL;
    }

    public String getLicense() {
        return this.fLicense;
    }

    public void setLicense(String text) {
        String old = this.fLicense;
        this.fLicense = text;
        if (this.isEditable()) {
            this.firePropertyChanged(P_LICENSE, old, this.fLicense);
        }
    }

    public void parse(Node node) {
        NodeList children = node.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1) {
                Node text;
                if (child.getNodeName().equals(P_LICENSE)) {
                    child.normalize();
                    if (child.getChildNodes().getLength() > 0 && (text = child.getFirstChild()).getNodeType() == 3) {
                        this.fLicense = ((Text)text).getData().trim();
                    }
                }
                if (child.getNodeName().equals(P_URL)) {
                    child.normalize();
                    if (child.getChildNodes().getLength() > 0 && (text = child.getFirstChild()).getNodeType() == 3) {
                        this.fURL = ((Text)text).getData().trim();
                    }
                }
            }
            ++i;
        }
    }

    public void write(String indent, PrintWriter writer) {
        if (this.isURLDefined() || this.isLicenseTextDefined()) {
            writer.println(String.valueOf(indent) + "<license>");
            if (this.isURLDefined()) {
                writer.println(String.valueOf(indent) + "     <url>" + this.getWritableString(this.fURL.trim()) + "</url>");
            }
            if (this.isLicenseTextDefined()) {
                writer.println(String.valueOf(indent) + "     <text>");
                writer.println(String.valueOf(indent) + this.getWritableString(this.fLicense.trim()));
                writer.println(String.valueOf(indent) + "      </text>");
            }
            writer.println(String.valueOf(indent) + "</license>");
        }
    }

    private boolean isURLDefined() {
        return this.fURL != null && this.fURL.length() > 0;
    }

    private boolean isLicenseTextDefined() {
        return this.fLicense != null && this.fLicense.length() > 0;
    }
}

