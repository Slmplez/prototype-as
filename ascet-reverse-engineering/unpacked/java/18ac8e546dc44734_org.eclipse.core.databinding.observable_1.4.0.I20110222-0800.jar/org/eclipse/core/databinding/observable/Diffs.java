/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.list.ListDiffEntry;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.observable.set.SetDiff;
import org.eclipse.core.databinding.observable.value.ValueDiff;
import org.eclipse.core.internal.databinding.observable.Util;

public class Diffs {
    public static ListDiff computeListDiff(List oldList, List newList) {
        ArrayList diffEntries = new ArrayList();
        Diffs.createListDiffs(new ArrayList(oldList), newList, diffEntries);
        ListDiff listDiff = Diffs.createListDiff(diffEntries.toArray(new ListDiffEntry[diffEntries.size()]));
        return listDiff;
    }

    public static ListDiff computeLazyListDiff(final List oldList, final List newList) {
        return new ListDiff(){
            ListDiff lazyDiff;

            public ListDiffEntry[] getDifferences() {
                if (this.lazyDiff == null) {
                    this.lazyDiff = Diffs.computeListDiff(oldList, newList);
                }
                return this.lazyDiff.getDifferences();
            }
        };
    }

    private static void createListDiffs(List oldList, List newList, List listDiffs) {
        int index = 0;
        Iterator it = newList.iterator();
        while (it.hasNext()) {
            Object newValue = it.next();
            if (oldList.size() <= index) {
                listDiffs.add(Diffs.createListDiffEntry(index, true, newValue));
            } else {
                boolean done;
                do {
                    done = true;
                    Object oldValue = oldList.get(index);
                    if (!(oldValue == null ? newValue != null : !oldValue.equals(newValue))) continue;
                    int oldIndexOfNewValue = Diffs.listIndexOf(oldList, newValue, index);
                    if (oldIndexOfNewValue != -1) {
                        int newIndexOfOldValue = Diffs.listIndexOf(newList, oldValue, index);
                        if (newIndexOfOldValue == -1) {
                            listDiffs.add(Diffs.createListDiffEntry(index, false, oldValue));
                            oldList.remove(index);
                            done = false;
                            continue;
                        }
                        if (newIndexOfOldValue > oldIndexOfNewValue) {
                            if (oldList.size() <= newIndexOfOldValue) {
                                newIndexOfOldValue = oldList.size() - 1;
                            }
                            listDiffs.add(Diffs.createListDiffEntry(index, false, oldValue));
                            oldList.remove(index);
                            listDiffs.add(Diffs.createListDiffEntry(newIndexOfOldValue, true, oldValue));
                            oldList.add(newIndexOfOldValue, oldValue);
                            done = false;
                            continue;
                        }
                        listDiffs.add(Diffs.createListDiffEntry(oldIndexOfNewValue, false, newValue));
                        oldList.remove(oldIndexOfNewValue);
                        listDiffs.add(Diffs.createListDiffEntry(index, true, newValue));
                        oldList.add(index, newValue);
                        continue;
                    }
                    oldList.add(index, newValue);
                    listDiffs.add(Diffs.createListDiffEntry(index, true, newValue));
                } while (!done);
            }
            ++index;
        }
        int i = oldList.size();
        while (i > index) {
            listDiffs.add(Diffs.createListDiffEntry(--i, false, oldList.get(i)));
        }
    }

    private static int listIndexOf(List list, Object object, int index) {
        int size = list.size();
        int i = index;
        while (i < size) {
            Object candidate = list.get(i);
            if (candidate == null ? object == null : candidate.equals(object)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public static final boolean equals(Object left, Object right) {
        return left == null ? right == null : right != null && left.equals(right);
    }

    public static SetDiff computeSetDiff(Set oldSet, Set newSet) {
        HashSet additions = new HashSet(newSet);
        additions.removeAll(oldSet);
        HashSet removals = new HashSet(oldSet);
        removals.removeAll(newSet);
        return Diffs.createSetDiff(additions, removals);
    }

    public static SetDiff computeLazySetDiff(final Set oldSet, final Set newSet) {
        return new SetDiff(){
            private SetDiff lazyDiff;

            private SetDiff getLazyDiff() {
                if (this.lazyDiff == null) {
                    this.lazyDiff = Diffs.computeSetDiff(oldSet, newSet);
                }
                return this.lazyDiff;
            }

            public Set getAdditions() {
                return this.getLazyDiff().getAdditions();
            }

            public Set getRemovals() {
                return this.getLazyDiff().getRemovals();
            }
        };
    }

    public static MapDiff computeMapDiff(Map oldMap, Map newMap) {
        final HashSet addedKeys = new HashSet(newMap.keySet());
        final HashSet removedKeys = new HashSet();
        final HashSet changedKeys = new HashSet();
        final HashMap oldValues = new HashMap();
        final HashMap newValues = new HashMap();
        Iterator it = oldMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry oldEntry = it.next();
            Object oldKey = oldEntry.getKey();
            if (addedKeys.remove(oldKey)) {
                Object newValue;
                Object oldValue = oldEntry.getValue();
                if (Util.equals(oldValue, newValue = newMap.get(oldKey))) continue;
                changedKeys.add(oldKey);
                oldValues.put(oldKey, oldValue);
                newValues.put(oldKey, newValue);
                continue;
            }
            removedKeys.add(oldKey);
            oldValues.put(oldKey, oldEntry.getValue());
        }
        it = addedKeys.iterator();
        while (it.hasNext()) {
            Map.Entry newKey = it.next();
            newValues.put(newKey, newMap.get(newKey));
        }
        return new MapDiff(){

            public Set getAddedKeys() {
                return addedKeys;
            }

            public Set getChangedKeys() {
                return changedKeys;
            }

            public Set getRemovedKeys() {
                return removedKeys;
            }

            public Object getNewValue(Object key) {
                return newValues.get(key);
            }

            public Object getOldValue(Object key) {
                return oldValues.get(key);
            }
        };
    }

    public static MapDiff computeLazyMapDiff(final Map oldMap, final Map newMap) {
        return new MapDiff(){
            private MapDiff lazyDiff;

            private MapDiff getLazyDiff() {
                if (this.lazyDiff == null) {
                    this.lazyDiff = Diffs.computeMapDiff(oldMap, newMap);
                }
                return this.lazyDiff;
            }

            public Set getAddedKeys() {
                return this.getLazyDiff().getAddedKeys();
            }

            public Set getRemovedKeys() {
                return this.getLazyDiff().getRemovedKeys();
            }

            public Set getChangedKeys() {
                return this.getLazyDiff().getChangedKeys();
            }

            public Object getOldValue(Object key) {
                return this.getLazyDiff().getOldValue(key);
            }

            public Object getNewValue(Object key) {
                return this.getLazyDiff().getNewValue(key);
            }
        };
    }

    public static ValueDiff createValueDiff(final Object oldValue, final Object newValue) {
        return new ValueDiff(){

            public Object getOldValue() {
                return oldValue;
            }

            public Object getNewValue() {
                return newValue;
            }
        };
    }

    public static SetDiff createSetDiff(Set additions, Set removals) {
        final Set unmodifiableAdditions = Collections.unmodifiableSet(additions);
        final Set unmodifiableRemovals = Collections.unmodifiableSet(removals);
        return new SetDiff(){

            public Set getAdditions() {
                return unmodifiableAdditions;
            }

            public Set getRemovals() {
                return unmodifiableRemovals;
            }
        };
    }

    public static ListDiff createListDiff(ListDiffEntry difference) {
        return Diffs.createListDiff(new ListDiffEntry[]{difference});
    }

    public static ListDiff createListDiff(ListDiffEntry difference1, ListDiffEntry difference2) {
        return Diffs.createListDiff(new ListDiffEntry[]{difference1, difference2});
    }

    public static ListDiff createListDiff(final ListDiffEntry[] differences) {
        return new ListDiff(){

            public ListDiffEntry[] getDifferences() {
                return differences;
            }
        };
    }

    public static ListDiffEntry createListDiffEntry(final int position, final boolean isAddition, final Object element) {
        return new ListDiffEntry(){

            public int getPosition() {
                return position;
            }

            public boolean isAddition() {
                return isAddition;
            }

            public Object getElement() {
                return element;
            }
        };
    }

    public static MapDiff createMapDiffSingleAdd(final Object addedKey, final Object newValue) {
        return new MapDiff(){

            public Set getAddedKeys() {
                return Collections.singleton(addedKey);
            }

            public Set getChangedKeys() {
                return Collections.EMPTY_SET;
            }

            public Object getNewValue(Object key) {
                return newValue;
            }

            public Object getOldValue(Object key) {
                return null;
            }

            public Set getRemovedKeys() {
                return Collections.EMPTY_SET;
            }
        };
    }

    public static MapDiff createMapDiffSingleChange(final Object existingKey, final Object oldValue, final Object newValue) {
        return new MapDiff(){

            public Set getAddedKeys() {
                return Collections.EMPTY_SET;
            }

            public Set getChangedKeys() {
                return Collections.singleton(existingKey);
            }

            public Object getNewValue(Object key) {
                return newValue;
            }

            public Object getOldValue(Object key) {
                return oldValue;
            }

            public Set getRemovedKeys() {
                return Collections.EMPTY_SET;
            }
        };
    }

    public static MapDiff createMapDiffSingleRemove(final Object removedKey, final Object oldValue) {
        return new MapDiff(){

            public Set getAddedKeys() {
                return Collections.EMPTY_SET;
            }

            public Set getChangedKeys() {
                return Collections.EMPTY_SET;
            }

            public Object getNewValue(Object key) {
                return null;
            }

            public Object getOldValue(Object key) {
                return oldValue;
            }

            public Set getRemovedKeys() {
                return Collections.singleton(removedKey);
            }
        };
    }

    public static MapDiff createMapDiffRemoveAll(final Map copyOfOldMap) {
        return new MapDiff(){

            public Set getAddedKeys() {
                return Collections.EMPTY_SET;
            }

            public Set getChangedKeys() {
                return Collections.EMPTY_SET;
            }

            public Object getNewValue(Object key) {
                return null;
            }

            public Object getOldValue(Object key) {
                return copyOfOldMap.get(key);
            }

            public Set getRemovedKeys() {
                return copyOfOldMap.keySet();
            }
        };
    }

    public static MapDiff createMapDiff(final Set addedKeys, final Set removedKeys, final Set changedKeys, final Map oldValues, final Map newValues) {
        return new MapDiff(){

            public Set getAddedKeys() {
                return addedKeys;
            }

            public Set getChangedKeys() {
                return changedKeys;
            }

            public Object getNewValue(Object key) {
                return newValues.get(key);
            }

            public Object getOldValue(Object key) {
                return oldValues.get(key);
            }

            public Set getRemovedKeys() {
                return removedKeys;
            }
        };
    }
}

