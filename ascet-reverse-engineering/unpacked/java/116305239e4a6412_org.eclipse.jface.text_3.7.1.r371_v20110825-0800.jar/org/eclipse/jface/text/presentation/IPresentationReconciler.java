/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.presentation;

import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.presentation.IPresentationDamager;
import org.eclipse.jface.text.presentation.IPresentationRepairer;

public interface IPresentationReconciler {
    public void install(ITextViewer var1);

    public void uninstall();

    public IPresentationDamager getDamager(String var1);

    public IPresentationRepairer getRepairer(String var1);
}

