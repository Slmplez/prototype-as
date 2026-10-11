/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.commonstructure.globalconstraints;

import autosar40.commonstructure.globalconstraints.DataConstr;
import autosar40.commonstructure.globalconstraints.InternalConstrs;
import autosar40.commonstructure.globalconstraints.PhysConstrs;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface DataConstrRule
extends ARObject {
    public DataConstr getDataConstr();

    public void setDataConstr(DataConstr var1);

    public Integer getConstrLevel();

    public void setConstrLevel(Integer var1);

    public void unsetConstrLevel();

    public boolean isSetConstrLevel();

    public PhysConstrs getPhysConstrs();

    public void setPhysConstrs(PhysConstrs var1);

    public InternalConstrs getInternalConstrs();

    public void setInternalConstrs(InternalConstrs var1);

    public IntegerDatatype getConstrLevelData();

    public void setConstrLevelData(IntegerDatatype var1);
}

