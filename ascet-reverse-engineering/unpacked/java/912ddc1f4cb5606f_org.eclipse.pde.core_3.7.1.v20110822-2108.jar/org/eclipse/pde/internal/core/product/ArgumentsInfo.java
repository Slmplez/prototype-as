/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.product;

import java.io.PrintWriter;
import org.eclipse.pde.internal.core.iproduct.IArgumentsInfo;
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.eclipse.pde.internal.core.product.ProductObject;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ArgumentsInfo
extends ProductObject
implements IArgumentsInfo {
    private static final long serialVersionUID = 1L;
    private String fProgramArgs = "";
    private String fProgramArgsLin = "";
    private String fProgramArgsMac = "";
    private String fProgramArgsSol = "";
    private String fProgramArgsWin = "";
    private String fVMArgs = "";
    private String fVMArgsLin = "";
    private String fVMArgsMac = "";
    private String fVMArgsSol = "";
    private String fVMArgsWin = "";

    public ArgumentsInfo(IProductModel model) {
        super(model);
    }

    public void setProgramArguments(String args, int platform) {
        if (args == null) {
            args = "";
        }
        switch (platform) {
            case 0: {
                String old = this.fProgramArgs;
                this.fProgramArgs = args;
                if (!this.isEditable()) break;
                this.firePropertyChanged("programArgs", old, this.fProgramArgs);
                break;
            }
            case 1: {
                String old = this.fProgramArgsLin;
                this.fProgramArgsLin = args;
                if (!this.isEditable()) break;
                this.firePropertyChanged("programArgsLin", old, this.fProgramArgsLin);
                break;
            }
            case 2: {
                String old = this.fProgramArgsMac;
                this.fProgramArgsMac = args;
                if (!this.isEditable()) break;
                this.firePropertyChanged("programArgsMac", old, this.fProgramArgsMac);
                break;
            }
            case 3: {
                String old = this.fProgramArgsSol;
                this.fProgramArgsSol = args;
                if (!this.isEditable()) break;
                this.firePropertyChanged("programArgsSol", old, this.fProgramArgsSol);
                break;
            }
            case 4: {
                String old = this.fProgramArgsWin;
                this.fProgramArgsWin = args;
                if (!this.isEditable()) break;
                this.firePropertyChanged("programArgsWin", old, this.fProgramArgsWin);
            }
        }
    }

    public String getProgramArguments(int platform) {
        switch (platform) {
            case 0: {
                return this.fProgramArgs;
            }
            case 1: {
                return this.fProgramArgsLin;
            }
            case 2: {
                return this.fProgramArgsMac;
            }
            case 3: {
                return this.fProgramArgsSol;
            }
            case 4: {
                return this.fProgramArgsWin;
            }
        }
        return "";
    }

    public String getCompleteProgramArguments(String os) {
        if ("win32".equals(os)) {
            return this.getCompleteArgs(this.getProgramArguments(4), this.fProgramArgs);
        }
        if ("linux".equals(os)) {
            return this.getCompleteArgs(this.getProgramArguments(1), this.fProgramArgs);
        }
        if ("macosx".equals(os)) {
            return this.getCompleteArgs(this.getProgramArguments(2), this.fProgramArgs);
        }
        if ("solaris".equals(os)) {
            return this.getCompleteArgs(this.getProgramArguments(3), this.fProgramArgs);
        }
        return this.getProgramArguments(0);
    }

    public void setVMArguments(String args, int platform) {
        if (args == null) {
            args = "";
        }
        switch (platform) {
            case 0: {
                String old = this.fVMArgs;
                this.fVMArgs = args;
                if (!this.isEditable()) break;
                this.firePropertyChanged("vmArgs", old, this.fVMArgs);
                break;
            }
            case 1: {
                String old = this.fVMArgsLin;
                this.fVMArgsLin = args;
                if (!this.isEditable()) break;
                this.firePropertyChanged("vmArgsLin", old, this.fVMArgsLin);
                break;
            }
            case 2: {
                String old = this.fVMArgsMac;
                this.fVMArgsMac = args;
                if (!this.isEditable()) break;
                this.firePropertyChanged("vmArgsMac", old, this.fVMArgsMac);
                break;
            }
            case 3: {
                String old = this.fVMArgsSol;
                this.fVMArgsSol = args;
                if (!this.isEditable()) break;
                this.firePropertyChanged("vmArgsSol", old, this.fVMArgsSol);
                break;
            }
            case 4: {
                String old = this.fVMArgsWin;
                this.fVMArgsWin = args;
                if (!this.isEditable()) break;
                this.firePropertyChanged("vmArgsWin", old, this.fVMArgsWin);
            }
        }
    }

    public String getVMArguments(int platform) {
        switch (platform) {
            case 0: {
                return this.fVMArgs;
            }
            case 1: {
                return this.fVMArgsLin;
            }
            case 2: {
                return this.fVMArgsMac;
            }
            case 3: {
                return this.fVMArgsSol;
            }
            case 4: {
                return this.fVMArgsWin;
            }
        }
        return "";
    }

    public String getCompleteVMArguments(String os) {
        if ("win32".equals(os)) {
            return this.getCompleteArgs(this.getVMArguments(4), this.fVMArgs);
        }
        if ("linux".equals(os)) {
            return this.getCompleteArgs(this.getVMArguments(1), this.fVMArgs);
        }
        if ("macosx".equals(os)) {
            return this.getCompleteArgs(this.getVMArguments(2), this.fVMArgs);
        }
        if ("solaris".equals(os)) {
            return this.getCompleteArgs(this.getVMArguments(3), this.fVMArgs);
        }
        return this.getVMArguments(0);
    }

    private String getCompleteArgs(String platformArgs, String univArgs) {
        String args = platformArgs;
        if (univArgs.length() > 0) {
            args = String.valueOf(univArgs) + " " + args;
        }
        return args.trim();
    }

    public void parse(Node node) {
        NodeList list = node.getChildNodes();
        int i = 0;
        while (i < list.getLength()) {
            Node child = list.item(i);
            if (child.getNodeType() == 1) {
                if (child.getNodeName().equals("programArgs")) {
                    this.fProgramArgs = this.getText(child);
                } else if (child.getNodeName().equals("programArgsLin")) {
                    this.fProgramArgsLin = this.getText(child);
                } else if (child.getNodeName().equals("programArgsMac")) {
                    this.fProgramArgsMac = this.getText(child);
                } else if (child.getNodeName().equals("programArgsSol")) {
                    this.fProgramArgsSol = this.getText(child);
                } else if (child.getNodeName().equals("programArgsWin")) {
                    this.fProgramArgsWin = this.getText(child);
                } else if (child.getNodeName().equals("vmArgs")) {
                    this.fVMArgs = this.getText(child);
                } else if (child.getNodeName().equals("vmArgsLin")) {
                    this.fVMArgsLin = this.getText(child);
                } else if (child.getNodeName().equals("vmArgsMac")) {
                    this.fVMArgsMac = this.getText(child);
                } else if (child.getNodeName().equals("vmArgsSol")) {
                    this.fVMArgsSol = this.getText(child);
                } else if (child.getNodeName().equals("vmArgsWin")) {
                    this.fVMArgsWin = this.getText(child);
                }
            }
            ++i;
        }
    }

    private String getText(Node node) {
        node.normalize();
        Node text = node.getFirstChild();
        if (text != null && text.getNodeType() == 3) {
            return text.getNodeValue();
        }
        return "";
    }

    public void write(String indent, PrintWriter writer) {
        writer.println(String.valueOf(indent) + "<launcherArgs>");
        if (this.fProgramArgs.length() > 0) {
            writer.println(String.valueOf(indent) + "   " + "<" + "programArgs" + ">" + this.getWritableString(this.fProgramArgs) + "</" + "programArgs" + ">");
        }
        if (this.fProgramArgsLin.length() > 0) {
            writer.println(String.valueOf(indent) + "   " + "<" + "programArgsLin" + ">" + this.getWritableString(this.fProgramArgsLin) + "</" + "programArgsLin" + ">");
        }
        if (this.fProgramArgsMac.length() > 0) {
            writer.println(String.valueOf(indent) + "   " + "<" + "programArgsMac" + ">" + this.getWritableString(this.fProgramArgsMac) + "</" + "programArgsMac" + ">");
        }
        if (this.fProgramArgsSol.length() > 0) {
            writer.println(String.valueOf(indent) + "   " + "<" + "programArgsSol" + ">" + this.getWritableString(this.fProgramArgsSol) + "</" + "programArgsSol" + ">");
        }
        if (this.fProgramArgsWin.length() > 0) {
            writer.println(String.valueOf(indent) + "   " + "<" + "programArgsWin" + ">" + this.getWritableString(this.fProgramArgsWin) + "</" + "programArgsWin" + ">");
        }
        if (this.fVMArgs.length() > 0) {
            writer.println(String.valueOf(indent) + "   " + "<" + "vmArgs" + ">" + this.getWritableString(this.fVMArgs) + "</" + "vmArgs" + ">");
        }
        if (this.fVMArgsLin.length() > 0) {
            writer.println(String.valueOf(indent) + "   " + "<" + "vmArgsLin" + ">" + this.getWritableString(this.fVMArgsLin) + "</" + "vmArgsLin" + ">");
        }
        if (this.fVMArgsMac.length() > 0) {
            writer.println(String.valueOf(indent) + "   " + "<" + "vmArgsMac" + ">" + this.getWritableString(this.fVMArgsMac) + "</" + "vmArgsMac" + ">");
        }
        if (this.fVMArgsSol.length() > 0) {
            writer.println(String.valueOf(indent) + "   " + "<" + "vmArgsSol" + ">" + this.getWritableString(this.fVMArgsSol) + "</" + "vmArgsSol" + ">");
        }
        if (this.fVMArgsWin.length() > 0) {
            writer.println(String.valueOf(indent) + "   " + "<" + "vmArgsWin" + ">" + this.getWritableString(this.fVMArgsWin) + "</" + "vmArgsWin" + ">");
        }
        writer.println(String.valueOf(indent) + "</launcherArgs>");
    }
}

