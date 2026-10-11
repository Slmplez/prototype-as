/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLAppletElement;

public class HTMLAppletElementImpl
extends HTMLElementImpl
implements HTMLAppletElement {
    private static final long serialVersionUID = 8375794094117740967L;

    public String getAlign() {
        return this.getAttribute("align");
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

    public String getArchive() {
        return this.getAttribute("archive");
    }

    public void setArchive(String string) {
        this.setAttribute("archive", string);
    }

    public String getCode() {
        return this.getAttribute("code");
    }

    public void setCode(String string) {
        this.setAttribute("code", string);
    }

    public String getCodeBase() {
        return this.getAttribute("codebase");
    }

    public void setCodeBase(String string) {
        this.setAttribute("codebase", string);
    }

    public String getHeight() {
        return this.getAttribute("height");
    }

    public void setHeight(String string) {
        this.setAttribute("height", string);
    }

    public String getHspace() {
        return this.getAttribute("height");
    }

    public void setHspace(String string) {
        this.setAttribute("height", string);
    }

    public String getName() {
        return this.getAttribute("name");
    }

    public void setName(String string) {
        this.setAttribute("name", string);
    }

    public String getObject() {
        return this.getAttribute("object");
    }

    public void setObject(String string) {
        this.setAttribute("object", string);
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

    public HTMLAppletElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

