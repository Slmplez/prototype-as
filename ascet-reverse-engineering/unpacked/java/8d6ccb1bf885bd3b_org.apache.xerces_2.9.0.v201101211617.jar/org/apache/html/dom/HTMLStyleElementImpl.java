/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLStyleElement;

public class HTMLStyleElementImpl
extends HTMLElementImpl
implements HTMLStyleElement {
    private static final long serialVersionUID = -9001815754196124532L;

    public boolean getDisabled() {
        return this.getBinary("disabled");
    }

    public void setDisabled(boolean bl) {
        this.setAttribute("disabled", bl);
    }

    public String getMedia() {
        return this.getAttribute("media");
    }

    public void setMedia(String string) {
        this.setAttribute("media", string);
    }

    public String getType() {
        return this.getAttribute("type");
    }

    public void setType(String string) {
        this.setAttribute("type", string);
    }

    public HTMLStyleElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

