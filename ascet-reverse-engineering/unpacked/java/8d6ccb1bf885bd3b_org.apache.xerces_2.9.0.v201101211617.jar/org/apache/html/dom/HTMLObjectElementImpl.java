/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.apache.html.dom.HTMLFormControl;
import org.w3c.dom.html.HTMLObjectElement;

public class HTMLObjectElementImpl
extends HTMLElementImpl
implements HTMLObjectElement,
HTMLFormControl {
    private static final long serialVersionUID = 2276953229932965067L;

    public String getCode() {
        return this.getAttribute("code");
    }

    public void setCode(String string) {
        this.setAttribute("code", string);
    }

    public String getAlign() {
        return this.capitalize(this.getAttribute("align"));
    }

    public void setAlign(String string) {
        this.setAttribute("align", string);
    }

    public String getArchive() {
        return this.getAttribute("archive");
    }

    public void setArchive(String string) {
        this.setAttribute("archive", string);
    }

    public String getBorder() {
        return this.getAttribute("border");
    }

    public void setBorder(String string) {
        this.setAttribute("border", string);
    }

    public String getCodeBase() {
        return this.getAttribute("codebase");
    }

    public void setCodeBase(String string) {
        this.setAttribute("codebase", string);
    }

    public String getCodeType() {
        return this.getAttribute("codetype");
    }

    public void setCodeType(String string) {
        this.setAttribute("codetype", string);
    }

    public String getData() {
        return this.getAttribute("data");
    }

    public void setData(String string) {
        this.setAttribute("data", string);
    }

    public boolean getDeclare() {
        return this.getBinary("declare");
    }

    public void setDeclare(boolean bl) {
        this.setAttribute("declare", bl);
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

    public String getName() {
        return this.getAttribute("name");
    }

    public void setName(String string) {
        this.setAttribute("name", string);
    }

    public String getStandby() {
        return this.getAttribute("standby");
    }

    public void setStandby(String string) {
        this.setAttribute("standby", string);
    }

    public int getTabIndex() {
        try {
            return Integer.parseInt(this.getAttribute("tabindex"));
        }
        catch (NumberFormatException numberFormatException) {
            return 0;
        }
    }

    public void setTabIndex(int n) {
        this.setAttribute("tabindex", String.valueOf(n));
    }

    public String getType() {
        return this.getAttribute("type");
    }

    public void setType(String string) {
        this.setAttribute("type", string);
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

    public HTMLObjectElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

