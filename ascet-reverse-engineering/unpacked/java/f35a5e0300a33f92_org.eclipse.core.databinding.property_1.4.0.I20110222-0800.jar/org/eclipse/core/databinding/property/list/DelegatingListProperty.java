/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListDiff
 */
package org.eclipse.core.databinding.property.list;

import java.util.Collections;
import java.util.List;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.list.IListProperty;
import org.eclipse.core.databinding.property.list.ListProperty;
import org.eclipse.core.databinding.property.list.SimpleListProperty;

public abstract class DelegatingListProperty
extends ListProperty {
    private final IListProperty nullProperty;
    private final Object elementType;

    protected DelegatingListProperty() {
        this(null);
    }

    protected DelegatingListProperty(Object elementType) {
        this.elementType = elementType;
        this.nullProperty = new NullListProperty();
    }

    public final IListProperty getDelegate(Object source) {
        if (source == null) {
            return this.nullProperty;
        }
        IListProperty delegate = this.doGetDelegate(source);
        if (delegate == null) {
            delegate = this.nullProperty;
        }
        return delegate;
    }

    protected abstract IListProperty doGetDelegate(Object var1);

    public Object getElementType() {
        return this.elementType;
    }

    protected List doGetList(Object source) {
        return this.getDelegate(source).getList(source);
    }

    protected void doSetList(Object source, List list) {
        this.getDelegate(source).setList(source, list);
    }

    protected void doUpdateList(Object source, ListDiff diff) {
        this.getDelegate(source).updateList(source, diff);
    }

    public IObservableList observe(Object source) {
        return this.getDelegate(source).observe(source);
    }

    public IObservableList observe(Realm realm, Object source) {
        return this.getDelegate(source).observe(realm, source);
    }

    private class NullListProperty
    extends SimpleListProperty {
        private NullListProperty() {
        }

        public Object getElementType() {
            return DelegatingListProperty.this.elementType;
        }

        protected List doGetList(Object source) {
            return Collections.EMPTY_LIST;
        }

        protected void doSetList(Object source, List list, ListDiff diff) {
        }

        protected void doSetList(Object source, List list) {
        }

        protected void doUpdateList(Object source, ListDiff diff) {
        }

        public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
            return null;
        }
    }
}

