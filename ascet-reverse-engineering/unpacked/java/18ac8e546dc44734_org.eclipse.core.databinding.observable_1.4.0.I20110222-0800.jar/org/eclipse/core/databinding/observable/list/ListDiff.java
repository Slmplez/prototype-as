/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.list;

import java.util.AbstractList;
import java.util.Collections;
import java.util.List;
import org.eclipse.core.databinding.observable.IDiff;
import org.eclipse.core.databinding.observable.list.ListDiffEntry;
import org.eclipse.core.databinding.observable.list.ListDiffVisitor;
import org.eclipse.core.internal.databinding.observable.Util;

public abstract class ListDiff
implements IDiff {
    public abstract ListDiffEntry[] getDifferences();

    /*
     * Unable to fully structure code
     */
    public void accept(ListDiffVisitor visitor) {
        differences = this.getDifferences();
        i = 0;
        while (i < differences.length) {
            block11: {
                block9: {
                    block7: {
                        block10: {
                            block8: {
                                entry = differences[i];
                                elem = entry.getElement();
                                pos = entry.getPosition();
                                add = entry.isAddition();
                                if (i + 1 >= differences.length || add == (nextEntry = differences[i + 1]).isAddition()) ** GOTO lbl-1000
                                if (!add) break block7;
                                addPos = pos;
                                addElem = elem;
                                removePos = nextEntry.getPosition();
                                removeElem = nextEntry.getElement();
                                if (addPos <= removePos) break block8;
                                --addPos;
                                break block9;
                            }
                            if (removePos <= addPos) break block10;
                            --removePos;
                            break block9;
                        }
                        visitor.handleAdd(pos, elem);
                        break block11;
                    }
                    removePos = pos;
                    removeElem = elem;
                    addPos = nextEntry.getPosition();
                    addElem = nextEntry.getElement();
                }
                if (removePos == addPos) {
                    visitor.handleReplace(pos, removeElem, addElem);
                    ++i;
                } else if (Util.equals(removeElem, addElem)) {
                    visitor.handleMove(removePos, addPos, elem);
                    ++i;
                } else if (add) {
                    visitor.handleAdd(pos, elem);
                } else {
                    visitor.handleRemove(pos, elem);
                }
            }
            ++i;
        }
    }

    public boolean isEmpty() {
        return this.getDifferences().length == 0;
    }

    public void applyTo(final List list) {
        this.accept(new ListDiffVisitor(){

            public void handleAdd(int index, Object element) {
                list.add(index, element);
            }

            public void handleRemove(int index, Object element) {
                list.remove(index);
            }

            public void handleReplace(int index, Object oldElement, Object newElement) {
                list.set(index, newElement);
            }
        });
    }

    public List simulateOn(List list) {
        final List[] result = new List[]{list};
        this.accept(new ListDiffVisitor(){

            public void handleAdd(int index, Object element) {
                List first = result[0].subList(0, index);
                List<Object> middle = Collections.singletonList(element);
                List last = result[0].subList(index, result[0].size());
                result[0] = ConcatList.cat(first, middle, last);
            }

            public void handleRemove(int index, Object element) {
                List first = result[0].subList(0, index);
                List last = result[0].subList(index + 1, result[0].size());
                result[0] = ConcatList.cat(first, last);
            }

            public void handleReplace(int index, Object oldElement, Object newElement) {
                List first = result[0].subList(0, index);
                List<Object> middle = Collections.singletonList(newElement);
                List last = result[0].subList(index + 1, result[0].size());
                result[0] = ConcatList.cat(first, middle, last);
            }
        });
        return result[0];
    }

    public String toString() {
        ListDiffEntry[] differences = this.getDifferences();
        StringBuffer buffer = new StringBuffer();
        buffer.append(this.getClass().getName());
        if (differences == null || differences.length == 0) {
            buffer.append("{}");
        } else {
            buffer.append("{");
            int i = 0;
            while (i < differences.length) {
                if (i > 0) {
                    buffer.append(", ");
                }
                buffer.append("difference[").append(i).append("] [").append(differences[i] != null ? differences[i].toString() : "null").append("]");
                ++i;
            }
            buffer.append("}");
        }
        return buffer.toString();
    }

    private static class ConcatList
    extends AbstractList {
        private final List[] subLists;

        public static List cat(List a, List b, List c) {
            if (a.isEmpty()) {
                return ConcatList.cat(b, c);
            }
            if (b.isEmpty()) {
                return ConcatList.cat(a, c);
            }
            if (c.isEmpty()) {
                return ConcatList.cat(a, b);
            }
            return new ConcatList(new List[]{a, b, c});
        }

        public static List cat(List a, List b) {
            if (a.isEmpty()) {
                if (b.isEmpty()) {
                    return Collections.EMPTY_LIST;
                }
                return b;
            }
            if (b.isEmpty()) {
                return a;
            }
            return new ConcatList(new List[]{a, b});
        }

        private ConcatList(List[] sublists) {
            this.subLists = sublists;
        }

        public Object get(int index) {
            int offset = 0;
            int i = 0;
            while (i < this.subLists.length) {
                int subListIndex = index - offset;
                if (subListIndex < this.subLists[i].size()) {
                    return this.subLists[i].get(subListIndex);
                }
                offset += this.subLists[i].size();
                ++i;
            }
            throw new IndexOutOfBoundsException();
        }

        public int size() {
            int size = 0;
            int i = 0;
            while (i < this.subLists.length) {
                size += this.subLists[i].size();
                ++i;
            }
            return size;
        }
    }
}

