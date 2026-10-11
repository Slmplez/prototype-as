/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.index;

import org.eclipse.help.IIndexSubpath;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Element;

public class IndexSubpath
extends UAElement
implements IIndexSubpath {
    public static final String NAME = "subpath";
    public static final String ATTRIBUTE_KEYWORD = "keyword";

    public IndexSubpath(IIndexSubpath src) {
        super(NAME, src);
        this.setKeyword(src.getKeyword());
        this.appendChildren(src.getChildren());
    }

    public IndexSubpath(Element src) {
        super(src);
    }

    public String getKeyword() {
        return this.getAttribute(ATTRIBUTE_KEYWORD);
    }

    public void setKeyword(String keyword) {
        this.setAttribute(ATTRIBUTE_KEYWORD, keyword);
    }
}

