/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.dtree;

import org.eclipse.core.internal.dtree.IComparator;

public final class NodeComparison {
    private Object oldData;
    private Object newData;
    private int comparison;
    private int userInt;
    public static final int K_ADDED = 1;
    public static final int K_REMOVED = 2;
    public static final int K_CHANGED = 4;

    NodeComparison(Object oldData, Object newData, int realComparison, int userComparison) {
        this.oldData = oldData;
        this.newData = newData;
        this.comparison = realComparison;
        this.userInt = userComparison;
    }

    NodeComparison asReverseComparison(IComparator comparator) {
        Object tempData = this.oldData;
        this.oldData = this.newData;
        this.newData = tempData;
        this.userInt = comparator.compare(this.oldData, this.newData);
        if (this.comparison == 1) {
            this.comparison = 2;
        } else if (this.comparison == 2) {
            this.comparison = 1;
        }
        return this;
    }

    public int getComparison() {
        return this.comparison;
    }

    public Object getNewData() {
        return this.newData;
    }

    public Object getOldData() {
        return this.oldData;
    }

    public int getUserComparison() {
        return this.userInt;
    }

    boolean isUnchanged() {
        return this.userInt == 0;
    }

    public String toString() {
        StringBuffer buf = new StringBuffer("NodeComparison(");
        switch (this.comparison) {
            case 1: {
                buf.append("Added, ");
                break;
            }
            case 2: {
                buf.append("Removed, ");
                break;
            }
            case 4: {
                buf.append("Changed, ");
                break;
            }
            case 0: {
                buf.append("No change, ");
                break;
            }
            default: {
                buf.append("Corrupt(" + this.comparison + "), ");
            }
        }
        buf.append(this.userInt);
        buf.append(")");
        return buf.toString();
    }
}

