/*
 * Decompiled with CFR 0.152.
 */
package org.apache.wml.dom;

import org.apache.wml.WMLImgElement;
import org.apache.wml.dom.WMLDocumentImpl;
import org.apache.wml.dom.WMLElementImpl;

public class WMLImgElementImpl
extends WMLElementImpl
implements WMLImgElement {
    private static final long serialVersionUID = -500092034867051550L;

    public WMLImgElementImpl(WMLDocumentImpl wMLDocumentImpl, String string) {
        super(wMLDocumentImpl, string);
    }

    public void setWidth(String string) {
        this.setAttribute("width", string);
    }

    public String getWidth() {
        return this.getAttribute("width");
    }

    public void setClassName(String string) {
        this.setAttribute("class", string);
    }

    public String getClassName() {
        return this.getAttribute("class");
    }

    public void setXmlLang(String string) {
        this.setAttribute("xml:lang", string);
    }

    public String getXmlLang() {
        return this.getAttribute("xml:lang");
    }

    public void setLocalSrc(String string) {
        this.setAttribute("localsrc", string);
    }

    public String getLocalSrc() {
        return this.getAttribute("localsrc");
    }

    public void setHeight(String string) {
        this.setAttribute("height", string);
    }

    public String getHeight() {
        return this.getAttribute("height");
    }

    public void setAlign(String string) {
        this.setAttribute("align", string);
    }

    public String getAlign() {
        return this.getAttribute("align");
    }

    public void setVspace(String string) {
        this.setAttribute("vspace", string);
    }

    public String getVspace() {
        return this.getAttribute("vspace");
    }

    public void setAlt(String string) {
        this.setAttribute("alt", string);
    }

    public String getAlt() {
        return this.getAttribute("alt");
    }

    public void setId(String string) {
        this.setAttribute("id", string);
    }

    public String getId() {
        return this.getAttribute("id");
    }

    public void setHspace(String string) {
        this.setAttribute("hspace", string);
    }

    public String getHspace() {
        return this.getAttribute("hspace");
    }

    public void setSrc(String string) {
        this.setAttribute("src", string);
    }

    public String getSrc() {
        return this.getAttribute("src");
    }
}

