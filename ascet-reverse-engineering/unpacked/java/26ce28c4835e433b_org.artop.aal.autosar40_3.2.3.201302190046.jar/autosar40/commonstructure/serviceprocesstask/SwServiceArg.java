/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.serviceprocesstask;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.datadefproperties.ValueList;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.ArgumentDirectionEnum;

public interface SwServiceArg
extends Identifiable {
    public ArgumentDirectionEnum getDirection();

    public void setDirection(ArgumentDirectionEnum var1);

    public void unsetDirection();

    public boolean isSetDirection();

    public ValueList getSwArraysize();

    public void setSwArraysize(ValueList var1);

    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);
}

