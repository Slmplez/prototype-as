/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal;

import org.eclipse.help.IInclude;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Element;

public class Include
extends UAElement
implements IInclude {
    public static final String NAME = "include";
    public static final String ATTRIBUTE_PATH = "path";

    public Include(IInclude src) {
        super(NAME, src);
        this.setPath(src.getPath());
    }

    public Include(Element src) {
        super(src);
    }

    public String getPath() {
        return this.getAttribute(ATTRIBUTE_PATH);
    }

    public void setPath(String path) {
        this.setAttribute(ATTRIBUTE_PATH, path);
    }
}

