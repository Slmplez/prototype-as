/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.globalconstraints;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.datatype.localconstraints.Limit;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.DataConstrRule;

public interface PhysConstrs
extends ARObject {
    public DataConstrRule getDataConstrRule();

    public void setDataConstrRule(DataConstrRule var1);

    public Limit getLowerLimit();

    public void setLowerLimit(Limit var1);

    public Limit getUpperLimit();

    public void setUpperLimit(Limit var1);
}

