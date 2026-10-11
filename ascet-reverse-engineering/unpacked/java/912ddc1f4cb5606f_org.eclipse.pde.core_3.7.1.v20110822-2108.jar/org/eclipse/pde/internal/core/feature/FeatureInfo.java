/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.feature;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.feature.FeatureObject;
import org.eclipse.pde.internal.core.ifeature.IFeature;
import org.eclipse.pde.internal.core.ifeature.IFeatureInfo;
import org.w3c.dom.Node;

public class FeatureInfo
extends FeatureObject
implements IFeatureInfo {
    private static final long serialVersionUID = 1L;
    private String url;
    private String description;
    private int index;

    public FeatureInfo(int index) {
        this.index = index;
    }

    public int getIndex() {
        return this.index;
    }

    private String getTag() {
        return IFeature.INFO_TAGS[this.index];
    }

    public String getURL() {
        return this.url;
    }

    public String getDescription() {
        return this.description;
    }

    public void setURL(String url) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.url;
        this.url = url;
        this.firePropertyChanged("p_url", oldValue, url);
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("p_desc")) {
            this.setDescription(newValue != null ? newValue.toString() : null);
        } else if (name.equals("p_url")) {
            this.setURL(newValue != null ? newValue.toString() : null);
        } else {
            super.restoreProperty(name, oldValue, newValue);
        }
    }

    public void setDescription(String description) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.description;
        this.description = description;
        this.firePropertyChanged("p_desc", oldValue, description);
    }

    protected void parse(Node node) {
        this.url = this.getNodeAttribute(node, "url");
        Node firstChild = node.getFirstChild();
        if (firstChild != null) {
            this.description = this.getNormalizedText(firstChild.getNodeValue());
        }
    }

    public void write(String indent, PrintWriter writer) {
        String indent2 = String.valueOf(indent) + "   ";
        String desc = this.description != null ? this.getWritableString(this.description.trim()) : null;
        writer.println();
        writer.print(String.valueOf(indent) + "<" + this.getTag());
        if (this.url != null) {
            writer.print(" url=\"" + this.getWritableString(this.url) + "\"");
        }
        writer.println(">");
        if (desc != null) {
            writer.println(String.valueOf(indent2) + desc);
        }
        writer.println(String.valueOf(indent) + "</" + this.getTag() + ">");
    }

    public boolean isEmpty() {
        String desc;
        if (this.url != null) {
            return false;
        }
        String string = desc = this.description != null ? this.description.trim() : null;
        return desc == null || desc.length() <= 0;
    }

    public String toString() {
        switch (this.index) {
            case 0: {
                return PDECoreMessages.FeatureInfo_description;
            }
            case 2: {
                return PDECoreMessages.FeatureInfo_license;
            }
            case 1: {
                return PDECoreMessages.FeatureInfo_copyright;
            }
        }
        return super.toString();
    }
}

