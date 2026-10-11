/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.w3c.dom.html.HTMLParamElement;

public class HTMLParamElementImpl
extends HTMLElementImpl
implements HTMLParamElement {
    private static final long serialVersionUID = -8513050483880341412L;

    public String getName() {
        return this.getAttribute("name");
    }

    public void setName(String string) {
        this.setAttribute("name", string);
    }

    public String getType() {
        return this.getAttribute("type");
    }

    public void setType(String string) {
        this.setAttribute("type", string);
    }

    public String getValue() {
        return this.getAttribute("value");
    }

    public void setValue(String string) {
        this.setAttribute("value", string);
    }

    public String getValueType() {
        return this.capitalize(this.getAttribute("valuetype"));
    }

    public void setValueType(String string) {
        this.setAttribute("valuetype", string);
    }

    public HTMLParamElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

