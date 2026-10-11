/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservableCollection
 *  org.eclipse.core.databinding.observable.IObservablesListener
 *  org.eclipse.core.databinding.observable.list.IListChangeListener
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListChangeEvent
 *  org.eclipse.core.databinding.observable.list.ListDiffVisitor
 *  org.eclipse.core.databinding.observable.masterdetail.IObservableFactory
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.jface.databinding.viewers;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.databinding.observable.IObservableCollection;
import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ListDiffVisitor;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.jface.databinding.viewers.TreeStructureAdvisor;
import org.eclipse.jface.internal.databinding.viewers.ObservableCollectionTreeContentProvider;
import org.eclipse.jface.internal.databinding.viewers.TreeViewerUpdater;
import org.eclipse.jface.internal.databinding.viewers.ViewerElementSet;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.Viewer;

public class ObservableListTreeContentProvider
implements ITreeContentProvider {
    private final ObservableCollectionTreeContentProvider impl;

    public ObservableListTreeContentProvider(IObservableFactory listFactory, TreeStructureAdvisor structureAdvisor) {
        this.impl = new Impl(listFactory, structureAdvisor);
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
        private Viewer viewer;

        public Impl(IObservableFactory listFactory, TreeStructureAdvisor structureAdvisor) {
            super(listFactory, structureAdvisor);
        }

        public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
            this.viewer = viewer;
            super.inputChanged(viewer, oldInput, newInput);
        }

        protected IObservablesListener createCollectionChangeListener(Object parentElement) {
            return new ListChangeListener(parentElement);
        }

        protected void addCollectionChangeListener(IObservableCollection collection, IObservablesListener listener) {
            IObservableList list = (IObservableList)collection;
            IListChangeListener listListener = (IListChangeListener)listener;
            list.addListChangeListener(listListener);
        }

        protected void removeCollectionChangeListener(IObservableCollection collection, IObservablesListener listener) {
            IObservableList list = (IObservableList)collection;
            IListChangeListener listListener = (IListChangeListener)listener;
            list.removeListChangeListener(listListener);
        }

        static /* synthetic */ TreeViewerUpdater access$7(Impl impl) {
            return impl.viewerUpdater;
        }

        private class ListChangeListener
        implements IListChangeListener {
            final Object parentElement;

            public ListChangeListener(Object parentElement) {
                this.parentElement = parentElement;
            }

            public void handleListChange(ListChangeEvent event) {
                if (Impl.this.isViewerDisposed()) {
                    return;
                }
                Set localKnownElementAdditions = ViewerElementSet.withComparer(Impl.this.comparer);
                Set localKnownElementRemovals = ViewerElementSet.withComparer(Impl.this.comparer);
                boolean[] suspendRedraw = new boolean[1];
                event.diff.accept(new ListDiffVisitor(this, localKnownElementAdditions, localKnownElementRemovals, suspendRedraw){
                    final /* synthetic */ ListChangeListener this$2;
                    private final /* synthetic */ Set val$localKnownElementAdditions;
                    private final /* synthetic */ Set val$localKnownElementRemovals;
                    private final /* synthetic */ boolean[] val$suspendRedraw;
                    {
                        this.this$2 = listChangeListener;
                        this.val$localKnownElementAdditions = set;
                        this.val$localKnownElementRemovals = set2;
                        this.val$suspendRedraw = blArray;
                    }

                    public void handleAdd(int index, Object element) {
                        this.val$localKnownElementAdditions.add(element);
                    }

                    public void handleRemove(int index, Object element) {
                        this.val$localKnownElementRemovals.add(element);
                    }

                    public void handleMove(int oldIndex, int newIndex, Object element) {
                        this.val$suspendRedraw[0] = true;
                    }

                    public void handleReplace(int index, Object oldElement, Object newElement) {
                        this.val$suspendRedraw[0] = true;
                        super.handleReplace(index, oldElement, newElement);
                    }
                });
                localKnownElementRemovals.removeAll((Collection<?>)event.getObservableList());
                Set knownElementAdditions = ViewerElementSet.withComparer(Impl.this.comparer);
                knownElementAdditions.addAll(localKnownElementAdditions);
                knownElementAdditions.removeAll((Collection<?>)Impl.this.knownElements);
                Set knownElementRemovals = Impl.this.findPendingRemovals(this.parentElement, localKnownElementRemovals);
                knownElementRemovals.retainAll((Collection<?>)Impl.this.knownElements);
                Impl.this.knownElements.addAll((Collection)knownElementAdditions);
                if (Impl.this.realizedElements != null) {
                    Impl.this.realizedElements.removeAll((Collection)knownElementRemovals);
                }
                Iterator it = localKnownElementAdditions.iterator();
                while (it.hasNext()) {
                    Impl.this.getOrCreateNode(it.next()).addParent(this.parentElement);
                }
                if (suspendRedraw[0]) {
                    Impl.this.viewer.getControl().setRedraw(false);
                }
                try {
                    event.diff.accept(new ListDiffVisitor(this){
                        final /* synthetic */ ListChangeListener this$2;
                        {
                            this.this$2 = listChangeListener;
                        }

                        public void handleAdd(int index, Object child) {
                            Impl.access$7(ListChangeListener.access$0(this.this$2)).insert(this.this$2.parentElement, child, index);
                        }

                        public void handleRemove(int index, Object child) {
                            Impl.access$7(ListChangeListener.access$0(this.this$2)).remove(this.this$2.parentElement, child, index);
                        }

                        public void handleReplace(int index, Object oldChild, Object newChild) {
                            Impl.access$7(ListChangeListener.access$0(this.this$2)).replace(this.this$2.parentElement, oldChild, newChild, index);
                        }

                        public void handleMove(int oldIndex, int newIndex, Object child) {
                            Impl.access$7(ListChangeListener.access$0(this.this$2)).move(this.this$2.parentElement, child, oldIndex, newIndex);
                        }
                    });
                }
                finally {
                    if (suspendRedraw[0]) {
                        Impl.this.viewer.getControl().setRedraw(true);
                    }
                }
                it = localKnownElementRemovals.iterator();
                while (it.hasNext()) {
                    ObservableCollectionTreeContentProvider.TreeNode node = Impl.this.getExistingNode(it.next());
                    if (node == null) continue;
                    node.removeParent(this.parentElement);
                }
                if (Impl.this.realizedElements != null) {
                    Impl.this.realizedElements.addAll((Collection)knownElementAdditions);
                }
                Impl.this.knownElements.removeAll((Collection)knownElementRemovals);
            }

            static /* synthetic */ Impl access$0(ListChangeListener listChangeListener) {
                return listChangeListener.Impl.this;
            }
        }
    }
}

