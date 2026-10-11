/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.jface.text.reconciler;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.reconciler.DirtyRegion;

public interface IReconcilingStrategy {
    public void setDocument(IDocument var1);

    public void reconcile(DirtyRegion var1, IRegion var2);

    public void reconcile(IRegion var1);
}

