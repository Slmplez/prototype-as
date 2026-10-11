/*
 * Decompiled with CFR 0.152.
 */
package org.apache.wml.dom;

import org.apache.wml.WMLDoElement;
import org.apache.wml.dom.WMLDocumentImpl;
import org.apache.wml.dom.WMLElementImpl;

public class WMLDoElementImpl
extends WMLElementImpl
implements WMLDoElement {
    private static final long serialVersionUID = 7755861458464251322L;

    public WMLDoElementImpl(WMLDocumentImpl wMLDocumentImpl, String string) {
        super(wMLDocumentImpl, string);
    }

    public void setOptional(String string) {
        this.setAttribute("optional", string);
    }

    public String getOptional() {
        return this.getAttribute("optional");
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

    public void setLabel(String string) {
        this.setAttribute("label", string);
    }

    public String getLabel() {
        return this.getAttribute("label");
    }

    public void setType(String string) {
        this.setAttribute("type", string);
    }

    public String getType() {
        return this.getAttribute("type");
    }

    public void setName(String string) {
        this.setAttribute("name", string);
    }

    public String getName() {
        return this.getAttribute("name");
    }
}

