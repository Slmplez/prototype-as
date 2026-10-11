/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.jdt.launching.IVMInstall
 *  org.eclipse.jdt.launching.JavaRuntime
 */
package org.eclipse.pde.internal.core.product;

import java.io.File;
import java.io.PrintWriter;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.pde.internal.core.iproduct.IJREInfo;
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.eclipse.pde.internal.core.product.ProductObject;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class JREInfo
extends ProductObject
implements IJREInfo {
    private static final String JRE_LIN = "linux";
    private static final String JRE_MAC = "macos";
    private static final String JRE_SOL = "solaris";
    private static final String JRE_WIN = "windows";
    private static final long serialVersionUID = 1L;
    private IPath fJVMLin;
    private IPath fJVMMac;
    private IPath fJVMSol;
    private IPath fJVMWin;
    private boolean bIncludeLin;
    private boolean bIncludeMac;
    private boolean bIncludeSol;
    private boolean bIncludeWin;

    public JREInfo(IProductModel model) {
        super(model);
    }

    public IPath getJREContainerPath(String os) {
        if ("win32".equals(os)) {
            return this.fJVMWin;
        }
        if (JRE_LIN.equals(os)) {
            return this.fJVMLin;
        }
        if ("macosx".equals(os)) {
            return this.fJVMMac;
        }
        if (JRE_SOL.equals(os)) {
            return this.fJVMSol;
        }
        return null;
    }

    public void setJREContainerPath(String os, IPath jreContainerPath) {
        if ("win32".equals(os)) {
            IPath old = this.fJVMWin;
            this.fJVMWin = jreContainerPath;
            if (this.isEditable()) {
                this.firePropertyChanged(JRE_WIN, old, this.fJVMWin);
            }
        } else if (JRE_LIN.equals(os)) {
            IPath old = this.fJVMLin;
            this.fJVMLin = jreContainerPath;
            if (this.isEditable()) {
                this.firePropertyChanged(JRE_LIN, old, this.fJVMLin);
            }
        } else if ("macosx".equals(os)) {
            IPath old = this.fJVMMac;
            this.fJVMMac = jreContainerPath;
            if (this.isEditable()) {
                this.firePropertyChanged(JRE_MAC, old, this.fJVMMac);
            }
        } else if (JRE_SOL.equals(os)) {
            IPath old = this.fJVMSol;
            this.fJVMSol = jreContainerPath;
            if (this.isEditable()) {
                this.firePropertyChanged(JRE_SOL, old, this.fJVMSol);
            }
        }
    }

    public File getJVMLocation(String os) {
        IPath jreContainerPath = this.getJREContainerPath(os);
        if (jreContainerPath == null) {
            return null;
        }
        IVMInstall vm = JavaRuntime.getVMInstall((IPath)jreContainerPath);
        if (vm != null) {
            return vm.getInstallLocation();
        }
        return null;
    }

    public void parse(Node node) {
        NodeList list = node.getChildNodes();
        int i = 0;
        while (i < list.getLength()) {
            Node child = list.item(i);
            if (child.getNodeType() == 1) {
                boolean include;
                Node includeNode = child.getAttributes().getNamedItem("include");
                boolean bl = include = includeNode != null ? Boolean.valueOf(includeNode.getNodeValue()) : true;
                if (child.getNodeName().equals(JRE_LIN)) {
                    this.fJVMLin = this.getPath(child);
                    this.bIncludeLin = include;
                } else if (child.getNodeName().equals(JRE_MAC)) {
                    this.fJVMMac = this.getPath(child);
                    this.bIncludeMac = include;
                } else if (child.getNodeName().equals(JRE_SOL)) {
                    this.fJVMSol = this.getPath(child);
                    this.bIncludeSol = include;
                } else if (child.getNodeName().equals(JRE_WIN)) {
                    this.fJVMWin = this.getPath(child);
                    this.bIncludeWin = include;
                }
            }
            ++i;
        }
    }

    private IPath getPath(Node node) {
        String pathString;
        node.normalize();
        Node text = node.getFirstChild();
        if (text != null && text.getNodeType() == 3 && (pathString = text.getNodeValue()) != null && pathString.length() > 0) {
            return new Path(pathString);
        }
        return null;
    }

    public void write(String indent, PrintWriter writer) {
        writer.println(String.valueOf(indent) + "<vm>");
        if (this.fJVMLin != null) {
            writer.print(indent);
            writer.print("   <linux include=\"" + String.valueOf(this.bIncludeLin) + "\">");
            writer.print(this.fJVMLin.toPortableString());
            writer.println("</linux>");
        }
        if (this.fJVMMac != null) {
            writer.print(indent);
            writer.print("   <macos include=\"" + String.valueOf(this.bIncludeMac) + "\">");
            writer.print(this.fJVMMac.toPortableString());
            writer.println("</macos>");
        }
        if (this.fJVMSol != null) {
            writer.print(indent);
            writer.print("   <solaris include=\"" + String.valueOf(this.bIncludeSol) + "\">");
            writer.print(this.fJVMSol.toPortableString());
            writer.println("</solaris>");
        }
        if (this.fJVMWin != null) {
            writer.print(indent);
            writer.print("   <windows include=\"" + String.valueOf(this.bIncludeWin) + "\">");
            writer.print(this.fJVMWin.toPortableString());
            writer.println("</windows>");
        }
        writer.println(String.valueOf(indent) + "</vm>");
    }

    public boolean includeJREWithProduct(String os) {
        if ("win32".equals(os)) {
            return this.bIncludeWin;
        }
        if (JRE_LIN.equals(os)) {
            return this.bIncludeLin;
        }
        if ("macosx".equals(os)) {
            return this.bIncludeMac;
        }
        if (JRE_SOL.equals(os)) {
            return this.bIncludeSol;
        }
        return false;
    }

    public void setIncludeJREWithProduct(String os, boolean includeJRE) {
        if ("win32".equals(os)) {
            Boolean old = this.bIncludeWin;
            this.bIncludeWin = includeJRE;
            if (this.isEditable()) {
                this.firePropertyChanged(JRE_WIN, old, this.bIncludeWin);
            }
        } else if (JRE_LIN.equals(os)) {
            Boolean old = this.bIncludeLin;
            this.bIncludeLin = includeJRE;
            if (this.isEditable()) {
                this.firePropertyChanged(JRE_LIN, old, this.bIncludeLin);
            }
        } else if ("macosx".equals(os)) {
            Boolean old = this.bIncludeMac;
            this.bIncludeMac = includeJRE;
            if (this.isEditable()) {
                this.firePropertyChanged(JRE_MAC, old, this.bIncludeMac);
            }
        } else if (JRE_SOL.equals(os)) {
            Boolean old = this.bIncludeSol;
            this.bIncludeSol = includeJRE;
            if (this.isEditable()) {
                this.firePropertyChanged(JRE_SOL, old, this.bIncludeSol);
            }
        }
    }
}

