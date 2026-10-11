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
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.jface.internal.databinding.provisional.swt;

import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ListDiffEntry;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.internal.databinding.provisional.swt.SWTUtil;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;

public abstract class TableUpdater {
    private PrivateInterface privateInterface = new PrivateInterface();
    private Table table;
    private IListChangeListener listChangeListener = new IListChangeListener(){

        public void handleListChange(ListChangeEvent event) {
            ListDiffEntry[] differences = event.diff.getDifferences();
            int i = 0;
            while (i < differences.length) {
                ListDiffEntry entry = differences[i];
                if (entry.isAddition()) {
                    TableItem item = new TableItem(TableUpdater.this.table, 0, entry.getPosition());
                    UpdateRunnable updateRunnable = new UpdateRunnable(item, entry.getElement());
                    item.setData((Object)updateRunnable);
                    updateRunnable.makeDirty();
                } else {
                    TableUpdater.this.table.getItem(entry.getPosition()).dispose();
                }
                ++i;
            }
        }
    };
    private IObservableList list;

    public TableUpdater(Table table, IObservableList list) {
        this.table = table;
        this.list = list;
        Assert.isLegal(((table.getStyle() & 0x10000000) != 0 ? 1 : 0) != 0, (String)"TableUpdater requires virtual table");
        table.setItemCount(list.size());
        list.addListChangeListener(this.listChangeListener);
        table.addDisposeListener((DisposeListener)this.privateInterface);
        table.addListener(36, (Listener)this.privateInterface);
    }

    public void dispose() {
        this.table.removeDisposeListener((DisposeListener)this.privateInterface);
        this.table.removeListener(36, (Listener)this.privateInterface);
        this.list.removeListChangeListener(this.listChangeListener);
        this.table = null;
        this.list = null;
    }

    protected abstract void updateItem(int var1, TableItem var2, Object var3);

    private class PrivateInterface
    implements Listener,
    DisposeListener {
        private PrivateInterface() {
        }

        public void handleEvent(Event e) {
            if (e.type == 36) {
                UpdateRunnable runnable = (UpdateRunnable)e.item.getData();
                if (runnable == null) {
                    runnable = new UpdateRunnable((TableItem)e.item, TableUpdater.this.list.get(e.index));
                    e.item.setData((Object)runnable);
                    runnable.makeDirty();
                } else {
                    runnable.updateIfNecessary(e.index);
                }
            }
        }

        public void widgetDisposed(DisposeEvent e) {
            TableUpdater.this.dispose();
        }
    }

    private class UpdateRunnable
    implements Runnable,
    IChangeListener,
    DisposeListener {
        private TableItem item;
        private boolean dirty = false;
        private IObservable[] dependencies = new IObservable[0];
        private final Object element;

        UpdateRunnable(TableItem item, Object element) {
            this.item = item;
            this.element = element;
            item.addDisposeListener((DisposeListener)this);
        }

        public void run() {
            if (TableUpdater.this.table != null && !TableUpdater.this.table.isDisposed() && this.item != null && !this.item.isDisposed()) {
                if (TableUpdater.this.table.isVisible()) {
                    int topIndex;
                    int tableHeight = ((TableUpdater)TableUpdater.this).table.getClientArea().height;
                    int numVisibleItems = tableHeight / TableUpdater.this.table.getItemHeight();
                    int indexOfItem = TableUpdater.this.table.indexOf(this.item);
                    if (indexOfItem >= (topIndex = TableUpdater.this.table.getTopIndex()) && indexOfItem <= topIndex + numVisibleItems) {
                        this.updateIfNecessary(indexOfItem);
                        return;
                    }
                }
                TableUpdater.this.table.clear(TableUpdater.this.table.indexOf(this.item));
            }
        }

        private void updateIfNecessary(int indexOfItem) {
            if (this.dirty) {
                this.dependencies = ObservableTracker.runAndMonitor((Runnable)new Runnable(this, indexOfItem){
                    final /* synthetic */ UpdateRunnable this$1;
                    private final /* synthetic */ int val$indexOfItem;
                    {
                        this.this$1 = updateRunnable;
                        this.val$indexOfItem = n;
                    }

                    public void run() {
                        UpdateRunnable.access$3(this.this$1).updateItem(this.val$indexOfItem, UpdateRunnable.access$0(this.this$1), UpdateRunnable.access$1(this.this$1));
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
                SWTUtil.runOnce(TableUpdater.this.table.getDisplay(), this);
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

        public void widgetDisposed(DisposeEvent e) {
            this.stopListening();
            this.dependencies = null;
            this.item = null;
        }

        static /* synthetic */ TableItem access$0(UpdateRunnable updateRunnable) {
            return updateRunnable.item;
        }

        static /* synthetic */ Object access$1(UpdateRunnable updateRunnable) {
            return updateRunnable.element;
        }

        static /* synthetic */ TableUpdater access$3(UpdateRunnable updateRunnable) {
            return updateRunnable.TableUpdater.this;
        }
    }
}

