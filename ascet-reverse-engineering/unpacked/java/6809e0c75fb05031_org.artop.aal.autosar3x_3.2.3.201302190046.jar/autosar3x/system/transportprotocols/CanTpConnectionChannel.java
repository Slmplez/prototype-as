/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.transportprotocols;

import autosar3x.system.fibex.fibexcore.corecommunication.IPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.NPdu;
import autosar3x.system.transportprotocols.CanTpAddressingFormatType;
import autosar3x.system.transportprotocols.CanTpChannelModeType;
import autosar3x.system.transportprotocols.CanTpNode;
import autosar3x.system.transportprotocols.NetworkTargetAddressType;
import autosar3x.system.transportprotocols.TpAddress;
import autosar3x.system.transportprotocols.TpChannel;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CanTpConnectionChannel
extends TpChannel {
    public CanTpAddressingFormatType getAddressingFormat();

    public void setAddressingFormat(CanTpAddressingFormatType var1);

    public void unsetAddressingFormat();

    public boolean isSetAddressingFormat();

    public Integer getBlockSize();

    public void setBlockSize(Integer var1);

    public void unsetBlockSize();

    public boolean isSetBlockSize();

    public CanTpChannelModeType getChannelModeType();

    public void setChannelModeType(CanTpChannelModeType var1);

    public void unsetChannelModeType();

    public boolean isSetChannelModeType();

    public NPdu getDataPdu();

    public void setDataPdu(NPdu var1);

    public NPdu getFlowControlPdu();

    public void setFlowControlPdu(NPdu var1);

    public Double getMinimumSeparationTime();

    public void setMinimumSeparationTime(Double var1);

    public void unsetMinimumSeparationTime();

    public boolean isSetMinimumSeparationTime();

    public Boolean getMulticastAddressing();

    public void setMulticastAddressing(Boolean var1);

    public void unsetMulticastAddressing();

    public boolean isSetMulticastAddressing();

    public TpAddress getMulticast();

    public void setMulticast(TpAddress var1);

    public Boolean getPaddingActivation();

    public void setPaddingActivation(Boolean var1);

    public void unsetPaddingActivation();

    public boolean isSetPaddingActivation();

    public CanTpNode getSource();

    public void setSource(CanTpNode var1);

    public NetworkTargetAddressType getTaType();

    public void setTaType(NetworkTargetAddressType var1);

    public void unsetTaType();

    public boolean isSetTaType();

    public EList<CanTpNode> getTargets();

    public Double getTimeoutAs();

    public void setTimeoutAs(Double var1);

    public void unsetTimeoutAs();

    public boolean isSetTimeoutAs();

    public Double getTimeoutBr();

    public void setTimeoutBr(Double var1);

    public void unsetTimeoutBr();

    public boolean isSetTimeoutBr();

    public Double getTimeoutBs();

    public void setTimeoutBs(Double var1);

    public void unsetTimeoutBs();

    public boolean isSetTimeoutBs();

    public Double getTimeoutCr();

    public void setTimeoutCr(Double var1);

    public void unsetTimeoutCr();

    public boolean isSetTimeoutCr();

    public Double getTimeoutCs();

    public void setTimeoutCs(Double var1);

    public void unsetTimeoutCs();

    public boolean isSetTimeoutCs();

    public IPdu getTpSdu();

    public void setTpSdu(IPdu var1);
}

