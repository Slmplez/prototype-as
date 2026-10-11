/*
 * Decompiled with CFR 0.152.
 */
package de.etas.types;

import de.etas.types.Interval;

public class IntegerInterval
extends Interval {
    public int min;
    public int max;

    public IntegerInterval(int mn, int mx) {
        if (mn <= mx) {
            this.min = mn;
            this.max = mx;
        } else {
            this.min = mx;
            this.max = mn;
        }
    }
}

