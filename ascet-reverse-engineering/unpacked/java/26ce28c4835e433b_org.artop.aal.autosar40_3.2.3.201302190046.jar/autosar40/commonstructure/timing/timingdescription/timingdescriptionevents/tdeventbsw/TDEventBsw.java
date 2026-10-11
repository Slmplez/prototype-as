/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw;

import autosar40.bswmodule.bswoverview.BswModuleDescription;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;

public interface TDEventBsw
extends TimingDescriptionEvent {
    public BswModuleDescription getBswModuleDescription();

    public void setBswModuleDescription(BswModuleDescription var1);
}

