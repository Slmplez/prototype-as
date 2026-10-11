/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLOptGroupElement;

public class HTMLOptGroupElementImpl
extends HTMLElementImpl
implements HTMLOptGroupElement {
    private static final long serialVersionUID = -8807098641226171501L;

    public boolean getDisabled() {
        return this.getBinary("disabled");
    }

    public void setDisabled(boolean bl) {
        this.setAttribute("disabled", bl);
    }

    public String getLabel() {
        return this.capitalize(this.getAttribute("label"));
    }

    public void setLabel(String string) {
        this.setAttribute("label", string);
    }

    public HTMLOptGroupElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

