/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.globalconstraints;

import autosar3x.commonstructure.globalconstraints.DataConstr;
import autosar3x.commonstructure.globalconstraints.InternalConstrs;
import autosar3x.commonstructure.globalconstraints.PhysConstrs;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface DataConstrRule
extends ARObject {
    public DataConstr getDataConstr();

    public void setDataConstr(DataConstr var1);

    public PhysConstrs getPhysConstrs();

    public void setPhysConstrs(PhysConstrs var1);

    public InternalConstrs getInternalConstrs();

    public void setInternalConstrs(InternalConstrs var1);
}

