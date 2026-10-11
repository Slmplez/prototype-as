/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.measurementandcalibration.measurementproperty;

import autosar3x.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.DataPrototypeRefDataPrototype;

public interface DataPrototypeRef
extends SwVariableRefProxy {
    public DataPrototypeRefDataPrototype getDataPrototype();

    public void setDataPrototype(DataPrototypeRefDataPrototype var1);
}

