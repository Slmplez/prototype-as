/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.edit.provider;

import org.eclipse.emf.common.util.URI;

public interface IItemColorProvider {
    public static final URI GRAYED_OUT_COLOR = URI.createURI((String)"color://hsb///0.5");

    public Object getForeground(Object var1);

    public Object getBackground(Object var1);
}

