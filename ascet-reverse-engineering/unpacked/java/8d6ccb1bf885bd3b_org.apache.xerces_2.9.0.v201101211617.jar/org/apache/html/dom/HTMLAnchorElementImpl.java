/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLAnchorElement;

public class HTMLAnchorElementImpl
extends HTMLElementImpl
implements HTMLAnchorElement {
    private static final long serialVersionUID = -140558580924061847L;

    public String getAccessKey() {
        String string = this.getAttribute("accesskey");
        if (string != null && string.length() > 1) {
            string = string.substring(0, 1);
        }
        return string;
    }

    public void setAccessKey(String string) {
        if (string != null && string.length() > 1) {
            string = string.substring(0, 1);
        }
        this.setAttribute("accesskey", string);
    }

    public String getCharset() {
        return this.getAttribute("charset");
    }

    public void setCharset(String string) {
        this.setAttribute("charset", string);
    }

    public String getCoords() {
        return this.getAttribute("coords");
    }

    public void setCoords(String string) {
        this.setAttribute("coords", string);
    }

    public String getHref() {
        return this.getAttribute("href");
    }

    public void setHref(String string) {
        this.setAttribute("href", string);
    }

    public String getHreflang() {
        return this.getAttribute("hreflang");
    }

    public void setHreflang(String string) {
        this.setAttribute("hreflang", string);
    }

    public String getName() {
        return this.getAttribute("name");
    }

    public void setName(String string) {
        this.setAttribute("name", string);
    }

    public String getRel() {
        return this.getAttribute("rel");
    }

    public void setRel(String string) {
        this.setAttribute("rel", string);
    }

    public String getRev() {
        return this.getAttribute("rev");
    }

    public void setRev(String string) {
        this.setAttribute("rev", string);
    }

    public String getShape() {
        return this.capitalize(this.getAttribute("shape"));
    }

    public void setShape(String string) {
        this.setAttribute("shape", string);
    }

    public int getTabIndex() {
        return this.getInteger(this.getAttribute("tabindex"));
    }

    public void setTabIndex(int n) {
        this.setAttribute("tabindex", String.valueOf(n));
    }

    public String getTarget() {
        return this.getAttribute("target");
    }

    public void setTarget(String string) {
        this.setAttribute("target", string);
    }

    public String getType() {
        return this.getAttribute("type");
    }

    public void setType(String string) {
        this.setAttribute("type", string);
    }

    public void blur() {
    }

    public void focus() {
    }

    public HTMLAnchorElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

