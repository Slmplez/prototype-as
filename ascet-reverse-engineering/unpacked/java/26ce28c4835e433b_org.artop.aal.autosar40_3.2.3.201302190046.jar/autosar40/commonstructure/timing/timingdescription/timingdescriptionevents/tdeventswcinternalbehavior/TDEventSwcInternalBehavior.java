/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior;

import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.TDEventSwcInternalBehaviorTypeEnum;
import autosar40.swcomponent.composition.instancerefs.ComponentInCompositionInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;

public interface TDEventSwcInternalBehavior
extends TimingDescriptionEvent {
    public ComponentInCompositionInstanceRef getComponent();

    public void setComponent(ComponentInCompositionInstanceRef var1);

    public RunnableEntity getRunnable();

    public void setRunnable(RunnableEntity var1);

    public TDEventSwcInternalBehaviorTypeEnum getTdEventSwcInternalBehaviorType();

    public void setTdEventSwcInternalBehaviorType(TDEventSwcInternalBehaviorTypeEnum var1);

    public void unsetTdEventSwcInternalBehaviorType();

    public boolean isSetTdEventSwcInternalBehaviorType();
}

