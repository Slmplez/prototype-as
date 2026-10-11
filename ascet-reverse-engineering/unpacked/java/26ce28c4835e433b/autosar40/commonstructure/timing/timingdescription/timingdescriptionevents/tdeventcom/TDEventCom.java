/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom;

import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;

public interface TDEventCom
extends TimingDescriptionEvent {
    public EcuInstance getEcuInstance();

    public void setEcuInstance(EcuInstance var1);
}

