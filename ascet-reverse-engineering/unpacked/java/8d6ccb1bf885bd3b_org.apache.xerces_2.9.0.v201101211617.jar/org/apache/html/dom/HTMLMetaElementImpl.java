/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLMetaElement;

public class HTMLMetaElementImpl
extends HTMLElementImpl
implements HTMLMetaElement {
    private static final long serialVersionUID = -2401961905874264272L;

    public String getContent() {
        return this.getAttribute("content");
    }

    public void setContent(String string) {
        this.setAttribute("content", string);
    }

    public String getHttpEquiv() {
        return this.getAttribute("http-equiv");
    }

    public void setHttpEquiv(String string) {
        this.setAttribute("http-equiv", string);
    }

    public String getName() {
        return this.getAttribute("name");
    }

    public void setName(String string) {
        this.setAttribute("name", string);
    }

    public String getScheme() {
        return this.getAttribute("scheme");
    }

    public void setScheme(String string) {
        this.setAttribute("scheme", string);
    }

    public HTMLMetaElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

