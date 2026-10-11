/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLImageElement;

public class HTMLImageElementImpl
extends HTMLElementImpl
implements HTMLImageElement {
    private static final long serialVersionUID = 1424360710977241315L;

    public String getLowSrc() {
        return this.getAttribute("lowsrc");
    }

    public void setLowSrc(String string) {
        this.setAttribute("lowsrc", string);
    }

    public String getSrc() {
        return this.getAttribute("src");
    }

    public void setSrc(String string) {
        this.setAttribute("src", string);
    }

    public String getName() {
        return this.getAttribute("name");
    }

    public void setName(String string) {
        this.setAttribute("name", string);
    }

    public String getAlign() {
        return this.capitalize(this.getAttribute("align"));
    }

    public void setAlign(String string) {
        this.setAttribute("align", string);
    }

    public String getAlt() {
        return this.getAttribute("alt");
    }

    public void setAlt(String string) {
        this.setAttribute("alt", string);
    }

    public String getBorder() {
        return this.getAttribute("border");
    }

    public void setBorder(String string) {
        this.setAttribute("border", string);
    }

    public String getHeight() {
        return this.getAttribute("height");
    }

    public void setHeight(String string) {
        this.setAttribute("height", string);
    }

    public String getHspace() {
        return this.getAttribute("hspace");
    }

    public void setHspace(String string) {
        this.setAttribute("hspace", string);
    }

    public boolean getIsMap() {
        return this.getBinary("ismap");
    }

    public void setIsMap(boolean bl) {
        this.setAttribute("ismap", bl);
    }

    public String getLongDesc() {
        return this.getAttribute("longdesc");
    }

    public void setLongDesc(String string) {
        this.setAttribute("longdesc", string);
    }

    public String getUseMap() {
        return this.getAttribute("useMap");
    }

    public void setUseMap(String string) {
        this.setAttribute("useMap", string);
    }

    public String getVspace() {
        return this.getAttribute("vspace");
    }

    public void setVspace(String string) {
        this.setAttribute("vspace", string);
    }

    public String getWidth() {
        return this.getAttribute("width");
    }

    public void setWidth(String string) {
        this.setAttribute("width", string);
    }

    public HTMLImageElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

