/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLLinkElement;

public class HTMLLinkElementImpl
extends HTMLElementImpl
implements HTMLLinkElement {
    private static final long serialVersionUID = 874345520063418879L;

    public boolean getDisabled() {
        return this.getBinary("disabled");
    }

    public void setDisabled(boolean bl) {
        this.setAttribute("disabled", bl);
    }

    public String getCharset() {
        return this.getAttribute("charset");
    }

    public void setCharset(String string) {
        this.setAttribute("charset", string);
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

    public String getMedia() {
        return this.getAttribute("media");
    }

    public void setMedia(String string) {
        this.setAttribute("media", string);
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

    public HTMLLinkElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

