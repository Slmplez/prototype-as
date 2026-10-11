/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.transportprotocols;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibexcore.corecommunication.IPdu;
import autosar40.system.fibex.fibexcore.corecommunication.NPdu;
import autosar40.system.transportprotocols.CanTpAddress;
import autosar40.system.transportprotocols.CanTpAddressingFormatType;
import autosar40.system.transportprotocols.CanTpChannel;
import autosar40.system.transportprotocols.CanTpConfig;
import autosar40.system.transportprotocols.CanTpNode;
import autosar40.system.transportprotocols.NetworkTargetAddressType;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CanTpConnection
extends ARObject {
    public CanTpConfig getCanTpConfig();

    public void setCanTpConfig(CanTpConfig var1);

    public CanTpAddressingFormatType getAddressingFormat();

    public void setAddressingFormat(CanTpAddressingFormatType var1);

    public void unsetAddressingFormat();

    public boolean isSetAddressingFormat();

    public CanTpChannel getCanTpChannel();

    public void setCanTpChannel(CanTpChannel var1);

    public NPdu getDataPdu();

    public void setDataPdu(NPdu var1);

    public NPdu getFlowControlPdu();

    public void setFlowControlPdu(NPdu var1);

    public Integer getMaxBlockSize();

    public void setMaxBlockSize(Integer var1);

    public void unsetMaxBlockSize();

    public boolean isSetMaxBlockSize();

    public CanTpAddress getMulticast();

    public void setMulticast(CanTpAddress var1);

    public Boolean getPaddingActivation();

    public void setPaddingActivation(Boolean var1);

    public void unsetPaddingActivation();

    public boolean isSetPaddingActivation();

    public EList<CanTpNode> getReceivers();

    public NetworkTargetAddressType getTaType();

    public void setTaType(NetworkTargetAddressType var1);

    public void unsetTaType();

    public boolean isSetTaType();

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

    public Boolean getTransmitCancellation();

    public void setTransmitCancellation(Boolean var1);

    public void unsetTransmitCancellation();

    public boolean isSetTransmitCancellation();

    public CanTpNode getTransmitter();

    public void setTransmitter(CanTpNode var1);

    public IntegerDatatype getMaxBlockSizeData();

    public void setMaxBlockSizeData(IntegerDatatype var1);
}

