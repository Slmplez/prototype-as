/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.datadictionaryproxies;

import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprm;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwCalprmRefProxy;

public interface swCalprmRef
extends SwCalprmRefProxy {
    public SwCalprm getSwCalprm();

    public void setSwCalprm(SwCalprm var1);
}

