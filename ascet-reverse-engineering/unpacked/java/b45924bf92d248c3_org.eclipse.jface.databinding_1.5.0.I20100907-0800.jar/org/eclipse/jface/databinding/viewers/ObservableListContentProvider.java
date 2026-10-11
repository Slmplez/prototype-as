/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservableCollection
 *  org.eclipse.core.databinding.observable.list.IListChangeListener
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListChangeEvent
 *  org.eclipse.core.databinding.observable.list.ListDiffVisitor
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.jface.databinding.viewers;

import java.util.Collection;
import java.util.Set;
import org.eclipse.core.databinding.observable.IObservableCollection;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ListDiffVisitor;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.databinding.viewers.IViewerUpdater;
import org.eclipse.jface.internal.databinding.viewers.ObservableCollectionContentProvider;
import org.eclipse.jface.internal.databinding.viewers.ViewerElementSet;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.Viewer;

public class ObservableListContentProvider
implements IStructuredContentProvider {
    private ObservableCollectionContentProvider impl;

    public ObservableListContentProvider() {
        this(null);
    }

    public ObservableListContentProvider(IViewerUpdater viewerUpdater) {
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
    implements IListChangeListener {
        private Viewer viewer;

        Impl(IViewerUpdater explicitViewerUpdater) {
            super(explicitViewerUpdater);
        }

        public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
            this.viewer = viewer;
            super.inputChanged(viewer, oldInput, newInput);
        }

        protected void checkInput(Object input) {
            Assert.isTrue((boolean)(input instanceof IObservableList), (String)"This content provider only works with input of type IObservableList");
        }

        protected void addCollectionChangeListener(IObservableCollection collection) {
            ((IObservableList)collection).addListChangeListener((IListChangeListener)this);
        }

        protected void removeCollectionChangeListener(IObservableCollection collection) {
            ((IObservableList)collection).removeListChangeListener((IListChangeListener)this);
        }

        public void handleListChange(ListChangeEvent event) {
            if (this.isViewerDisposed()) {
                return;
            }
            Set knownElementAdditions = ViewerElementSet.withComparer(this.comparer);
            Set knownElementRemovals = ViewerElementSet.withComparer(this.comparer);
            boolean[] suspendRedraw = new boolean[1];
            event.diff.accept(new ListDiffVisitor(this, knownElementAdditions, knownElementRemovals, suspendRedraw){
                final /* synthetic */ Impl this$1;
                private final /* synthetic */ Set val$knownElementAdditions;
                private final /* synthetic */ Set val$knownElementRemovals;
                private final /* synthetic */ boolean[] val$suspendRedraw;
                {
                    this.this$1 = impl;
                    this.val$knownElementAdditions = set;
                    this.val$knownElementRemovals = set2;
                    this.val$suspendRedraw = blArray;
                }

                public void handleAdd(int index, Object element) {
                    this.val$knownElementAdditions.add(element);
                }

                public void handleRemove(int index, Object element) {
                    this.val$knownElementRemovals.add(element);
                }

                public void handleMove(int oldIndex, int newIndex, Object element) {
                    this.val$suspendRedraw[0] = true;
                    super.handleMove(oldIndex, newIndex, element);
                }

                public void handleReplace(int index, Object oldElement, Object newElement) {
                    this.val$suspendRedraw[0] = true;
                    super.handleReplace(index, oldElement, newElement);
                }
            });
            knownElementAdditions.removeAll((Collection<?>)this.knownElements);
            knownElementRemovals.removeAll((Collection<?>)event.getObservableList());
            this.knownElements.addAll((Collection)knownElementAdditions);
            if (this.realizedElements != null) {
                this.realizedElements.removeAll((Collection)knownElementRemovals);
            }
            if (suspendRedraw[0]) {
                this.viewer.getControl().setRedraw(false);
            }
            try {
                event.diff.accept(new ListDiffVisitor(this){
                    final /* synthetic */ Impl this$1;
                    {
                        this.this$1 = impl;
                    }

                    public void handleAdd(int index, Object element) {
                        Impl.access$0(this.this$1).insert(element, index);
                    }

                    public void handleRemove(int index, Object element) {
                        Impl.access$0(this.this$1).remove(element, index);
                    }

                    public void handleReplace(int index, Object oldElement, Object newElement) {
                        Impl.access$0(this.this$1).replace(oldElement, newElement, index);
                    }

                    public void handleMove(int oldIndex, int newIndex, Object element) {
                        Impl.access$0(this.this$1).move(element, oldIndex, newIndex);
                    }
                });
            }
            finally {
                if (suspendRedraw[0]) {
                    this.viewer.getControl().setRedraw(true);
                }
            }
            if (this.realizedElements != null) {
                this.realizedElements.addAll((Collection)knownElementAdditions);
            }
            this.knownElements.removeAll((Collection)knownElementRemovals);
        }

        static /* synthetic */ IViewerUpdater access$0(Impl impl) {
            return impl.viewerUpdater;
        }
    }
}

