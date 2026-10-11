/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.jface.text.hyperlink;

import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.hyperlink.IHyperlink;

public interface IHyperlinkDetector {
    public IHyperlink[] detectHyperlinks(ITextViewer var1, IRegion var2, boolean var3);
}

