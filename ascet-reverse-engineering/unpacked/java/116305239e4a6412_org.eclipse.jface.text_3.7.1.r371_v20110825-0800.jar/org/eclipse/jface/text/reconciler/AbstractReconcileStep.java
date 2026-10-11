/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.jface.text.reconciler;

import java.util.ArrayList;
import java.util.Arrays;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.reconciler.DirtyRegion;
import org.eclipse.jface.text.reconciler.IReconcilableModel;
import org.eclipse.jface.text.reconciler.IReconcileResult;
import org.eclipse.jface.text.reconciler.IReconcileStep;

public abstract class AbstractReconcileStep
implements IReconcileStep {
    private IReconcileStep fNextStep;
    private IReconcileStep fPreviousStep;
    private IProgressMonitor fProgressMonitor;
    protected IReconcilableModel fInputModel;

    public AbstractReconcileStep(IReconcileStep step) {
        Assert.isNotNull((Object)step);
        this.fNextStep = step;
        this.fNextStep.setPreviousStep(this);
    }

    public AbstractReconcileStep() {
    }

    public boolean isLastStep() {
        return this.fNextStep == null;
    }

    public boolean isFirstStep() {
        return this.fPreviousStep == null;
    }

    public void setProgressMonitor(IProgressMonitor monitor) {
        this.fProgressMonitor = monitor;
        if (!this.isLastStep()) {
            this.fNextStep.setProgressMonitor(monitor);
        }
    }

    public IProgressMonitor getProgressMonitor() {
        return this.fProgressMonitor;
    }

    public final IReconcileResult[] reconcile(IRegion partition) {
        IReconcileResult[] result = this.reconcileModel(null, partition);
        if (!this.isLastStep()) {
            this.fNextStep.setInputModel(this.getModel());
            IReconcileResult[] nextResult = this.fNextStep.reconcile(partition);
            return this.merge(result, this.convertToInputModel(nextResult));
        }
        return result;
    }

    public final IReconcileResult[] reconcile(DirtyRegion dirtyRegion, IRegion subRegion) {
        IReconcileResult[] result = this.reconcileModel(dirtyRegion, subRegion);
        if (!this.isLastStep()) {
            this.fNextStep.setInputModel(this.getModel());
            IReconcileResult[] nextResult = this.fNextStep.reconcile(dirtyRegion, subRegion);
            return this.merge(result, this.convertToInputModel(nextResult));
        }
        return result;
    }

    protected abstract IReconcileResult[] reconcileModel(DirtyRegion var1, IRegion var2);

    protected IReconcileResult[] convertToInputModel(IReconcileResult[] inputResults) {
        return inputResults;
    }

    private IReconcileResult[] merge(IReconcileResult[] results1, IReconcileResult[] results2) {
        if (results1 == null) {
            return results2;
        }
        if (results2 == null) {
            return results1;
        }
        ArrayList<IReconcileResult> collection = new ArrayList<IReconcileResult>(Arrays.asList(results1));
        collection.addAll(Arrays.asList(results2));
        return collection.toArray(new IReconcileResult[collection.size()]);
    }

    protected final boolean isCanceled() {
        return this.fProgressMonitor != null && this.fProgressMonitor.isCanceled();
    }

    public void setPreviousStep(IReconcileStep step) {
        Assert.isNotNull((Object)step);
        Assert.isTrue((this.fPreviousStep == null ? 1 : 0) != 0);
        this.fPreviousStep = step;
    }

    public void setInputModel(IReconcilableModel inputModel) {
        this.fInputModel = inputModel;
        if (!this.isLastStep()) {
            this.fNextStep.setInputModel(this.getModel());
        }
    }

    public IReconcilableModel getInputModel() {
        return this.fInputModel;
    }

    public abstract IReconcilableModel getModel();
}

