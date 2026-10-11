/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.transportprotocols.impl;

import autosar3x.system.fibex.fibexcore.corecommunication.IPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.NPdu;
import autosar3x.system.transportprotocols.CanTpAddressingFormatType;
import autosar3x.system.transportprotocols.CanTpChannelModeType;
import autosar3x.system.transportprotocols.CanTpConnectionChannel;
import autosar3x.system.transportprotocols.CanTpNode;
import autosar3x.system.transportprotocols.NetworkTargetAddressType;
import autosar3x.system.transportprotocols.TpAddress;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
import autosar3x.system.transportprotocols.impl.TpChannelImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CanTpConnectionChannelImpl
extends TpChannelImpl
implements CanTpConnectionChannel,
IReferringClass {
    protected static final CanTpAddressingFormatType ADDRESSING_FORMAT_EDEFAULT = CanTpAddressingFormatType.STANDARD;
    protected CanTpAddressingFormatType addressingFormat = ADDRESSING_FORMAT_EDEFAULT;
    protected boolean addressingFormatESet;
    protected static final Integer BLOCK_SIZE_EDEFAULT = new Integer(0);
    protected Integer blockSize = BLOCK_SIZE_EDEFAULT;
    protected boolean blockSizeESet;
    protected static final CanTpChannelModeType CHANNEL_MODE_TYPE_EDEFAULT = CanTpChannelModeType.HALF_DUPLEX_MODE;
    protected CanTpChannelModeType channelModeType = CHANNEL_MODE_TYPE_EDEFAULT;
    protected boolean channelModeTypeESet;
    protected NPdu dataPdu;
    protected NPdu flowControlPdu;
    protected static final Double MINIMUM_SEPARATION_TIME_EDEFAULT = new Double(0.0);
    protected Double minimumSeparationTime = MINIMUM_SEPARATION_TIME_EDEFAULT;
    protected boolean minimumSeparationTimeESet;
    protected static final Boolean MULTICAST_ADDRESSING_EDEFAULT = Boolean.FALSE;
    protected Boolean multicastAddressing = MULTICAST_ADDRESSING_EDEFAULT;
    protected boolean multicastAddressingESet;
    protected TpAddress multicast;
    protected static final Boolean PADDING_ACTIVATION_EDEFAULT = Boolean.FALSE;
    protected Boolean paddingActivation = PADDING_ACTIVATION_EDEFAULT;
    protected boolean paddingActivationESet;
    protected CanTpNode source;
    protected static final NetworkTargetAddressType TA_TYPE_EDEFAULT = NetworkTargetAddressType.PHYSICAL;
    protected NetworkTargetAddressType taType = TA_TYPE_EDEFAULT;
    protected boolean taTypeESet;
    protected EList<CanTpNode> targets;
    protected static final Double TIMEOUT_AS_EDEFAULT = new Double(0.0);
    protected Double timeoutAs = TIMEOUT_AS_EDEFAULT;
    protected boolean timeoutAsESet;
    protected static final Double TIMEOUT_BR_EDEFAULT = new Double(0.0);
    protected Double timeoutBr = TIMEOUT_BR_EDEFAULT;
    protected boolean timeoutBrESet;
    protected static final Double TIMEOUT_BS_EDEFAULT = new Double(0.0);
    protected Double timeoutBs = TIMEOUT_BS_EDEFAULT;
    protected boolean timeoutBsESet;
    protected static final Double TIMEOUT_CR_EDEFAULT = new Double(0.0);
    protected Double timeoutCr = TIMEOUT_CR_EDEFAULT;
    protected boolean timeoutCrESet;
    protected static final Double TIMEOUT_CS_EDEFAULT = new Double(0.0);
    protected Double timeoutCs = TIMEOUT_CS_EDEFAULT;
    protected boolean timeoutCsESet;
    protected IPdu tpSdu;

    protected CanTpConnectionChannelImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.CAN_TP_CONNECTION_CHANNEL;
    }

    @Override
    public CanTpAddressingFormatType getAddressingFormat() {
        return this.addressingFormat;
    }

    @Override
    public void setAddressingFormat(CanTpAddressingFormatType newAddressingFormat) {
        CanTpAddressingFormatType oldAddressingFormat = this.addressingFormat;
        this.addressingFormat = newAddressingFormat == null ? ADDRESSING_FORMAT_EDEFAULT : newAddressingFormat;
        boolean oldAddressingFormatESet = this.addressingFormatESet;
        this.addressingFormatESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAddressingFormat, (Object)this.addressingFormat, !oldAddressingFormatESet));
        }
    }

    @Override
    public void unsetAddressingFormat() {
        CanTpAddressingFormatType oldAddressingFormat = this.addressingFormat;
        boolean oldAddressingFormatESet = this.addressingFormatESet;
        this.addressingFormat = ADDRESSING_FORMAT_EDEFAULT;
        this.addressingFormatESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldAddressingFormat, (Object)ADDRESSING_FORMAT_EDEFAULT, oldAddressingFormatESet));
        }
    }

    @Override
    public boolean isSetAddressingFormat() {
        return this.addressingFormatESet;
    }

    @Override
    public Integer getBlockSize() {
        return this.blockSize;
    }

    @Override
    public void setBlockSize(Integer newBlockSize) {
        Integer oldBlockSize = this.blockSize;
        this.blockSize = newBlockSize;
        boolean oldBlockSizeESet = this.blockSizeESet;
        this.blockSizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldBlockSize, (Object)this.blockSize, !oldBlockSizeESet));
        }
    }

    @Override
    public void unsetBlockSize() {
        Integer oldBlockSize = this.blockSize;
        boolean oldBlockSizeESet = this.blockSizeESet;
        this.blockSize = BLOCK_SIZE_EDEFAULT;
        this.blockSizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldBlockSize, (Object)BLOCK_SIZE_EDEFAULT, oldBlockSizeESet));
        }
    }

    @Override
    public boolean isSetBlockSize() {
        return this.blockSizeESet;
    }

    @Override
    public CanTpChannelModeType getChannelModeType() {
        return this.channelModeType;
    }

    @Override
    public void setChannelModeType(CanTpChannelModeType newChannelModeType) {
        CanTpChannelModeType oldChannelModeType = this.channelModeType;
        this.channelModeType = newChannelModeType == null ? CHANNEL_MODE_TYPE_EDEFAULT : newChannelModeType;
        boolean oldChannelModeTypeESet = this.channelModeTypeESet;
        this.channelModeTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldChannelModeType, (Object)this.channelModeType, !oldChannelModeTypeESet));
        }
    }

    @Override
    public void unsetChannelModeType() {
        CanTpChannelModeType oldChannelModeType = this.channelModeType;
        boolean oldChannelModeTypeESet = this.channelModeTypeESet;
        this.channelModeType = CHANNEL_MODE_TYPE_EDEFAULT;
        this.channelModeTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldChannelModeType, (Object)CHANNEL_MODE_TYPE_EDEFAULT, oldChannelModeTypeESet));
        }
    }

    @Override
    public boolean isSetChannelModeType() {
        return this.channelModeTypeESet;
    }

    @Override
    public NPdu getDataPdu() {
        if (this.dataPdu != null && this.dataPdu.eIsProxy()) {
            InternalEObject oldDataPdu = (InternalEObject)this.dataPdu;
            this.dataPdu = (NPdu)this.eResolveProxy(oldDataPdu);
            if (this.dataPdu != oldDataPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldDataPdu, (Object)this.dataPdu));
            }
        }
        return this.dataPdu;
    }

    public NPdu basicGetDataPdu() {
        return this.dataPdu;
    }

    @Override
    public void setDataPdu(NPdu newDataPdu) {
        NPdu oldDataPdu = this.dataPdu;
        this.dataPdu = newDataPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldDataPdu, (Object)this.dataPdu));
        }
    }

    @Override
    public NPdu getFlowControlPdu() {
        if (this.flowControlPdu != null && this.flowControlPdu.eIsProxy()) {
            InternalEObject oldFlowControlPdu = (InternalEObject)this.flowControlPdu;
            this.flowControlPdu = (NPdu)this.eResolveProxy(oldFlowControlPdu);
            if (this.flowControlPdu != oldFlowControlPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldFlowControlPdu, (Object)this.flowControlPdu));
            }
        }
        return this.flowControlPdu;
    }

    public NPdu basicGetFlowControlPdu() {
        return this.flowControlPdu;
    }

    @Override
    public void setFlowControlPdu(NPdu newFlowControlPdu) {
        NPdu oldFlowControlPdu = this.flowControlPdu;
        this.flowControlPdu = newFlowControlPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldFlowControlPdu, (Object)this.flowControlPdu));
        }
    }

    @Override
    public Double getMinimumSeparationTime() {
        return this.minimumSeparationTime;
    }

    @Override
    public void setMinimumSeparationTime(Double newMinimumSeparationTime) {
        Double oldMinimumSeparationTime = this.minimumSeparationTime;
        this.minimumSeparationTime = newMinimumSeparationTime;
        boolean oldMinimumSeparationTimeESet = this.minimumSeparationTimeESet;
        this.minimumSeparationTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldMinimumSeparationTime, (Object)this.minimumSeparationTime, !oldMinimumSeparationTimeESet));
        }
    }

    @Override
    public void unsetMinimumSeparationTime() {
        Double oldMinimumSeparationTime = this.minimumSeparationTime;
        boolean oldMinimumSeparationTimeESet = this.minimumSeparationTimeESet;
        this.minimumSeparationTime = MINIMUM_SEPARATION_TIME_EDEFAULT;
        this.minimumSeparationTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldMinimumSeparationTime, (Object)MINIMUM_SEPARATION_TIME_EDEFAULT, oldMinimumSeparationTimeESet));
        }
    }

    @Override
    public boolean isSetMinimumSeparationTime() {
        return this.minimumSeparationTimeESet;
    }

    @Override
    public Boolean getMulticastAddressing() {
        return this.multicastAddressing;
    }

    @Override
    public void setMulticastAddressing(Boolean newMulticastAddressing) {
        Boolean oldMulticastAddressing = this.multicastAddressing;
        this.multicastAddressing = newMulticastAddressing;
        boolean oldMulticastAddressingESet = this.multicastAddressingESet;
        this.multicastAddressingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldMulticastAddressing, (Object)this.multicastAddressing, !oldMulticastAddressingESet));
        }
    }

    @Override
    public void unsetMulticastAddressing() {
        Boolean oldMulticastAddressing = this.multicastAddressing;
        boolean oldMulticastAddressingESet = this.multicastAddressingESet;
        this.multicastAddressing = MULTICAST_ADDRESSING_EDEFAULT;
        this.multicastAddressingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldMulticastAddressing, (Object)MULTICAST_ADDRESSING_EDEFAULT, oldMulticastAddressingESet));
        }
    }

    @Override
    public boolean isSetMulticastAddressing() {
        return this.multicastAddressingESet;
    }

    @Override
    public TpAddress getMulticast() {
        if (this.multicast != null && this.multicast.eIsProxy()) {
            InternalEObject oldMulticast = (InternalEObject)this.multicast;
            this.multicast = (TpAddress)this.eResolveProxy(oldMulticast);
            if (this.multicast != oldMulticast && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 12, (Object)oldMulticast, (Object)this.multicast));
            }
        }
        return this.multicast;
    }

    public TpAddress basicGetMulticast() {
        return this.multicast;
    }

    @Override
    public void setMulticast(TpAddress newMulticast) {
        TpAddress oldMulticast = this.multicast;
        this.multicast = newMulticast;
        AutosarObjectUtil.setDest((EObject)this, (int)12, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldMulticast, (Object)this.multicast));
        }
    }

    @Override
    public Boolean getPaddingActivation() {
        return this.paddingActivation;
    }

    @Override
    public void setPaddingActivation(Boolean newPaddingActivation) {
        Boolean oldPaddingActivation = this.paddingActivation;
        this.paddingActivation = newPaddingActivation;
        boolean oldPaddingActivationESet = this.paddingActivationESet;
        this.paddingActivationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldPaddingActivation, (Object)this.paddingActivation, !oldPaddingActivationESet));
        }
    }

    @Override
    public void unsetPaddingActivation() {
        Boolean oldPaddingActivation = this.paddingActivation;
        boolean oldPaddingActivationESet = this.paddingActivationESet;
        this.paddingActivation = PADDING_ACTIVATION_EDEFAULT;
        this.paddingActivationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldPaddingActivation, (Object)PADDING_ACTIVATION_EDEFAULT, oldPaddingActivationESet));
        }
    }

    @Override
    public boolean isSetPaddingActivation() {
        return this.paddingActivationESet;
    }

    @Override
    public CanTpNode getSource() {
        if (this.source != null && this.source.eIsProxy()) {
            InternalEObject oldSource = (InternalEObject)this.source;
            this.source = (CanTpNode)this.eResolveProxy(oldSource);
            if (this.source != oldSource && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 14, (Object)oldSource, (Object)this.source));
            }
        }
        return this.source;
    }

    public CanTpNode basicGetSource() {
        return this.source;
    }

    @Override
    public void setSource(CanTpNode newSource) {
        CanTpNode oldSource = this.source;
        this.source = newSource;
        AutosarObjectUtil.setDest((EObject)this, (int)14, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldSource, (Object)this.source));
        }
    }

    @Override
    public NetworkTargetAddressType getTaType() {
        return this.taType;
    }

    @Override
    public void setTaType(NetworkTargetAddressType newTaType) {
        NetworkTargetAddressType oldTaType = this.taType;
        this.taType = newTaType == null ? TA_TYPE_EDEFAULT : newTaType;
        boolean oldTaTypeESet = this.taTypeESet;
        this.taTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldTaType, (Object)this.taType, !oldTaTypeESet));
        }
    }

    @Override
    public void unsetTaType() {
        NetworkTargetAddressType oldTaType = this.taType;
        boolean oldTaTypeESet = this.taTypeESet;
        this.taType = TA_TYPE_EDEFAULT;
        this.taTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 15, (Object)oldTaType, (Object)TA_TYPE_EDEFAULT, oldTaTypeESet));
        }
    }

    @Override
    public boolean isSetTaType() {
        return this.taTypeESet;
    }

    @Override
    public EList<CanTpNode> getTargets() {
        if (this.targets == null) {
            this.targets = new EObjectResolvingReferringEList(CanTpNode.class, (InternalEObject)this, 16);
        }
        return this.targets;
    }

    @Override
    public Double getTimeoutAs() {
        return this.timeoutAs;
    }

    @Override
    public void setTimeoutAs(Double newTimeoutAs) {
        Double oldTimeoutAs = this.timeoutAs;
        this.timeoutAs = newTimeoutAs;
        boolean oldTimeoutAsESet = this.timeoutAsESet;
        this.timeoutAsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldTimeoutAs, (Object)this.timeoutAs, !oldTimeoutAsESet));
        }
    }

    @Override
    public void unsetTimeoutAs() {
        Double oldTimeoutAs = this.timeoutAs;
        boolean oldTimeoutAsESet = this.timeoutAsESet;
        this.timeoutAs = TIMEOUT_AS_EDEFAULT;
        this.timeoutAsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldTimeoutAs, (Object)TIMEOUT_AS_EDEFAULT, oldTimeoutAsESet));
        }
    }

    @Override
    public boolean isSetTimeoutAs() {
        return this.timeoutAsESet;
    }

    @Override
    public Double getTimeoutBr() {
        return this.timeoutBr;
    }

    @Override
    public void setTimeoutBr(Double newTimeoutBr) {
        Double oldTimeoutBr = this.timeoutBr;
        this.timeoutBr = newTimeoutBr;
        boolean oldTimeoutBrESet = this.timeoutBrESet;
        this.timeoutBrESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldTimeoutBr, (Object)this.timeoutBr, !oldTimeoutBrESet));
        }
    }

    @Override
    public void unsetTimeoutBr() {
        Double oldTimeoutBr = this.timeoutBr;
        boolean oldTimeoutBrESet = this.timeoutBrESet;
        this.timeoutBr = TIMEOUT_BR_EDEFAULT;
        this.timeoutBrESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldTimeoutBr, (Object)TIMEOUT_BR_EDEFAULT, oldTimeoutBrESet));
        }
    }

    @Override
    public boolean isSetTimeoutBr() {
        return this.timeoutBrESet;
    }

    @Override
    public Double getTimeoutBs() {
        return this.timeoutBs;
    }

    @Override
    public void setTimeoutBs(Double newTimeoutBs) {
        Double oldTimeoutBs = this.timeoutBs;
        this.timeoutBs = newTimeoutBs;
        boolean oldTimeoutBsESet = this.timeoutBsESet;
        this.timeoutBsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldTimeoutBs, (Object)this.timeoutBs, !oldTimeoutBsESet));
        }
    }

    @Override
    public void unsetTimeoutBs() {
        Double oldTimeoutBs = this.timeoutBs;
        boolean oldTimeoutBsESet = this.timeoutBsESet;
        this.timeoutBs = TIMEOUT_BS_EDEFAULT;
        this.timeoutBsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldTimeoutBs, (Object)TIMEOUT_BS_EDEFAULT, oldTimeoutBsESet));
        }
    }

    @Override
    public boolean isSetTimeoutBs() {
        return this.timeoutBsESet;
    }

    @Override
    public Double getTimeoutCr() {
        return this.timeoutCr;
    }

    @Override
    public void setTimeoutCr(Double newTimeoutCr) {
        Double oldTimeoutCr = this.timeoutCr;
        this.timeoutCr = newTimeoutCr;
        boolean oldTimeoutCrESet = this.timeoutCrESet;
        this.timeoutCrESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldTimeoutCr, (Object)this.timeoutCr, !oldTimeoutCrESet));
        }
    }

    @Override
    public void unsetTimeoutCr() {
        Double oldTimeoutCr = this.timeoutCr;
        boolean oldTimeoutCrESet = this.timeoutCrESet;
        this.timeoutCr = TIMEOUT_CR_EDEFAULT;
        this.timeoutCrESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldTimeoutCr, (Object)TIMEOUT_CR_EDEFAULT, oldTimeoutCrESet));
        }
    }

    @Override
    public boolean isSetTimeoutCr() {
        return this.timeoutCrESet;
    }

    @Override
    public Double getTimeoutCs() {
        return this.timeoutCs;
    }

    @Override
    public void setTimeoutCs(Double newTimeoutCs) {
        Double oldTimeoutCs = this.timeoutCs;
        this.timeoutCs = newTimeoutCs;
        boolean oldTimeoutCsESet = this.timeoutCsESet;
        this.timeoutCsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldTimeoutCs, (Object)this.timeoutCs, !oldTimeoutCsESet));
        }
    }

    @Override
    public void unsetTimeoutCs() {
        Double oldTimeoutCs = this.timeoutCs;
        boolean oldTimeoutCsESet = this.timeoutCsESet;
        this.timeoutCs = TIMEOUT_CS_EDEFAULT;
        this.timeoutCsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldTimeoutCs, (Object)TIMEOUT_CS_EDEFAULT, oldTimeoutCsESet));
        }
    }

    @Override
    public boolean isSetTimeoutCs() {
        return this.timeoutCsESet;
    }

    @Override
    public IPdu getTpSdu() {
        if (this.tpSdu != null && this.tpSdu.eIsProxy()) {
            InternalEObject oldTpSdu = (InternalEObject)this.tpSdu;
            this.tpSdu = (IPdu)this.eResolveProxy(oldTpSdu);
            if (this.tpSdu != oldTpSdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldTpSdu, (Object)this.tpSdu));
            }
        }
        return this.tpSdu;
    }

    public IPdu basicGetTpSdu() {
        return this.tpSdu;
    }

    @Override
    public void setTpSdu(IPdu newTpSdu) {
        IPdu oldTpSdu = this.tpSdu;
        this.tpSdu = newTpSdu;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldTpSdu, (Object)this.tpSdu));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getAddressingFormat();
            }
            case 6: {
                return this.getBlockSize();
            }
            case 7: {
                return this.getChannelModeType();
            }
            case 8: {
                if (resolve) {
                    return this.getDataPdu();
                }
                return this.basicGetDataPdu();
            }
            case 9: {
                if (resolve) {
                    return this.getFlowControlPdu();
                }
                return this.basicGetFlowControlPdu();
            }
            case 10: {
                return this.getMinimumSeparationTime();
            }
            case 11: {
                return this.getMulticastAddressing();
            }
            case 12: {
                if (resolve) {
                    return this.getMulticast();
                }
                return this.basicGetMulticast();
            }
            case 13: {
                return this.getPaddingActivation();
            }
            case 14: {
                if (resolve) {
                    return this.getSource();
                }
                return this.basicGetSource();
            }
            case 15: {
                return this.getTaType();
            }
            case 16: {
                return this.getTargets();
            }
            case 17: {
                return this.getTimeoutAs();
            }
            case 18: {
                return this.getTimeoutBr();
            }
            case 19: {
                return this.getTimeoutBs();
            }
            case 20: {
                return this.getTimeoutCr();
            }
            case 21: {
                return this.getTimeoutCs();
            }
            case 22: {
                if (resolve) {
                    return this.getTpSdu();
                }
                return this.basicGetTpSdu();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setAddressingFormat((CanTpAddressingFormatType)((Object)newValue));
                return;
            }
            case 6: {
                this.setBlockSize((Integer)newValue);
                return;
            }
            case 7: {
                this.setChannelModeType((CanTpChannelModeType)((Object)newValue));
                return;
            }
            case 8: {
                this.setDataPdu((NPdu)newValue);
                return;
            }
            case 9: {
                this.setFlowControlPdu((NPdu)newValue);
                return;
            }
            case 10: {
                this.setMinimumSeparationTime((Double)newValue);
                return;
            }
            case 11: {
                this.setMulticastAddressing((Boolean)newValue);
                return;
            }
            case 12: {
                this.setMulticast((TpAddress)newValue);
                return;
            }
            case 13: {
                this.setPaddingActivation((Boolean)newValue);
                return;
            }
            case 14: {
                this.setSource((CanTpNode)newValue);
                return;
            }
            case 15: {
                this.setTaType((NetworkTargetAddressType)((Object)newValue));
                return;
            }
            case 16: {
                this.getTargets().clear();
                this.getTargets().addAll((Collection)newValue);
                return;
            }
            case 17: {
                this.setTimeoutAs((Double)newValue);
                return;
            }
            case 18: {
                this.setTimeoutBr((Double)newValue);
                return;
            }
            case 19: {
                this.setTimeoutBs((Double)newValue);
                return;
            }
            case 20: {
                this.setTimeoutCr((Double)newValue);
                return;
            }
            case 21: {
                this.setTimeoutCs((Double)newValue);
                return;
            }
            case 22: {
                this.setTpSdu((IPdu)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetAddressingFormat();
                return;
            }
            case 6: {
                this.unsetBlockSize();
                return;
            }
            case 7: {
                this.unsetChannelModeType();
                return;
            }
            case 8: {
                this.setDataPdu(null);
                return;
            }
            case 9: {
                this.setFlowControlPdu(null);
                return;
            }
            case 10: {
                this.unsetMinimumSeparationTime();
                return;
            }
            case 11: {
                this.unsetMulticastAddressing();
                return;
            }
            case 12: {
                this.setMulticast(null);
                return;
            }
            case 13: {
                this.unsetPaddingActivation();
                return;
            }
            case 14: {
                this.setSource(null);
                return;
            }
            case 15: {
                this.unsetTaType();
                return;
            }
            case 16: {
                this.getTargets().clear();
                return;
            }
            case 17: {
                this.unsetTimeoutAs();
                return;
            }
            case 18: {
                this.unsetTimeoutBr();
                return;
            }
            case 19: {
                this.unsetTimeoutBs();
                return;
            }
            case 20: {
                this.unsetTimeoutCr();
                return;
            }
            case 21: {
                this.unsetTimeoutCs();
                return;
            }
            case 22: {
                this.setTpSdu(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetAddressingFormat();
            }
            case 6: {
                return this.isSetBlockSize();
            }
            case 7: {
                return this.isSetChannelModeType();
            }
            case 8: {
                return this.dataPdu != null;
            }
            case 9: {
                return this.flowControlPdu != null;
            }
            case 10: {
                return this.isSetMinimumSeparationTime();
            }
            case 11: {
                return this.isSetMulticastAddressing();
            }
            case 12: {
                return this.multicast != null;
            }
            case 13: {
                return this.isSetPaddingActivation();
            }
            case 14: {
                return this.source != null;
            }
            case 15: {
                return this.isSetTaType();
            }
            case 16: {
                return this.targets != null && !this.targets.isEmpty();
            }
            case 17: {
                return this.isSetTimeoutAs();
            }
            case 18: {
                return this.isSetTimeoutBr();
            }
            case 19: {
                return this.isSetTimeoutBs();
            }
            case 20: {
                return this.isSetTimeoutCr();
            }
            case 21: {
                return this.isSetTimeoutCs();
            }
            case 22: {
                return this.tpSdu != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (addressingFormat: ");
        if (this.addressingFormatESet) {
            result.append((Object)this.addressingFormat);
        } else {
            result.append("<unset>");
        }
        result.append(", blockSize: ");
        if (this.blockSizeESet) {
            result.append(this.blockSize);
        } else {
            result.append("<unset>");
        }
        result.append(", channelModeType: ");
        if (this.channelModeTypeESet) {
            result.append((Object)this.channelModeType);
        } else {
            result.append("<unset>");
        }
        result.append(", minimumSeparationTime: ");
        if (this.minimumSeparationTimeESet) {
            result.append(this.minimumSeparationTime);
        } else {
            result.append("<unset>");
        }
        result.append(", multicastAddressing: ");
        if (this.multicastAddressingESet) {
            result.append(this.multicastAddressing);
        } else {
            result.append("<unset>");
        }
        result.append(", paddingActivation: ");
        if (this.paddingActivationESet) {
            result.append(this.paddingActivation);
        } else {
            result.append("<unset>");
        }
        result.append(", taType: ");
        if (this.taTypeESet) {
            result.append((Object)this.taType);
        } else {
            result.append("<unset>");
        }
        result.append(", timeoutAs: ");
        if (this.timeoutAsESet) {
            result.append(this.timeoutAs);
        } else {
            result.append("<unset>");
        }
        result.append(", timeoutBr: ");
        if (this.timeoutBrESet) {
            result.append(this.timeoutBr);
        } else {
            result.append("<unset>");
        }
        result.append(", timeoutBs: ");
        if (this.timeoutBsESet) {
            result.append(this.timeoutBs);
        } else {
            result.append("<unset>");
        }
        result.append(", timeoutCr: ");
        if (this.timeoutCrESet) {
            result.append(this.timeoutCr);
        } else {
            result.append("<unset>");
        }
        result.append(", timeoutCs: ");
        if (this.timeoutCsESet) {
            result.append(this.timeoutCs);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

