/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.transportprotocols.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibexcore.corecommunication.IPdu;
import autosar40.system.fibex.fibexcore.corecommunication.NPdu;
import autosar40.system.transportprotocols.CanTpAddress;
import autosar40.system.transportprotocols.CanTpAddressingFormatType;
import autosar40.system.transportprotocols.CanTpChannel;
import autosar40.system.transportprotocols.CanTpConfig;
import autosar40.system.transportprotocols.CanTpConnection;
import autosar40.system.transportprotocols.CanTpNode;
import autosar40.system.transportprotocols.NetworkTargetAddressType;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import java.util.Collection;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CanTpConnectionImpl
extends ARObjectImpl
implements CanTpConnection,
IReferringClass {
    protected static final CanTpAddressingFormatType ADDRESSING_FORMAT_EDEFAULT = CanTpAddressingFormatType.STANDARD;
    protected CanTpAddressingFormatType addressingFormat = ADDRESSING_FORMAT_EDEFAULT;
    protected boolean addressingFormatESet;
    protected CanTpChannel canTpChannel;
    protected NPdu dataPdu;
    protected NPdu flowControlPdu;
    protected static final IntegerDatatype MAX_BLOCK_SIZE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype maxBlockSize = MAX_BLOCK_SIZE_EDEFAULT.clone();
    protected boolean maxBlockSizeESet;
    protected CanTpAddress multicast;
    protected static final Boolean PADDING_ACTIVATION_EDEFAULT = Boolean.FALSE;
    protected Boolean paddingActivation = PADDING_ACTIVATION_EDEFAULT;
    protected boolean paddingActivationESet;
    protected EList<CanTpNode> receivers;
    protected static final NetworkTargetAddressType TA_TYPE_EDEFAULT = NetworkTargetAddressType.FUNCTIONAL;
    protected NetworkTargetAddressType taType = TA_TYPE_EDEFAULT;
    protected boolean taTypeESet;
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
    protected static final Boolean TRANSMIT_CANCELLATION_EDEFAULT = Boolean.FALSE;
    protected Boolean transmitCancellation = TRANSMIT_CANCELLATION_EDEFAULT;
    protected boolean transmitCancellationESet;
    protected CanTpNode transmitter;

    protected CanTpConnectionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.CAN_TP_CONNECTION;
    }

    @Override
    public CanTpConfig getCanTpConfig() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CanTpConfig)this.eContainer();
    }

    public NotificationChain basicSetCanTpConfig(CanTpConfig newCanTpConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCanTpConfig, 4, msgs);
        return msgs;
    }

    @Override
    public void setCanTpConfig(CanTpConfig newCanTpConfig) {
        if (newCanTpConfig != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCanTpConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCanTpConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCanTpConfig != null) {
                msgs = ((InternalEObject)newCanTpConfig).eInverseAdd((InternalEObject)this, 24, CanTpConfig.class, msgs);
            }
            if ((msgs = this.basicSetCanTpConfig(newCanTpConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCanTpConfig, (Object)newCanTpConfig));
        }
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
    public CanTpChannel getCanTpChannel() {
        if (this.canTpChannel != null && this.canTpChannel.eIsProxy()) {
            InternalEObject oldCanTpChannel = (InternalEObject)this.canTpChannel;
            this.canTpChannel = (CanTpChannel)this.eResolveProxy(oldCanTpChannel);
            if (this.canTpChannel != oldCanTpChannel && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldCanTpChannel, (Object)this.canTpChannel));
            }
        }
        return this.canTpChannel;
    }

    public CanTpChannel basicGetCanTpChannel() {
        return this.canTpChannel;
    }

    @Override
    public void setCanTpChannel(CanTpChannel newCanTpChannel) {
        CanTpChannel oldCanTpChannel = this.canTpChannel;
        this.canTpChannel = newCanTpChannel;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCanTpChannel, (Object)this.canTpChannel));
        }
    }

    @Override
    public NPdu getDataPdu() {
        if (this.dataPdu != null && this.dataPdu.eIsProxy()) {
            InternalEObject oldDataPdu = (InternalEObject)this.dataPdu;
            this.dataPdu = (NPdu)this.eResolveProxy(oldDataPdu);
            if (this.dataPdu != oldDataPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldDataPdu, (Object)this.dataPdu));
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
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldDataPdu, (Object)this.dataPdu));
        }
    }

    @Override
    public NPdu getFlowControlPdu() {
        if (this.flowControlPdu != null && this.flowControlPdu.eIsProxy()) {
            InternalEObject oldFlowControlPdu = (InternalEObject)this.flowControlPdu;
            this.flowControlPdu = (NPdu)this.eResolveProxy(oldFlowControlPdu);
            if (this.flowControlPdu != oldFlowControlPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldFlowControlPdu, (Object)this.flowControlPdu));
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
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldFlowControlPdu, (Object)this.flowControlPdu));
        }
    }

    @Override
    public Integer getMaxBlockSize() {
        return (Integer)this.maxBlockSize.basicGetValue();
    }

    @Override
    public void setMaxBlockSize(Integer newMaxBlockSize) {
        Integer oldMaxBlockSize = (Integer)this.maxBlockSize.basicGetValue();
        this.maxBlockSize.basicSetValue((Object)newMaxBlockSize);
        boolean oldMaxBlockSizeESet = this.maxBlockSizeESet;
        this.maxBlockSizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldMaxBlockSize, (Object)newMaxBlockSize, !oldMaxBlockSizeESet));
        }
    }

    @Override
    public void unsetMaxBlockSize() {
        Integer oldMaxBlockSize = (Integer)this.maxBlockSize.basicGetValue();
        boolean oldMaxBlockSizeESet = this.maxBlockSizeESet;
        this.maxBlockSize = MAX_BLOCK_SIZE_EDEFAULT.clone();
        this.maxBlockSizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldMaxBlockSize, (Object)MAX_BLOCK_SIZE_EDEFAULT, oldMaxBlockSizeESet));
        }
    }

    @Override
    public boolean isSetMaxBlockSize() {
        return this.maxBlockSizeESet;
    }

    @Override
    public CanTpAddress getMulticast() {
        if (this.multicast != null && this.multicast.eIsProxy()) {
            InternalEObject oldMulticast = (InternalEObject)this.multicast;
            this.multicast = (CanTpAddress)this.eResolveProxy(oldMulticast);
            if (this.multicast != oldMulticast && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 10, (Object)oldMulticast, (Object)this.multicast));
            }
        }
        return this.multicast;
    }

    public CanTpAddress basicGetMulticast() {
        return this.multicast;
    }

    @Override
    public void setMulticast(CanTpAddress newMulticast) {
        CanTpAddress oldMulticast = this.multicast;
        this.multicast = newMulticast;
        AutosarObjectUtil.setDest((EObject)this, (int)10, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldMulticast, (Object)this.multicast));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldPaddingActivation, (Object)this.paddingActivation, !oldPaddingActivationESet));
        }
    }

    @Override
    public void unsetPaddingActivation() {
        Boolean oldPaddingActivation = this.paddingActivation;
        boolean oldPaddingActivationESet = this.paddingActivationESet;
        this.paddingActivation = PADDING_ACTIVATION_EDEFAULT;
        this.paddingActivationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldPaddingActivation, (Object)PADDING_ACTIVATION_EDEFAULT, oldPaddingActivationESet));
        }
    }

    @Override
    public boolean isSetPaddingActivation() {
        return this.paddingActivationESet;
    }

    @Override
    public EList<CanTpNode> getReceivers() {
        if (this.receivers == null) {
            this.receivers = new EObjectResolvingReferringEList(CanTpNode.class, (InternalEObject)this, 12);
        }
        return this.receivers;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldTaType, (Object)this.taType, !oldTaTypeESet));
        }
    }

    @Override
    public void unsetTaType() {
        NetworkTargetAddressType oldTaType = this.taType;
        boolean oldTaTypeESet = this.taTypeESet;
        this.taType = TA_TYPE_EDEFAULT;
        this.taTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldTaType, (Object)TA_TYPE_EDEFAULT, oldTaTypeESet));
        }
    }

    @Override
    public boolean isSetTaType() {
        return this.taTypeESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldTimeoutBr, (Object)this.timeoutBr, !oldTimeoutBrESet));
        }
    }

    @Override
    public void unsetTimeoutBr() {
        Double oldTimeoutBr = this.timeoutBr;
        boolean oldTimeoutBrESet = this.timeoutBrESet;
        this.timeoutBr = TIMEOUT_BR_EDEFAULT;
        this.timeoutBrESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldTimeoutBr, (Object)TIMEOUT_BR_EDEFAULT, oldTimeoutBrESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldTimeoutBs, (Object)this.timeoutBs, !oldTimeoutBsESet));
        }
    }

    @Override
    public void unsetTimeoutBs() {
        Double oldTimeoutBs = this.timeoutBs;
        boolean oldTimeoutBsESet = this.timeoutBsESet;
        this.timeoutBs = TIMEOUT_BS_EDEFAULT;
        this.timeoutBsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 15, (Object)oldTimeoutBs, (Object)TIMEOUT_BS_EDEFAULT, oldTimeoutBsESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldTimeoutCr, (Object)this.timeoutCr, !oldTimeoutCrESet));
        }
    }

    @Override
    public void unsetTimeoutCr() {
        Double oldTimeoutCr = this.timeoutCr;
        boolean oldTimeoutCrESet = this.timeoutCrESet;
        this.timeoutCr = TIMEOUT_CR_EDEFAULT;
        this.timeoutCrESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 16, (Object)oldTimeoutCr, (Object)TIMEOUT_CR_EDEFAULT, oldTimeoutCrESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldTimeoutCs, (Object)this.timeoutCs, !oldTimeoutCsESet));
        }
    }

    @Override
    public void unsetTimeoutCs() {
        Double oldTimeoutCs = this.timeoutCs;
        boolean oldTimeoutCsESet = this.timeoutCsESet;
        this.timeoutCs = TIMEOUT_CS_EDEFAULT;
        this.timeoutCsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldTimeoutCs, (Object)TIMEOUT_CS_EDEFAULT, oldTimeoutCsESet));
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
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldTpSdu, (Object)this.tpSdu));
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
        AutosarObjectUtil.setDest((EObject)this, (int)18, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldTpSdu, (Object)this.tpSdu));
        }
    }

    @Override
    public Boolean getTransmitCancellation() {
        return this.transmitCancellation;
    }

    @Override
    public void setTransmitCancellation(Boolean newTransmitCancellation) {
        Boolean oldTransmitCancellation = this.transmitCancellation;
        this.transmitCancellation = newTransmitCancellation;
        boolean oldTransmitCancellationESet = this.transmitCancellationESet;
        this.transmitCancellationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldTransmitCancellation, (Object)this.transmitCancellation, !oldTransmitCancellationESet));
        }
    }

    @Override
    public void unsetTransmitCancellation() {
        Boolean oldTransmitCancellation = this.transmitCancellation;
        boolean oldTransmitCancellationESet = this.transmitCancellationESet;
        this.transmitCancellation = TRANSMIT_CANCELLATION_EDEFAULT;
        this.transmitCancellationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldTransmitCancellation, (Object)TRANSMIT_CANCELLATION_EDEFAULT, oldTransmitCancellationESet));
        }
    }

    @Override
    public boolean isSetTransmitCancellation() {
        return this.transmitCancellationESet;
    }

    @Override
    public CanTpNode getTransmitter() {
        if (this.transmitter != null && this.transmitter.eIsProxy()) {
            InternalEObject oldTransmitter = (InternalEObject)this.transmitter;
            this.transmitter = (CanTpNode)this.eResolveProxy(oldTransmitter);
            if (this.transmitter != oldTransmitter && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldTransmitter, (Object)this.transmitter));
            }
        }
        return this.transmitter;
    }

    public CanTpNode basicGetTransmitter() {
        return this.transmitter;
    }

    @Override
    public void setTransmitter(CanTpNode newTransmitter) {
        CanTpNode oldTransmitter = this.transmitter;
        this.transmitter = newTransmitter;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldTransmitter, (Object)this.transmitter));
        }
    }

    @Override
    public IntegerDatatype getMaxBlockSizeData() {
        return this.maxBlockSize.clone();
    }

    @Override
    public void setMaxBlockSizeData(IntegerDatatype newMaxBlockSize) {
        this.maxBlockSize.setRadix((int)newMaxBlockSize.getRadix());
        this.maxBlockSize.setNoOfDigits((int)newMaxBlockSize.getNoOfDigits());
        this.setMaxBlockSize(newMaxBlockSize.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCanTpConfig((CanTpConfig)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCanTpConfig(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, CanTpConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCanTpConfig();
            }
            case 5: {
                return this.getAddressingFormat();
            }
            case 6: {
                if (resolve) {
                    return this.getCanTpChannel();
                }
                return this.basicGetCanTpChannel();
            }
            case 7: {
                if (resolve) {
                    return this.getDataPdu();
                }
                return this.basicGetDataPdu();
            }
            case 8: {
                if (resolve) {
                    return this.getFlowControlPdu();
                }
                return this.basicGetFlowControlPdu();
            }
            case 9: {
                return this.getMaxBlockSize();
            }
            case 10: {
                if (resolve) {
                    return this.getMulticast();
                }
                return this.basicGetMulticast();
            }
            case 11: {
                return this.getPaddingActivation();
            }
            case 12: {
                return this.getReceivers();
            }
            case 13: {
                return this.getTaType();
            }
            case 14: {
                return this.getTimeoutBr();
            }
            case 15: {
                return this.getTimeoutBs();
            }
            case 16: {
                return this.getTimeoutCr();
            }
            case 17: {
                return this.getTimeoutCs();
            }
            case 18: {
                if (resolve) {
                    return this.getTpSdu();
                }
                return this.basicGetTpSdu();
            }
            case 19: {
                return this.getTransmitCancellation();
            }
            case 20: {
                if (resolve) {
                    return this.getTransmitter();
                }
                return this.basicGetTransmitter();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCanTpConfig((CanTpConfig)newValue);
                return;
            }
            case 5: {
                this.setAddressingFormat((CanTpAddressingFormatType)((Object)newValue));
                return;
            }
            case 6: {
                this.setCanTpChannel((CanTpChannel)newValue);
                return;
            }
            case 7: {
                this.setDataPdu((NPdu)newValue);
                return;
            }
            case 8: {
                this.setFlowControlPdu((NPdu)newValue);
                return;
            }
            case 9: {
                this.setMaxBlockSize((Integer)newValue);
                return;
            }
            case 10: {
                this.setMulticast((CanTpAddress)newValue);
                return;
            }
            case 11: {
                this.setPaddingActivation((Boolean)newValue);
                return;
            }
            case 12: {
                this.getReceivers().clear();
                this.getReceivers().addAll((Collection)newValue);
                return;
            }
            case 13: {
                this.setTaType((NetworkTargetAddressType)((Object)newValue));
                return;
            }
            case 14: {
                this.setTimeoutBr((Double)newValue);
                return;
            }
            case 15: {
                this.setTimeoutBs((Double)newValue);
                return;
            }
            case 16: {
                this.setTimeoutCr((Double)newValue);
                return;
            }
            case 17: {
                this.setTimeoutCs((Double)newValue);
                return;
            }
            case 18: {
                this.setTpSdu((IPdu)newValue);
                return;
            }
            case 19: {
                this.setTransmitCancellation((Boolean)newValue);
                return;
            }
            case 20: {
                this.setTransmitter((CanTpNode)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCanTpConfig(null);
                return;
            }
            case 5: {
                this.unsetAddressingFormat();
                return;
            }
            case 6: {
                this.setCanTpChannel(null);
                return;
            }
            case 7: {
                this.setDataPdu(null);
                return;
            }
            case 8: {
                this.setFlowControlPdu(null);
                return;
            }
            case 9: {
                this.unsetMaxBlockSize();
                return;
            }
            case 10: {
                this.setMulticast(null);
                return;
            }
            case 11: {
                this.unsetPaddingActivation();
                return;
            }
            case 12: {
                this.getReceivers().clear();
                return;
            }
            case 13: {
                this.unsetTaType();
                return;
            }
            case 14: {
                this.unsetTimeoutBr();
                return;
            }
            case 15: {
                this.unsetTimeoutBs();
                return;
            }
            case 16: {
                this.unsetTimeoutCr();
                return;
            }
            case 17: {
                this.unsetTimeoutCs();
                return;
            }
            case 18: {
                this.setTpSdu(null);
                return;
            }
            case 19: {
                this.unsetTransmitCancellation();
                return;
            }
            case 20: {
                this.setTransmitter(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCanTpConfig() != null;
            }
            case 5: {
                return this.isSetAddressingFormat();
            }
            case 6: {
                return this.canTpChannel != null;
            }
            case 7: {
                return this.dataPdu != null;
            }
            case 8: {
                return this.flowControlPdu != null;
            }
            case 9: {
                return this.isSetMaxBlockSize();
            }
            case 10: {
                return this.multicast != null;
            }
            case 11: {
                return this.isSetPaddingActivation();
            }
            case 12: {
                return this.receivers != null && !this.receivers.isEmpty();
            }
            case 13: {
                return this.isSetTaType();
            }
            case 14: {
                return this.isSetTimeoutBr();
            }
            case 15: {
                return this.isSetTimeoutBs();
            }
            case 16: {
                return this.isSetTimeoutCr();
            }
            case 17: {
                return this.isSetTimeoutCs();
            }
            case 18: {
                return this.tpSdu != null;
            }
            case 19: {
                return this.isSetTransmitCancellation();
            }
            case 20: {
                return this.transmitter != null;
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
        result.append(", maxBlockSize: ");
        if (this.maxBlockSizeESet) {
            result.append(this.maxBlockSize);
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
        result.append(", transmitCancellation: ");
        if (this.transmitCancellationESet) {
            result.append(this.transmitCancellation);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

