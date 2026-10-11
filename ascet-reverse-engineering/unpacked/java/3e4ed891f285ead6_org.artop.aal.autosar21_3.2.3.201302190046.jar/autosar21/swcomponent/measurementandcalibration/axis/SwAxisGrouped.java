/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.axis;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisCommonAxis;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwCalprmRefProxy;

public interface SwAxisGrouped
extends ARObject {
    public SwCalprmAxisCommonAxis getSwCalprmAxisCommonAxis();

    public void setSwCalprmAxisCommonAxis(SwCalprmAxisCommonAxis var1);

    public SwCalprmRefProxy getSwCalprm();

    public void setSwCalprm(SwCalprmRefProxy var1);
}

