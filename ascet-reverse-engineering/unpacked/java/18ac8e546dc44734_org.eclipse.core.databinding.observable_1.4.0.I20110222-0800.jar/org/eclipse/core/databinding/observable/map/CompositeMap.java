/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.databinding.observable.map;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.map.BidiObservableMap;
import org.eclipse.core.databinding.observable.map.IMapChangeListener;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapChangeEvent;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.observable.map.ObservableMap;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.set.WritableSet;
import org.eclipse.core.runtime.Assert;

public class CompositeMap
extends ObservableMap {
    private Set pendingAdds = new HashSet();
    private Map pendingRemoves = new HashMap();
    private Map pendingChanges = new HashMap();
    private IMapChangeListener firstMapListener = new IMapChangeListener(){

        public void handleMapChange(MapChangeEvent event) {
            Object oldValue;
            MapDiff diff = event.diff;
            HashSet<Object> rangeSetAdditions = new HashSet<Object>();
            HashSet<Object> rangeSetRemovals = new HashSet<Object>();
            HashSet adds = new HashSet();
            HashSet changes = new HashSet();
            HashSet removes = new HashSet();
            HashMap oldValues = new HashMap();
            Iterator it = diff.getAddedKeys().iterator();
            while (it.hasNext()) {
                Object addedKey = it.next();
                Object newValue = diff.getNewValue(addedKey);
                if (!CompositeMap.this.rangeSet.contains(newValue)) {
                    CompositeMap.this.pendingAdds.add(newValue);
                    rangeSetAdditions.add(newValue);
                    continue;
                }
                adds.add(addedKey);
                CompositeMap.this.wrappedMap.put(addedKey, CompositeMap.this.secondMap.get(newValue));
            }
            it = diff.getChangedKeys().iterator();
            while (it.hasNext()) {
                boolean added;
                Object changedKey = it.next();
                oldValue = diff.getOldValue(changedKey);
                Object newValue = diff.getNewValue(changedKey);
                boolean removed = CompositeMap.this.firstMap.getKeys(oldValue).isEmpty();
                boolean bl = added = !CompositeMap.this.rangeSet.contains(newValue);
                if (removed) {
                    CompositeMap.this.pendingRemoves.put(oldValue, changedKey);
                    rangeSetRemovals.add(oldValue);
                }
                if (added) {
                    CompositeMap.this.pendingAdds.add(newValue);
                    rangeSetAdditions.add(newValue);
                }
                if (added || removed) {
                    CompositeMap.this.pendingChanges.put(oldValue, newValue);
                    CompositeMap.this.pendingChanges.put(newValue, oldValue);
                    continue;
                }
                changes.add(changedKey);
                oldValues.put(changedKey, oldValue);
                CompositeMap.this.wrappedMap.put(changedKey, CompositeMap.this.secondMap.get(newValue));
            }
            it = diff.getRemovedKeys().iterator();
            while (it.hasNext()) {
                Object removedKey = it.next();
                oldValue = diff.getOldValue(removedKey);
                if (CompositeMap.this.firstMap.getKeys(oldValue).isEmpty()) {
                    CompositeMap.this.pendingRemoves.put(oldValue, removedKey);
                    rangeSetRemovals.add(oldValue);
                    continue;
                }
                removes.add(removedKey);
                oldValues.put(removedKey, CompositeMap.this.secondMap.get(oldValue));
                CompositeMap.this.wrappedMap.remove(removedKey);
            }
            if (adds.size() > 0 || removes.size() > 0 || changes.size() > 0) {
                CompositeMap.this.fireMapChange(new MapDiff(this, adds, changes, oldValues, removes){
                    final /* synthetic */ 1 this$1;
                    private final /* synthetic */ Set val$adds;
                    private final /* synthetic */ Set val$changes;
                    private final /* synthetic */ Map val$oldValues;
                    private final /* synthetic */ Set val$removes;
                    {
                        this.this$1 = var1_1;
                        this.val$adds = set;
                        this.val$changes = set2;
                        this.val$oldValues = map;
                        this.val$removes = set3;
                    }

                    public Set getAddedKeys() {
                        return this.val$adds;
                    }

                    public Set getChangedKeys() {
                        return this.val$changes;
                    }

                    public Object getNewValue(Object key) {
                        return 1.access$0(this.this$1).wrappedMap.get(key);
                    }

                    public Object getOldValue(Object key) {
                        return this.val$oldValues.get(key);
                    }

                    public Set getRemovedKeys() {
                        return this.val$removes;
                    }
                });
            }
            if (rangeSetAdditions.size() > 0 || rangeSetRemovals.size() > 0) {
                CompositeMap.this.rangeSet.addAndRemove(rangeSetAdditions, rangeSetRemovals);
            }
        }

        static /* synthetic */ CompositeMap access$0(1 var0) {
            return var0.CompositeMap.this;
        }
    };
    private IMapChangeListener secondMapListener = new IMapChangeListener(){

        public void handleMapChange(MapChangeEvent event) {
            Set elements;
            MapDiff diff = event.diff;
            HashSet adds = new HashSet();
            HashSet<Object> changes = new HashSet<Object>();
            HashSet removes = new HashSet();
            HashMap oldValues = new HashMap();
            HashMap<Object, Object> newValues = new HashMap<Object, Object>();
            HashSet addedKeys = new HashSet(diff.getAddedKeys());
            HashSet removedKeys = new HashSet(diff.getRemovedKeys());
            Iterator it = addedKeys.iterator();
            while (it.hasNext()) {
                Object addedKey = it.next();
                elements = CompositeMap.this.firstMap.getKeys(addedKey);
                Object newValue = diff.getNewValue(addedKey);
                if (CompositeMap.this.pendingChanges.containsKey(addedKey)) {
                    Object oldKey = CompositeMap.this.pendingChanges.remove(addedKey);
                    Object oldValue = removedKeys.remove(oldKey) ? diff.getOldValue(oldKey) : CompositeMap.this.secondMap.get(oldKey);
                    CompositeMap.this.pendingChanges.remove(oldKey);
                    CompositeMap.this.pendingAdds.remove(addedKey);
                    CompositeMap.this.pendingRemoves.remove(oldKey);
                    Iterator it2 = elements.iterator();
                    while (it2.hasNext()) {
                        Object element = it2.next();
                        changes.add(element);
                        oldValues.put(element, oldValue);
                        newValues.put(element, newValue);
                        CompositeMap.this.wrappedMap.put(element, newValue);
                    }
                    continue;
                }
                if (CompositeMap.this.pendingAdds.remove(addedKey)) {
                    Iterator it2 = elements.iterator();
                    while (it2.hasNext()) {
                        Object element = it2.next();
                        adds.add(element);
                        newValues.put(element, newValue);
                        CompositeMap.this.wrappedMap.put(element, newValue);
                    }
                    continue;
                }
                Assert.isTrue((boolean)false, (String)"unexpected case");
            }
            it = diff.getChangedKeys().iterator();
            while (it.hasNext()) {
                Object changedKey = it.next();
                elements = CompositeMap.this.firstMap.getKeys(changedKey);
                Iterator it2 = elements.iterator();
                while (it2.hasNext()) {
                    Object element = it2.next();
                    changes.add(element);
                    oldValues.put(element, diff.getOldValue(changedKey));
                    Object newValue = diff.getNewValue(changedKey);
                    newValues.put(element, newValue);
                    CompositeMap.this.wrappedMap.put(element, newValue);
                }
            }
            it = removedKeys.iterator();
            while (it.hasNext()) {
                Object removedKey = it.next();
                Object element = CompositeMap.this.pendingRemoves.remove(removedKey);
                if (element != null) {
                    if (CompositeMap.this.pendingChanges.containsKey(removedKey)) {
                        Object newKey = CompositeMap.this.pendingChanges.remove(removedKey);
                        CompositeMap.this.pendingChanges.remove(newKey);
                        CompositeMap.this.pendingAdds.remove(newKey);
                        CompositeMap.this.pendingRemoves.remove(removedKey);
                        changes.add(element);
                        oldValues.put(element, diff.getOldValue(removedKey));
                        Object newValue = CompositeMap.this.secondMap.get(newKey);
                        newValues.put(element, newValue);
                        CompositeMap.this.wrappedMap.put(element, newValue);
                        continue;
                    }
                    removes.add(element);
                    Object oldValue = diff.getOldValue(removedKey);
                    oldValues.put(element, oldValue);
                    CompositeMap.this.wrappedMap.remove(element);
                    continue;
                }
                Assert.isTrue((boolean)false, (String)"unexpected case");
            }
            if (adds.size() > 0 || removes.size() > 0 || changes.size() > 0) {
                CompositeMap.this.fireMapChange(new MapDiff(this, adds, changes, newValues, oldValues, removes){
                    final /* synthetic */ 3 this$1;
                    private final /* synthetic */ Set val$adds;
                    private final /* synthetic */ Set val$changes;
                    private final /* synthetic */ Map val$newValues;
                    private final /* synthetic */ Map val$oldValues;
                    private final /* synthetic */ Set val$removes;
                    {
                        this.this$1 = var1_1;
                        this.val$adds = set;
                        this.val$changes = set2;
                        this.val$newValues = map;
                        this.val$oldValues = map2;
                        this.val$removes = set3;
                    }

                    public Set getAddedKeys() {
                        return this.val$adds;
                    }

                    public Set getChangedKeys() {
                        return this.val$changes;
                    }

                    public Object getNewValue(Object key) {
                        return this.val$newValues.get(key);
                    }

                    public Object getOldValue(Object key) {
                        return this.val$oldValues.get(key);
                    }

                    public Set getRemovedKeys() {
                        return this.val$removes;
                    }
                });
            }
        }
    };
    private BidiObservableMap firstMap;
    private IObservableMap secondMap;
    private WritableSetPlus rangeSet = new WritableSetPlus();

    public CompositeMap(IObservableMap firstMap, IObservableFactory secondMapFactory) {
        super(firstMap.getRealm(), new HashMap());
        this.firstMap = new BidiObservableMap(firstMap);
        this.firstMap.addMapChangeListener(this.firstMapListener);
        this.rangeSet.addAll(this.firstMap.values());
        this.secondMap = (IObservableMap)secondMapFactory.createObservable(this.rangeSet);
        this.secondMap.addMapChangeListener(this.secondMapListener);
        Iterator it = this.firstMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry)it.next();
            this.wrappedMap.put(entry.getKey(), this.secondMap.get(entry.getValue()));
        }
    }

    public Object getKeyType() {
        return this.firstMap.getKeyType();
    }

    public Object getValueType() {
        return this.secondMap.getValueType();
    }

    public synchronized void dispose() {
        super.dispose();
        if (this.firstMap != null) {
            this.firstMap.removeMapChangeListener(this.firstMapListener);
            this.firstMap = null;
        }
        if (this.secondMap != null) {
            this.secondMap.dispose();
            this.secondMap = null;
        }
    }

    private static class WritableSetPlus
    extends WritableSet {
        private WritableSetPlus() {
        }

        void addAndRemove(Set additions, Set removals) {
            this.wrappedSet.removeAll(removals);
            this.wrappedSet.addAll(additions);
            this.fireSetChange(Diffs.createSetDiff(additions, removals));
        }
    }
}

