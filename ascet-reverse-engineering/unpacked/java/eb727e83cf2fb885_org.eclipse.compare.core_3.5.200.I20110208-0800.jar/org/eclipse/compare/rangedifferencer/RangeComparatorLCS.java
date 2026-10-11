/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.SubMonitor
 */
package org.eclipse.compare.rangedifferencer;

import java.util.ArrayList;
import org.eclipse.compare.internal.core.LCS;
import org.eclipse.compare.internal.core.Messages;
import org.eclipse.compare.rangedifferencer.AbstractRangeDifferenceFactory;
import org.eclipse.compare.rangedifferencer.IRangeComparator;
import org.eclipse.compare.rangedifferencer.RangeDifference;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.SubMonitor;

class RangeComparatorLCS
extends LCS {
    private final IRangeComparator comparator1;
    private final IRangeComparator comparator2;
    private int[][] lcs;

    public static RangeDifference[] findDifferences(AbstractRangeDifferenceFactory factory, IProgressMonitor pm, IRangeComparator left, IRangeComparator right) {
        RangeComparatorLCS lcs = new RangeComparatorLCS(left, right);
        SubMonitor monitor = SubMonitor.convert((IProgressMonitor)pm, (String)Messages.RangeComparatorLCS_0, (int)100);
        try {
            lcs.longestCommonSubsequence(monitor.newChild(95));
            RangeDifference[] rangeDifferenceArray = lcs.getDifferences(monitor.newChild(5), factory);
            return rangeDifferenceArray;
        }
        finally {
            if (pm != null) {
                pm.done();
            }
        }
    }

    public RangeComparatorLCS(IRangeComparator comparator1, IRangeComparator comparator2) {
        this.comparator1 = comparator1;
        this.comparator2 = comparator2;
    }

    protected int getLength1() {
        return this.comparator1.getRangeCount();
    }

    protected int getLength2() {
        return this.comparator2.getRangeCount();
    }

    protected void initializeLcs(int lcsLength) {
        this.lcs = new int[2][lcsLength];
    }

    protected boolean isRangeEqual(int i1, int i2) {
        return this.comparator1.rangesEqual(i1, this.comparator2, i2);
    }

    protected void setLcs(int sl1, int sl2) {
        this.lcs[0][sl1] = sl1 + 1;
        this.lcs[1][sl1] = sl2 + 1;
    }

    /*
     * Unable to fully structure code
     */
    public RangeDifference[] getDifferences(SubMonitor subMonitor, AbstractRangeDifferenceFactory factory) {
        try {
            block11: {
                block13: {
                    block12: {
                        block10: {
                            differences = new ArrayList<RangeDifference>();
                            length = this.getLength();
                            if (length != 0) break block10;
                            differences.add(factory.createRangeDifference(2, 0, this.comparator2.getRangeCount(), 0, this.comparator1.getRangeCount()));
                            break block11;
                        }
                        subMonitor.beginTask(null, length);
                        index2 = 0;
                        index1 = 0;
                        s1 = -1;
                        s2 = -1;
                        break block12;
                        while (++index1 < this.lcs[0].length) lbl-1000:
                        // 2 sources

                        {
                            ** while ((l1 = this.lcs[0][index1]) != 0)
lbl17:
                            // 1 sources

                        }
lbl18:
                        // 2 sources

                        if (index1 < this.lcs[0].length) ** GOTO lbl-1000
                        break block13;
                        while (++index2 < this.lcs[1].length) lbl-1000:
                        // 2 sources

                        {
                            if ((l2 = this.lcs[1][index2]) == 0) continue;
                        }
                        if (index2 >= this.lcs[1].length) break block13;
                        end1 = l1 - 1;
                        end2 = l2 - 1;
                        if (s1 == -1 && (end1 != 0 || end2 != 0)) {
                            differences.add(factory.createRangeDifference(2, 0, end2, 0, end1));
                        } else if (end1 != s1 + 1 || end2 != s2 + 1) {
                            leftStart = s1 + 1;
                            leftLength = end1 - leftStart;
                            rightStart = s2 + 1;
                            rightLength = end2 - rightStart;
                            differences.add(factory.createRangeDifference(2, rightStart, rightLength, leftStart, leftLength));
                        }
                        s1 = end1;
                        s2 = end2;
                        ++index1;
                        ++index2;
                        this.worked(subMonitor, 1);
                    }
                    if (index1 < this.lcs[0].length && index2 < this.lcs[1].length) ** GOTO lbl-1000
                }
                if (s1 != -1 && (s1 + 1 < this.comparator1.getRangeCount() || s2 + 1 < this.comparator2.getRangeCount())) {
                    leftStart = s1 < this.comparator1.getRangeCount() ? s1 + 1 : s1;
                    rightStart = s2 < this.comparator2.getRangeCount() ? s2 + 1 : s2;
                    differences.add(factory.createRangeDifference(2, rightStart, this.comparator2.getRangeCount() - (s2 + 1), leftStart, this.comparator1.getRangeCount() - (s1 + 1)));
                }
            }
            var18_17 = differences.toArray(new RangeDifference[differences.size()]);
            return var18_17;
        }
        finally {
            subMonitor.done();
        }
    }

    private void worked(SubMonitor subMonitor, int work) {
        if (subMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        subMonitor.worked(work);
    }

    /*
     * Unable to fully structure code
     */
    private void compactAndShiftLCS(int[] lcsSide, int length, IRangeComparator comparator) {
        if (length == 0) {
            return;
        }
        j = 0;
        while (lcsSide[j] == 0) {
            ++j;
        }
        lcsSide[0] = lcsSide[j];
        ++j;
        i = 1;
        ** GOTO lbl18
        {
            ++j;
            do {
                if (lcsSide[j] == 0) continue block1;
                nextLine = lcsSide[i - 1] + 1;
                lcsSide[i] = nextLine != lcsSide[j] && comparator.rangesEqual(nextLine - 1, comparator, lcsSide[j] - 1) != false ? nextLine : lcsSide[j];
                ++j;
                ++i;
lbl18:
                // 2 sources

            } while (i < length);
        }
        i = length;
        while (i < lcsSide.length) {
            lcsSide[i] = 0;
            ++i;
        }
    }

    public void longestCommonSubsequence(SubMonitor subMonitor) {
        super.longestCommonSubsequence(subMonitor);
        if (this.lcs != null) {
            this.compactAndShiftLCS(this.lcs[0], this.getLength(), this.comparator1);
            this.compactAndShiftLCS(this.lcs[1], this.getLength(), this.comparator2);
        }
    }
}

