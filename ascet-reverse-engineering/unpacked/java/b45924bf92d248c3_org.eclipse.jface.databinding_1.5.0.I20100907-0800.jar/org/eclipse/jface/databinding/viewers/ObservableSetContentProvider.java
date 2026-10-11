/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservableCollection
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.ISetChangeListener
 *  org.eclipse.core.databinding.observable.set.SetChangeEvent
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.jface.databinding.viewers;

import java.util.Collection;
import java.util.Set;
import org.eclipse.core.databinding.observable.IObservableCollection;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.SetChangeEvent;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.databinding.viewers.IViewerUpdater;
import org.eclipse.jface.internal.databinding.viewers.ObservableCollectionContentProvider;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.Viewer;

public class ObservableSetContentProvider
implements IStructuredContentProvider {
    private ObservableCollectionContentProvider impl;

    public ObservableSetContentProvider() {
        this(null);
    }

    public ObservableSetContentProvider(IViewerUpdater viewerUpdater) {
        this.impl = new Impl(viewerUpdater);
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        this.impl.inputChanged(viewer, oldInput, newInput);
    }

    public Object[] getElements(Object inputElement) {
        return this.impl.getElements(inputElement);
    }

    public void dispose() {
        this.impl.dispose();
    }

    public IObservableSet getKnownElements() {
        return this.impl.getKnownElements();
    }

    public IObservableSet getRealizedElements() {
        return this.impl.getRealizedElements();
    }

    private static class Impl
    extends ObservableCollectionContentProvider
    implements ISetChangeListener {
        protected Impl(IViewerUpdater explicitViewerUpdater) {
            super(explicitViewerUpdater);
        }

        protected void checkInput(Object input) {
            Assert.isTrue((boolean)(input instanceof IObservableSet), (String)"This content provider only works with input of type IObservableSet");
        }

        protected void addCollectionChangeListener(IObservableCollection collection) {
            ((IObservableSet)collection).addSetChangeListener((ISetChangeListener)this);
        }

        protected void removeCollectionChangeListener(IObservableCollection collection) {
            ((IObservableSet)collection).removeSetChangeListener((ISetChangeListener)this);
        }

        public void handleSetChange(SetChangeEvent event) {
            if (this.isViewerDisposed()) {
                return;
            }
            Set removals = event.diff.getRemovals();
            Set additions = event.diff.getAdditions();
            this.knownElements.addAll((Collection)additions);
            if (this.realizedElements != null) {
                this.realizedElements.removeAll((Collection)removals);
            }
            this.viewerUpdater.remove(removals.toArray());
            this.viewerUpdater.add(additions.toArray());
            if (this.realizedElements != null) {
                this.realizedElements.addAll((Collection)additions);
            }
            this.knownElements.removeAll((Collection)removals);
        }
    }
}

