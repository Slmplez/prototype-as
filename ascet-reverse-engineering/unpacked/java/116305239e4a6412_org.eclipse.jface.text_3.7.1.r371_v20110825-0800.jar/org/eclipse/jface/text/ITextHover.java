/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewer;

public interface ITextHover {
    public String getHoverInfo(ITextViewer var1, IRegion var2);

    public IRegion getHoverRegion(ITextViewer var1, int var2);
}

