/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jface.text.reconciler;

import org.eclipse.core.runtime.IProgressMonitor;

public interface IReconcilingStrategyExtension {
    public void setProgressMonitor(IProgressMonitor var1);

    public void initialReconcile();
}

