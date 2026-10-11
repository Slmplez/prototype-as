/*
 * Decompiled with CFR 0.152.
 */
package org.apache.wml.dom;

import org.apache.wml.WMLTemplateElement;
import org.apache.wml.dom.WMLDocumentImpl;
import org.apache.wml.dom.WMLElementImpl;

public class WMLTemplateElementImpl
extends WMLElementImpl
implements WMLTemplateElement {
    private static final long serialVersionUID = 4231732841621131049L;

    public WMLTemplateElementImpl(WMLDocumentImpl wMLDocumentImpl, String string) {
        super(wMLDocumentImpl, string);
    }

    public void setOnTimer(String string) {
        this.setAttribute("ontimer", string);
    }

    public String getOnTimer() {
        return this.getAttribute("ontimer");
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

