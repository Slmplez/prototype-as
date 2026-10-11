/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLUListElement;

public class HTMLUListElementImpl
extends HTMLElementImpl
implements HTMLUListElement {
    private static final long serialVersionUID = -3220401442015109211L;

    public boolean getCompact() {
        return this.getBinary("compact");
    }

    public void setCompact(boolean bl) {
        this.setAttribute("compact", bl);
    }

    public String getType() {
        return this.getAttribute("type");
    }

    public void setType(String string) {
        this.setAttribute("type", string);
    }

    public HTMLUListElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

