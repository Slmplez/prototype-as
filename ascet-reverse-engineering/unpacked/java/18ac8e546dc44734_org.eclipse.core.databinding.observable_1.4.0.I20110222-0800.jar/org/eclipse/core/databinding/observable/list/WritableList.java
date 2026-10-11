/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.list;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.ListDiffEntry;
import org.eclipse.core.databinding.observable.list.ObservableList;

public class WritableList
extends ObservableList {
    public WritableList() {
        this(Realm.getDefault());
    }

    public WritableList(Realm realm) {
        this(realm, new ArrayList(), null);
    }

    public WritableList(List toWrap, Object elementType) {
        this(Realm.getDefault(), toWrap, elementType);
    }

    public WritableList(Collection collection, Object elementType) {
        this(Realm.getDefault(), new ArrayList(collection), elementType);
    }

    public WritableList(Realm realm, List toWrap, Object elementType) {
        super(realm, toWrap, elementType);
    }

    public WritableList(Realm realm, Collection collection, Object elementType) {
        super(realm, new ArrayList(collection), elementType);
    }

    public Object set(int index, Object element) {
        this.checkRealm();
        Object oldElement = this.wrappedList.set(index, element);
        this.fireListChange(Diffs.createListDiff(Diffs.createListDiffEntry(index, false, oldElement), Diffs.createListDiffEntry(index, true, element)));
        return oldElement;
    }

    public Object move(int oldIndex, int newIndex) {
        this.checkRealm();
        int size = this.wrappedList.size();
        if (oldIndex < 0 || oldIndex >= size) {
            throw new IndexOutOfBoundsException("oldIndex: " + oldIndex + ", size:" + size);
        }
        if (newIndex < 0 || newIndex >= size) {
            throw new IndexOutOfBoundsException("newIndex: " + newIndex + ", size:" + size);
        }
        if (oldIndex == newIndex) {
            return this.wrappedList.get(oldIndex);
        }
        Object element = this.wrappedList.remove(oldIndex);
        this.wrappedList.add(newIndex, element);
        this.fireListChange(Diffs.createListDiff(Diffs.createListDiffEntry(oldIndex, false, element), Diffs.createListDiffEntry(newIndex, true, element)));
        return element;
    }

    public Object remove(int index) {
        this.checkRealm();
        Object oldElement = this.wrappedList.remove(index);
        this.fireListChange(Diffs.createListDiff(Diffs.createListDiffEntry(index, false, oldElement)));
        return oldElement;
    }

    public boolean add(Object element) {
        this.checkRealm();
        boolean added = this.wrappedList.add(element);
        if (added) {
            this.fireListChange(Diffs.createListDiff(Diffs.createListDiffEntry(this.wrappedList.size() - 1, true, element)));
        }
        return added;
    }

    public void add(int index, Object element) {
        this.checkRealm();
        this.wrappedList.add(index, element);
        this.fireListChange(Diffs.createListDiff(Diffs.createListDiffEntry(index, true, element)));
    }

    public boolean addAll(Collection c) {
        this.checkRealm();
        ListDiffEntry[] entries = new ListDiffEntry[c.size()];
        int i = 0;
        int addIndex = this.wrappedList.size();
        Iterator it = c.iterator();
        while (it.hasNext()) {
            Object element = it.next();
            entries[i++] = Diffs.createListDiffEntry(addIndex++, true, element);
        }
        boolean added = this.wrappedList.addAll(c);
        this.fireListChange(Diffs.createListDiff(entries));
        return added;
    }

    public boolean addAll(int index, Collection c) {
        this.checkRealm();
        ListDiffEntry[] entries = new ListDiffEntry[c.size()];
        int i = 0;
        int addIndex = index;
        Iterator it = c.iterator();
        while (it.hasNext()) {
            Object element = it.next();
            entries[i++] = Diffs.createListDiffEntry(addIndex++, true, element);
        }
        boolean added = this.wrappedList.addAll(index, c);
        this.fireListChange(Diffs.createListDiff(entries));
        return added;
    }

    public boolean remove(Object o) {
        this.checkRealm();
        int index = this.wrappedList.indexOf(o);
        if (index == -1) {
            return false;
        }
        this.wrappedList.remove(index);
        this.fireListChange(Diffs.createListDiff(Diffs.createListDiffEntry(index, false, o)));
        return true;
    }

    public boolean removeAll(Collection c) {
        this.checkRealm();
        ArrayList<ListDiffEntry> entries = new ArrayList<ListDiffEntry>();
        Iterator it = c.iterator();
        while (it.hasNext()) {
            Object element = it.next();
            int removeIndex = this.wrappedList.indexOf(element);
            if (removeIndex == -1) continue;
            this.wrappedList.remove(removeIndex);
            entries.add(Diffs.createListDiffEntry(removeIndex, false, element));
        }
        if (entries.size() > 0) {
            this.fireListChange(Diffs.createListDiff(entries.toArray(new ListDiffEntry[entries.size()])));
        }
        return entries.size() > 0;
    }

    public boolean retainAll(Collection c) {
        this.checkRealm();
        ArrayList<ListDiffEntry> entries = new ArrayList<ListDiffEntry>();
        int removeIndex = 0;
        Iterator it = this.wrappedList.iterator();
        while (it.hasNext()) {
            Object element = it.next();
            if (!c.contains(element)) {
                entries.add(Diffs.createListDiffEntry(removeIndex, false, element));
                it.remove();
                continue;
            }
            ++removeIndex;
        }
        if (entries.size() > 0) {
            this.fireListChange(Diffs.createListDiff(entries.toArray(new ListDiffEntry[entries.size()])));
        }
        return entries.size() > 0;
    }

    public void clear() {
        this.checkRealm();
        ListDiffEntry[] entries = new ListDiffEntry[this.wrappedList.size()];
        int entryIndex = 0;
        ListIterator it = this.wrappedList.listIterator(this.wrappedList.size());
        while (it.hasPrevious()) {
            int elementIndex = it.previousIndex();
            Object element = it.previous();
            entries[entryIndex++] = Diffs.createListDiffEntry(elementIndex, false, element);
        }
        this.wrappedList.clear();
        this.fireListChange(Diffs.createListDiff(entries));
    }

    public static WritableList withElementType(Object elementType) {
        return new WritableList(Realm.getDefault(), new ArrayList(), elementType);
    }
}

