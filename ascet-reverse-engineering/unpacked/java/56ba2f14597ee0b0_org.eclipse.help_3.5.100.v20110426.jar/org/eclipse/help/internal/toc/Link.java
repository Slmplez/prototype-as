/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.toc;

import org.eclipse.help.ILink;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Element;

public class Link
extends UAElement
implements ILink {
    public static final String NAME = "link";
    public static final String ATTRIBUTE_TOC = "toc";

    public Link(ILink src) {
        super(NAME, src);
        this.setToc(src.getToc());
    }

    public Link(Element src) {
        super(src);
    }

    public String getToc() {
        return this.getAttribute(ATTRIBUTE_TOC);
    }

    public void setToc(String toc) {
        this.setAttribute(ATTRIBUTE_TOC, toc);
    }
}

