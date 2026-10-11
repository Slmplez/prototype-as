/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.transportprotocols;

import autosar3x.system.fibex.fibexcore.corecommunication.NPdu;
import autosar3x.system.transportprotocols.FlexRayTpConnection;
import autosar3x.system.transportprotocols.MaximumMessageLengthType;
import autosar3x.system.transportprotocols.TpAckType;
import autosar3x.system.transportprotocols.TpChannel;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexrayTpChannel
extends TpChannel {
    public TpAckType getAckType();

    public void setAckType(TpAckType var1);

    public void unsetAckType();

    public boolean isSetAckType();

    public Boolean getExtendedAddressing();

    public void setExtendedAddressing(Boolean var1);

    public void unsetExtendedAddressing();

    public boolean isSetExtendedAddressing();

    public NPdu getFlowControlPdu();

    public void setFlowControlPdu(NPdu var1);

    public Integer getMaxAr();

    public void setMaxAr(Integer var1);

    public void unsetMaxAr();

    public boolean isSetMaxAr();

    public Integer getMaxAs();

    public void setMaxAs(Integer var1);

    public void unsetMaxAs();

    public boolean isSetMaxAs();

    public Integer getMaxBs();

    public void setMaxBs(Integer var1);

    public void unsetMaxBs();

    public boolean isSetMaxBs();

    public Integer getMaxBufferRequest();

    public void setMaxBufferRequest(Integer var1);

    public void unsetMaxBufferRequest();

    public boolean isSetMaxBufferRequest();

    public Integer getMaxFrIf();

    public void setMaxFrIf(Integer var1);

    public void unsetMaxFrIf();

    public boolean isSetMaxFrIf();

    public Integer getMaxRetries();

    public void setMaxRetries(Integer var1);

    public void unsetMaxRetries();

    public boolean isSetMaxRetries();

    public MaximumMessageLengthType getMaximumMessageLength();

    public void setMaximumMessageLength(MaximumMessageLengthType var1);

    public void unsetMaximumMessageLength();

    public boolean isSetMaximumMessageLength();

    public Double getMinimumSeparationTime();

    public void setMinimumSeparationTime(Double var1);

    public void unsetMinimumSeparationTime();

    public boolean isSetMinimumSeparationTime();

    public Boolean getMulticastSegmentation();

    public void setMulticastSegmentation(Boolean var1);

    public void unsetMulticastSegmentation();

    public boolean isSetMulticastSegmentation();

    public EList<NPdu> getPduPools();

    public Double getTimeBr();

    public void setTimeBr(Double var1);

    public void unsetTimeBr();

    public boolean isSetTimeBr();

    public Double getTimeBuffer();

    public void setTimeBuffer(Double var1);

    public void unsetTimeBuffer();

    public boolean isSetTimeBuffer();

    public Double getTimeCs();

    public void setTimeCs(Double var1);

    public void unsetTimeCs();

    public boolean isSetTimeCs();

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

    public EList<FlexRayTpConnection> getTpConnections();

    public Boolean getTransmitCancellation();

    public void setTransmitCancellation(Boolean var1);

    public void unsetTransmitCancellation();

    public boolean isSetTransmitCancellation();
}

