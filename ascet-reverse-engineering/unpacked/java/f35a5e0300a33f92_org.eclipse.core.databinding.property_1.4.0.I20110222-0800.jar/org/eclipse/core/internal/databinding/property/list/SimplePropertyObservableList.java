/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.AbstractObservableList
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.observable.list.ListDiffEntry
 */
package org.eclipse.core.internal.databinding.property.list;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.AbstractObservableList;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.list.ListDiffEntry;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.IPropertyObservable;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.SimplePropertyEvent;
import org.eclipse.core.databinding.property.list.SimpleListProperty;

public class SimplePropertyObservableList
extends AbstractObservableList
implements IPropertyObservable {
    private Object source;
    private SimpleListProperty property;
    private volatile boolean updating = false;
    private volatile int modCount = 0;
    private INativePropertyListener listener;
    private List cachedList;
    private boolean stale;

    public SimplePropertyObservableList(Realm realm, Object source, SimpleListProperty property) {
        super(realm);
        this.source = source;
        this.property = property;
    }

    protected void firstListenerAdded() {
        if (!this.isDisposed()) {
            if (this.listener == null) {
                this.listener = this.property.adaptListener(new ISimplePropertyListener(){

                    public void handleEvent(SimplePropertyEvent event) {
                        if (!SimplePropertyObservableList.this.isDisposed() && !SimplePropertyObservableList.this.updating) {
                            SimplePropertyObservableList.this.getRealm().exec(new Runnable(this, event){
                                final /* synthetic */ 1 this$1;
                                private final /* synthetic */ SimplePropertyEvent val$event;
                                {
                                    this.this$1 = var1_1;
                                    this.val$event = simplePropertyEvent;
                                }

                                public void run() {
                                    if (this.val$event.type == SimplePropertyEvent.CHANGE) {
                                        SimplePropertyObservableList simplePropertyObservableList = 1.access$0(this.this$1);
                                        SimplePropertyObservableList.access$2(simplePropertyObservableList, SimplePropertyObservableList.access$1(simplePropertyObservableList) + 1);
                                        SimplePropertyObservableList.access$3(1.access$0(this.this$1), (ListDiff)this.val$event.diff);
                                    } else if (this.val$event.type == SimplePropertyEvent.STALE && !SimplePropertyObservableList.access$4(1.access$0(this.this$1))) {
                                        SimplePropertyObservableList.access$5(1.access$0(this.this$1), true);
                                        SimplePropertyObservableList.access$6(1.access$0(this.this$1));
                                    }
                                }
                            });
                        }
                    }

                    static /* synthetic */ SimplePropertyObservableList access$0(1 var0) {
                        return var0.SimplePropertyObservableList.this;
                    }
                });
            }
            this.getRealm().exec(new Runnable(){

                public void run() {
                    SimplePropertyObservableList.this.cachedList = new ArrayList(SimplePropertyObservableList.this.getList());
                    SimplePropertyObservableList.this.stale = false;
                    if (SimplePropertyObservableList.this.listener != null) {
                        SimplePropertyObservableList.this.listener.addTo(SimplePropertyObservableList.this.source);
                    }
                }
            });
        }
    }

    protected void lastListenerRemoved() {
        if (this.listener != null) {
            this.listener.removeFrom(this.source);
        }
        this.cachedList = null;
        this.stale = false;
    }

    private void getterCalled() {
        ObservableTracker.getterCalled((IObservable)this);
    }

    public Object getElementType() {
        return this.property.getElementType();
    }

    private List getList() {
        return this.property.getList(this.source);
    }

    protected int doGetSize() {
        return this.getList().size();
    }

    public boolean contains(Object o) {
        this.getterCalled();
        return this.getList().contains(o);
    }

    public boolean containsAll(Collection c) {
        this.getterCalled();
        return this.getList().containsAll(c);
    }

    public Object get(int index) {
        this.getterCalled();
        return this.getList().get(index);
    }

    public int indexOf(Object o) {
        this.getterCalled();
        return this.getList().indexOf(o);
    }

    public boolean isEmpty() {
        this.getterCalled();
        return this.getList().isEmpty();
    }

    public int lastIndexOf(Object o) {
        this.getterCalled();
        return this.getList().lastIndexOf(o);
    }

    public Object[] toArray() {
        this.getterCalled();
        return this.getList().toArray();
    }

    public Object[] toArray(Object[] a) {
        this.getterCalled();
        return this.getList().toArray(a);
    }

    private void updateList(List list, ListDiff diff) {
        if (!diff.isEmpty()) {
            boolean wasUpdating = this.updating;
            this.updating = true;
            try {
                this.property.updateList(this.source, diff);
                ++this.modCount;
            }
            finally {
                this.updating = wasUpdating;
            }
            this.notifyIfChanged(null);
        }
    }

    public boolean add(Object o) {
        this.checkRealm();
        List list = this.getList();
        ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)list.size(), (boolean)true, (Object)o));
        this.updateList(list, diff);
        return true;
    }

    public void add(int index, Object o) {
        this.checkRealm();
        List list = this.getList();
        if (index < 0 || index > list.size()) {
            throw new IndexOutOfBoundsException();
        }
        ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)index, (boolean)true, (Object)o));
        this.updateList(list, diff);
    }

    public Iterator iterator() {
        this.getterCalled();
        return new Iterator(){
            int expectedModCount;
            List list;
            ListIterator iterator;
            Object lastElement;
            int lastIndex;
            {
                this.expectedModCount = SimplePropertyObservableList.this.modCount;
                this.list = new ArrayList(SimplePropertyObservableList.this.getList());
                this.iterator = this.list.listIterator();
                this.lastElement = null;
                this.lastIndex = -1;
            }

            public boolean hasNext() {
                SimplePropertyObservableList.this.getterCalled();
                this.checkForComodification();
                return this.iterator.hasNext();
            }

            public Object next() {
                SimplePropertyObservableList.this.getterCalled();
                this.checkForComodification();
                this.lastElement = this.iterator.next();
                Object next = this.lastElement;
                this.lastIndex = this.iterator.previousIndex();
                return next;
            }

            public void remove() {
                SimplePropertyObservableList.this.checkRealm();
                this.checkForComodification();
                if (this.lastIndex == -1) {
                    throw new IllegalStateException();
                }
                this.iterator.remove();
                ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)this.lastIndex, (boolean)false, (Object)this.lastElement));
                SimplePropertyObservableList.this.updateList(this.list, diff);
                this.lastElement = null;
                this.lastIndex = -1;
                this.expectedModCount = SimplePropertyObservableList.this.modCount;
            }

            private void checkForComodification() {
                if (this.expectedModCount != SimplePropertyObservableList.this.modCount) {
                    throw new ConcurrentModificationException();
                }
            }
        };
    }

    public Object move(int oldIndex, int newIndex) {
        this.checkRealm();
        List list = this.getList();
        int size = list.size();
        if (oldIndex < 0 || oldIndex >= size || newIndex < 0 || newIndex >= size) {
            throw new IndexOutOfBoundsException();
        }
        if (oldIndex == newIndex) {
            return list.get(oldIndex);
        }
        Object element = list.get(oldIndex);
        ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)oldIndex, (boolean)false, element), (ListDiffEntry)Diffs.createListDiffEntry((int)newIndex, (boolean)true, element));
        this.updateList(list, diff);
        return element;
    }

    public boolean remove(Object o) {
        this.checkRealm();
        List list = this.getList();
        int index = list.indexOf(o);
        if (index == -1) {
            return false;
        }
        ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)index, (boolean)false, (Object)o));
        this.updateList(list, diff);
        return true;
    }

    public ListIterator listIterator() {
        return this.listIterator(0);
    }

    public ListIterator listIterator(int index) {
        this.getterCalled();
        return new ListIterator(index){
            int expectedModCount;
            List list;
            ListIterator iterator;
            Object lastElement;
            int lastIndex;
            {
                this.expectedModCount = SimplePropertyObservableList.this.modCount;
                this.list = new ArrayList(SimplePropertyObservableList.this.getList());
                this.iterator = this.list.listIterator(n);
                this.lastElement = null;
                this.lastIndex = -1;
            }

            public boolean hasNext() {
                SimplePropertyObservableList.this.getterCalled();
                this.checkForComodification();
                return this.iterator.hasNext();
            }

            public int nextIndex() {
                SimplePropertyObservableList.this.getterCalled();
                this.checkForComodification();
                return this.iterator.nextIndex();
            }

            public Object next() {
                SimplePropertyObservableList.this.getterCalled();
                this.checkForComodification();
                this.lastElement = this.iterator.next();
                this.lastIndex = this.iterator.previousIndex();
                return this.lastElement;
            }

            public boolean hasPrevious() {
                SimplePropertyObservableList.this.getterCalled();
                this.checkForComodification();
                return this.iterator.hasPrevious();
            }

            public int previousIndex() {
                SimplePropertyObservableList.this.getterCalled();
                this.checkForComodification();
                return this.iterator.previousIndex();
            }

            public Object previous() {
                SimplePropertyObservableList.this.getterCalled();
                this.checkForComodification();
                this.lastElement = this.iterator.previous();
                this.lastIndex = this.iterator.nextIndex();
                return this.lastElement;
            }

            public void add(Object o) {
                SimplePropertyObservableList.this.checkRealm();
                this.checkForComodification();
                int index = this.iterator.nextIndex();
                ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)index, (boolean)true, (Object)o));
                SimplePropertyObservableList.this.updateList(this.list, diff);
                this.iterator.add(o);
                this.lastElement = null;
                this.lastIndex = -1;
                this.expectedModCount = SimplePropertyObservableList.this.modCount;
            }

            public void set(Object o) {
                SimplePropertyObservableList.this.checkRealm();
                this.checkForComodification();
                ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)this.lastIndex, (boolean)false, (Object)this.lastElement), (ListDiffEntry)Diffs.createListDiffEntry((int)this.lastIndex, (boolean)true, (Object)o));
                SimplePropertyObservableList.this.updateList(this.list, diff);
                this.iterator.set(o);
                this.lastElement = o;
                this.expectedModCount = SimplePropertyObservableList.this.modCount;
            }

            public void remove() {
                SimplePropertyObservableList.this.checkRealm();
                this.checkForComodification();
                if (this.lastIndex == -1) {
                    throw new IllegalStateException();
                }
                ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)this.lastIndex, (boolean)false, (Object)this.lastElement));
                SimplePropertyObservableList.this.updateList(this.list, diff);
                this.iterator.remove();
                this.lastElement = null;
                this.lastIndex = -1;
                this.expectedModCount = SimplePropertyObservableList.this.modCount;
            }

            private void checkForComodification() {
                if (this.expectedModCount != SimplePropertyObservableList.this.modCount) {
                    throw new ConcurrentModificationException();
                }
            }
        };
    }

    public Object remove(int index) {
        this.checkRealm();
        List list = this.getList();
        Object element = list.get(index);
        ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)index, (boolean)false, element));
        this.updateList(list, diff);
        return element;
    }

    public Object set(int index, Object o) {
        this.checkRealm();
        List list = this.getList();
        Object oldElement = list.get(index);
        ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)index, (boolean)false, oldElement), (ListDiffEntry)Diffs.createListDiffEntry((int)index, (boolean)true, (Object)o));
        this.updateList(list, diff);
        return oldElement;
    }

    public List subList(int fromIndex, int toIndex) {
        this.getterCalled();
        return Collections.unmodifiableList(this.getList().subList(fromIndex, toIndex));
    }

    public boolean addAll(Collection c) {
        this.checkRealm();
        if (c.isEmpty()) {
            return false;
        }
        List list = this.getList();
        return this.addAll(list, list.size(), c);
    }

    public boolean addAll(int index, Collection c) {
        this.checkRealm();
        if (c.isEmpty()) {
            return false;
        }
        return this.addAll(this.getList(), index, c);
    }

    private boolean addAll(List list, int index, Collection c) {
        if (index < 0 || index > list.size()) {
            throw new IndexOutOfBoundsException();
        }
        ListDiffEntry[] entries = new ListDiffEntry[c.size()];
        int offsetIndex = 0;
        Iterator it = c.iterator();
        while (it.hasNext()) {
            Object element = it.next();
            entries[offsetIndex] = Diffs.createListDiffEntry((int)(index + offsetIndex), (boolean)true, element);
            ++offsetIndex;
        }
        ListDiff diff = Diffs.createListDiff((ListDiffEntry[])entries);
        this.updateList(list, diff);
        return true;
    }

    public boolean removeAll(Collection c) {
        this.checkRealm();
        if (c.isEmpty()) {
            return false;
        }
        List list = this.getList();
        if (list.isEmpty()) {
            return false;
        }
        ArrayList<ListDiffEntry> entries = new ArrayList<ListDiffEntry>();
        ListIterator it = list.listIterator();
        while (it.hasNext()) {
            int index = it.nextIndex() - entries.size();
            Object element = it.next();
            if (!c.contains(element)) continue;
            entries.add(Diffs.createListDiffEntry((int)index, (boolean)false, element));
        }
        if (entries.isEmpty()) {
            return false;
        }
        ListDiff diff = Diffs.createListDiff((ListDiffEntry[])entries.toArray(new ListDiffEntry[entries.size()]));
        this.updateList(list, diff);
        return true;
    }

    public boolean retainAll(Collection c) {
        this.checkRealm();
        List list = this.getList();
        if (list.isEmpty()) {
            return false;
        }
        if (c.isEmpty()) {
            this.clear();
            return true;
        }
        ArrayList<ListDiffEntry> entries = new ArrayList<ListDiffEntry>();
        ListIterator it = list.listIterator();
        while (it.hasNext()) {
            int index = it.nextIndex() - entries.size();
            Object element = it.next();
            if (c.contains(element)) continue;
            entries.add(Diffs.createListDiffEntry((int)index, (boolean)false, element));
        }
        if (entries.isEmpty()) {
            return false;
        }
        ListDiff diff = Diffs.createListDiff((ListDiffEntry[])entries.toArray(new ListDiffEntry[entries.size()]));
        this.updateList(list, diff);
        return true;
    }

    public void clear() {
        this.checkRealm();
        List list = this.getList();
        if (list.isEmpty()) {
            return;
        }
        ArrayList<ListDiffEntry> entries = new ArrayList<ListDiffEntry>();
        ListIterator it = list.listIterator(list.size());
        while (it.hasPrevious()) {
            int index = it.previousIndex();
            Object element = it.previous();
            entries.add(Diffs.createListDiffEntry((int)index, (boolean)false, element));
        }
        ListDiff diff = Diffs.createListDiff((ListDiffEntry[])entries.toArray(new ListDiffEntry[entries.size()]));
        this.updateList(list, diff);
    }

    private void notifyIfChanged(ListDiff diff) {
        if (this.hasListeners()) {
            List oldList = this.cachedList;
            ArrayList newList = this.cachedList = new ArrayList(this.getList());
            if (diff == null) {
                diff = Diffs.computeListDiff((List)oldList, newList);
            }
            if (!diff.isEmpty() || this.stale) {
                this.stale = false;
                this.fireListChange(diff);
            }
        }
    }

    public boolean isStale() {
        this.getterCalled();
        return this.stale;
    }

    public boolean equals(Object o) {
        this.getterCalled();
        return this.getList().equals(o);
    }

    public int hashCode() {
        this.getterCalled();
        return this.getList().hashCode();
    }

    public Object getObserved() {
        return this.source;
    }

    public IProperty getProperty() {
        return this.property;
    }

    public synchronized void dispose() {
        if (!this.isDisposed()) {
            if (this.listener != null) {
                this.listener.removeFrom(this.source);
            }
            this.property = null;
            this.source = null;
            this.listener = null;
            this.stale = false;
        }
        super.dispose();
    }

    static /* synthetic */ void access$2(SimplePropertyObservableList simplePropertyObservableList, int n) {
        simplePropertyObservableList.modCount = n;
    }

    static /* synthetic */ void access$3(SimplePropertyObservableList simplePropertyObservableList, ListDiff listDiff) {
        simplePropertyObservableList.notifyIfChanged(listDiff);
    }

    static /* synthetic */ boolean access$4(SimplePropertyObservableList simplePropertyObservableList) {
        return simplePropertyObservableList.stale;
    }

    static /* synthetic */ void access$6(SimplePropertyObservableList simplePropertyObservableList) {
        simplePropertyObservableList.fireStale();
    }
}

