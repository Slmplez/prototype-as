/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.compare.rangedifferencer;

import org.eclipse.compare.rangedifferencer.RangeDifference;

public abstract class AbstractRangeDifferenceFactory {
    protected abstract RangeDifference createRangeDifference();

    RangeDifference createRangeDifference(int changeKind) {
        RangeDifference rangeDifference = this.createRangeDifference();
        rangeDifference.kind = changeKind;
        return rangeDifference;
    }

    RangeDifference createRangeDifference(int kind, int rightStart, int rightLength, int leftStart, int leftLength) {
        RangeDifference rangeDifference = this.createRangeDifference();
        rangeDifference.kind = kind;
        rangeDifference.rightStart = rightStart;
        rangeDifference.rightLength = rightLength;
        rangeDifference.leftStart = leftStart;
        rangeDifference.leftLength = leftLength;
        return rangeDifference;
    }

    RangeDifference createRangeDifference(int kind, int rightStart, int rightLength, int leftStart, int leftLength, int ancestorStart, int ancestorLength) {
        RangeDifference rangeDifference = this.createRangeDifference();
        rangeDifference.kind = kind;
        rangeDifference.rightStart = rightStart;
        rangeDifference.rightLength = rightLength;
        rangeDifference.leftStart = leftStart;
        rangeDifference.leftLength = leftLength;
        rangeDifference.ancestorStart = ancestorStart;
        rangeDifference.ancestorLength = ancestorLength;
        return rangeDifference;
    }
}

