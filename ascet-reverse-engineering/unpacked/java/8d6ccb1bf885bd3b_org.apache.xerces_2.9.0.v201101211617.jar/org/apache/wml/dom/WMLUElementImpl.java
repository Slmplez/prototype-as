/*
 * Decompiled with CFR 0.152.
 */
package org.apache.wml.dom;

import org.apache.wml.WMLUElement;
import org.apache.wml.dom.WMLDocumentImpl;
import org.apache.wml.dom.WMLElementImpl;

public class WMLUElementImpl
extends WMLElementImpl
implements WMLUElement {
    private static final long serialVersionUID = 6350194387815102797L;

    public WMLUElementImpl(WMLDocumentImpl wMLDocumentImpl, String string) {
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

