/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.axis;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisType;

public interface SwGenericAxisParamType
extends Identifiable {
    public SwAxisType getSwAxisType();

    public void setSwAxisType(SwAxisType var1);
}

