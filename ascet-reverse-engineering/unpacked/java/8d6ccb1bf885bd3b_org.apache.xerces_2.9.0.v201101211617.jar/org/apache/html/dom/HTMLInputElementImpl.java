/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.apache.html.dom.HTMLFormControl;
import org.w3c.dom.html.HTMLInputElement;

public class HTMLInputElementImpl
extends HTMLElementImpl
implements HTMLInputElement,
HTMLFormControl {
    private static final long serialVersionUID = 640139325394332007L;

    public String getDefaultValue() {
        return this.getAttribute("defaultValue");
    }

    public void setDefaultValue(String string) {
        this.setAttribute("defaultValue", string);
    }

    public boolean getDefaultChecked() {
        return this.getBinary("defaultChecked");
    }

    public void setDefaultChecked(boolean bl) {
        this.setAttribute("defaultChecked", bl);
    }

    public String getAccept() {
        return this.getAttribute("accept");
    }

    public void setAccept(String string) {
        this.setAttribute("accept", string);
    }

    public String getAccessKey() {
        String string = this.getAttribute("accesskey");
        if (string != null && string.length() > 1) {
            string = string.substring(0, 1);
        }
        return string;
    }

    public void setAccessKey(String string) {
        if (string != null && string.length() > 1) {
            string = string.substring(0, 1);
        }
        this.setAttribute("accesskey", string);
    }

    public String getAlign() {
        return this.capitalize(this.getAttribute("align"));
    }

    public void setAlign(String string) {
        this.setAttribute("align", string);
    }

    public String getAlt() {
        return this.getAttribute("alt");
    }

    public void setAlt(String string) {
        this.setAttribute("alt", string);
    }

    public boolean getChecked() {
        return this.getBinary("checked");
    }

    public void setChecked(boolean bl) {
        this.setAttribute("checked", bl);
    }

    public boolean getDisabled() {
        return this.getBinary("disabled");
    }

    public void setDisabled(boolean bl) {
        this.setAttribute("disabled", bl);
    }

    public int getMaxLength() {
        return this.getInteger(this.getAttribute("maxlength"));
    }

    public void setMaxLength(int n) {
        this.setAttribute("maxlength", String.valueOf(n));
    }

    public String getName() {
        return this.getAttribute("name");
    }

    public void setName(String string) {
        this.setAttribute("name", string);
    }

    public boolean getReadOnly() {
        return this.getBinary("readonly");
    }

    public void setReadOnly(boolean bl) {
        this.setAttribute("readonly", bl);
    }

    public String getSize() {
        return this.getAttribute("size");
    }

    public void setSize(String string) {
        this.setAttribute("size", string);
    }

    public String getSrc() {
        return this.getAttribute("src");
    }

    public void setSrc(String string) {
        this.setAttribute("src", string);
    }

    public int getTabIndex() {
        try {
            return Integer.parseInt(this.getAttribute("tabindex"));
        }
        catch (NumberFormatException numberFormatException) {
            return 0;
        }
    }

    public void setTabIndex(int n) {
        this.setAttribute("tabindex", String.valueOf(n));
    }

    public String getType() {
        return this.getAttribute("type");
    }

    public String getUseMap() {
        return this.getAttribute("useMap");
    }

    public void setUseMap(String string) {
        this.setAttribute("useMap", string);
    }

    public String getValue() {
        return this.getAttribute("value");
    }

    public void setValue(String string) {
        this.setAttribute("value", string);
    }

    public void blur() {
    }

    public void focus() {
    }

    public void select() {
    }

    public void click() {
    }

    public HTMLInputElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

