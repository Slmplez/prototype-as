/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.set;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.set.ObservableSet;

public class WritableSet
extends ObservableSet {
    public WritableSet() {
        this(Realm.getDefault());
    }

    public WritableSet(Collection c, Object elementType) {
        this(Realm.getDefault(), (Collection)new HashSet(c), elementType);
    }

    public WritableSet(Realm realm) {
        this(realm, (Collection)new HashSet(), (Object)null);
    }

    public WritableSet(Realm realm, Collection c, Object elementType) {
        super(realm, new HashSet(c), elementType);
        this.elementType = elementType;
    }

    public boolean add(Object o) {
        this.getterCalled();
        boolean added = this.wrappedSet.add(o);
        if (added) {
            this.fireSetChange(Diffs.createSetDiff(Collections.singleton(o), Collections.EMPTY_SET));
        }
        return added;
    }

    public boolean addAll(Collection c) {
        this.getterCalled();
        HashSet additions = new HashSet();
        Iterator it = c.iterator();
        while (it.hasNext()) {
            Object element = it.next();
            if (!this.wrappedSet.add(element)) continue;
            additions.add(element);
        }
        if (additions.size() > 0) {
            this.fireSetChange(Diffs.createSetDiff(additions, Collections.EMPTY_SET));
            return true;
        }
        return false;
    }

    public boolean remove(Object o) {
        this.getterCalled();
        boolean removed = this.wrappedSet.remove(o);
        if (removed) {
            this.fireSetChange(Diffs.createSetDiff(Collections.EMPTY_SET, Collections.singleton(o)));
        }
        return removed;
    }

    public boolean removeAll(Collection c) {
        this.getterCalled();
        HashSet removes = new HashSet();
        Iterator it = c.iterator();
        while (it.hasNext()) {
            Object element = it.next();
            if (!this.wrappedSet.remove(element)) continue;
            removes.add(element);
        }
        if (removes.size() > 0) {
            this.fireSetChange(Diffs.createSetDiff(Collections.EMPTY_SET, removes));
            return true;
        }
        return false;
    }

    public boolean retainAll(Collection c) {
        this.getterCalled();
        HashSet removes = new HashSet();
        Iterator it = this.wrappedSet.iterator();
        while (it.hasNext()) {
            Object element = it.next();
            if (c.contains(element)) continue;
            it.remove();
            removes.add(element);
        }
        if (removes.size() > 0) {
            this.fireSetChange(Diffs.createSetDiff(Collections.EMPTY_SET, removes));
            return true;
        }
        return false;
    }

    public void clear() {
        this.getterCalled();
        HashSet removes = new HashSet(this.wrappedSet);
        this.wrappedSet.clear();
        this.fireSetChange(Diffs.createSetDiff(Collections.EMPTY_SET, removes));
    }

    public static WritableSet withElementType(Object elementType) {
        return new WritableSet(Realm.getDefault(), (Collection)new HashSet(), elementType);
    }
}

