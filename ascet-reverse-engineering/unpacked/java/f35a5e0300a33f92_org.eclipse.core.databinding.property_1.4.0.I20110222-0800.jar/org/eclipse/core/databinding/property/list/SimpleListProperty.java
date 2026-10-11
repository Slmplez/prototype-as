/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListDiff
 */
package org.eclipse.core.databinding.property.list;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.list.ListProperty;
import org.eclipse.core.internal.databinding.property.list.SimplePropertyObservableList;

public abstract class SimpleListProperty
extends ListProperty {
    public IObservableList observe(Realm realm, Object source) {
        return new SimplePropertyObservableList(realm, source, this);
    }

    protected abstract List doGetList(Object var1);

    public final void setList(Object source, List list, ListDiff diff) {
        if (source != null && !diff.isEmpty()) {
            this.doSetList(source, list, diff);
        }
    }

    protected abstract void doSetList(Object var1, List var2, ListDiff var3);

    protected void doSetList(Object source, List list) {
        ListDiff diff = Diffs.computeLazyListDiff((List)this.doGetList(source), (List)list);
        this.doSetList(source, list, diff);
    }

    protected void doUpdateList(Object source, ListDiff diff) {
        ArrayList list = new ArrayList(this.doGetList(source));
        diff.applyTo(list);
        this.doSetList(source, list, diff);
    }

    public abstract INativePropertyListener adaptListener(ISimplePropertyListener var1);
}

