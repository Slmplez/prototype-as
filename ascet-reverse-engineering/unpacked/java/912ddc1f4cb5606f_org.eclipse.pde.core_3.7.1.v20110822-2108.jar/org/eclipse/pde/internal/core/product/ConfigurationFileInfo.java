/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.product;

import java.io.PrintWriter;
import org.eclipse.pde.internal.core.iproduct.IConfigurationFileInfo;
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.eclipse.pde.internal.core.product.ProductObject;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ConfigurationFileInfo
extends ProductObject
implements IConfigurationFileInfo {
    private static final long serialVersionUID = 1L;
    private String fUse;
    private String fPath;
    private static final String LIN = "linux";
    private static final String MAC = "macosx";
    private static final String SOL = "solaris";
    private static final String WIN = "win32";
    private String fLinPath;
    private String fLinUse;
    private String fMacPath;
    private String fMacUse;
    private String fSolPath;
    private String fSolUse;
    private String fWinPath;
    private String fWinUse;

    public ConfigurationFileInfo(IProductModel model) {
        super(model);
    }

    public void setPath(String path) {
        String old = this.fPath;
        this.fPath = path;
        if (this.isEditable()) {
            this.firePropertyChanged("path", old, this.fPath);
        }
    }

    public String getPath() {
        return this.fPath;
    }

    public void parse(Node node) {
        if (node.getNodeType() == 1) {
            Element element = (Element)node;
            this.fPath = element.getAttribute("path");
            this.fUse = element.getAttribute("use");
            NodeList list = element.getChildNodes();
            int i = 0;
            while (i < list.getLength()) {
                Node child = list.item(i);
                if (child.getNodeType() == 1) {
                    if (child.getNodeName().equals(LIN)) {
                        this.fLinPath = this.getText(child);
                        this.fLinUse = this.fLinPath == null ? "default" : "custom";
                    } else if (child.getNodeName().equals(MAC)) {
                        this.fMacPath = this.getText(child);
                        this.fMacUse = this.fMacPath == null ? "default" : "custom";
                    } else if (child.getNodeName().equals(SOL)) {
                        this.fSolPath = this.getText(child);
                        this.fSolUse = this.fSolPath == null ? "default" : "custom";
                    } else if (child.getNodeName().equals(WIN)) {
                        this.fWinPath = this.getText(child);
                        this.fWinUse = this.fWinPath == null ? "default" : "custom";
                    }
                }
                ++i;
            }
            if (this.fPath != null && this.fUse.equals("custom")) {
                if (this.fLinUse == null) {
                    this.fLinPath = this.fLinPath == null ? this.fPath : null;
                    this.fLinUse = "custom";
                }
                if (this.fMacUse == null) {
                    this.fMacPath = this.fMacPath == null ? this.fPath : null;
                    this.fMacUse = "custom";
                }
                if (this.fSolUse == null) {
                    this.fSolPath = this.fSolPath == null ? this.fPath : null;
                    this.fSolUse = "custom";
                }
                if (this.fWinUse == null) {
                    this.fWinPath = this.fWinPath == null ? this.fPath : null;
                    this.fWinUse = "custom";
                }
                this.fPath = null;
                this.fUse = "default";
            }
        }
    }

    private String getText(Node node) {
        node.normalize();
        Node text = node.getFirstChild();
        if (text != null && text.getNodeType() == 3) {
            return text.getNodeValue();
        }
        return null;
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(String.valueOf(indent) + "<configIni");
        if (this.fUse != null) {
            writer.print(" use=\"" + this.fUse + "\"");
        }
        if (this.fPath != null && this.fPath.trim().length() > 0) {
            writer.print(" path=\"" + this.getWritableString(this.fPath.trim()) + "\"");
        }
        writer.println(">");
        if (this.fLinPath != null) {
            writer.print(indent);
            writer.print("   <linux>");
            writer.print(this.getWritableString(this.fLinPath.trim()));
            writer.println("</linux>");
        }
        if (this.fMacPath != null) {
            writer.print(indent);
            writer.print("   <macosx>");
            writer.print(this.getWritableString(this.fMacPath.trim()));
            writer.println("</macosx>");
        }
        if (this.fSolPath != null) {
            writer.print(indent);
            writer.print("   <solaris>");
            writer.print(this.getWritableString(this.fSolPath.trim()));
            writer.println("</solaris>");
        }
        if (this.fWinPath != null) {
            writer.print(indent);
            writer.print("   <win32>");
            writer.print(this.getWritableString(this.fWinPath.trim()));
            writer.println("</win32>");
        }
        writer.print(String.valueOf(indent) + "</configIni>");
        writer.println();
    }

    public void setUse(String os, String use) {
        String old;
        if (os == null) {
            old = this.fUse;
            this.fUse = use;
            if (this.isEditable()) {
                this.firePropertyChanged("use", old, this.fUse);
            }
        }
        if (WIN.equals(os)) {
            old = this.fWinUse;
            this.fWinUse = use;
            if (this.isEditable()) {
                this.firePropertyChanged(WIN, old, this.fWinUse);
            }
        } else if (LIN.equals(os)) {
            old = this.fLinUse;
            this.fLinUse = use;
            if (this.isEditable()) {
                this.firePropertyChanged(LIN, old, this.fLinUse);
            }
        } else if (MAC.equals(os)) {
            old = this.fMacUse;
            this.fMacUse = use;
            if (this.isEditable()) {
                this.firePropertyChanged(MAC, old, this.fMacUse);
            }
        } else if (SOL.equals(os)) {
            old = this.fSolUse;
            this.fSolUse = use;
            if (this.isEditable()) {
                this.firePropertyChanged(SOL, old, this.fSolUse);
            }
        }
    }

    public String getUse(String os) {
        if (os == null) {
            return this.fUse;
        }
        if (WIN.equals(os)) {
            return this.fWinUse;
        }
        if (LIN.equals(os)) {
            return this.fLinUse;
        }
        if (MAC.equals(os)) {
            return this.fMacUse;
        }
        if (SOL.equals(os)) {
            return this.fSolUse;
        }
        return null;
    }

    public void setPath(String os, String path) {
        String old;
        if (os == null) {
            old = this.fPath;
            this.fPath = path;
            if (this.isEditable()) {
                this.firePropertyChanged("path", old, this.fPath);
            }
        }
        if (WIN.equals(os)) {
            old = this.fWinPath;
            this.fWinPath = path;
            if (this.isEditable()) {
                this.firePropertyChanged(WIN, old, this.fWinPath);
            }
        } else if (LIN.equals(os)) {
            old = this.fLinPath;
            this.fLinPath = path;
            if (this.isEditable()) {
                this.firePropertyChanged(LIN, old, this.fLinPath);
            }
        } else if (MAC.equals(os)) {
            old = this.fMacPath;
            this.fMacPath = path;
            if (this.isEditable()) {
                this.firePropertyChanged(MAC, old, this.fMacPath);
            }
        } else if (SOL.equals(os)) {
            old = this.fSolPath;
            this.fSolPath = path;
            if (this.isEditable()) {
                this.firePropertyChanged(SOL, old, this.fSolPath);
            }
        }
    }

    public String getPath(String os) {
        if (os == null) {
            return this.fPath;
        }
        if (WIN.equals(os)) {
            return this.fWinPath;
        }
        if (LIN.equals(os)) {
            return this.fLinPath;
        }
        if (MAC.equals(os)) {
            return this.fMacPath;
        }
        if (SOL.equals(os)) {
            return this.fSolPath;
        }
        return null;
    }
}

