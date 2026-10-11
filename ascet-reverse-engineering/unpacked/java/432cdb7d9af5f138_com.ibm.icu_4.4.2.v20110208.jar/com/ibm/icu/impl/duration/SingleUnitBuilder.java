/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl.duration;

import com.ibm.icu.impl.duration.BasicPeriodBuilderFactory;
import com.ibm.icu.impl.duration.Period;
import com.ibm.icu.impl.duration.PeriodBuilder;
import com.ibm.icu.impl.duration.PeriodBuilderImpl;
import com.ibm.icu.impl.duration.TimeUnit;

class SingleUnitBuilder
extends PeriodBuilderImpl {
    SingleUnitBuilder(BasicPeriodBuilderFactory.Settings settings) {
        super(settings);
    }

    public static SingleUnitBuilder get(BasicPeriodBuilderFactory.Settings settings) {
        if (settings == null) {
            return null;
        }
        return new SingleUnitBuilder(settings);
    }

    protected PeriodBuilder withSettings(BasicPeriodBuilderFactory.Settings settingsToUse) {
        return SingleUnitBuilder.get(settingsToUse);
    }

    protected Period handleCreate(long duration, long referenceDate, boolean inPast) {
        short uset = this.settings.effectiveSet();
        int i = 0;
        while (i < TimeUnit.units.length) {
            TimeUnit unit;
            long unitDuration;
            if ((uset & 1 << i) != 0 && duration >= (unitDuration = this.approximateDurationOf(unit = TimeUnit.units[i]))) {
                return Period.at((float)((double)duration / (double)unitDuration), unit).inPast(inPast);
            }
            ++i;
        }
        return null;
    }
}

