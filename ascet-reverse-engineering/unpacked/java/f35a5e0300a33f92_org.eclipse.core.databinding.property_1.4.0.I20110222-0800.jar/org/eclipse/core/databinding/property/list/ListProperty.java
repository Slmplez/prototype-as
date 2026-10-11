/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.observable.masterdetail.IObservableFactory
 *  org.eclipse.core.databinding.observable.masterdetail.MasterDetailObservables
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 */
package org.eclipse.core.databinding.property.list;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.masterdetail.MasterDetailObservables;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.list.IListProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.core.internal.databinding.property.ListPropertyDetailValuesList;

public abstract class ListProperty
implements IListProperty {
    public List getList(Object source) {
        if (source == null) {
            return Collections.EMPTY_LIST;
        }
        return Collections.unmodifiableList(this.doGetList(source));
    }

    protected List doGetList(Object source) {
        IObservableList observable = this.observe(source);
        try {
            ArrayList arrayList = new ArrayList(observable);
            return arrayList;
        }
        finally {
            observable.dispose();
        }
    }

    public final void setList(Object source, List list) {
        if (source != null) {
            this.doSetList(source, list);
        }
    }

    protected void doSetList(Object source, List list) {
        this.doUpdateList(source, Diffs.computeListDiff((List)this.doGetList(source), (List)list));
    }

    public final void updateList(Object source, ListDiff diff) {
        if (source != null) {
            this.doUpdateList(source, diff);
        }
    }

    protected void doUpdateList(Object source, ListDiff diff) {
        IObservableList observable = this.observe(source);
        try {
            diff.applyTo((List)observable);
        }
        finally {
            observable.dispose();
        }
    }

    public IObservableList observe(Object source) {
        return this.observe(Realm.getDefault(), source);
    }

    public IObservableFactory listFactory() {
        return new IObservableFactory(){

            public IObservable createObservable(Object target) {
                return ListProperty.this.observe(target);
            }
        };
    }

    public IObservableFactory listFactory(final Realm realm) {
        return new IObservableFactory(){

            public IObservable createObservable(Object target) {
                return ListProperty.this.observe(realm, target);
            }
        };
    }

    public IObservableList observeDetail(IObservableValue master) {
        return MasterDetailObservables.detailList((IObservableValue)master, (IObservableFactory)this.listFactory(master.getRealm()), (Object)this.getElementType());
    }

    public final IListProperty values(IValueProperty detailValue) {
        return new ListPropertyDetailValuesList(this, detailValue);
    }
}

