/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.IObservableCollection
 *  org.eclipse.core.databinding.observable.Observables
 *  org.eclipse.core.databinding.observable.masterdetail.IObservableFactory
 *  org.eclipse.core.databinding.observable.masterdetail.MasterDetailObservables
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.databinding.observable.value.WritableValue
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.viewers.AbstractListViewer
 *  org.eclipse.jface.viewers.AbstractTableViewer
 *  org.eclipse.jface.viewers.CheckboxTableViewer
 *  org.eclipse.jface.viewers.IElementComparer
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.StructuredViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.internal.databinding.viewers;

import java.util.Collection;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IObservableCollection;
import org.eclipse.core.databinding.observable.Observables;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.masterdetail.MasterDetailObservables;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.WritableValue;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.databinding.swt.SWTObservables;
import org.eclipse.jface.databinding.viewers.IViewerUpdater;
import org.eclipse.jface.internal.databinding.viewers.CheckboxTableViewerUpdater;
import org.eclipse.jface.internal.databinding.viewers.ListViewerUpdater;
import org.eclipse.jface.internal.databinding.viewers.ObservableViewerElementSet;
import org.eclipse.jface.internal.databinding.viewers.TableViewerUpdater;
import org.eclipse.jface.viewers.AbstractListViewer;
import org.eclipse.jface.viewers.AbstractTableViewer;
import org.eclipse.jface.viewers.CheckboxTableViewer;
import org.eclipse.jface.viewers.IElementComparer;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.StructuredViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.widgets.Display;

public abstract class ObservableCollectionContentProvider
implements IStructuredContentProvider {
    private Display display;
    private IObservableValue viewerObservable;
    protected IElementComparer comparer;
    private IObservableFactory elementSetFactory;
    private final IViewerUpdater explicitViewerUpdater;
    protected IViewerUpdater viewerUpdater;
    protected IObservableSet knownElements;
    private IObservableSet unmodifiableKnownElements;
    protected IObservableSet realizedElements;
    private IObservableSet unmodifiableRealizedElements;
    private IObservableCollection observableCollection;

    protected ObservableCollectionContentProvider(IViewerUpdater explicitViewerUpdater) {
        this.explicitViewerUpdater = explicitViewerUpdater;
        this.display = Display.getDefault();
        this.viewerObservable = new WritableValue(SWTObservables.getRealm(this.display));
        this.viewerUpdater = null;
        this.elementSetFactory = new IObservableFactory(){

            public IObservable createObservable(Object target) {
                IElementComparer comparer = null;
                if (target instanceof StructuredViewer) {
                    comparer = ((StructuredViewer)target).getComparer();
                }
                return ObservableViewerElementSet.withComparer(SWTObservables.getRealm(ObservableCollectionContentProvider.this.display), null, comparer);
            }
        };
        this.knownElements = MasterDetailObservables.detailSet((IObservableValue)this.viewerObservable, (IObservableFactory)this.elementSetFactory, null);
        this.unmodifiableKnownElements = Observables.unmodifiableObservableSet((IObservableSet)this.knownElements);
        this.observableCollection = null;
    }

    public Object[] getElements(Object inputElement) {
        if (this.observableCollection == null) {
            return new Object[0];
        }
        this.knownElements.addAll((Collection)this.observableCollection);
        if (this.realizedElements != null && !this.realizedElements.equals((Object)this.knownElements)) {
            this.asyncUpdateRealizedElements();
        }
        return this.observableCollection.toArray();
    }

    private void asyncUpdateRealizedElements() {
        if (this.realizedElements == null) {
            return;
        }
        this.display.asyncExec(new Runnable(){

            public void run() {
                if (ObservableCollectionContentProvider.this.realizedElements != null) {
                    ObservableCollectionContentProvider.this.realizedElements.addAll((Collection)ObservableCollectionContentProvider.this.knownElements);
                }
            }
        });
    }

    public void dispose() {
        if (this.observableCollection != null) {
            this.removeCollectionChangeListener(this.observableCollection);
        }
        if (this.viewerObservable != null) {
            this.viewerObservable.dispose();
            this.viewerObservable = null;
        }
        this.viewerUpdater = null;
        this.knownElements = null;
        this.unmodifiableKnownElements = null;
        this.realizedElements = null;
        this.unmodifiableRealizedElements = null;
        this.display = null;
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        this.setViewer(viewer);
        this.setInput(newInput);
    }

    private void setViewer(Viewer viewer) {
        this.viewerUpdater = this.createViewerUpdater(viewer);
        this.comparer = ObservableCollectionContentProvider.getElementComparer(viewer);
        this.viewerObservable.setValue((Object)viewer);
    }

    private static IElementComparer getElementComparer(Viewer viewer) {
        if (viewer instanceof StructuredViewer) {
            return ((StructuredViewer)viewer).getComparer();
        }
        return null;
    }

    IViewerUpdater createViewerUpdater(Viewer viewer) {
        if (this.explicitViewerUpdater != null) {
            return this.explicitViewerUpdater;
        }
        if (viewer instanceof AbstractListViewer) {
            return new ListViewerUpdater((AbstractListViewer)viewer);
        }
        if (viewer instanceof CheckboxTableViewer) {
            return new CheckboxTableViewerUpdater((CheckboxTableViewer)viewer);
        }
        if (viewer instanceof AbstractTableViewer) {
            return new TableViewerUpdater((AbstractTableViewer)viewer);
        }
        throw new IllegalArgumentException("This content provider only works with AbstractTableViewer or AbstractListViewer");
    }

    void setInput(Object input) {
        if (this.observableCollection != null) {
            this.removeCollectionChangeListener(this.observableCollection);
            this.observableCollection = null;
        }
        this.knownElements.clear();
        if (this.realizedElements != null) {
            this.realizedElements.clear();
        }
        if (input != null) {
            this.checkInput(input);
            Assert.isTrue((boolean)(input instanceof IObservableCollection), (String)"Input must be an IObservableCollection");
            this.observableCollection = (IObservableCollection)input;
            this.addCollectionChangeListener(this.observableCollection);
        }
    }

    protected abstract void checkInput(Object var1);

    protected abstract void addCollectionChangeListener(IObservableCollection var1);

    protected abstract void removeCollectionChangeListener(IObservableCollection var1);

    protected final boolean isViewerDisposed() {
        Viewer viewer = (Viewer)this.viewerObservable.getValue();
        return viewer == null || viewer.getControl() == null || viewer.getControl().isDisposed();
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
}

