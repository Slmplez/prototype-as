/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.transportprotocols;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import autosar3x.system.transportprotocols.TpAckType;

public interface FlexrayIsoTpConnectionControl
extends Identifiable {
    public FlexrayPhysicalChannel getFlexrayPhysicalChannel();

    public void setFlexrayPhysicalChannel(FlexrayPhysicalChannel var1);

    public TpAckType getAckType();

    public void setAckType(TpAckType var1);

    public void unsetAckType();

    public boolean isSetAckType();

    public Integer getMaxAr();

    public void setMaxAr(Integer var1);

    public void unsetMaxAr();

    public boolean isSetMaxAr();

    public Integer getMaxAs();

    public void setMaxAs(Integer var1);

    public void unsetMaxAs();

    public boolean isSetMaxAs();

    public Integer getMaxBufferSize();

    public void setMaxBufferSize(Integer var1);

    public void unsetMaxBufferSize();

    public boolean isSetMaxBufferSize();

    public Integer getMaxFcWait();

    public void setMaxFcWait(Integer var1);

    public void unsetMaxFcWait();

    public boolean isSetMaxFcWait();

    public Integer getMaxFrIf();

    public void setMaxFrIf(Integer var1);

    public void unsetMaxFrIf();

    public boolean isSetMaxFrIf();

    public Integer getMaxNumberOfNpduPerCycle();

    public void setMaxNumberOfNpduPerCycle(Integer var1);

    public void unsetMaxNumberOfNpduPerCycle();

    public boolean isSetMaxNumberOfNpduPerCycle();

    public Integer getMaxRetries();

    public void setMaxRetries(Integer var1);

    public void unsetMaxRetries();

    public boolean isSetMaxRetries();

    public Integer getSeparationCycleExponent();

    public void setSeparationCycleExponent(Integer var1);

    public void unsetSeparationCycleExponent();

    public boolean isSetSeparationCycleExponent();

    public Double getTimeBr();

    public void setTimeBr(Double var1);

    public void unsetTimeBr();

    public boolean isSetTimeBr();

    public Double getTimeBuffer();

    public void setTimeBuffer(Double var1);

    public void unsetTimeBuffer();

    public boolean isSetTimeBuffer();

    public Double getTimeFrIf();

    public void setTimeFrIf(Double var1);

    public void unsetTimeFrIf();

    public boolean isSetTimeFrIf();

    public Double getTimeoutAr();

    public void setTimeoutAr(Double var1);

    public void unsetTimeoutAr();

    public boolean isSetTimeoutAr();

    public Double getTimeoutAs();

    public void setTimeoutAs(Double var1);

    public void unsetTimeoutAs();

    public boolean isSetTimeoutAs();

    public Double getTimeoutBs();

    public void setTimeoutBs(Double var1);

    public void unsetTimeoutBs();

    public boolean isSetTimeoutBs();

    public Double getTimeoutCr();

    public void setTimeoutCr(Double var1);

    public void unsetTimeoutCr();

    public boolean isSetTimeoutCr();
}

