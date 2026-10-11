/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLLegendElement;

public class HTMLLegendElementImpl
extends HTMLElementImpl
implements HTMLLegendElement {
    private static final long serialVersionUID = -621849164029630762L;

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

    public String getAlign() {
        return this.getAttribute("align");
    }

    public void setAlign(String string) {
        this.setAttribute("align", string);
    }

    public HTMLLegendElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

