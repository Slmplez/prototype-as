/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLFrameElement;

public class HTMLFrameElementImpl
extends HTMLElementImpl
implements HTMLFrameElement {
    private static final long serialVersionUID = 635237057173695984L;

    public String getFrameBorder() {
        return this.getAttribute("frameborder");
    }

    public void setFrameBorder(String string) {
        this.setAttribute("frameborder", string);
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

    public boolean getNoResize() {
        return this.getBinary("noresize");
    }

    public void setNoResize(boolean bl) {
        this.setAttribute("noresize", bl);
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

    public HTMLFrameElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

