/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.globalconstraints;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.DataConstr;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.InternalConstrs;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.PhysConstrs;

public interface DataConstrRule
extends ARObject {
    public DataConstr getDataConstr();

    public void setDataConstr(DataConstr var1);

    public PhysConstrs getPhysConstrs();

    public void setPhysConstrs(PhysConstrs var1);

    public InternalConstrs getInternalConstrs();

    public void setInternalConstrs(InternalConstrs var1);
}

