/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.jface.text.hyperlink;

import org.eclipse.jface.text.IRegion;

public interface IHyperlink {
    public IRegion getHyperlinkRegion();

    public String getTypeLabel();

    public String getHyperlinkText();

    public void open();
}

