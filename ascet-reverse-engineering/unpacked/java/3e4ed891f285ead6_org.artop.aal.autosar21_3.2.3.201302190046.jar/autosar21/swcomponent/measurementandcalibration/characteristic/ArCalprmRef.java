/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.characteristic;

import autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.ArCalprmRefCalprmElementPrototype;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwCalprmRefProxy;

public interface ArCalprmRef
extends SwCalprmRefProxy {
    public ArCalprmRefCalprmElementPrototype getArCalprm();

    public void setArCalprm(ArCalprmRefCalprmElementPrototype var1);
}

