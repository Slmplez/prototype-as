/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.change.util;

import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.change.ChangeFactory;
import org.eclipse.emf.ecore.change.ChangeKind;
import org.eclipse.emf.ecore.change.ListChange;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ListDifferenceAnalyzer {
    public EList<ListChange> analyzeLists(EList<?> oldList, EList<?> newList) {
        BasicEList listChanges = new BasicEList();
        this.analyzeLists((EList<Object>)new BasicEList(oldList), newList, (EList<ListChange>)listChanges);
        return listChanges;
    }

    public void analyzeLists(EList<Object> oldList, EList<?> newList, EList<ListChange> listChanges) {
        this.createListChanges((EList<Object>)new BasicEList(oldList), newList, listChanges);
    }

    /*
     * Unable to fully structure code
     */
    protected void createListChanges(EList<Object> oldList, EList<?> newList, EList<ListChange> listChanges) {
        oldListSize = oldList.size();
        newListSize = newList.size();
        newListSources = new int[newListSize];
        i = 0;
        start = 0;
        while (i < oldListSize) {
            oldValue = oldList.get(i);
            remove = true;
            allSlotsMatched = true;
            j = start;
            while (j < newListSize) {
                source = newListSources[j];
                if (source == 0) {
                    newValue = newList.get(j);
                    if (oldValue == null ? newValue == null : oldValue == newValue || oldValue.equals(newValue) != false) {
                        newListSources[j] = i + 1;
                        if (start == j) {
                            ++start;
                        }
                        remove = false;
                        break;
                    }
                    if (allSlotsMatched) {
                        start = j;
                        allSlotsMatched = false;
                    }
                }
                ++j;
            }
            if (remove) {
                this.createRemoveListChange(oldList, listChanges, oldValue, i);
                --oldListSize;
                continue;
            }
            ++i;
        }
        oldListTargets = new int[oldListSize];
        count = 0;
        i = 0;
        while (i < newListSize) {
            newListSource = newListSources[i];
            if (newListSource != 0) {
                oldListTargets[newListSource - 1] = count++;
            }
            ++i;
        }
        while (true) {
            block23: {
                block22: {
                    index = -1;
                    farthest = 0;
                    i = 0;
                    while (i < oldListSize) {
                        distance = oldListTargets[i] - i;
                        if (distance < 0) {
                            distance = -distance;
                        }
                        if (distance > farthest) {
                            index = i;
                            farthest = distance;
                        }
                        ++i;
                    }
                    if (index == -1) break;
                    actualTargetIndex = oldListTargets[index];
                    targetIndex = actualTargetIndex;
                    if (targetIndex >= index) break block22;
                    if (oldListTargets[targetIndex] >= actualTargetIndex) ** GOTO lbl63
                    while (oldListTargets[++targetIndex] < actualTargetIndex) {
                    }
                    break block23;
lbl-1000:
                    // 1 sources

                    {
                        --targetIndex;
lbl63:
                        // 2 sources

                        ** while (targetIndex > 0 && oldListTargets[targetIndex - 1] > actualTargetIndex)
                    }
lbl64:
                    // 1 sources

                    break block23;
                }
                if (oldListTargets[targetIndex] <= actualTargetIndex) ** GOTO lbl71
                while (oldListTargets[--targetIndex] > actualTargetIndex) {
                }
                break block23;
lbl-1000:
                // 1 sources

                {
                    ++targetIndex;
lbl71:
                    // 2 sources

                    ** while (targetIndex + 1 < oldListSize && oldListTargets[targetIndex + 1] < actualTargetIndex)
                }
            }
            this.createMoveListChange(oldList, listChanges, oldList.get(index), index, targetIndex);
            if (targetIndex < index) {
                System.arraycopy(oldListTargets, targetIndex, oldListTargets, targetIndex + 1, index - targetIndex);
            } else {
                System.arraycopy(oldListTargets, index + 1, oldListTargets, index, targetIndex - index);
            }
            oldListTargets[targetIndex] = actualTargetIndex;
        }
        if (count != newListSize) {
            i = 0;
            while (i < newListSize) {
                newListSource = newListSources[i];
                if (newListSource == 0) {
                    this.createAddListChange(oldList, listChanges, newList.get(i), i);
                }
                ++i;
            }
        }
    }

    protected void createAddListChange(EList<Object> oldList, EList<ListChange> listChanges, Object newObject, int index) {
        ListChange listChange = this.createListChange(listChanges, ChangeKind.ADD_LITERAL, index);
        listChange.getValues().add(newObject);
        oldList.add(index, newObject);
    }

    protected void createRemoveListChange(EList<?> oldList, EList<ListChange> listChanges, Object newObject, int index) {
        this.createListChange(listChanges, ChangeKind.REMOVE_LITERAL, index);
        oldList.remove(index);
    }

    protected void createMoveListChange(EList<?> oldList, EList<ListChange> listChanges, Object newObject, int index, int toIndex) {
        ListChange listChange = this.createListChange(listChanges, ChangeKind.MOVE_LITERAL, index);
        listChange.setMoveToIndex(toIndex);
        oldList.move(toIndex, index);
    }

    protected ListChange createListChange(EList<ListChange> listChanges, ChangeKind kind, int index) {
        ListChange listChange = ChangeFactory.eINSTANCE.createListChange();
        listChange.setKind(kind);
        listChange.setIndex(index);
        listChanges.add((Object)listChange);
        return listChange;
    }
}

