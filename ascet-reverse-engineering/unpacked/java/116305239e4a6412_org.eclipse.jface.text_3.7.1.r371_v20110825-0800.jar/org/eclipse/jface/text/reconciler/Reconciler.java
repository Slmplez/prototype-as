/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITypedRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.jface.text.TypedRegion
 */
package org.eclipse.jface.text.reconciler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.TypedRegion;
import org.eclipse.jface.text.reconciler.AbstractReconciler;
import org.eclipse.jface.text.reconciler.DirtyRegion;
import org.eclipse.jface.text.reconciler.IReconcilerExtension;
import org.eclipse.jface.text.reconciler.IReconcilingStrategy;
import org.eclipse.jface.text.reconciler.IReconcilingStrategyExtension;

public class Reconciler
extends AbstractReconciler
implements IReconcilerExtension {
    private Map fStrategies;
    private String fPartitioning = "__dftl_partitioning";

    public void setDocumentPartitioning(String partitioning) {
        Assert.isNotNull((Object)partitioning);
        this.fPartitioning = partitioning;
    }

    public String getDocumentPartitioning() {
        return this.fPartitioning;
    }

    public void setReconcilingStrategy(IReconcilingStrategy strategy, String contentType) {
        Assert.isNotNull((Object)contentType);
        if (this.fStrategies == null) {
            this.fStrategies = new HashMap();
        }
        if (strategy == null) {
            this.fStrategies.remove(contentType);
        } else {
            this.fStrategies.put(contentType, strategy);
            if (strategy instanceof IReconcilingStrategyExtension && this.getProgressMonitor() != null) {
                IReconcilingStrategyExtension extension = (IReconcilingStrategyExtension)((Object)strategy);
                extension.setProgressMonitor(this.getProgressMonitor());
            }
        }
    }

    public IReconcilingStrategy getReconcilingStrategy(String contentType) {
        Assert.isNotNull((Object)contentType);
        if (this.fStrategies == null) {
            return null;
        }
        return (IReconcilingStrategy)this.fStrategies.get(contentType);
    }

    protected void process(DirtyRegion dirtyRegion) {
        DirtyRegion region = dirtyRegion;
        if (region == null) {
            region = new Region(0, this.getDocument().getLength());
        }
        ITypedRegion[] regions = this.computePartitioning(region.getOffset(), region.getLength());
        int i = 0;
        while (i < regions.length) {
            ITypedRegion r = regions[i];
            IReconcilingStrategy s = this.getReconcilingStrategy(r.getType());
            if (s != null) {
                if (dirtyRegion != null) {
                    s.reconcile(dirtyRegion, (IRegion)r);
                } else {
                    s.reconcile((IRegion)r);
                }
            }
            ++i;
        }
    }

    protected void reconcilerDocumentChanged(IDocument document) {
        if (this.fStrategies != null) {
            Iterator e = this.fStrategies.values().iterator();
            while (e.hasNext()) {
                IReconcilingStrategy strategy = (IReconcilingStrategy)e.next();
                strategy.setDocument(document);
            }
        }
    }

    public void setProgressMonitor(IProgressMonitor monitor) {
        super.setProgressMonitor(monitor);
        if (this.fStrategies != null) {
            Iterator e = this.fStrategies.values().iterator();
            while (e.hasNext()) {
                IReconcilingStrategy strategy = (IReconcilingStrategy)e.next();
                if (!(strategy instanceof IReconcilingStrategyExtension)) continue;
                IReconcilingStrategyExtension extension = (IReconcilingStrategyExtension)((Object)strategy);
                extension.setProgressMonitor(monitor);
            }
        }
    }

    protected void initialProcess() {
        ITypedRegion[] regions = this.computePartitioning(0, this.getDocument().getLength());
        ArrayList<String> contentTypes = new ArrayList<String>(regions.length);
        int i = 0;
        while (i < regions.length) {
            String contentType = regions[i].getType();
            if (!contentTypes.contains(contentType)) {
                contentTypes.add(contentType);
                IReconcilingStrategy s = this.getReconcilingStrategy(contentType);
                if (s instanceof IReconcilingStrategyExtension) {
                    IReconcilingStrategyExtension e = (IReconcilingStrategyExtension)((Object)s);
                    e.initialReconcile();
                }
            }
            ++i;
        }
    }

    private ITypedRegion[] computePartitioning(int offset, int length) {
        ITypedRegion[] regions = null;
        try {
            regions = TextUtilities.computePartitioning((IDocument)this.getDocument(), (String)this.getDocumentPartitioning(), (int)offset, (int)length, (boolean)false);
        }
        catch (BadLocationException badLocationException) {
            regions = new TypedRegion[]{};
        }
        return regions;
    }
}

