/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.ChangeEvent
 *  org.eclipse.core.databinding.observable.IChangeListener
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.list.IListChangeListener
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListChangeEvent
 *  org.eclipse.core.databinding.observable.list.ListDiffEntry
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.internal.databinding.provisional.swt;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ListDiffEntry;
import org.eclipse.jface.internal.databinding.provisional.swt.SWTUtil;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Widget;

public abstract class CompositeUpdater {
    private LayoutRunnable layoutRunnable = new LayoutRunnable();
    private PrivateInterface privateInterface = new PrivateInterface();
    private Composite theComposite;
    private IObservableList model;

    protected void requestLayout(Control control) {
        this.layoutRunnable.add(control);
    }

    public CompositeUpdater(Composite toUpdate, IObservableList model) {
        this.theComposite = toUpdate;
        this.model = model;
        model.addListChangeListener((IListChangeListener)this.privateInterface);
        this.theComposite.addDisposeListener((DisposeListener)this.privateInterface);
        ObservableTracker.setIgnore((boolean)true);
        try {
            int index = 0;
            Iterator it = this.model.iterator();
            while (it.hasNext()) {
                Object element = it.next();
                this.createChild(element, index++);
            }
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
    }

    protected void disposeWidget(int position) {
        this.theComposite.getChildren()[position].dispose();
    }

    public void dispose() {
        this.theComposite.removeDisposeListener((DisposeListener)this.privateInterface);
        this.model.removeListChangeListener((IListChangeListener)this.privateInterface);
    }

    protected abstract Widget createWidget(int var1);

    protected abstract void updateWidget(Widget var1, Object var2);

    void createChild(Object element, int index) {
        Widget newChild = this.createWidget(index);
        UpdateRunnable updateRunnable = new UpdateRunnable(newChild, element);
        newChild.setData((Object)updateRunnable);
        updateRunnable.updateIfNecessary();
    }

    private class LayoutRunnable
    implements Runnable {
        private boolean posted = false;
        private Set controlsToLayout = new HashSet();

        private LayoutRunnable() {
        }

        void add(Control toLayout) {
            this.controlsToLayout.add(toLayout);
            if (!this.posted) {
                this.posted = true;
                CompositeUpdater.this.theComposite.getDisplay().asyncExec((Runnable)this);
            }
        }

        public void run() {
            this.posted = false;
            CompositeUpdater.this.theComposite.getShell().layout(this.controlsToLayout.toArray(new Control[this.controlsToLayout.size()]));
            this.controlsToLayout.clear();
        }
    }

    private class PrivateInterface
    implements DisposeListener,
    IListChangeListener {
        private PrivateInterface() {
        }

        public void widgetDisposed(DisposeEvent e) {
            CompositeUpdater.this.dispose();
        }

        public void handleListChange(ListChangeEvent event) {
            ListDiffEntry[] diffs = event.diff.getDifferences();
            int i = 0;
            while (i < diffs.length) {
                ListDiffEntry listDiffEntry = diffs[i];
                if (listDiffEntry.isAddition()) {
                    CompositeUpdater.this.createChild(listDiffEntry.getElement(), listDiffEntry.getPosition());
                } else {
                    CompositeUpdater.this.disposeWidget(listDiffEntry.getPosition());
                }
                ++i;
            }
            CompositeUpdater.this.theComposite.layout();
        }
    }

    private class UpdateRunnable
    implements Runnable,
    IChangeListener {
        private Widget widget;
        Object element;
        private boolean dirty = true;
        private IObservable[] dependencies = new IObservable[0];

        UpdateRunnable(Widget widget, Object element) {
            this.widget = widget;
            this.element = element;
        }

        public void run() {
            if (CompositeUpdater.this.theComposite != null && !CompositeUpdater.this.theComposite.isDisposed() && this.widget != null && !this.widget.isDisposed()) {
                this.updateIfNecessary();
            }
        }

        private void updateIfNecessary() {
            if (this.dirty) {
                this.dependencies = ObservableTracker.runAndMonitor((Runnable)new Runnable(this){
                    final /* synthetic */ UpdateRunnable this$1;
                    {
                        this.this$1 = updateRunnable;
                    }

                    public void run() {
                        UpdateRunnable.access$2(this.this$1).updateWidget(UpdateRunnable.access$0(this.this$1), this.this$1.element);
                    }
                }, (IChangeListener)this, null);
                this.dirty = false;
            }
        }

        public void handleChange(ChangeEvent event) {
            this.makeDirty();
        }

        protected final void makeDirty() {
            if (!this.dirty) {
                this.dirty = true;
                this.stopListening();
                if (!CompositeUpdater.this.theComposite.isDisposed()) {
                    SWTUtil.runOnce(CompositeUpdater.this.theComposite.getDisplay(), this);
                }
            }
        }

        private void stopListening() {
            int i = 0;
            while (i < this.dependencies.length) {
                IObservable observable = this.dependencies[i];
                observable.removeChangeListener((IChangeListener)this);
                ++i;
            }
        }

        static /* synthetic */ Widget access$0(UpdateRunnable updateRunnable) {
            return updateRunnable.widget;
        }

        static /* synthetic */ CompositeUpdater access$2(UpdateRunnable updateRunnable) {
            return updateRunnable.CompositeUpdater.this;
        }
    }
}

