/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.SetDiff
 */
package org.eclipse.core.databinding.property.set;

import java.util.Collections;
import java.util.Set;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.SetDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.set.ISetProperty;
import org.eclipse.core.databinding.property.set.SetProperty;
import org.eclipse.core.databinding.property.set.SimpleSetProperty;

public abstract class DelegatingSetProperty
extends SetProperty {
    private final Object elementType;
    private final ISetProperty nullProperty = new NullSetProperty();

    protected DelegatingSetProperty() {
        this(null);
    }

    protected DelegatingSetProperty(Object elementType) {
        this.elementType = elementType;
    }

    protected final ISetProperty getDelegate(Object source) {
        if (source == null) {
            return this.nullProperty;
        }
        ISetProperty delegate = this.doGetDelegate(source);
        if (delegate == null) {
            delegate = this.nullProperty;
        }
        return delegate;
    }

    protected abstract ISetProperty doGetDelegate(Object var1);

    public Object getElementType() {
        return this.elementType;
    }

    protected Set doGetSet(Object source) {
        return this.getDelegate(source).getSet(source);
    }

    protected void doSetSet(Object source, Set set) {
        this.getDelegate(source).setSet(source, set);
    }

    protected void doUpdateSet(Object source, SetDiff diff) {
        this.getDelegate(source).updateSet(source, diff);
    }

    public IObservableSet observe(Object source) {
        return this.getDelegate(source).observe(source);
    }

    public IObservableSet observe(Realm realm, Object source) {
        return this.getDelegate(source).observe(realm, source);
    }

    private class NullSetProperty
    extends SimpleSetProperty {
        private NullSetProperty() {
        }

        public Object getElementType() {
            return DelegatingSetProperty.this.elementType;
        }

        protected Set doGetSet(Object source) {
            return Collections.EMPTY_SET;
        }

        protected void doSetSet(Object source, Set set, SetDiff diff) {
        }

        protected void doSetSet(Object source, Set set) {
        }

        protected void doUpdateSet(Object source, SetDiff diff) {
        }

        public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
            return null;
        }
    }
}

