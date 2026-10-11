/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.presentations.util;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.internal.presentations.util.IPresentablePartList;
import org.eclipse.ui.internal.presentations.util.TabOrder;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IPresentationSerializer;

public class LeftToRightTabOrder
extends TabOrder {
    private IPresentablePartList list;

    public LeftToRightTabOrder(IPresentablePartList list) {
        this.list = list;
    }

    public void add(IPresentablePart newPart) {
        this.list.insert(newPart, this.list.size());
    }

    public void addInitial(IPresentablePart newPart) {
        this.add(newPart);
    }

    public void insert(IPresentablePart newPart, int index) {
        this.list.insert(newPart, index);
    }

    public void remove(IPresentablePart removed) {
        this.list.remove(removed);
    }

    public void select(IPresentablePart selected) {
        this.list.select(selected);
    }

    public void move(IPresentablePart toMove, int newIndex) {
        this.list.move(toMove, newIndex);
    }

    public IPresentablePart[] getPartList() {
        return this.list.getPartList();
    }

    public void restoreState(IPresentationSerializer serializer, IMemento savedState) {
        IMemento[] parts = savedState.getChildren("part");
        int idx = 0;
        while (idx < parts.length) {
            IPresentablePart part;
            String id = parts[idx].getString("id");
            if (id != null && (part = serializer.getPart(id)) != null) {
                this.addInitial(part);
            }
            ++idx;
        }
    }

    public void saveState(IPresentationSerializer context, IMemento memento) {
        List<IPresentablePart> parts = Arrays.asList(this.list.getPartList());
        Iterator<IPresentablePart> iter = parts.iterator();
        while (iter.hasNext()) {
            IPresentablePart next = iter.next();
            IMemento childMem = memento.createChild("part");
            childMem.putString("id", context.getId(next));
        }
    }
}

