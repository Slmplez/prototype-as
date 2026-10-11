/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal;

import org.eclipse.help.IAnchor;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Element;

public class Anchor
extends UAElement
implements IAnchor {
    public static final String NAME = "anchor";
    public static final String ATTRIBUTE_ID = "id";

    public Anchor(IAnchor src) {
        super(NAME, src);
        this.setId(src.getId());
    }

    public Anchor(Element src) {
        super(src);
    }

    public String getId() {
        return this.getAttribute(ATTRIBUTE_ID);
    }

    public void setId(String id) {
        this.setAttribute(ATTRIBUTE_ID, id);
    }
}

