/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior;

import autosar40.bswmodule.bswbehavior.BswModuleEntity;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TDEventBswInternalBehaviorTypeEnum;

public interface TDEventBswInternalBehavior
extends TimingDescriptionEvent {
    public BswModuleEntity getBswModuleEntity();

    public void setBswModuleEntity(BswModuleEntity var1);

    public TDEventBswInternalBehaviorTypeEnum getTdEventBswInternalBehaviorType();

    public void setTdEventBswInternalBehaviorType(TDEventBswInternalBehaviorTypeEnum var1);

    public void unsetTdEventBswInternalBehaviorType();

    public boolean isSetTdEventBswInternalBehaviorType();
}

