/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.datadictionaryproxies;

import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefProxy;
import autosar21.swcomponent.measurementandcalibration.variable.SwVariable;

public interface SwVariableRefMsr
extends SwVariableRefProxy {
    public SwVariable getSwVariable();

    public void setSwVariable(SwVariable var1);
}

