/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.apache.html.dom.HTMLFormControl;
import org.w3c.dom.html.HTMLLabelElement;

public class HTMLLabelElementImpl
extends HTMLElementImpl
implements HTMLLabelElement,
HTMLFormControl {
    private static final long serialVersionUID = 5774388295313199380L;

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

    public String getHtmlFor() {
        return this.getAttribute("for");
    }

    public void setHtmlFor(String string) {
        this.setAttribute("for", string);
    }

    public HTMLLabelElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

