/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.presentations;

import org.eclipse.ui.presentations.IPresentablePart;

public interface IPresentationSerializer {
    public String getId(IPresentablePart var1);

    public IPresentablePart getPart(String var1);
}

