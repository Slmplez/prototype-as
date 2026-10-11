/*
 * Decompiled with CFR 0.152.
 */
package org.apache.wml.dom;

import org.apache.wml.WMLMetaElement;
import org.apache.wml.dom.WMLDocumentImpl;
import org.apache.wml.dom.WMLElementImpl;

public class WMLMetaElementImpl
extends WMLElementImpl
implements WMLMetaElement {
    private static final long serialVersionUID = -2791663042188681846L;

    public WMLMetaElementImpl(WMLDocumentImpl wMLDocumentImpl, String string) {
        super(wMLDocumentImpl, string);
    }

    public void setForua(boolean bl) {
        this.setAttribute("forua", bl);
    }

    public boolean getForua() {
        return this.getAttribute("forua", false);
    }

    public void setScheme(String string) {
        this.setAttribute("scheme", string);
    }

    public String getScheme() {
        return this.getAttribute("scheme");
    }

    public void setClassName(String string) {
        this.setAttribute("class", string);
    }

    public String getClassName() {
        return this.getAttribute("class");
    }

    public void setHttpEquiv(String string) {
        this.setAttribute("http-equiv", string);
    }

    public String getHttpEquiv() {
        return this.getAttribute("http-equiv");
    }

    public void setId(String string) {
        this.setAttribute("id", string);
    }

    public String getId() {
        return this.getAttribute("id");
    }

    public void setContent(String string) {
        this.setAttribute("content", string);
    }

    public String getContent() {
        return this.getAttribute("content");
    }

    public void setName(String string) {
        this.setAttribute("name", string);
    }

    public String getName() {
        return this.getAttribute("name");
    }
}

