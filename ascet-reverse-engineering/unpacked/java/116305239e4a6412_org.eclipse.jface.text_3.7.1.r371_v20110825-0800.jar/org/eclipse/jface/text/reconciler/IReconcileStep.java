/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.jface.text.reconciler;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.reconciler.DirtyRegion;
import org.eclipse.jface.text.reconciler.IReconcilableModel;
import org.eclipse.jface.text.reconciler.IReconcileResult;

public interface IReconcileStep {
    public boolean isLastStep();

    public boolean isFirstStep();

    public void setPreviousStep(IReconcileStep var1);

    public IReconcileResult[] reconcile(DirtyRegion var1, IRegion var2);

    public IReconcileResult[] reconcile(IRegion var1);

    public void setProgressMonitor(IProgressMonitor var1);

    public IProgressMonitor getProgressMonitor();

    public void setInputModel(IReconcilableModel var1);
}

