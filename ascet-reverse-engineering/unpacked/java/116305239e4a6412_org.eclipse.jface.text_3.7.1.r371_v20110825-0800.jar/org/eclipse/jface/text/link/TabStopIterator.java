/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.link.LinkedPosition
 */
package org.eclipse.jface.text.link;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.link.LinkedPosition;

class TabStopIterator {
    private static final Comparator fComparator = new SequenceComparator();
    private final ArrayList fList;
    private int fSize;
    private int fIndex;
    private boolean fIsCycling = false;

    TabStopIterator(List positionSequence) {
        Assert.isNotNull((Object)positionSequence);
        this.fList = new ArrayList(positionSequence);
        Collections.sort(this.fList, fComparator);
        this.fSize = this.fList.size();
        this.fIndex = -1;
        Assert.isTrue((this.fSize > 0 ? 1 : 0) != 0);
    }

    boolean hasNext(LinkedPosition current) {
        return this.getNextIndex(current) != this.fSize;
    }

    private int getNextIndex(LinkedPosition current) {
        if (current != null && this.fList.get(this.fIndex) != current) {
            return this.findNext(current);
        }
        if (this.fIsCycling && this.fIndex == this.fSize - 1) {
            return 0;
        }
        return this.fIndex + 1;
    }

    private int findNext(LinkedPosition current) {
        Assert.isNotNull((Object)current);
        int index = this.fList.indexOf(current);
        if (index != -1) {
            if (this.fIsCycling && index == this.fSize - 1) {
                return 0;
            }
            return index + 1;
        }
        LinkedPosition found = null;
        Iterator it = this.fList.iterator();
        while (it.hasNext()) {
            LinkedPosition p = (LinkedPosition)it.next();
            if (p.offset <= current.offset || found != null && found.offset <= p.offset) continue;
            found = p;
        }
        if (found != null) {
            return this.fList.indexOf(found);
        }
        if (this.fIsCycling) {
            return 0;
        }
        return this.fSize;
    }

    boolean hasPrevious(LinkedPosition current) {
        return this.getPreviousIndex(current) != -1;
    }

    private int getPreviousIndex(LinkedPosition current) {
        if (current != null && this.fList.get(this.fIndex) != current) {
            return this.findPrevious(current);
        }
        if (this.fIsCycling && this.fIndex == 0) {
            return this.fSize - 1;
        }
        return this.fIndex - 1;
    }

    private int findPrevious(LinkedPosition current) {
        Assert.isNotNull((Object)current);
        int index = this.fList.indexOf(current);
        if (index != -1) {
            if (this.fIsCycling && index == 0) {
                return this.fSize - 1;
            }
            return index - 1;
        }
        LinkedPosition found = null;
        Iterator it = this.fList.iterator();
        while (it.hasNext()) {
            LinkedPosition p = (LinkedPosition)it.next();
            if (p.offset >= current.offset || found != null && found.offset >= p.offset) continue;
            found = p;
        }
        if (found != null) {
            return this.fList.indexOf(found);
        }
        if (this.fIsCycling) {
            return this.fSize - 1;
        }
        return -1;
    }

    LinkedPosition next(LinkedPosition current) {
        if (!this.hasNext(current)) {
            throw new NoSuchElementException();
        }
        this.fIndex = this.getNextIndex(current);
        return (LinkedPosition)this.fList.get(this.fIndex);
    }

    LinkedPosition previous(LinkedPosition current) {
        if (!this.hasPrevious(current)) {
            throw new NoSuchElementException();
        }
        this.fIndex = this.getPreviousIndex(current);
        return (LinkedPosition)this.fList.get(this.fIndex);
    }

    void setCycling(boolean mode) {
        this.fIsCycling = mode;
    }

    void addPosition(Position position) {
        this.fList.add(this.fSize++, position);
        Collections.sort(this.fList, fComparator);
    }

    void removePosition(Position position) {
        if (this.fList.remove(position)) {
            --this.fSize;
        }
    }

    boolean isCycling() {
        return this.fIsCycling;
    }

    LinkedPosition[] getPositions() {
        return this.fList.toArray(new LinkedPosition[this.fSize]);
    }

    private static class SequenceComparator
    implements Comparator {
        private SequenceComparator() {
        }

        public int compare(Object o1, Object o2) {
            LinkedPosition p1 = (LinkedPosition)o1;
            LinkedPosition p2 = (LinkedPosition)o2;
            int i = p1.getSequenceNumber() - p2.getSequenceNumber();
            if (i != 0) {
                return i;
            }
            return p1.getOffset() - p2.getOffset();
        }
    }
}

