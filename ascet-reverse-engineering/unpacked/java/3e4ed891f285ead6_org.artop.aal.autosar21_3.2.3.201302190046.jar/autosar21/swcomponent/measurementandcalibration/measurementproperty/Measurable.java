/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.measurementproperty;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDefProps;

public interface Measurable
extends Identifiable {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);
}

