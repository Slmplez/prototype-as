/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 */
package org.eclipse.core.internal.databinding.property;

import java.util.List;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.list.IListProperty;
import org.eclipse.core.databinding.property.list.ListProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.core.internal.databinding.property.PropertyObservableUtil;

public class ValuePropertyDetailList
extends ListProperty {
    private final IValueProperty masterProperty;
    private final IListProperty detailProperty;

    public ValuePropertyDetailList(IValueProperty masterProperty, IListProperty detailProperty) {
        this.masterProperty = masterProperty;
        this.detailProperty = detailProperty;
    }

    public Object getElementType() {
        return this.detailProperty.getElementType();
    }

    protected List doGetList(Object source) {
        Object masterValue = this.masterProperty.getValue(source);
        return this.detailProperty.getList(masterValue);
    }

    protected void doSetList(Object source, List list) {
        Object masterValue = this.masterProperty.getValue(source);
        this.detailProperty.setList(masterValue, list);
    }

    protected void doUpdateList(Object source, ListDiff diff) {
        Object masterValue = this.masterProperty.getValue(source);
        this.detailProperty.updateList(masterValue, diff);
    }

    public IObservableList observe(Realm realm, Object source) {
        IObservableValue masterValue;
        ObservableTracker.setIgnore((boolean)true);
        try {
            masterValue = this.masterProperty.observe(realm, source);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        IObservableList detailList = this.detailProperty.observeDetail(masterValue);
        PropertyObservableUtil.cascadeDispose((IObservable)detailList, (IObservable)masterValue);
        return detailList;
    }

    public IObservableList observeDetail(IObservableValue master) {
        IObservableValue masterValue;
        ObservableTracker.setIgnore((boolean)true);
        try {
            masterValue = this.masterProperty.observeDetail(master);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        IObservableList detailList = this.detailProperty.observeDetail(masterValue);
        PropertyObservableUtil.cascadeDispose((IObservable)detailList, (IObservable)masterValue);
        return detailList;
    }

    public String toString() {
        return this.masterProperty + " => " + this.detailProperty;
    }
}

