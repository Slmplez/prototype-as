/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.axis;

import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisCommonAxis;
import autosar3x.commonstructure.datadictionaryproxies.SwCalprmRefProxy;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface SwAxisGrouped
extends ARObject {
    public SwCalprmAxisCommonAxis getSwCalprmAxisCommonAxis();

    public void setSwCalprmAxisCommonAxis(SwCalprmAxisCommonAxis var1);

    public SwCalprmRefProxy getSwCalprm();

    public void setSwCalprm(SwCalprmRefProxy var1);
}

