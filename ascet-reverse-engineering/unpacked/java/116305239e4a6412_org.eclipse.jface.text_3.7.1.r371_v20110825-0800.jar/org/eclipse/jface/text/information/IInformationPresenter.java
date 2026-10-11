/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.information;

import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.information.IInformationProvider;

public interface IInformationPresenter {
    public void install(ITextViewer var1);

    public void uninstall();

    public void showInformation();

    public IInformationProvider getInformationProvider(String var1);
}

