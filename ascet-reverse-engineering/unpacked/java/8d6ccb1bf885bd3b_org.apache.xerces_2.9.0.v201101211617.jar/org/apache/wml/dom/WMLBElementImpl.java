/*
 * Decompiled with CFR 0.152.
 */
package org.apache.wml.dom;

import org.apache.wml.WMLBElement;
import org.apache.wml.dom.WMLDocumentImpl;
import org.apache.wml.dom.WMLElementImpl;

public class WMLBElementImpl
extends WMLElementImpl
implements WMLBElement {
    private static final long serialVersionUID = -758504371498228671L;

    public WMLBElementImpl(WMLDocumentImpl wMLDocumentImpl, String string) {
        super(wMLDocumentImpl, string);
    }

    public void setClassName(String string) {
        this.setAttribute("class", string);
    }

    public String getClassName() {
        return this.getAttribute("class");
    }

    public void setXmlLang(String string) {
        this.setAttribute("xml:lang", string);
    }

    public String getXmlLang() {
        return this.getAttribute("xml:lang");
    }

    public void setId(String string) {
        this.setAttribute("id", string);
    }

    public String getId() {
        return this.getAttribute("id");
    }
}

