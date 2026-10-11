/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.calibrationparameter;

import autosar21.swcomponent.measurementandcalibration.axis.SwAxisIndividual;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisAxis;

public interface SwCalprmAxisIndividualAxis
extends SwCalprmAxisAxis {
    public SwAxisIndividual getSwAxisIndividual();

    public void setSwAxisIndividual(SwAxisIndividual var1);
}

