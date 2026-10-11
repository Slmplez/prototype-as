/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.edit.provider;

import org.eclipse.emf.common.util.URI;

public interface IItemFontProvider {
    public static final URI NORMAL_FONT = URI.createURI((String)"font:////normal");
    public static final URI BOLD_FONT = URI.createURI((String)"font:////bold");
    public static final URI ITALIC_FONT = URI.createURI((String)"font:////italic");
    public static final URI BOLD_ITALIC_FONT = URI.createURI((String)"font:////bold+italic");

    public Object getFont(Object var1);
}

