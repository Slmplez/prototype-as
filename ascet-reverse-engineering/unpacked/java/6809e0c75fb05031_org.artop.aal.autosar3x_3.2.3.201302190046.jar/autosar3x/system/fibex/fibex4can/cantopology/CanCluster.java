/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4can.cantopology;

import autosar3x.system.fibex.fibexcore.coretopology.CommunicationCluster;

public interface CanCluster
extends CommunicationCluster {
    public Boolean getNmBusLoadReductionActive();

    public void setNmBusLoadReductionActive(Boolean var1);

    public void unsetNmBusLoadReductionActive();

    public boolean isSetNmBusLoadReductionActive();

    public Boolean getNmBusLoadReductionEnabled();

    public void setNmBusLoadReductionEnabled(Boolean var1);

    public void unsetNmBusLoadReductionEnabled();

    public boolean isSetNmBusLoadReductionEnabled();

    public Double getNmImmediateNmCycleTime();

    public void setNmImmediateNmCycleTime(Double var1);

    public void unsetNmImmediateNmCycleTime();

    public boolean isSetNmImmediateNmCycleTime();

    public Integer getNmImmediateNmTransmissions();

    public void setNmImmediateNmTransmissions(Integer var1);

    public void unsetNmImmediateNmTransmissions();

    public boolean isSetNmImmediateNmTransmissions();

    public Boolean getNmImmediateRestartEnabled();

    public void setNmImmediateRestartEnabled(Boolean var1);

    public void unsetNmImmediateRestartEnabled();

    public boolean isSetNmImmediateRestartEnabled();

    public Integer getNmLowerCanId();

    public void setNmLowerCanId(Integer var1);

    public void unsetNmLowerCanId();

    public boolean isSetNmLowerCanId();

    public Double getNmMsgCycleTime();

    public void setNmMsgCycleTime(Double var1);

    public void unsetNmMsgCycleTime();

    public boolean isSetNmMsgCycleTime();

    public Double getNmRemoteSleepIndicationTime();

    public void setNmRemoteSleepIndicationTime(Double var1);

    public void unsetNmRemoteSleepIndicationTime();

    public boolean isSetNmRemoteSleepIndicationTime();

    public Double getNmRepeatMessageStateTime();

    public void setNmRepeatMessageStateTime(Double var1);

    public void unsetNmRepeatMessageStateTime();

    public boolean isSetNmRepeatMessageStateTime();

    public Double getNmTimeoutTime();

    public void setNmTimeoutTime(Double var1);

    public void unsetNmTimeoutTime();

    public boolean isSetNmTimeoutTime();

    public Integer getNmUpperCanId();

    public void setNmUpperCanId(Integer var1);

    public void unsetNmUpperCanId();

    public boolean isSetNmUpperCanId();

    public Double getNmWaitBusSleepTime();

    public void setNmWaitBusSleepTime(Double var1);

    public void unsetNmWaitBusSleepTime();

    public boolean isSetNmWaitBusSleepTime();
}

