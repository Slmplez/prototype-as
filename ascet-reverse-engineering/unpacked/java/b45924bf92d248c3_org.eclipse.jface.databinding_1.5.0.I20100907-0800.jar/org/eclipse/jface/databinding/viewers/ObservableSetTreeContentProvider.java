/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservableCollection
 *  org.eclipse.core.databinding.observable.IObservablesListener
 *  org.eclipse.core.databinding.observable.masterdetail.IObservableFactory
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.ISetChangeListener
 *  org.eclipse.core.databinding.observable.set.SetChangeEvent
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.jface.databinding.viewers;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.databinding.observable.IObservableCollection;
import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.SetChangeEvent;
import org.eclipse.jface.databinding.viewers.TreeStructureAdvisor;
import org.eclipse.jface.internal.databinding.viewers.ObservableCollectionTreeContentProvider;
import org.eclipse.jface.internal.databinding.viewers.ViewerElementSet;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.Viewer;

public class ObservableSetTreeContentProvider
implements ITreeContentProvider {
    private final ObservableCollectionTreeContentProvider impl;

    public ObservableSetTreeContentProvider(IObservableFactory setFactory, TreeStructureAdvisor structureAdvisor) {
        this.impl = new Impl(setFactory, structureAdvisor);
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        this.impl.inputChanged(viewer, oldInput, newInput);
    }

    public Object[] getElements(Object inputElement) {
        return this.impl.getElements(inputElement);
    }

    public boolean hasChildren(Object element) {
        return this.impl.hasChildren(element);
    }

    public Object[] getChildren(Object parentElement) {
        return this.impl.getChildren(parentElement);
    }

    public Object getParent(Object element) {
        return this.impl.getParent(element);
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
    extends ObservableCollectionTreeContentProvider {
        Impl(IObservableFactory setFactory, TreeStructureAdvisor structureAdvisor) {
            super(setFactory, structureAdvisor);
        }

        protected IObservablesListener createCollectionChangeListener(Object parentElement) {
            return new SetChangeListener(parentElement);
        }

        protected void addCollectionChangeListener(IObservableCollection collection, IObservablesListener listener) {
            IObservableSet set = (IObservableSet)collection;
            ISetChangeListener setListener = (ISetChangeListener)listener;
            set.addSetChangeListener(setListener);
        }

        protected void removeCollectionChangeListener(IObservableCollection collection, IObservablesListener listener) {
            IObservableSet set = (IObservableSet)collection;
            ISetChangeListener setListener = (ISetChangeListener)listener;
            set.removeSetChangeListener(setListener);
        }

        private class SetChangeListener
        implements ISetChangeListener {
            final Object parentElement;

            public SetChangeListener(Object parentElement) {
                this.parentElement = parentElement;
            }

            public void handleSetChange(SetChangeEvent event) {
                Object child;
                if (Impl.this.isViewerDisposed()) {
                    return;
                }
                Set localAdditions = event.diff.getAdditions();
                Set localRemovals = event.diff.getRemovals();
                Set knownElementAdditions = ViewerElementSet.withComparer(Impl.this.comparer);
                knownElementAdditions.addAll(localAdditions);
                knownElementAdditions.removeAll((Collection<?>)Impl.this.knownElements);
                Set knownElementRemovals = Impl.this.findPendingRemovals(this.parentElement, localRemovals);
                knownElementRemovals.retainAll((Collection<?>)Impl.this.knownElements);
                Impl.this.knownElements.addAll((Collection)knownElementAdditions);
                if (Impl.this.realizedElements != null) {
                    Impl.this.realizedElements.removeAll((Collection)knownElementRemovals);
                }
                Iterator iterator = localAdditions.iterator();
                while (iterator.hasNext()) {
                    child = iterator.next();
                    Impl.this.getOrCreateNode(child).addParent(this.parentElement);
                }
                Impl.this.viewerUpdater.add(this.parentElement, localAdditions.toArray());
                Impl.this.viewerUpdater.remove(this.parentElement, localRemovals.toArray());
                iterator = localRemovals.iterator();
                while (iterator.hasNext()) {
                    child = iterator.next();
                    ObservableCollectionTreeContentProvider.TreeNode childNode = Impl.this.getExistingNode(child);
                    if (childNode == null) continue;
                    childNode.removeParent(this.parentElement);
                }
                if (Impl.this.realizedElements != null) {
                    Impl.this.realizedElements.addAll((Collection)knownElementAdditions);
                }
                Impl.this.knownElements.removeAll((Collection)knownElementRemovals);
            }
        }
    }
}

