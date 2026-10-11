/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.observable.list.ListDiffVisitor
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 */
package org.eclipse.core.internal.databinding.property;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.list.ListDiffVisitor;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.list.IListProperty;
import org.eclipse.core.databinding.property.list.ListProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.core.internal.databinding.property.PropertyObservableUtil;

public class ListPropertyDetailValuesList
extends ListProperty {
    private final IListProperty masterProperty;
    private final IValueProperty detailProperty;

    public ListPropertyDetailValuesList(IListProperty masterProperty, IValueProperty detailProperty) {
        this.masterProperty = masterProperty;
        this.detailProperty = detailProperty;
    }

    public Object getElementType() {
        return this.detailProperty.getValueType();
    }

    protected List doGetList(Object source) {
        List masterList = this.masterProperty.getList(source);
        ArrayList<Object> detailList = new ArrayList<Object>(masterList.size());
        Iterator it = masterList.iterator();
        while (it.hasNext()) {
            detailList.add(this.detailProperty.getValue(it.next()));
        }
        return detailList;
    }

    protected void doUpdateList(Object source, ListDiff diff) {
        final List masterList = this.masterProperty.getList(source);
        diff.accept(new ListDiffVisitor(){

            public void handleAdd(int index, Object element) {
                throw new UnsupportedOperationException();
            }

            public void handleRemove(int index, Object element) {
                throw new UnsupportedOperationException();
            }

            public void handleMove(int oldIndex, int newIndex, Object element) {
                throw new UnsupportedOperationException();
            }

            public void handleReplace(int index, Object oldElement, Object newElement) {
                ListPropertyDetailValuesList.this.detailProperty.setValue(masterList.get(index), newElement);
            }
        });
    }

    public IObservableList observe(Realm realm, Object source) {
        IObservableList masterList;
        ObservableTracker.setIgnore((boolean)true);
        try {
            masterList = this.masterProperty.observe(realm, source);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        IObservableList detailList = this.detailProperty.observeDetail(masterList);
        PropertyObservableUtil.cascadeDispose((IObservable)detailList, (IObservable)masterList);
        return detailList;
    }

    public IObservableList observeDetail(IObservableValue master) {
        IObservableList masterList;
        ObservableTracker.setIgnore((boolean)true);
        try {
            masterList = this.masterProperty.observeDetail(master);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        IObservableList detailList = this.detailProperty.observeDetail(masterList);
        PropertyObservableUtil.cascadeDispose((IObservable)detailList, (IObservable)masterList);
        return detailList;
    }

    public String toString() {
        return this.masterProperty + " => " + this.detailProperty;
    }
}

