/*
 * Decompiled with CFR 0.152.
 */
package org.apache.wml.dom;

import org.apache.wml.WMLSelectElement;
import org.apache.wml.dom.WMLDocumentImpl;
import org.apache.wml.dom.WMLElementImpl;

public class WMLSelectElementImpl
extends WMLElementImpl
implements WMLSelectElement {
    private static final long serialVersionUID = 6489112443257247261L;

    public WMLSelectElementImpl(WMLDocumentImpl wMLDocumentImpl, String string) {
        super(wMLDocumentImpl, string);
    }

    public void setMultiple(boolean bl) {
        this.setAttribute("multiple", bl);
    }

    public boolean getMultiple() {
        return this.getAttribute("multiple", false);
    }

    public void setValue(String string) {
        this.setAttribute("value", string);
    }

    public String getValue() {
        return this.getAttribute("value");
    }

    public void setTabIndex(int n) {
        this.setAttribute("tabindex", n);
    }

    public int getTabIndex() {
        return this.getAttribute("tabindex", 0);
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

    public void setIValue(String string) {
        this.setAttribute("ivalue", string);
    }

    public String getIValue() {
        return this.getAttribute("ivalue");
    }

    public void setId(String string) {
        this.setAttribute("id", string);
    }

    public String getId() {
        return this.getAttribute("id");
    }

    public void setIName(String string) {
        this.setAttribute("iname", string);
    }

    public String getIName() {
        return this.getAttribute("iname");
    }

    public void setName(String string) {
        this.setAttribute("name", string);
    }

    public String getName() {
        return this.getAttribute("name");
    }
}

