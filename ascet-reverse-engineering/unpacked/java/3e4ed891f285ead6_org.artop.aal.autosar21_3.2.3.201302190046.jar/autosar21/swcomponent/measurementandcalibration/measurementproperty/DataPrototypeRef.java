/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.measurementproperty;

import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefProxy;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.DataPrototypeRefDataPrototype;

public interface DataPrototypeRef
extends SwVariableRefProxy {
    public DataPrototypeRefDataPrototype getDataPrototype();

    public void setDataPrototype(DataPrototypeRefDataPrototype var1);
}

