/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLFrameSetElement;

public class HTMLFrameSetElementImpl
extends HTMLElementImpl
implements HTMLFrameSetElement {
    private static final long serialVersionUID = 8403143821972586708L;

    public String getCols() {
        return this.getAttribute("cols");
    }

    public void setCols(String string) {
        this.setAttribute("cols", string);
    }

    public String getRows() {
        return this.getAttribute("rows");
    }

    public void setRows(String string) {
        this.setAttribute("rows", string);
    }

    public HTMLFrameSetElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

