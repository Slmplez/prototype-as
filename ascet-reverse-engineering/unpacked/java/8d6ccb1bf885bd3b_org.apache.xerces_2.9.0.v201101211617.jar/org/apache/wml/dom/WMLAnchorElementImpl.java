/*
 * Decompiled with CFR 0.152.
 */
package org.apache.wml.dom;

import org.apache.wml.WMLAnchorElement;
import org.apache.wml.dom.WMLDocumentImpl;
import org.apache.wml.dom.WMLElementImpl;

public class WMLAnchorElementImpl
extends WMLElementImpl
implements WMLAnchorElement {
    private static final long serialVersionUID = 5720492496046133176L;

    public WMLAnchorElementImpl(WMLDocumentImpl wMLDocumentImpl, String string) {
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

    public void setTitle(String string) {
        this.setAttribute("title", string);
    }

    public String getTitle() {
        return this.getAttribute("title");
    }

    public void setId(String string) {
        this.setAttribute("id", string);
    }

    public String getId() {
        return this.getAttribute("id");
    }
}

