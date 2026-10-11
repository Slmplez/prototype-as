/*
 * Decompiled with CFR 0.152.
 */
package de.etas.types;

import de.etas.types.Interval;

public class FloatInterval
extends Interval {
    public float min;
    public float max;

    public FloatInterval(double mn, double mx) {
        if (mn <= mx) {
            this.min = (float)mn;
            this.max = (float)mx;
        } else {
            this.min = (float)mx;
            this.max = (float)mn;
        }
    }

    public FloatInterval(float mn, float mx) {
        if (mn <= mx) {
            this.min = mn;
            this.max = mx;
        } else {
            this.min = mx;
            this.max = mn;
        }
    }
}

