/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.html.dom.HTMLElementImpl;
import org.apache.html.dom.HTMLFormControl;
import org.w3c.dom.html.HTMLTextAreaElement;

public class HTMLTextAreaElementImpl
extends HTMLElementImpl
implements HTMLTextAreaElement,
HTMLFormControl {
    private static final long serialVersionUID = -6737778308542678104L;

    public String getDefaultValue() {
        return this.getAttribute("default-value");
    }

    public void setDefaultValue(String string) {
        this.setAttribute("default-value", string);
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

    public int getCols() {
        return this.getInteger(this.getAttribute("cols"));
    }

    public void setCols(int n) {
        this.setAttribute("cols", String.valueOf(n));
    }

    public boolean getDisabled() {
        return this.getBinary("disabled");
    }

    public void setDisabled(boolean bl) {
        this.setAttribute("disabled", bl);
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

    public int getRows() {
        return this.getInteger(this.getAttribute("rows"));
    }

    public void setRows(int n) {
        this.setAttribute("rows", String.valueOf(n));
    }

    public int getTabIndex() {
        return this.getInteger(this.getAttribute("tabindex"));
    }

    public void setTabIndex(int n) {
        this.setAttribute("tabindex", String.valueOf(n));
    }

    public String getType() {
        return this.getAttribute("type");
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

    public HTMLTextAreaElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string);
    }
}

