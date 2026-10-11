/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.set;

import java.util.HashSet;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ListDiffEntry;
import org.eclipse.core.databinding.observable.set.ObservableSet;

public class ListToSetAdapter
extends ObservableSet {
    private final IObservableList list;
    private IListChangeListener listener = new IListChangeListener(){

        public void handleListChange(ListChangeEvent event) {
            HashSet<Object> added = new HashSet<Object>();
            HashSet<Object> removed = new HashSet<Object>();
            ListDiffEntry[] differences = event.diff.getDifferences();
            int i = 0;
            while (i < differences.length) {
                ListDiffEntry entry = differences[i];
                Object element = entry.getElement();
                if (entry.isAddition()) {
                    if (ListToSetAdapter.this.wrappedSet.add(element) && !removed.remove(element)) {
                        added.add(element);
                    }
                } else if (ListToSetAdapter.this.wrappedSet.remove(element)) {
                    removed.add(element);
                    added.remove(element);
                }
                ++i;
            }
            ListToSetAdapter.this.fireSetChange(Diffs.createSetDiff(added, removed));
        }
    };

    public ListToSetAdapter(IObservableList list) {
        super(list.getRealm(), new HashSet(), list.getElementType());
        this.list = list;
        this.wrappedSet.addAll(list);
        this.list.addListChangeListener(this.listener);
    }

    public synchronized void dispose() {
        super.dispose();
        if (this.list != null && this.listener != null) {
            this.list.removeListChangeListener(this.listener);
            this.listener = null;
        }
    }
}

