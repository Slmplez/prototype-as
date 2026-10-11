/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.SetDiff
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 */
package org.eclipse.core.internal.databinding.property;

import java.util.Set;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.SetDiff;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.set.ISetProperty;
import org.eclipse.core.databinding.property.set.SetProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.core.internal.databinding.property.PropertyObservableUtil;

public class ValuePropertyDetailSet
extends SetProperty {
    private IValueProperty masterProperty;
    private ISetProperty detailProperty;

    public ValuePropertyDetailSet(IValueProperty masterProperty, ISetProperty detailProperty) {
        this.masterProperty = masterProperty;
        this.detailProperty = detailProperty;
    }

    public Object getElementType() {
        return this.detailProperty.getElementType();
    }

    protected Set doGetSet(Object source) {
        Object masterValue = this.masterProperty.getValue(source);
        return this.detailProperty.getSet(masterValue);
    }

    protected void doSetSet(Object source, Set set) {
        Object masterValue = this.masterProperty.getValue(source);
        this.detailProperty.setSet(masterValue, set);
    }

    protected void doUpdateSet(Object source, SetDiff diff) {
        Object masterValue = this.masterProperty.getValue(source);
        this.detailProperty.updateSet(masterValue, diff);
    }

    public IObservableSet observe(Realm realm, Object source) {
        IObservableValue masterValue;
        ObservableTracker.setIgnore((boolean)true);
        try {
            masterValue = this.masterProperty.observe(realm, source);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        IObservableSet detailSet = this.detailProperty.observeDetail(masterValue);
        PropertyObservableUtil.cascadeDispose((IObservable)detailSet, (IObservable)masterValue);
        return detailSet;
    }

    public IObservableSet observeDetail(IObservableValue master) {
        IObservableValue masterValue;
        ObservableTracker.setIgnore((boolean)true);
        try {
            masterValue = this.masterProperty.observeDetail(master);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        IObservableSet detailSet = this.detailProperty.observeDetail(masterValue);
        PropertyObservableUtil.cascadeDispose((IObservable)detailSet, (IObservable)masterValue);
        return detailSet;
    }

    public String toString() {
        return this.masterProperty + " => " + this.detailProperty;
    }
}

