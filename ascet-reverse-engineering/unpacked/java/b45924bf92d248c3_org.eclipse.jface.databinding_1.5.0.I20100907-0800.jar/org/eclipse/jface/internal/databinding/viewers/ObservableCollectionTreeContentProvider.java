/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.IObservableCollection
 *  org.eclipse.core.databinding.observable.IObservablesListener
 *  org.eclipse.core.databinding.observable.Observables
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.masterdetail.IObservableFactory
 *  org.eclipse.core.databinding.observable.masterdetail.MasterDetailObservables
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.databinding.observable.value.WritableValue
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.util.Util
 *  org.eclipse.jface.viewers.AbstractTreeViewer
 *  org.eclipse.jface.viewers.CheckboxTreeViewer
 *  org.eclipse.jface.viewers.IElementComparer
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.StructuredViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.internal.databinding.viewers;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IObservableCollection;
import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.Observables;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.masterdetail.MasterDetailObservables;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.WritableValue;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.databinding.swt.SWTObservables;
import org.eclipse.jface.databinding.viewers.TreeStructureAdvisor;
import org.eclipse.jface.internal.databinding.viewers.CheckboxTreeViewerUpdater;
import org.eclipse.jface.internal.databinding.viewers.ObservableViewerElementSet;
import org.eclipse.jface.internal.databinding.viewers.TreeViewerUpdater;
import org.eclipse.jface.internal.databinding.viewers.ViewerElementMap;
import org.eclipse.jface.internal.databinding.viewers.ViewerElementSet;
import org.eclipse.jface.util.Util;
import org.eclipse.jface.viewers.AbstractTreeViewer;
import org.eclipse.jface.viewers.CheckboxTreeViewer;
import org.eclipse.jface.viewers.IElementComparer;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.StructuredViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.widgets.Display;

public abstract class ObservableCollectionTreeContentProvider
implements ITreeContentProvider {
    private Realm realm;
    private Display display;
    private IObservableValue viewerObservable;
    protected IElementComparer comparer;
    private IObservableFactory elementSetFactory;
    protected TreeViewerUpdater viewerUpdater;
    protected IObservableSet knownElements;
    private IObservableSet unmodifiableKnownElements;
    protected IObservableSet realizedElements;
    private IObservableSet unmodifiableRealizedElements;
    private IObservableFactory collectionFactory;
    private Map elementNodes;
    private TreeStructureAdvisor structureAdvisor;
    boolean asyncUpdatePending;
    Runnable asyncUpdateRunnable;

    protected ObservableCollectionTreeContentProvider(IObservableFactory collectionFactory, TreeStructureAdvisor structureAdvisor) {
        this.structureAdvisor = structureAdvisor;
        this.display = Display.getDefault();
        this.realm = SWTObservables.getRealm(this.display);
        this.viewerObservable = new WritableValue(this.realm);
        this.viewerUpdater = null;
        this.elementSetFactory = new IObservableFactory(){

            public IObservable createObservable(Object target) {
                return ObservableViewerElementSet.withComparer(ObservableCollectionTreeContentProvider.this.realm, null, ObservableCollectionTreeContentProvider.getElementComparer((Viewer)target));
            }
        };
        this.knownElements = MasterDetailObservables.detailSet((IObservableValue)this.viewerObservable, (IObservableFactory)this.elementSetFactory, null);
        this.unmodifiableKnownElements = Observables.unmodifiableObservableSet((IObservableSet)this.knownElements);
        Assert.isNotNull((Object)collectionFactory, (String)"Collection factory cannot be null");
        this.collectionFactory = collectionFactory;
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        if (this.elementNodes != null && !this.elementNodes.isEmpty()) {
            TreeNode[] oldNodes = new TreeNode[this.elementNodes.size()];
            this.elementNodes.values().toArray(oldNodes);
            int i = 0;
            while (i < oldNodes.length) {
                oldNodes[i].dispose();
                ++i;
            }
            this.elementNodes.clear();
            this.elementNodes = null;
        }
        this.setViewer(viewer);
        this.knownElements.clear();
        if (this.realizedElements != null) {
            this.realizedElements.clear();
        }
    }

    private void setViewer(Viewer viewer) {
        this.viewerUpdater = ObservableCollectionTreeContentProvider.createViewerUpdater(viewer);
        this.comparer = ObservableCollectionTreeContentProvider.getElementComparer(viewer);
        this.elementNodes = ViewerElementMap.withComparer(this.comparer);
        this.viewerObservable.setValue((Object)viewer);
    }

    private static IElementComparer getElementComparer(Viewer viewer) {
        if (viewer instanceof StructuredViewer) {
            return ((StructuredViewer)viewer).getComparer();
        }
        return null;
    }

    private static TreeViewerUpdater createViewerUpdater(Viewer viewer) {
        if (viewer instanceof CheckboxTreeViewer) {
            return new CheckboxTreeViewerUpdater((CheckboxTreeViewer)viewer);
        }
        if (viewer instanceof AbstractTreeViewer) {
            return new TreeViewerUpdater((AbstractTreeViewer)viewer);
        }
        throw new IllegalArgumentException("This content provider only works with AbstractTreeViewer");
    }

    public Object getParent(Object element) {
        Object parentFromAdvisor;
        if (this.structureAdvisor != null && (parentFromAdvisor = this.structureAdvisor.getParent(element)) != null) {
            return parentFromAdvisor;
        }
        TreeNode node = this.getExistingNode(element);
        if (node != null) {
            return node.getParent();
        }
        return null;
    }

    public Object[] getElements(Object input) {
        return this.getChildren(input, true);
    }

    public Object[] getChildren(Object element) {
        return this.getChildren(element, false);
    }

    private Object[] getChildren(Object element, boolean input) {
        TreeNode node = this.getOrCreateNode(element, input);
        Object[] children = node.getChildren().toArray();
        int i = 0;
        while (i < children.length) {
            this.getOrCreateNode(children[i], false).addParent(element);
            ++i;
        }
        this.knownElements.addAll(node.getChildren());
        this.asyncUpdateRealizedElements();
        return children;
    }

    private void asyncUpdateRealizedElements() {
        if (this.realizedElements == null) {
            return;
        }
        if (this.asyncUpdatePending) {
            return;
        }
        if (!this.realizedElements.equals((Object)this.knownElements)) {
            if (this.asyncUpdateRunnable == null) {
                this.asyncUpdateRunnable = new Runnable(){

                    public void run() {
                        ObservableCollectionTreeContentProvider.this.asyncUpdatePending = false;
                        if (ObservableCollectionTreeContentProvider.this.realizedElements != null) {
                            ObservableCollectionTreeContentProvider.this.realizedElements.addAll((Collection)ObservableCollectionTreeContentProvider.this.knownElements);
                        }
                    }
                };
            }
            this.asyncUpdatePending = true;
            this.display.asyncExec(this.asyncUpdateRunnable);
        }
    }

    public boolean hasChildren(Object element) {
        Boolean hasChildren;
        if (this.structureAdvisor != null && (hasChildren = this.structureAdvisor.hasChildren(element)) != null) {
            return hasChildren;
        }
        return this.getOrCreateNode(element, false).hasChildren();
    }

    protected TreeNode getOrCreateNode(Object element) {
        return this.getOrCreateNode(element, false);
    }

    private TreeNode getOrCreateNode(Object element, boolean input) {
        TreeNode node = this.getExistingNode(element);
        if (node == null) {
            node = new TreeNode(element);
            this.elementNodes.put(element, node);
        }
        if (!input) {
            this.knownElements.add(element);
        }
        return node;
    }

    protected TreeNode getExistingNode(Object element) {
        TreeNode node = (TreeNode)this.elementNodes.get(element);
        return node;
    }

    protected boolean isViewerDisposed() {
        Viewer viewer = (Viewer)this.viewerObservable.getValue();
        return viewer == null || viewer.getControl() == null || viewer.getControl().isDisposed();
    }

    public void dispose() {
        if (this.elementNodes != null) {
            if (!this.elementNodes.isEmpty()) {
                TreeNode[] nodes = new TreeNode[this.elementNodes.size()];
                this.elementNodes.values().toArray(nodes);
                int i = 0;
                while (i < nodes.length) {
                    nodes[i].dispose();
                    ++i;
                }
                this.elementNodes.clear();
            }
            this.elementNodes = null;
        }
        if (this.viewerObservable != null) {
            this.viewerObservable.dispose();
            this.viewerObservable = null;
        }
        this.viewerUpdater = null;
        this.comparer = null;
        this.knownElements = null;
        this.unmodifiableKnownElements = null;
        this.collectionFactory = null;
        this.asyncUpdateRunnable = null;
    }

    public IObservableSet getKnownElements() {
        return this.unmodifiableKnownElements;
    }

    public IObservableSet getRealizedElements() {
        if (this.realizedElements == null) {
            this.realizedElements = MasterDetailObservables.detailSet((IObservableValue)this.viewerObservable, (IObservableFactory)this.elementSetFactory, null);
            this.unmodifiableRealizedElements = Observables.unmodifiableObservableSet((IObservableSet)this.realizedElements);
            this.asyncUpdateRealizedElements();
        }
        return this.unmodifiableRealizedElements;
    }

    protected Set findPendingRemovals(Object parent, Collection elementsToBeRemoved) {
        Set result = ViewerElementSet.withComparer(this.comparer);
        Set parents = ViewerElementSet.withComparer(this.comparer);
        parents.add(parent);
        this.accumulatePendingRemovals(result, parents, elementsToBeRemoved);
        return result;
    }

    private void accumulatePendingRemovals(Set removals, Set parents, Collection elementsToRemove) {
        Iterator it = elementsToRemove.iterator();
        while (it.hasNext()) {
            Object element = it.next();
            TreeNode node = this.getExistingNode(element);
            if (node == null || !parents.containsAll(node.getParents())) continue;
            removals.add(element);
            parents.add(element);
            Collection children = node.getChildren();
            this.accumulatePendingRemovals(removals, parents, children);
        }
    }

    protected abstract IObservablesListener createCollectionChangeListener(Object var1);

    protected abstract void addCollectionChangeListener(IObservableCollection var1, IObservablesListener var2);

    protected abstract void removeCollectionChangeListener(IObservableCollection var1, IObservablesListener var2);

    protected boolean equal(Object left, Object right) {
        if (this.comparer == null) {
            return Util.equals((Object)left, (Object)right);
        }
        return this.comparer.equals(left, right);
    }

    protected final class TreeNode {
        private Object element;
        private Object parent;
        private Set parentSet;
        private IObservableCollection children;
        private IObservablesListener listener;

        TreeNode(Object element) {
            Assert.isNotNull((Object)element, (String)"element cannot be null");
            this.element = element;
        }

        Object getElement() {
            return this.element;
        }

        public void addParent(Object newParent) {
            if (this.parent == null) {
                this.parent = newParent;
            } else if (!ObservableCollectionTreeContentProvider.this.equal(this.parent, newParent)) {
                if (this.parentSet == null) {
                    this.parentSet = ViewerElementSet.withComparer(ObservableCollectionTreeContentProvider.this.comparer);
                    this.parentSet.add(this.parent);
                }
                this.parentSet.add(newParent);
            }
        }

        public void removeParent(Object oldParent) {
            if (this.parentSet != null) {
                this.parentSet.remove(oldParent);
                if (this.parentSet.isEmpty()) {
                    this.parentSet = null;
                }
            }
            if (ObservableCollectionTreeContentProvider.this.equal(this.parent, oldParent)) {
                this.parent = this.parentSet == null ? null : this.parentSet.iterator().next();
            }
            if (this.parent == null) {
                this.dispose();
            }
        }

        private Object getParent() {
            return this.parent;
        }

        public Set getParents() {
            if (this.parentSet != null) {
                return this.parentSet;
            }
            if (this.parent != null) {
                return Collections.singleton(this.parent);
            }
            return Collections.EMPTY_SET;
        }

        private void initChildren() {
            if (this.children == null) {
                this.children = (IObservableCollection)ObservableCollectionTreeContentProvider.this.collectionFactory.createObservable(this.element);
                if (this.children == null) {
                    this.listener = null;
                    this.children = Observables.emptyObservableSet((Realm)ObservableCollectionTreeContentProvider.this.realm);
                } else {
                    Assert.isTrue((boolean)Util.equals((Object)ObservableCollectionTreeContentProvider.this.realm, (Object)this.children.getRealm()), (String)"Children observable collection must be on the Display realm");
                    this.listener = ObservableCollectionTreeContentProvider.this.createCollectionChangeListener(this.element);
                    ObservableCollectionTreeContentProvider.this.addCollectionChangeListener(this.children, this.listener);
                }
            }
        }

        boolean hasChildren() {
            this.initChildren();
            return !this.children.isEmpty();
        }

        public Collection getChildren() {
            this.initChildren();
            return this.children;
        }

        private void dispose() {
            if (this.element != null) {
                ObservableCollectionTreeContentProvider.this.elementNodes.remove(this.element);
            }
            if (this.children != null && !this.children.isDisposed()) {
                Iterator iterator = this.children.iterator();
                while (iterator.hasNext()) {
                    TreeNode child = ObservableCollectionTreeContentProvider.this.getExistingNode(iterator.next());
                    if (child == null) continue;
                    child.removeParent(this.element);
                }
                if (this.listener != null) {
                    ObservableCollectionTreeContentProvider.this.removeCollectionChangeListener(this.children, this.listener);
                }
                this.children.dispose();
                this.children = null;
            }
            this.element = null;
            this.parent = null;
            if (this.parentSet != null) {
                this.parentSet.clear();
                this.parentSet = null;
            }
        }
    }
}

