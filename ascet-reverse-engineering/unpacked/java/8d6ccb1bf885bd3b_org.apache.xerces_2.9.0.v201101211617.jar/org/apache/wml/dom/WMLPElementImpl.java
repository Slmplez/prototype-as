/*
 * Decompiled with CFR 0.152.
 */
package org.apache.wml.dom;

import org.apache.wml.WMLPElement;
import org.apache.wml.dom.WMLDocumentImpl;
import org.apache.wml.dom.WMLElementImpl;

public class WMLPElementImpl
extends WMLElementImpl
implements WMLPElement {
    private static final long serialVersionUID = 4263257796458499960L;

    public WMLPElementImpl(WMLDocumentImpl wMLDocumentImpl, String string) {
        super(wMLDocumentImpl, string);
    }

    public void setClassName(String string) {
        this.setAttribute("class", string);
    }

    public String getClassName() {
        return this.getAttribute("class");
    }

    public void setMode(String string) {
        this.setAttribute("mode", string);
    }

    public String getMode() {
        return this.getAttribute("mode");
    }

    public void setXmlLang(String string) {
        this.setAttribute("xml:lang", string);
    }

    public String getXmlLang() {
        return this.getAttribute("xml:lang");
    }

    public void setAlign(String string) {
        this.setAttribute("align", string);
    }

    public String getAlign() {
        return this.getAttribute("align");
    }

    public void setId(String string) {
        this.setAttribute("id", string);
    }

    public String getId() {
        return this.getAttribute("id");
    }
}

