/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.TextPresentation;
import org.eclipse.jface.text.contentassist.IContextInformation;

public interface IContextInformationPresenter {
    public void install(IContextInformation var1, ITextViewer var2, int var3);

    public boolean updatePresentation(int var1, TextPresentation var2);
}

