/*
 * Decompiled with CFR 0.152.
 */
package org.apache.wml.dom;

import org.apache.wml.WMLGoElement;
import org.apache.wml.dom.WMLDocumentImpl;
import org.apache.wml.dom.WMLElementImpl;

public class WMLGoElementImpl
extends WMLElementImpl
implements WMLGoElement {
    private static final long serialVersionUID = -2052250142899797905L;

    public WMLGoElementImpl(WMLDocumentImpl wMLDocumentImpl, String string) {
        super(wMLDocumentImpl, string);
    }

    public void setSendreferer(String string) {
        this.setAttribute("sendreferer", string);
    }

    public String getSendreferer() {
        return this.getAttribute("sendreferer");
    }

    public void setAcceptCharset(String string) {
        this.setAttribute("accept-charset", string);
    }

    public String getAcceptCharset() {
        return this.getAttribute("accept-charset");
    }

    public void setHref(String string) {
        this.setAttribute("href", string);
    }

    public String getHref() {
        return this.getAttribute("href");
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

    public void setMethod(String string) {
        this.setAttribute("method", string);
    }

    public String getMethod() {
        return this.getAttribute("method");
    }
}

