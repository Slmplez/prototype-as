/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.axis;

import autosar40.commonstructure.axis.SwAxisType;
import autosar40.commonstructure.globalconstraints.DataConstr;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;

public interface SwGenericAxisParamType
extends Identifiable {
    public SwAxisType getSwAxisType();

    public void setSwAxisType(SwAxisType var1);

    public DataConstr getDataConstr();

    public void setDataConstr(DataConstr var1);
}

