/*
 * Decompiled with CFR 0.152.
 */
package org.apache.wml.dom;

import org.apache.wml.WMLCardElement;
import org.apache.wml.dom.WMLDocumentImpl;
import org.apache.wml.dom.WMLElementImpl;

public class WMLCardElementImpl
extends WMLElementImpl
implements WMLCardElement {
    private static final long serialVersionUID = -3571126568344328924L;

    public WMLCardElementImpl(WMLDocumentImpl wMLDocumentImpl, String string) {
        super(wMLDocumentImpl, string);
    }

    public void setOnTimer(String string) {
        this.setAttribute("ontimer", string);
    }

    public String getOnTimer() {
        return this.getAttribute("ontimer");
    }

    public void setOrdered(boolean bl) {
        this.setAttribute("ordered", bl);
    }

    public boolean getOrdered() {
        return this.getAttribute("ordered", true);
    }

    public void setOnEnterBackward(String string) {
        this.setAttribute("onenterbackward", string);
    }

    public String getOnEnterBackward() {
        return this.getAttribute("onenterbackward");
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

    public void setNewContext(boolean bl) {
        this.setAttribute("newcontext", bl);
    }

    public boolean getNewContext() {
        return this.getAttribute("newcontext", false);
    }

    public void setId(String string) {
        this.setAttribute("id", string);
    }

    public String getId() {
        return this.getAttribute("id");
    }

    public void setOnEnterForward(String string) {
        this.setAttribute("onenterforward", string);
    }

    public String getOnEnterForward() {
        return this.getAttribute("onenterforward");
    }
}

