/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.measurementandcalibration.characteristic;

import autosar3x.commonstructure.datadictionaryproxies.SwCalprmRefProxy;
import autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.ArCalprmRefCalprmElementPrototype;

public interface ArCalprmRef
extends SwCalprmRefProxy {
    public ArCalprmRefCalprmElementPrototype getArCalprm();

    public void setArCalprm(ArCalprmRefCalprmElementPrototype var1);
}

