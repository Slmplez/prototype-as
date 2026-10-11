/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.product;

import java.io.PrintWriter;
import org.eclipse.pde.internal.core.iproduct.IPluginConfiguration;
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.eclipse.pde.internal.core.product.ProductObject;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class PluginConfiguration
extends ProductObject
implements IPluginConfiguration {
    private static final long serialVersionUID = -3549668957352554876L;
    private boolean fAutoStart;
    private int fStartLevel;
    private String fId;

    PluginConfiguration(IProductModel model) {
        super(model);
    }

    public void parse(Node node) {
        if (node.getNodeType() == 1) {
            Element element = (Element)node;
            this.fId = element.getAttribute("id");
            this.fAutoStart = Boolean.valueOf(element.getAttribute("autoStart"));
            this.fStartLevel = Integer.parseInt(element.getAttribute("startLevel"));
        }
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(String.valueOf(indent) + "<plugin id=\"" + this.fId + "\"");
        writer.print(" autoStart=\"" + this.fAutoStart + "\"");
        writer.print(" startLevel=\"" + this.fStartLevel + "\"");
        writer.println(" />");
    }

    public String getId() {
        return this.fId;
    }

    public int getStartLevel() {
        return this.fStartLevel;
    }

    public boolean isAutoStart() {
        return this.fAutoStart;
    }

    public void setAutoStart(boolean autostart) {
        boolean oldValue = this.fAutoStart;
        this.fAutoStart = autostart;
        if (this.isEditable() && oldValue != this.fAutoStart) {
            this.firePropertyChanged("autoStart", new Boolean(oldValue), new Boolean(this.fAutoStart));
        }
    }

    public void setStartLevel(int startLevel) {
        int oldValue = this.fStartLevel;
        this.fStartLevel = startLevel;
        if (this.isEditable() && oldValue != this.fStartLevel) {
            this.firePropertyChanged("startLevel", new Integer(oldValue), new Integer(this.fStartLevel));
        }
    }

    public void setId(String id) {
        this.fId = id;
    }
}

