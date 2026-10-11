/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVariableDataPrototypeTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVfb;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;

public interface TDEventVariableDataPrototype
extends TDEventVfb {
    public VariableDataPrototype getDataElement();

    public void setDataElement(VariableDataPrototype var1);

    public TDEventVariableDataPrototypeTypeEnum getTdEventVariableDataPrototypeType();

    public void setTdEventVariableDataPrototypeType(TDEventVariableDataPrototypeTypeEnum var1);

    public void unsetTdEventVariableDataPrototypeType();

    public boolean isSetTdEventVariableDataPrototypeType();
}

