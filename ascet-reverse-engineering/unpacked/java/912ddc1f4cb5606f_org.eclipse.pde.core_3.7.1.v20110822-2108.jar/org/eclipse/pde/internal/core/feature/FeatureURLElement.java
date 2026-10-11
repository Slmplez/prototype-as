/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.feature;

import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.feature.FeatureObject;
import org.eclipse.pde.internal.core.ifeature.IFeatureURLElement;
import org.w3c.dom.Node;

public class FeatureURLElement
extends FeatureObject
implements IFeatureURLElement {
    private static final long serialVersionUID = 1L;
    private int fElementType;
    private int fSiteType = 0;
    private URL fUrl;

    public FeatureURLElement(int elementType) {
        this.fElementType = elementType;
    }

    public FeatureURLElement(int elementType, URL url) {
        this.fElementType = elementType;
        this.fUrl = url;
    }

    public int getElementType() {
        return this.fElementType;
    }

    public URL getURL() {
        return this.fUrl;
    }

    public int getSiteType() {
        return this.fSiteType;
    }

    protected void parse(Node node) {
        String typeName;
        super.parse(node);
        String urlName = this.getNodeAttribute(node, "url");
        try {
            if (urlName != null) {
                this.fUrl = new URL(urlName);
            }
        }
        catch (MalformedURLException malformedURLException) {}
        if ((typeName = this.getNodeAttribute(node, "type")) != null && typeName.equals("web")) {
            this.fSiteType = 1;
        }
    }

    public void setURL(URL url) throws CoreException {
        this.ensureModelEditable();
        URL oldValue = this.fUrl;
        this.fUrl = url;
        this.firePropertyChanged(this, "url", oldValue, url);
    }

    public void setSiteType(int type) throws CoreException {
        this.ensureModelEditable();
        Integer oldValue = new Integer(this.fSiteType);
        this.fSiteType = type;
        this.firePropertyChanged(this, "url", oldValue, new Integer(type));
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("url")) {
            this.setURL((URL)newValue);
        } else if (name.equals("siteType")) {
            this.setSiteType((Integer)newValue);
        } else {
            super.restoreProperty(name, oldValue, newValue);
        }
    }

    public String toString() {
        if (this.label != null) {
            return this.label;
        }
        if (this.fUrl != null) {
            return this.fUrl.toString();
        }
        return super.toString();
    }

    public void write(String indent, PrintWriter writer) {
        String tag = null;
        switch (this.fElementType) {
            case 1: {
                tag = "update";
                break;
            }
            case 2: {
                tag = "discovery";
            }
        }
        if (tag == null) {
            return;
        }
        writer.print(String.valueOf(indent) + "<" + tag);
        if (this.label != null && this.label.length() > 0) {
            writer.print(" label=\"" + this.getWritableString(this.label) + "\"");
        }
        if (this.fUrl != null) {
            writer.print(" url=\"" + this.getWritableString(this.fUrl.toString()) + "\"");
        }
        if (this.fSiteType == 1) {
            writer.print(" type=\"web\"");
        }
        writer.println("/>");
    }
}

