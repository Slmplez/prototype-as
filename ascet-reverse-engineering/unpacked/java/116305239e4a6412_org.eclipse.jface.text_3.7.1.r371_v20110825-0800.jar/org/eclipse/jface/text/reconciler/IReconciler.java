/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.reconciler;

import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.reconciler.IReconcilingStrategy;

public interface IReconciler {
    public void install(ITextViewer var1);

    public void uninstall();

    public IReconcilingStrategy getReconcilingStrategy(String var1);
}

