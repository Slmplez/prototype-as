/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 */
package org.eclipse.jface.text.reconciler;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.reconciler.AbstractReconciler;
import org.eclipse.jface.text.reconciler.DirtyRegion;
import org.eclipse.jface.text.reconciler.IReconcilingStrategy;
import org.eclipse.jface.text.reconciler.IReconcilingStrategyExtension;

public class MonoReconciler
extends AbstractReconciler {
    private IReconcilingStrategy fStrategy;

    public MonoReconciler(IReconcilingStrategy strategy, boolean isIncremental) {
        Assert.isNotNull((Object)strategy);
        this.fStrategy = strategy;
        if (this.fStrategy instanceof IReconcilingStrategyExtension) {
            IReconcilingStrategyExtension extension = (IReconcilingStrategyExtension)((Object)this.fStrategy);
            extension.setProgressMonitor(this.getProgressMonitor());
        }
        this.setIsIncrementalReconciler(isIncremental);
    }

    public IReconcilingStrategy getReconcilingStrategy(String contentType) {
        Assert.isNotNull((Object)contentType);
        return this.fStrategy;
    }

    protected void process(DirtyRegion dirtyRegion) {
        if (dirtyRegion != null) {
            this.fStrategy.reconcile(dirtyRegion, (IRegion)dirtyRegion);
        } else {
            IDocument document = this.getDocument();
            if (document != null) {
                this.fStrategy.reconcile((IRegion)new Region(0, document.getLength()));
            }
        }
    }

    protected void reconcilerDocumentChanged(IDocument document) {
        this.fStrategy.setDocument(document);
    }

    public void setProgressMonitor(IProgressMonitor monitor) {
        super.setProgressMonitor(monitor);
        if (this.fStrategy instanceof IReconcilingStrategyExtension) {
            IReconcilingStrategyExtension extension = (IReconcilingStrategyExtension)((Object)this.fStrategy);
            extension.setProgressMonitor(monitor);
        }
    }

    protected void initialProcess() {
        if (this.fStrategy instanceof IReconcilingStrategyExtension) {
            IReconcilingStrategyExtension extension = (IReconcilingStrategyExtension)((Object)this.fStrategy);
            extension.initialReconcile();
        }
    }
}

