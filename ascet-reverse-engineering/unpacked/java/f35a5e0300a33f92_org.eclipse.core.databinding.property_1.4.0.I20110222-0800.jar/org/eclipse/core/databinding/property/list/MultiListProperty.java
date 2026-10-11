/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.observable.list.ListDiffEntry
 *  org.eclipse.core.databinding.observable.list.ListDiffVisitor
 *  org.eclipse.core.databinding.observable.list.MultiList
 */
package org.eclipse.core.databinding.property.list;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.list.ListDiffEntry;
import org.eclipse.core.databinding.observable.list.ListDiffVisitor;
import org.eclipse.core.databinding.observable.list.MultiList;
import org.eclipse.core.databinding.property.list.IListProperty;
import org.eclipse.core.databinding.property.list.ListProperty;
import org.eclipse.core.internal.databinding.property.PropertyObservableUtil;

public class MultiListProperty
extends ListProperty {
    private IListProperty[] properties;
    private Object elementType;

    public MultiListProperty(IListProperty[] properties) {
        this(properties, null);
    }

    public MultiListProperty(IListProperty[] properties, Object elementType) {
        this.properties = properties;
        this.elementType = elementType;
    }

    public Object getElementType() {
        return this.elementType;
    }

    protected List doGetList(Object source) {
        ArrayList list = new ArrayList();
        int i = 0;
        while (i < this.properties.length) {
            list.addAll(this.properties[i].getList(source));
            ++i;
        }
        return list;
    }

    protected void doUpdateList(final Object source, ListDiff diff) {
        diff.accept(new ListDiffVisitor(){

            public void handleAdd(int index, Object element) {
                throw new UnsupportedOperationException();
            }

            public void handleMove(int oldIndex, int newIndex, Object element) {
                throw new UnsupportedOperationException();
            }

            public void handleReplace(int index, Object oldElement, Object newElement) {
                int offset = 0;
                int i = 0;
                while (i < MultiListProperty.this.properties.length) {
                    List subList = MultiListProperty.this.properties[i].getList(source);
                    if (index - offset < subList.size()) {
                        int subListIndex = index - offset;
                        ListDiffEntry[] entries = new ListDiffEntry[]{Diffs.createListDiffEntry((int)subListIndex, (boolean)false, (Object)oldElement), Diffs.createListDiffEntry((int)subListIndex, (boolean)true, (Object)newElement)};
                        ListDiff diff = Diffs.createListDiff((ListDiffEntry[])entries);
                        MultiListProperty.this.properties[i].updateList(source, diff);
                        return;
                    }
                    offset += subList.size();
                    ++i;
                }
                throw new IndexOutOfBoundsException("index: " + index + ", size: " + offset);
            }

            public void handleRemove(int index, Object element) {
                int offset = 0;
                int i = 0;
                while (i < MultiListProperty.this.properties.length) {
                    int subListIndex = index - offset;
                    List subList = MultiListProperty.this.properties[i].getList(source);
                    if (subListIndex < subList.size()) {
                        ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)subListIndex, (boolean)false, (Object)element));
                        MultiListProperty.this.properties[i].updateList(source, diff);
                        return;
                    }
                    offset += subList.size();
                    ++i;
                }
                throw new IndexOutOfBoundsException("index: " + index + ", size: " + offset);
            }
        });
    }

    public IObservableList observe(Realm realm, Object source) {
        IObservableList[] lists = new IObservableList[this.properties.length];
        int i = 0;
        while (i < lists.length) {
            lists[i] = this.properties[i].observe(realm, source);
            ++i;
        }
        MultiList multiList = new MultiList(lists, this.elementType);
        int i2 = 0;
        while (i2 < lists.length) {
            PropertyObservableUtil.cascadeDispose((IObservable)multiList, (IObservable)lists[i2]);
            ++i2;
        }
        return multiList;
    }
}

