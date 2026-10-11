/*
 * Decompiled with CFR 0.152.
 */
package org.apache.wml.dom;

import org.apache.wml.WMLHeadElement;
import org.apache.wml.dom.WMLDocumentImpl;
import org.apache.wml.dom.WMLElementImpl;

public class WMLHeadElementImpl
extends WMLElementImpl
implements WMLHeadElement {
    private static final long serialVersionUID = 3311307374813188908L;

    public WMLHeadElementImpl(WMLDocumentImpl wMLDocumentImpl, String string) {
        super(wMLDocumentImpl, string);
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
}

