/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.calibrationparameter;

import autosar21.swcomponent.measurementandcalibration.axis.SwAxisGrouped;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisAxis;

public interface SwCalprmAxisCommonAxis
extends SwCalprmAxisAxis {
    public SwAxisGrouped getSwAxisGrouped();

    public void setSwAxisGrouped(SwAxisGrouped var1);
}

