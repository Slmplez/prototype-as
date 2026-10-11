/*
 * Decompiled with CFR 0.152.
 */
package org.apache.wml.dom;

import org.apache.wml.WMLInputElement;
import org.apache.wml.dom.WMLDocumentImpl;
import org.apache.wml.dom.WMLElementImpl;

public class WMLInputElementImpl
extends WMLElementImpl
implements WMLInputElement {
    private static final long serialVersionUID = 2897319793637966619L;

    public WMLInputElementImpl(WMLDocumentImpl wMLDocumentImpl, String string) {
        super(wMLDocumentImpl, string);
    }

    public void setSize(int n) {
        this.setAttribute("size", n);
    }

    public int getSize() {
        return this.getAttribute("size", 0);
    }

    public void setFormat(String string) {
        this.setAttribute("format", string);
    }

    public String getFormat() {
        return this.getAttribute("format");
    }

    public void setValue(String string) {
        this.setAttribute("value", string);
    }

    public String getValue() {
        return this.getAttribute("value");
    }

    public void setMaxLength(int n) {
        this.setAttribute("maxlength", n);
    }

    public int getMaxLength() {
        return this.getAttribute("maxlength", 0);
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

    public void setEmptyOk(boolean bl) {
        this.setAttribute("emptyok", bl);
    }

    public boolean getEmptyOk() {
        return this.getAttribute("emptyok", false);
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

