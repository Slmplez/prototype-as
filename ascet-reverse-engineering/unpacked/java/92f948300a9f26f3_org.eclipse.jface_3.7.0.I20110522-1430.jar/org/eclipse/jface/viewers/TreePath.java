/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.IElementComparer;

public final class TreePath {
    public static final TreePath EMPTY = new TreePath(new Object[0]);
    private Object[] segments;
    private int hash;

    public TreePath(Object[] segments) {
        Assert.isNotNull((Object)segments);
        int i = 0;
        while (i < segments.length) {
            Assert.isNotNull((Object)segments[i]);
            ++i;
        }
        this.segments = segments;
    }

    public Object getSegment(int index) {
        return this.segments[index];
    }

    public int getSegmentCount() {
        return this.segments.length;
    }

    public Object getFirstSegment() {
        if (this.segments.length == 0) {
            return null;
        }
        return this.segments[0];
    }

    public Object getLastSegment() {
        if (this.segments.length == 0) {
            return null;
        }
        return this.segments[this.segments.length - 1];
    }

    public boolean equals(Object other) {
        if (!(other instanceof TreePath)) {
            return false;
        }
        return this.equals((TreePath)other, null);
    }

    public int hashCode() {
        if (this.hash == 0) {
            this.hash = this.hashCode(null);
        }
        return this.hash;
    }

    public int hashCode(IElementComparer comparer) {
        int result = 0;
        int i = 0;
        while (i < this.segments.length) {
            result = comparer == null ? (result += this.segments[i].hashCode()) : (result += comparer.hashCode(this.segments[i]));
            ++i;
        }
        return result;
    }

    public boolean equals(TreePath otherPath, IElementComparer comparer) {
        if (otherPath == null) {
            return false;
        }
        if (this.segments.length != otherPath.segments.length) {
            return false;
        }
        int i = 0;
        while (i < this.segments.length) {
            if (comparer == null ? !this.segments[i].equals(otherPath.segments[i]) : !comparer.equals(this.segments[i], otherPath.segments[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public boolean startsWith(TreePath treePath, IElementComparer comparer) {
        int thisSegmentCount = this.getSegmentCount();
        int otherSegmentCount = treePath.getSegmentCount();
        if (otherSegmentCount == thisSegmentCount) {
            return this.equals(treePath, comparer);
        }
        if (otherSegmentCount > thisSegmentCount) {
            return false;
        }
        int i = 0;
        while (i < otherSegmentCount) {
            Object otherSegment = treePath.getSegment(i);
            if (comparer == null ? !otherSegment.equals(this.segments[i]) : !comparer.equals(otherSegment, this.segments[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public TreePath getParentPath() {
        int segmentCount = this.getSegmentCount();
        if (segmentCount < 1) {
            return null;
        }
        if (segmentCount == 1) {
            return EMPTY;
        }
        Object[] parentSegments = new Object[segmentCount - 1];
        System.arraycopy(this.segments, 0, parentSegments, 0, segmentCount - 1);
        return new TreePath(parentSegments);
    }

    public TreePath createChildPath(Object newSegment) {
        int segmentCount = this.getSegmentCount();
        Object[] childSegments = new Object[segmentCount + 1];
        if (segmentCount > 0) {
            System.arraycopy(this.segments, 0, childSegments, 0, segmentCount);
        }
        childSegments[segmentCount] = newSegment;
        return new TreePath(childSegments);
    }
}

