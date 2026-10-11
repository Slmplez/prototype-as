/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.topology;

import autosar21.system.topology.CANCommunicationPortInstanceProtocolVersionEnum;
import autosar21.system.topology.ECUCommunicationPortInstance;

public interface CANCommunicationPortInstance
extends ECUCommunicationPortInstance {
    public Integer getBRP();

    public void setBRP(Integer var1);

    public void unsetBRP();

    public boolean isSetBRP();

    public Double getMaxPermittedProcessingPeriodJitter();

    public void setMaxPermittedProcessingPeriodJitter(Double var1);

    public void unsetMaxPermittedProcessingPeriodJitter();

    public boolean isSetMaxPermittedProcessingPeriodJitter();

    public Boolean getPortTermination();

    public void setPortTermination(Boolean var1);

    public void unsetPortTermination();

    public boolean isSetPortTermination();

    public CANCommunicationPortInstanceProtocolVersionEnum getProtocolVersion();

    public void setProtocolVersion(CANCommunicationPortInstanceProtocolVersionEnum var1);

    public void unsetProtocolVersion();

    public boolean isSetProtocolVersion();

    public Double getReceiveProcessingPeriod();

    public void setReceiveProcessingPeriod(Double var1);

    public void unsetReceiveProcessingPeriod();

    public boolean isSetReceiveProcessingPeriod();

    public Integer getSyncJumpWidth();

    public void setSyncJumpWidth(Integer var1);

    public void unsetSyncJumpWidth();

    public boolean isSetSyncJumpWidth();

    public Integer getTimeSeg0();

    public void setTimeSeg0(Integer var1);

    public void unsetTimeSeg0();

    public boolean isSetTimeSeg0();

    public Integer getTimeSeg1();

    public void setTimeSeg1(Integer var1);

    public void unsetTimeSeg1();

    public boolean isSetTimeSeg1();

    public Double getTransmitProcessingPeriod();

    public void setTransmitProcessingPeriod(Double var1);

    public void unsetTransmitProcessingPeriod();

    public boolean isSetTransmitProcessingPeriod();
}

