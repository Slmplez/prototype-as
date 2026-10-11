/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.hyperlink;

import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.hyperlink.IHyperlink;

public interface IHyperlinkPresenter {
    public boolean canShowMultipleHyperlinks();

    public void showHyperlinks(IHyperlink[] var1) throws IllegalArgumentException;

    public void hideHyperlinks();

    public void install(ITextViewer var1);

    public void uninstall();
}

