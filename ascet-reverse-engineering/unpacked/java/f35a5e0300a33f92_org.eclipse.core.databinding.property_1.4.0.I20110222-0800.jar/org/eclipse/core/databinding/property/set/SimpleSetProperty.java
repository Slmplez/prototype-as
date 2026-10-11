/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.SetDiff
 */
package org.eclipse.core.databinding.property.set;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.SetDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.set.SetProperty;
import org.eclipse.core.internal.databinding.property.set.SimplePropertyObservableSet;

public abstract class SimpleSetProperty
extends SetProperty {
    public IObservableSet observe(Realm realm, Object source) {
        return new SimplePropertyObservableSet(realm, source, this);
    }

    protected abstract Set doGetSet(Object var1);

    public final void setSet(Object source, Set set, SetDiff diff) {
        if (source != null && !diff.isEmpty()) {
            this.doSetSet(source, set, diff);
        }
    }

    protected abstract void doSetSet(Object var1, Set var2, SetDiff var3);

    protected void doSetSet(Object source, Set set) {
        SetDiff diff = Diffs.computeLazySetDiff((Set)this.doGetSet(source), (Set)set);
        this.doSetSet(source, set, diff);
    }

    protected void doUpdateSet(Object source, SetDiff diff) {
        HashSet set = new HashSet(this.doGetSet(source));
        diff.applyTo(set);
        this.doSetSet(source, set, diff);
    }

    public abstract INativePropertyListener adaptListener(ISimplePropertyListener var1);
}

