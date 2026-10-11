/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLIFrameElement;

public class HTMLIFrameElementImpl
extends HTMLElementImpl
implements HTMLIFrameElement {
    private static final long serialVersionUID = 2393622754706230429L;

    public String getAlign() {
        return this.capitalize(this.getAttribute("align"));
    }

    public void setAlign(String string) {
        this.setAttribute("align", string);
    }

    public String getFrameBorder() {
        return this.getAttribute("frameborder");
    }

    public void setFrameBorder(String string) {
        this.setAttribute("frameborder", string);
    }

    public String getHeight() {
        return this.getAttribute("height");
    }

    public void setHeight(String string) {
        this.setAttribute("height", string);
    }

    public String getLongDesc() {
        return this.getAttribute("longdesc");
    }

    public void setLongDesc(String string) {
        this.setAttribute("longdesc", string);
    }

    public String getMarginHeight() {
        return this.getAttribute("marginheight");
    }

    public void setMarginHeight(String string) {
        this.setAttribute("marginheight", string);
    }

    public String getMarginWidth() {
        return this.getAttribute("marginwidth");
    }

    public void setMarginWidth(String string) {
        this.setAttribute("marginwidth", string);
    }

    public String getName() {
        return this.getAttribute("name");
    }

    public void setName(String string) {
        this.setAttribute("name", string);
    }

    public String getScrolling() {
        return this.capitalize(this.getAttribute("scrolling"));
    }

    public void setScrolling(String string) {
        this.setAttribute("scrolling", string);
    }

    public String getSrc() {
        return this.getAttribute("src");
    }

    public void setSrc(String string) {
        this.setAttribute("src", string);
    }

    public String getWidth() {
        return this.getAttribute("width");
    }

    public void setWidth(String string) {
        this.setAttribute("width", string);
    }

    public HTMLIFrameElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

