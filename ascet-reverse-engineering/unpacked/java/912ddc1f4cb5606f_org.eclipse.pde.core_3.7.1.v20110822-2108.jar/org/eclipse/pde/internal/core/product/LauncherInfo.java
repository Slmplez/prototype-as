/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.product;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.pde.internal.core.iproduct.ILauncherInfo;
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.eclipse.pde.internal.core.product.ProductObject;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class LauncherInfo
extends ProductObject
implements ILauncherInfo {
    private static final long serialVersionUID = 1L;
    private boolean fUseIcoFile;
    private Map fIcons = new HashMap();
    private String fLauncherName;

    public LauncherInfo(IProductModel model) {
        super(model);
    }

    public String getLauncherName() {
        return this.fLauncherName;
    }

    public void setLauncherName(String name) {
        String old = this.fLauncherName;
        this.fLauncherName = name;
        if (this.isEditable()) {
            this.firePropertyChanged("launcher", old, this.fLauncherName);
        }
    }

    public void setIconPath(String iconId, String path) {
        if (path == null) {
            path = "";
        }
        String old = (String)this.fIcons.get(iconId);
        this.fIcons.put(iconId, path);
        if (this.isEditable()) {
            this.firePropertyChanged(iconId, old, path);
        }
    }

    public String getIconPath(String iconId) {
        return (String)this.fIcons.get(iconId);
    }

    public boolean usesWinIcoFile() {
        return this.fUseIcoFile;
    }

    public void setUseWinIcoFile(boolean use) {
        boolean old = this.fUseIcoFile;
        this.fUseIcoFile = use;
        if (this.isEditable()) {
            this.firePropertyChanged("useIco", Boolean.toString(old), Boolean.toString(this.fUseIcoFile));
        }
    }

    public void parse(Node node) {
        if (node.getNodeType() == 1) {
            this.fLauncherName = ((Element)node).getAttribute("name");
            NodeList children = node.getChildNodes();
            int i = 0;
            while (i < children.getLength()) {
                Node child = children.item(i);
                if (child.getNodeType() == 1) {
                    String name = child.getNodeName();
                    if (name.equals("linux")) {
                        this.parseLinux((Element)child);
                    } else if (name.equals("macosx")) {
                        this.parseMac((Element)child);
                    } else if (name.equals("solaris")) {
                        this.parseSolaris((Element)child);
                    } else if (name.equals("win")) {
                        this.parseWin((Element)child);
                    }
                }
                ++i;
            }
        }
    }

    private void parseWin(Element element) {
        this.fUseIcoFile = "true".equals(element.getAttribute("useIco"));
        NodeList children = element.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            if (children.item(i).getNodeType() == 1) {
                Element child = (Element)children.item(i);
                String name = child.getNodeName();
                if (name.equals("ico")) {
                    this.fIcons.put("icoFile", child.getAttribute("path"));
                } else if (name.equals("bmp")) {
                    this.fIcons.put("winSmallHigh", child.getAttribute("winSmallHigh"));
                    this.fIcons.put("winSmallLow", child.getAttribute("winSmallLow"));
                    this.fIcons.put("winMediumHigh", child.getAttribute("winMediumHigh"));
                    this.fIcons.put("winMediumLow", child.getAttribute("winMediumLow"));
                    this.fIcons.put("winLargeHigh", child.getAttribute("winLargeHigh"));
                    this.fIcons.put("winLargeLow", child.getAttribute("winLargeLow"));
                }
            }
            ++i;
        }
    }

    private void parseSolaris(Element element) {
        this.fIcons.put("solarisLarge", element.getAttribute("solarisLarge"));
        this.fIcons.put("solarisMedium", element.getAttribute("solarisMedium"));
        this.fIcons.put("solarisSmall", element.getAttribute("solarisSmall"));
        this.fIcons.put("solarisTiny", element.getAttribute("solarisTiny"));
    }

    private void parseMac(Element element) {
        this.fIcons.put("macosxIcon", element.getAttribute("icon"));
    }

    private void parseLinux(Element element) {
        this.fIcons.put("linuxIcon", element.getAttribute("icon"));
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(String.valueOf(indent) + "<launcher");
        if (this.fLauncherName != null && this.fLauncherName.length() > 0) {
            writer.print(" name=\"" + this.fLauncherName + "\"");
        }
        writer.println(">");
        this.writeLinux(String.valueOf(indent) + "   ", writer);
        this.writeMac(String.valueOf(indent) + "   ", writer);
        this.writeSolaris(String.valueOf(indent) + "   ", writer);
        this.writerWin(String.valueOf(indent) + "   ", writer);
        writer.println(String.valueOf(indent) + "</launcher>");
    }

    private void writerWin(String indent, PrintWriter writer) {
        writer.println(String.valueOf(indent) + "<win " + "useIco" + "=\"" + Boolean.toString(this.fUseIcoFile) + "\">");
        String path = (String)this.fIcons.get("icoFile");
        if (path != null && path.length() > 0) {
            writer.println(String.valueOf(indent) + "   <ico path=\"" + this.getWritableString(path) + "\"/>");
        }
        writer.print(String.valueOf(indent) + "   <bmp");
        this.writeIcon(String.valueOf(indent) + "   ", "winSmallHigh", writer);
        this.writeIcon(String.valueOf(indent) + "   ", "winSmallLow", writer);
        this.writeIcon(String.valueOf(indent) + "   ", "winMediumHigh", writer);
        this.writeIcon(String.valueOf(indent) + "   ", "winMediumLow", writer);
        this.writeIcon(String.valueOf(indent) + "   ", "winLargeHigh", writer);
        this.writeIcon(String.valueOf(indent) + "   ", "winLargeLow", writer);
        writer.println("/>");
        writer.println(String.valueOf(indent) + "</win>");
    }

    private void writeSolaris(String indent, PrintWriter writer) {
        writer.print(String.valueOf(indent) + "<solaris");
        this.writeIcon(String.valueOf(indent) + "   ", "solarisLarge", writer);
        this.writeIcon(String.valueOf(indent) + "   ", "solarisMedium", writer);
        this.writeIcon(String.valueOf(indent) + "   ", "solarisSmall", writer);
        this.writeIcon(String.valueOf(indent) + "   ", "solarisTiny", writer);
        writer.println("/>");
    }

    private void writeIcon(String indent, String iconId, PrintWriter writer) {
        String icon = (String)this.fIcons.get(iconId);
        if (icon != null && icon.length() > 0) {
            writer.println();
            writer.print(String.valueOf(indent) + "   " + iconId + "=\"" + this.getWritableString(icon) + "\"");
        }
    }

    private void writeMac(String indent, PrintWriter writer) {
        String icon = (String)this.fIcons.get("macosxIcon");
        if (icon != null && icon.length() > 0) {
            writer.println(String.valueOf(indent) + "<macosx icon=\"" + this.getWritableString(icon) + "\"/>");
        }
    }

    private void writeLinux(String indent, PrintWriter writer) {
        String icon = (String)this.fIcons.get("linuxIcon");
        if (icon != null && icon.length() > 0) {
            writer.println(String.valueOf(indent) + "<linux icon=\"" + this.getWritableString(icon) + "\"/>");
        }
    }
}

