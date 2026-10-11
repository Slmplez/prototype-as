/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.masterdetail.IObservableFactory
 *  org.eclipse.core.databinding.observable.masterdetail.MasterDetailObservables
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.SetDiff
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.internal.databinding.identity.IdentitySet
 */
package org.eclipse.core.databinding.property.set;

import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.masterdetail.MasterDetailObservables;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.SetDiff;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.map.IMapProperty;
import org.eclipse.core.databinding.property.set.ISetProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.core.internal.databinding.identity.IdentitySet;
import org.eclipse.core.internal.databinding.property.SetPropertyDetailValuesMap;

public abstract class SetProperty
implements ISetProperty {
    public Set getSet(Object source) {
        if (source == null) {
            return Collections.EMPTY_SET;
        }
        return Collections.unmodifiableSet(this.doGetSet(source));
    }

    protected Set doGetSet(Object source) {
        IObservableSet observable = this.observe(source);
        try {
            IdentitySet identitySet = new IdentitySet((Collection)observable);
            return identitySet;
        }
        finally {
            observable.dispose();
        }
    }

    public final void setSet(Object source, Set set) {
        if (source != null) {
            this.doSetSet(source, set);
        }
    }

    protected void doSetSet(Object source, Set set) {
        this.doUpdateSet(source, Diffs.computeSetDiff((Set)this.doGetSet(source), (Set)set));
    }

    public final void updateSet(Object source, SetDiff diff) {
        if (source != null && !diff.isEmpty()) {
            this.doUpdateSet(source, diff);
        }
    }

    protected void doUpdateSet(Object source, SetDiff diff) {
        IObservableSet observable = this.observe(source);
        try {
            diff.applyTo((Set)observable);
        }
        finally {
            observable.dispose();
        }
    }

    public IObservableSet observe(Object source) {
        return this.observe(Realm.getDefault(), source);
    }

    public IObservableFactory setFactory() {
        return new IObservableFactory(){

            public IObservable createObservable(Object target) {
                return SetProperty.this.observe(target);
            }
        };
    }

    public IObservableFactory setFactory(final Realm realm) {
        return new IObservableFactory(){

            public IObservable createObservable(Object target) {
                return SetProperty.this.observe(realm, target);
            }
        };
    }

    public IObservableSet observeDetail(IObservableValue master) {
        return MasterDetailObservables.detailSet((IObservableValue)master, (IObservableFactory)this.setFactory(master.getRealm()), (Object)this.getElementType());
    }

    public final IMapProperty values(IValueProperty detailValues) {
        return new SetPropertyDetailValuesMap(this, detailValues);
    }
}

