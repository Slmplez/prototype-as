/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.SetDiff
 *  org.eclipse.core.databinding.observable.set.UnionSet
 */
package org.eclipse.core.databinding.property.set;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.SetDiff;
import org.eclipse.core.databinding.observable.set.UnionSet;
import org.eclipse.core.databinding.property.set.ISetProperty;
import org.eclipse.core.databinding.property.set.SetProperty;
import org.eclipse.core.internal.databinding.property.PropertyObservableUtil;

public class UnionSetProperty
extends SetProperty {
    private final ISetProperty[] properties;
    private final Object elementType;

    public UnionSetProperty(ISetProperty[] properties) {
        this(properties, null);
    }

    public UnionSetProperty(ISetProperty[] properties, Object elementType) {
        this.properties = properties;
        this.elementType = elementType;
    }

    public Object getElementType() {
        return this.elementType;
    }

    protected Set doGetSet(Object source) {
        HashSet set = new HashSet();
        int i = 0;
        while (i < this.properties.length) {
            set.addAll(this.properties[i].getSet(source));
            ++i;
        }
        return set;
    }

    protected void doSetSet(Object source, Set set) {
        throw new UnsupportedOperationException("UnionSetProperty is unmodifiable");
    }

    protected void doUpdateSet(Object source, SetDiff diff) {
        throw new UnsupportedOperationException("UnionSetProperty is unmodifiable");
    }

    public IObservableSet observe(Realm realm, Object source) {
        IObservableSet[] sets = new IObservableSet[this.properties.length];
        int i = 0;
        while (i < sets.length) {
            sets[i] = this.properties[i].observe(realm, source);
            ++i;
        }
        UnionSet unionSet = new UnionSet(sets, this.elementType);
        int i2 = 0;
        while (i2 < sets.length) {
            PropertyObservableUtil.cascadeDispose((IObservable)unionSet, (IObservable)sets[i2]);
            ++i2;
        }
        return unionSet;
    }
}

