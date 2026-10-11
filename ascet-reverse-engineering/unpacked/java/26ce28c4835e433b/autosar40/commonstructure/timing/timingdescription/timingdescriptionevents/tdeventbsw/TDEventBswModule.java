/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw;

import autosar40.bswmodule.bswinterfaces.BswModuleEntry;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBsw;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBswModuleTypeEnum;

public interface TDEventBswModule
extends TDEventBsw {
    public BswModuleEntry getBswModuleEntry();

    public void setBswModuleEntry(BswModuleEntry var1);

    public TDEventBswModuleTypeEnum getTdEventBswModuleType();

    public void setTdEventBswModuleType(TDEventBswModuleTypeEnum var1);

    public void unsetTdEventBswModuleType();

    public boolean isSetTdEventBswModuleType();
}

