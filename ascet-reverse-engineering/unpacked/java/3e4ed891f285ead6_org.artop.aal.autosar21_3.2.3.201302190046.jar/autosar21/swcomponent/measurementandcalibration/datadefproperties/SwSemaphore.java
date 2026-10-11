/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.datadefproperties;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefProxy;

public interface SwSemaphore
extends ARObject {
    public SwVariableRefProxy getSwVariableRef();

    public void setSwVariableRef(SwVariableRefProxy var1);
}

