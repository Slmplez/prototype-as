/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.set.AbstractObservableSet
 *  org.eclipse.core.databinding.observable.set.SetDiff
 */
package org.eclipse.core.internal.databinding.property.set;

import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.set.AbstractObservableSet;
import org.eclipse.core.databinding.observable.set.SetDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.IPropertyObservable;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.SimplePropertyEvent;
import org.eclipse.core.databinding.property.set.SimpleSetProperty;

public class SimplePropertyObservableSet
extends AbstractObservableSet
implements IPropertyObservable {
    private Object source;
    private SimpleSetProperty property;
    private volatile boolean updating = false;
    private volatile int modCount = 0;
    private INativePropertyListener listener;
    private Set cachedSet;
    private boolean stale;

    public SimplePropertyObservableSet(Realm realm, Object source, SimpleSetProperty property) {
        super(realm);
        this.source = source;
        this.property = property;
    }

    protected void firstListenerAdded() {
        if (!this.isDisposed()) {
            if (this.listener == null) {
                this.listener = this.property.adaptListener(new ISimplePropertyListener(){

                    public void handleEvent(SimplePropertyEvent event) {
                        if (!SimplePropertyObservableSet.this.isDisposed() && !SimplePropertyObservableSet.this.updating) {
                            SimplePropertyObservableSet.this.getRealm().exec(new Runnable(this, event){
                                final /* synthetic */ 1 this$1;
                                private final /* synthetic */ SimplePropertyEvent val$event;
                                {
                                    this.this$1 = var1_1;
                                    this.val$event = simplePropertyEvent;
                                }

                                public void run() {
                                    if (this.val$event.type == SimplePropertyEvent.CHANGE) {
                                        SimplePropertyObservableSet simplePropertyObservableSet = 1.access$0(this.this$1);
                                        SimplePropertyObservableSet.access$2(simplePropertyObservableSet, SimplePropertyObservableSet.access$1(simplePropertyObservableSet) + 1);
                                        SimplePropertyObservableSet.access$3(1.access$0(this.this$1), (SetDiff)this.val$event.diff);
                                    } else if (this.val$event.type == SimplePropertyEvent.STALE && !SimplePropertyObservableSet.access$4(1.access$0(this.this$1))) {
                                        SimplePropertyObservableSet.access$5(1.access$0(this.this$1), true);
                                        SimplePropertyObservableSet.access$6(1.access$0(this.this$1));
                                    }
                                }
                            });
                        }
                    }

                    static /* synthetic */ SimplePropertyObservableSet access$0(1 var0) {
                        return var0.SimplePropertyObservableSet.this;
                    }
                });
            }
            this.getRealm().exec(new Runnable(){

                public void run() {
                    SimplePropertyObservableSet.this.cachedSet = new HashSet(SimplePropertyObservableSet.this.getSet());
                    SimplePropertyObservableSet.this.stale = false;
                    if (SimplePropertyObservableSet.this.listener != null) {
                        SimplePropertyObservableSet.this.listener.addTo(SimplePropertyObservableSet.this.source);
                    }
                }
            });
        }
    }

    protected void lastListenerRemoved() {
        if (this.listener != null) {
            this.listener.removeFrom(this.source);
        }
        this.cachedSet.clear();
        this.cachedSet = null;
        this.stale = false;
    }

    protected Set getWrappedSet() {
        return this.getSet();
    }

    public Object getElementType() {
        return this.property.getElementType();
    }

    private Set getSet() {
        return this.property.getSet(this.source);
    }

    public boolean contains(Object o) {
        this.getterCalled();
        return this.getSet().contains(o);
    }

    public boolean containsAll(Collection c) {
        this.getterCalled();
        return this.getSet().containsAll(c);
    }

    public boolean isEmpty() {
        this.getterCalled();
        return this.getSet().isEmpty();
    }

    public Object[] toArray() {
        this.getterCalled();
        return this.getSet().toArray();
    }

    public Object[] toArray(Object[] a) {
        this.getterCalled();
        return this.getSet().toArray(a);
    }

    private void updateSet(Set set, SetDiff diff) {
        if (!diff.isEmpty()) {
            boolean wasUpdating = this.updating;
            this.updating = true;
            try {
                this.property.updateSet(this.source, diff);
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
        Set set = this.getSet();
        if (set.contains(o)) {
            return false;
        }
        SetDiff diff = Diffs.createSetDiff(Collections.singleton(o), (Set)Collections.EMPTY_SET);
        this.updateSet(set, diff);
        return true;
    }

    public Iterator iterator() {
        this.getterCalled();
        return new Iterator(){
            int expectedModCount;
            Set set;
            Iterator iterator;
            Object last;
            {
                this.expectedModCount = SimplePropertyObservableSet.this.modCount;
                this.set = new HashSet(SimplePropertyObservableSet.this.getSet());
                this.iterator = this.set.iterator();
                this.last = null;
            }

            public boolean hasNext() {
                SimplePropertyObservableSet.this.getterCalled();
                this.checkForComodification();
                return this.iterator.hasNext();
            }

            public Object next() {
                SimplePropertyObservableSet.this.getterCalled();
                this.checkForComodification();
                this.last = this.iterator.next();
                return this.last;
            }

            public void remove() {
                SimplePropertyObservableSet.this.checkRealm();
                this.checkForComodification();
                SetDiff diff = Diffs.createSetDiff((Set)Collections.EMPTY_SET, Collections.singleton(this.last));
                SimplePropertyObservableSet.this.updateSet(this.set, diff);
                this.iterator.remove();
                this.last = null;
                this.expectedModCount = SimplePropertyObservableSet.this.modCount;
            }

            private void checkForComodification() {
                if (this.expectedModCount != SimplePropertyObservableSet.this.modCount) {
                    throw new ConcurrentModificationException();
                }
            }
        };
    }

    public boolean remove(Object o) {
        this.getterCalled();
        Set set = this.getSet();
        if (!set.contains(o)) {
            return false;
        }
        SetDiff diff = Diffs.createSetDiff((Set)Collections.EMPTY_SET, Collections.singleton(o));
        this.updateSet(set, diff);
        return true;
    }

    public boolean addAll(Collection c) {
        this.getterCalled();
        if (c.isEmpty()) {
            return false;
        }
        Set set = this.getSet();
        if (set.containsAll(c)) {
            return false;
        }
        HashSet additions = new HashSet(c);
        additions.removeAll(set);
        if (additions.isEmpty()) {
            return false;
        }
        SetDiff diff = Diffs.createSetDiff(additions, (Set)Collections.EMPTY_SET);
        this.updateSet(set, diff);
        return true;
    }

    public boolean removeAll(Collection c) {
        this.getterCalled();
        if (c.isEmpty()) {
            return false;
        }
        Set set = this.getSet();
        if (set.isEmpty()) {
            return false;
        }
        HashSet removals = new HashSet(c);
        removals.retainAll(set);
        if (removals.isEmpty()) {
            return false;
        }
        SetDiff diff = Diffs.createSetDiff((Set)Collections.EMPTY_SET, removals);
        this.updateSet(set, diff);
        return true;
    }

    public boolean retainAll(Collection c) {
        this.getterCalled();
        Set set = this.getSet();
        if (set.isEmpty()) {
            return false;
        }
        if (c.isEmpty()) {
            this.clear();
            return true;
        }
        HashSet removals = new HashSet(set);
        removals.removeAll(c);
        if (removals.isEmpty()) {
            return false;
        }
        SetDiff diff = Diffs.createSetDiff((Set)Collections.EMPTY_SET, removals);
        this.updateSet(set, diff);
        return true;
    }

    public void clear() {
        this.getterCalled();
        Set set = this.getSet();
        if (set.isEmpty()) {
            return;
        }
        SetDiff diff = Diffs.createSetDiff((Set)Collections.EMPTY_SET, (Set)set);
        this.updateSet(set, diff);
    }

    private void notifyIfChanged(SetDiff diff) {
        if (this.hasListeners()) {
            Set oldSet = this.cachedSet;
            HashSet newSet = this.cachedSet = new HashSet(this.getSet());
            if (diff == null) {
                diff = Diffs.computeSetDiff((Set)oldSet, newSet);
            }
            if (!diff.isEmpty() || this.stale) {
                this.stale = false;
                this.fireSetChange(diff);
            }
        }
    }

    public boolean isStale() {
        this.getterCalled();
        return this.stale;
    }

    public boolean equals(Object o) {
        this.getterCalled();
        return this.getSet().equals(o);
    }

    public int hashCode() {
        this.getterCalled();
        return this.getSet().hashCode();
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

    static /* synthetic */ void access$2(SimplePropertyObservableSet simplePropertyObservableSet, int n) {
        simplePropertyObservableSet.modCount = n;
    }

    static /* synthetic */ void access$3(SimplePropertyObservableSet simplePropertyObservableSet, SetDiff setDiff) {
        simplePropertyObservableSet.notifyIfChanged(setDiff);
    }

    static /* synthetic */ boolean access$4(SimplePropertyObservableSet simplePropertyObservableSet) {
        return simplePropertyObservableSet.stale;
    }

    static /* synthetic */ void access$6(SimplePropertyObservableSet simplePropertyObservableSet) {
        simplePropertyObservableSet.fireStale();
    }
}

