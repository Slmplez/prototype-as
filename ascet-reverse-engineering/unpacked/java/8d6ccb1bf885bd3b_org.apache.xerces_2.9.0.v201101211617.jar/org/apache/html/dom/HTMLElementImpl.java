/*
 * Decompiled with CFR 0.152.
 */
package org.apache.html.dom;

import java.util.Locale;
import org.apache.html.dom.HTMLDocumentImpl;
import org.apache.xerces.dom.ElementImpl;
import org.w3c.dom.Attr;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.html.HTMLElement;
import org.w3c.dom.html.HTMLFormElement;

public class HTMLElementImpl
extends ElementImpl
implements HTMLElement {
    private static final long serialVersionUID = 5283925246324423495L;

    public HTMLElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String string) {
        super(hTMLDocumentImpl, string.toUpperCase(Locale.ENGLISH));
    }

    public String getId() {
        return this.getAttribute("id");
    }

    public void setId(String string) {
        this.setAttribute("id", string);
    }

    public String getTitle() {
        return this.getAttribute("title");
    }

    public void setTitle(String string) {
        this.setAttribute("title", string);
    }

    public String getLang() {
        return this.getAttribute("lang");
    }

    public void setLang(String string) {
        this.setAttribute("lang", string);
    }

    public String getDir() {
        return this.getAttribute("dir");
    }

    public void setDir(String string) {
        this.setAttribute("dir", string);
    }

    public String getClassName() {
        return this.getAttribute("class");
    }

    public void setClassName(String string) {
        this.setAttribute("class", string);
    }

    int getInteger(String string) {
        try {
            return Integer.parseInt(string);
        }
        catch (NumberFormatException numberFormatException) {
            return 0;
        }
    }

    boolean getBinary(String string) {
        return this.getAttributeNode(string) != null;
    }

    void setAttribute(String string, boolean bl) {
        if (bl) {
            this.setAttribute(string, string);
        } else {
            this.removeAttribute(string);
        }
    }

    public Attr getAttributeNode(String string) {
        return super.getAttributeNode(string.toLowerCase(Locale.ENGLISH));
    }

    public Attr getAttributeNodeNS(String string, String string2) {
        if (string != null && string.length() > 0) {
            return super.getAttributeNodeNS(string, string2);
        }
        return super.getAttributeNode(string2.toLowerCase(Locale.ENGLISH));
    }

    public String getAttribute(String string) {
        return super.getAttribute(string.toLowerCase(Locale.ENGLISH));
    }

    public String getAttributeNS(String string, String string2) {
        if (string != null && string.length() > 0) {
            return super.getAttributeNS(string, string2);
        }
        return super.getAttribute(string2.toLowerCase(Locale.ENGLISH));
    }

    public final NodeList getElementsByTagName(String string) {
        return super.getElementsByTagName(string.toUpperCase(Locale.ENGLISH));
    }

    public final NodeList getElementsByTagNameNS(String string, String string2) {
        if (string != null && string.length() > 0) {
            return super.getElementsByTagNameNS(string, string2.toUpperCase(Locale.ENGLISH));
        }
        return super.getElementsByTagName(string2.toUpperCase(Locale.ENGLISH));
    }

    String capitalize(String string) {
        char[] cArray = string.toCharArray();
        if (cArray.length > 0) {
            cArray[0] = Character.toUpperCase(cArray[0]);
            int n = 1;
            while (n < cArray.length) {
                cArray[n] = Character.toLowerCase(cArray[n]);
                ++n;
            }
            return String.valueOf(cArray);
        }
        return string;
    }

    String getCapitalized(String string) {
        char[] cArray;
        String string2 = this.getAttribute(string);
        if (string2 != null && (cArray = string2.toCharArray()).length > 0) {
            cArray[0] = Character.toUpperCase(cArray[0]);
            int n = 1;
            while (n < cArray.length) {
                cArray[n] = Character.toLowerCase(cArray[n]);
                ++n;
            }
            return String.valueOf(cArray);
        }
        return string2;
    }

    public HTMLFormElement getForm() {
        Node node = this.getParentNode();
        while (node != null) {
            if (node instanceof HTMLFormElement) {
                return (HTMLFormElement)node;
            }
            node = node.getParentNode();
        }
        return null;
    }
}

