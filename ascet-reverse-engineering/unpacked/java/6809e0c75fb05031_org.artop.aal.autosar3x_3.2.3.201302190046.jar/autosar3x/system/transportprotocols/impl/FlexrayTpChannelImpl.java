/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.system.transportprotocols.impl;

import autosar3x.system.fibex.fibexcore.corecommunication.NPdu;
import autosar3x.system.transportprotocols.FlexRayTpConnection;
import autosar3x.system.transportprotocols.FlexrayTpChannel;
import autosar3x.system.transportprotocols.MaximumMessageLengthType;
import autosar3x.system.transportprotocols.TpAckType;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
import autosar3x.system.transportprotocols.impl.TpChannelImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FlexrayTpChannelImpl
extends TpChannelImpl
implements FlexrayTpChannel,
IReferringClass {
    protected static final TpAckType ACK_TYPE_EDEFAULT = TpAckType.NO_ACK;
    protected TpAckType ackType = ACK_TYPE_EDEFAULT;
    protected boolean ackTypeESet;
    protected static final Boolean EXTENDED_ADDRESSING_EDEFAULT = Boolean.FALSE;
    protected Boolean extendedAddressing = EXTENDED_ADDRESSING_EDEFAULT;
    protected boolean extendedAddressingESet;
    protected NPdu flowControlPdu;
    protected static final Integer MAX_AR_EDEFAULT = new Integer(0);
    protected Integer maxAr = MAX_AR_EDEFAULT;
    protected boolean maxArESet;
    protected static final Integer MAX_AS_EDEFAULT = new Integer(0);
    protected Integer maxAs = MAX_AS_EDEFAULT;
    protected boolean maxAsESet;
    protected static final Integer MAX_BS_EDEFAULT = new Integer(0);
    protected Integer maxBs = MAX_BS_EDEFAULT;
    protected boolean maxBsESet;
    protected static final Integer MAX_BUFFER_REQUEST_EDEFAULT = new Integer(0);
    protected Integer maxBufferRequest = MAX_BUFFER_REQUEST_EDEFAULT;
    protected boolean maxBufferRequestESet;
    protected static final Integer MAX_FR_IF_EDEFAULT = new Integer(0);
    protected Integer maxFrIf = MAX_FR_IF_EDEFAULT;
    protected boolean maxFrIfESet;
    protected static final Integer MAX_RETRIES_EDEFAULT = new Integer(0);
    protected Integer maxRetries = MAX_RETRIES_EDEFAULT;
    protected boolean maxRetriesESet;
    protected static final MaximumMessageLengthType MAXIMUM_MESSAGE_LENGTH_EDEFAULT = MaximumMessageLengthType.ISO6;
    protected MaximumMessageLengthType maximumMessageLength = MAXIMUM_MESSAGE_LENGTH_EDEFAULT;
    protected boolean maximumMessageLengthESet;
    protected static final Double MINIMUM_SEPARATION_TIME_EDEFAULT = new Double(0.0);
    protected Double minimumSeparationTime = MINIMUM_SEPARATION_TIME_EDEFAULT;
    protected boolean minimumSeparationTimeESet;
    protected static final Boolean MULTICAST_SEGMENTATION_EDEFAULT = Boolean.FALSE;
    protected Boolean multicastSegmentation = MULTICAST_SEGMENTATION_EDEFAULT;
    protected boolean multicastSegmentationESet;
    protected EList<NPdu> pduPools;
    protected static final Double TIME_BR_EDEFAULT = new Double(0.0);
    protected Double timeBr = TIME_BR_EDEFAULT;
    protected boolean timeBrESet;
    protected static final Double TIME_BUFFER_EDEFAULT = new Double(0.0);
    protected Double timeBuffer = TIME_BUFFER_EDEFAULT;
    protected boolean timeBufferESet;
    protected static final Double TIME_CS_EDEFAULT = new Double(0.0);
    protected Double timeCs = TIME_CS_EDEFAULT;
    protected boolean timeCsESet;
    protected static final Double TIME_FR_IF_EDEFAULT = new Double(0.0);
    protected Double timeFrIf = TIME_FR_IF_EDEFAULT;
    protected boolean timeFrIfESet;
    protected static final Double TIMEOUT_AR_EDEFAULT = new Double(0.0);
    protected Double timeoutAr = TIMEOUT_AR_EDEFAULT;
    protected boolean timeoutArESet;
    protected static final Double TIMEOUT_AS_EDEFAULT = new Double(0.0);
    protected Double timeoutAs = TIMEOUT_AS_EDEFAULT;
    protected boolean timeoutAsESet;
    protected static final Double TIMEOUT_BS_EDEFAULT = new Double(0.0);
    protected Double timeoutBs = TIMEOUT_BS_EDEFAULT;
    protected boolean timeoutBsESet;
    protected static final Double TIMEOUT_CR_EDEFAULT = new Double(0.0);
    protected Double timeoutCr = TIMEOUT_CR_EDEFAULT;
    protected boolean timeoutCrESet;
    protected EList<FlexRayTpConnection> tpConnections;
    protected static final Boolean TRANSMIT_CANCELLATION_EDEFAULT = Boolean.FALSE;
    protected Boolean transmitCancellation = TRANSMIT_CANCELLATION_EDEFAULT;
    protected boolean transmitCancellationESet;

    protected FlexrayTpChannelImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.FLEXRAY_TP_CHANNEL;
    }

    @Override
    public TpAckType getAckType() {
        return this.ackType;
    }

    @Override
    public void setAckType(TpAckType newAckType) {
        TpAckType oldAckType = this.ackType;
        this.ackType = newAckType == null ? ACK_TYPE_EDEFAULT : newAckType;
        boolean oldAckTypeESet = this.ackTypeESet;
        this.ackTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAckType, (Object)this.ackType, !oldAckTypeESet));
        }
    }

    @Override
    public void unsetAckType() {
        TpAckType oldAckType = this.ackType;
        boolean oldAckTypeESet = this.ackTypeESet;
        this.ackType = ACK_TYPE_EDEFAULT;
        this.ackTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldAckType, (Object)ACK_TYPE_EDEFAULT, oldAckTypeESet));
        }
    }

    @Override
    public boolean isSetAckType() {
        return this.ackTypeESet;
    }

    @Override
    public Boolean getExtendedAddressing() {
        return this.extendedAddressing;
    }

    @Override
    public void setExtendedAddressing(Boolean newExtendedAddressing) {
        Boolean oldExtendedAddressing = this.extendedAddressing;
        this.extendedAddressing = newExtendedAddressing;
        boolean oldExtendedAddressingESet = this.extendedAddressingESet;
        this.extendedAddressingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldExtendedAddressing, (Object)this.extendedAddressing, !oldExtendedAddressingESet));
        }
    }

    @Override
    public void unsetExtendedAddressing() {
        Boolean oldExtendedAddressing = this.extendedAddressing;
        boolean oldExtendedAddressingESet = this.extendedAddressingESet;
        this.extendedAddressing = EXTENDED_ADDRESSING_EDEFAULT;
        this.extendedAddressingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldExtendedAddressing, (Object)EXTENDED_ADDRESSING_EDEFAULT, oldExtendedAddressingESet));
        }
    }

    @Override
    public boolean isSetExtendedAddressing() {
        return this.extendedAddressingESet;
    }

    @Override
    public NPdu getFlowControlPdu() {
        if (this.flowControlPdu != null && this.flowControlPdu.eIsProxy()) {
            InternalEObject oldFlowControlPdu = (InternalEObject)this.flowControlPdu;
            this.flowControlPdu = (NPdu)this.eResolveProxy(oldFlowControlPdu);
            if (this.flowControlPdu != oldFlowControlPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldFlowControlPdu, (Object)this.flowControlPdu));
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
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldFlowControlPdu, (Object)this.flowControlPdu));
        }
    }

    @Override
    public Integer getMaxAr() {
        return this.maxAr;
    }

    @Override
    public void setMaxAr(Integer newMaxAr) {
        Integer oldMaxAr = this.maxAr;
        this.maxAr = newMaxAr;
        boolean oldMaxArESet = this.maxArESet;
        this.maxArESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldMaxAr, (Object)this.maxAr, !oldMaxArESet));
        }
    }

    @Override
    public void unsetMaxAr() {
        Integer oldMaxAr = this.maxAr;
        boolean oldMaxArESet = this.maxArESet;
        this.maxAr = MAX_AR_EDEFAULT;
        this.maxArESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldMaxAr, (Object)MAX_AR_EDEFAULT, oldMaxArESet));
        }
    }

    @Override
    public boolean isSetMaxAr() {
        return this.maxArESet;
    }

    @Override
    public Integer getMaxAs() {
        return this.maxAs;
    }

    @Override
    public void setMaxAs(Integer newMaxAs) {
        Integer oldMaxAs = this.maxAs;
        this.maxAs = newMaxAs;
        boolean oldMaxAsESet = this.maxAsESet;
        this.maxAsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldMaxAs, (Object)this.maxAs, !oldMaxAsESet));
        }
    }

    @Override
    public void unsetMaxAs() {
        Integer oldMaxAs = this.maxAs;
        boolean oldMaxAsESet = this.maxAsESet;
        this.maxAs = MAX_AS_EDEFAULT;
        this.maxAsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldMaxAs, (Object)MAX_AS_EDEFAULT, oldMaxAsESet));
        }
    }

    @Override
    public boolean isSetMaxAs() {
        return this.maxAsESet;
    }

    @Override
    public Integer getMaxBs() {
        return this.maxBs;
    }

    @Override
    public void setMaxBs(Integer newMaxBs) {
        Integer oldMaxBs = this.maxBs;
        this.maxBs = newMaxBs;
        boolean oldMaxBsESet = this.maxBsESet;
        this.maxBsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldMaxBs, (Object)this.maxBs, !oldMaxBsESet));
        }
    }

    @Override
    public void unsetMaxBs() {
        Integer oldMaxBs = this.maxBs;
        boolean oldMaxBsESet = this.maxBsESet;
        this.maxBs = MAX_BS_EDEFAULT;
        this.maxBsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldMaxBs, (Object)MAX_BS_EDEFAULT, oldMaxBsESet));
        }
    }

    @Override
    public boolean isSetMaxBs() {
        return this.maxBsESet;
    }

    @Override
    public Integer getMaxBufferRequest() {
        return this.maxBufferRequest;
    }

    @Override
    public void setMaxBufferRequest(Integer newMaxBufferRequest) {
        Integer oldMaxBufferRequest = this.maxBufferRequest;
        this.maxBufferRequest = newMaxBufferRequest;
        boolean oldMaxBufferRequestESet = this.maxBufferRequestESet;
        this.maxBufferRequestESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldMaxBufferRequest, (Object)this.maxBufferRequest, !oldMaxBufferRequestESet));
        }
    }

    @Override
    public void unsetMaxBufferRequest() {
        Integer oldMaxBufferRequest = this.maxBufferRequest;
        boolean oldMaxBufferRequestESet = this.maxBufferRequestESet;
        this.maxBufferRequest = MAX_BUFFER_REQUEST_EDEFAULT;
        this.maxBufferRequestESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldMaxBufferRequest, (Object)MAX_BUFFER_REQUEST_EDEFAULT, oldMaxBufferRequestESet));
        }
    }

    @Override
    public boolean isSetMaxBufferRequest() {
        return this.maxBufferRequestESet;
    }

    @Override
    public Integer getMaxFrIf() {
        return this.maxFrIf;
    }

    @Override
    public void setMaxFrIf(Integer newMaxFrIf) {
        Integer oldMaxFrIf = this.maxFrIf;
        this.maxFrIf = newMaxFrIf;
        boolean oldMaxFrIfESet = this.maxFrIfESet;
        this.maxFrIfESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldMaxFrIf, (Object)this.maxFrIf, !oldMaxFrIfESet));
        }
    }

    @Override
    public void unsetMaxFrIf() {
        Integer oldMaxFrIf = this.maxFrIf;
        boolean oldMaxFrIfESet = this.maxFrIfESet;
        this.maxFrIf = MAX_FR_IF_EDEFAULT;
        this.maxFrIfESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldMaxFrIf, (Object)MAX_FR_IF_EDEFAULT, oldMaxFrIfESet));
        }
    }

    @Override
    public boolean isSetMaxFrIf() {
        return this.maxFrIfESet;
    }

    @Override
    public Integer getMaxRetries() {
        return this.maxRetries;
    }

    @Override
    public void setMaxRetries(Integer newMaxRetries) {
        Integer oldMaxRetries = this.maxRetries;
        this.maxRetries = newMaxRetries;
        boolean oldMaxRetriesESet = this.maxRetriesESet;
        this.maxRetriesESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldMaxRetries, (Object)this.maxRetries, !oldMaxRetriesESet));
        }
    }

    @Override
    public void unsetMaxRetries() {
        Integer oldMaxRetries = this.maxRetries;
        boolean oldMaxRetriesESet = this.maxRetriesESet;
        this.maxRetries = MAX_RETRIES_EDEFAULT;
        this.maxRetriesESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldMaxRetries, (Object)MAX_RETRIES_EDEFAULT, oldMaxRetriesESet));
        }
    }

    @Override
    public boolean isSetMaxRetries() {
        return this.maxRetriesESet;
    }

    @Override
    public MaximumMessageLengthType getMaximumMessageLength() {
        return this.maximumMessageLength;
    }

    @Override
    public void setMaximumMessageLength(MaximumMessageLengthType newMaximumMessageLength) {
        MaximumMessageLengthType oldMaximumMessageLength = this.maximumMessageLength;
        this.maximumMessageLength = newMaximumMessageLength == null ? MAXIMUM_MESSAGE_LENGTH_EDEFAULT : newMaximumMessageLength;
        boolean oldMaximumMessageLengthESet = this.maximumMessageLengthESet;
        this.maximumMessageLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldMaximumMessageLength, (Object)this.maximumMessageLength, !oldMaximumMessageLengthESet));
        }
    }

    @Override
    public void unsetMaximumMessageLength() {
        MaximumMessageLengthType oldMaximumMessageLength = this.maximumMessageLength;
        boolean oldMaximumMessageLengthESet = this.maximumMessageLengthESet;
        this.maximumMessageLength = MAXIMUM_MESSAGE_LENGTH_EDEFAULT;
        this.maximumMessageLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldMaximumMessageLength, (Object)MAXIMUM_MESSAGE_LENGTH_EDEFAULT, oldMaximumMessageLengthESet));
        }
    }

    @Override
    public boolean isSetMaximumMessageLength() {
        return this.maximumMessageLengthESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldMinimumSeparationTime, (Object)this.minimumSeparationTime, !oldMinimumSeparationTimeESet));
        }
    }

    @Override
    public void unsetMinimumSeparationTime() {
        Double oldMinimumSeparationTime = this.minimumSeparationTime;
        boolean oldMinimumSeparationTimeESet = this.minimumSeparationTimeESet;
        this.minimumSeparationTime = MINIMUM_SEPARATION_TIME_EDEFAULT;
        this.minimumSeparationTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 15, (Object)oldMinimumSeparationTime, (Object)MINIMUM_SEPARATION_TIME_EDEFAULT, oldMinimumSeparationTimeESet));
        }
    }

    @Override
    public boolean isSetMinimumSeparationTime() {
        return this.minimumSeparationTimeESet;
    }

    @Override
    public Boolean getMulticastSegmentation() {
        return this.multicastSegmentation;
    }

    @Override
    public void setMulticastSegmentation(Boolean newMulticastSegmentation) {
        Boolean oldMulticastSegmentation = this.multicastSegmentation;
        this.multicastSegmentation = newMulticastSegmentation;
        boolean oldMulticastSegmentationESet = this.multicastSegmentationESet;
        this.multicastSegmentationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldMulticastSegmentation, (Object)this.multicastSegmentation, !oldMulticastSegmentationESet));
        }
    }

    @Override
    public void unsetMulticastSegmentation() {
        Boolean oldMulticastSegmentation = this.multicastSegmentation;
        boolean oldMulticastSegmentationESet = this.multicastSegmentationESet;
        this.multicastSegmentation = MULTICAST_SEGMENTATION_EDEFAULT;
        this.multicastSegmentationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 16, (Object)oldMulticastSegmentation, (Object)MULTICAST_SEGMENTATION_EDEFAULT, oldMulticastSegmentationESet));
        }
    }

    @Override
    public boolean isSetMulticastSegmentation() {
        return this.multicastSegmentationESet;
    }

    @Override
    public EList<NPdu> getPduPools() {
        if (this.pduPools == null) {
            this.pduPools = new EObjectContainmentWithInverseEList(NPdu.class, (InternalEObject)this, 17, 21);
        }
        return this.pduPools;
    }

    @Override
    public Double getTimeBr() {
        return this.timeBr;
    }

    @Override
    public void setTimeBr(Double newTimeBr) {
        Double oldTimeBr = this.timeBr;
        this.timeBr = newTimeBr;
        boolean oldTimeBrESet = this.timeBrESet;
        this.timeBrESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldTimeBr, (Object)this.timeBr, !oldTimeBrESet));
        }
    }

    @Override
    public void unsetTimeBr() {
        Double oldTimeBr = this.timeBr;
        boolean oldTimeBrESet = this.timeBrESet;
        this.timeBr = TIME_BR_EDEFAULT;
        this.timeBrESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldTimeBr, (Object)TIME_BR_EDEFAULT, oldTimeBrESet));
        }
    }

    @Override
    public boolean isSetTimeBr() {
        return this.timeBrESet;
    }

    @Override
    public Double getTimeBuffer() {
        return this.timeBuffer;
    }

    @Override
    public void setTimeBuffer(Double newTimeBuffer) {
        Double oldTimeBuffer = this.timeBuffer;
        this.timeBuffer = newTimeBuffer;
        boolean oldTimeBufferESet = this.timeBufferESet;
        this.timeBufferESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldTimeBuffer, (Object)this.timeBuffer, !oldTimeBufferESet));
        }
    }

    @Override
    public void unsetTimeBuffer() {
        Double oldTimeBuffer = this.timeBuffer;
        boolean oldTimeBufferESet = this.timeBufferESet;
        this.timeBuffer = TIME_BUFFER_EDEFAULT;
        this.timeBufferESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldTimeBuffer, (Object)TIME_BUFFER_EDEFAULT, oldTimeBufferESet));
        }
    }

    @Override
    public boolean isSetTimeBuffer() {
        return this.timeBufferESet;
    }

    @Override
    public Double getTimeCs() {
        return this.timeCs;
    }

    @Override
    public void setTimeCs(Double newTimeCs) {
        Double oldTimeCs = this.timeCs;
        this.timeCs = newTimeCs;
        boolean oldTimeCsESet = this.timeCsESet;
        this.timeCsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldTimeCs, (Object)this.timeCs, !oldTimeCsESet));
        }
    }

    @Override
    public void unsetTimeCs() {
        Double oldTimeCs = this.timeCs;
        boolean oldTimeCsESet = this.timeCsESet;
        this.timeCs = TIME_CS_EDEFAULT;
        this.timeCsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldTimeCs, (Object)TIME_CS_EDEFAULT, oldTimeCsESet));
        }
    }

    @Override
    public boolean isSetTimeCs() {
        return this.timeCsESet;
    }

    @Override
    public Double getTimeFrIf() {
        return this.timeFrIf;
    }

    @Override
    public void setTimeFrIf(Double newTimeFrIf) {
        Double oldTimeFrIf = this.timeFrIf;
        this.timeFrIf = newTimeFrIf;
        boolean oldTimeFrIfESet = this.timeFrIfESet;
        this.timeFrIfESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldTimeFrIf, (Object)this.timeFrIf, !oldTimeFrIfESet));
        }
    }

    @Override
    public void unsetTimeFrIf() {
        Double oldTimeFrIf = this.timeFrIf;
        boolean oldTimeFrIfESet = this.timeFrIfESet;
        this.timeFrIf = TIME_FR_IF_EDEFAULT;
        this.timeFrIfESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldTimeFrIf, (Object)TIME_FR_IF_EDEFAULT, oldTimeFrIfESet));
        }
    }

    @Override
    public boolean isSetTimeFrIf() {
        return this.timeFrIfESet;
    }

    @Override
    public Double getTimeoutAr() {
        return this.timeoutAr;
    }

    @Override
    public void setTimeoutAr(Double newTimeoutAr) {
        Double oldTimeoutAr = this.timeoutAr;
        this.timeoutAr = newTimeoutAr;
        boolean oldTimeoutArESet = this.timeoutArESet;
        this.timeoutArESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldTimeoutAr, (Object)this.timeoutAr, !oldTimeoutArESet));
        }
    }

    @Override
    public void unsetTimeoutAr() {
        Double oldTimeoutAr = this.timeoutAr;
        boolean oldTimeoutArESet = this.timeoutArESet;
        this.timeoutAr = TIMEOUT_AR_EDEFAULT;
        this.timeoutArESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldTimeoutAr, (Object)TIMEOUT_AR_EDEFAULT, oldTimeoutArESet));
        }
    }

    @Override
    public boolean isSetTimeoutAr() {
        return this.timeoutArESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldTimeoutAs, (Object)this.timeoutAs, !oldTimeoutAsESet));
        }
    }

    @Override
    public void unsetTimeoutAs() {
        Double oldTimeoutAs = this.timeoutAs;
        boolean oldTimeoutAsESet = this.timeoutAsESet;
        this.timeoutAs = TIMEOUT_AS_EDEFAULT;
        this.timeoutAsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldTimeoutAs, (Object)TIMEOUT_AS_EDEFAULT, oldTimeoutAsESet));
        }
    }

    @Override
    public boolean isSetTimeoutAs() {
        return this.timeoutAsESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldTimeoutBs, (Object)this.timeoutBs, !oldTimeoutBsESet));
        }
    }

    @Override
    public void unsetTimeoutBs() {
        Double oldTimeoutBs = this.timeoutBs;
        boolean oldTimeoutBsESet = this.timeoutBsESet;
        this.timeoutBs = TIMEOUT_BS_EDEFAULT;
        this.timeoutBsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldTimeoutBs, (Object)TIMEOUT_BS_EDEFAULT, oldTimeoutBsESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldTimeoutCr, (Object)this.timeoutCr, !oldTimeoutCrESet));
        }
    }

    @Override
    public void unsetTimeoutCr() {
        Double oldTimeoutCr = this.timeoutCr;
        boolean oldTimeoutCrESet = this.timeoutCrESet;
        this.timeoutCr = TIMEOUT_CR_EDEFAULT;
        this.timeoutCrESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldTimeoutCr, (Object)TIMEOUT_CR_EDEFAULT, oldTimeoutCrESet));
        }
    }

    @Override
    public boolean isSetTimeoutCr() {
        return this.timeoutCrESet;
    }

    @Override
    public EList<FlexRayTpConnection> getTpConnections() {
        if (this.tpConnections == null) {
            this.tpConnections = new EObjectContainmentWithInverseEList(FlexRayTpConnection.class, (InternalEObject)this, 26, 4);
        }
        return this.tpConnections;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldTransmitCancellation, (Object)this.transmitCancellation, !oldTransmitCancellationESet));
        }
    }

    @Override
    public void unsetTransmitCancellation() {
        Boolean oldTransmitCancellation = this.transmitCancellation;
        boolean oldTransmitCancellationESet = this.transmitCancellationESet;
        this.transmitCancellation = TRANSMIT_CANCELLATION_EDEFAULT;
        this.transmitCancellationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldTransmitCancellation, (Object)TRANSMIT_CANCELLATION_EDEFAULT, oldTransmitCancellationESet));
        }
    }

    @Override
    public boolean isSetTransmitCancellation() {
        return this.transmitCancellationESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return ((InternalEList)this.getPduPools()).basicAdd((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getTpConnections()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return ((InternalEList)this.getPduPools()).basicRemove((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getTpConnections()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getAckType();
            }
            case 6: {
                return this.getExtendedAddressing();
            }
            case 7: {
                if (resolve) {
                    return this.getFlowControlPdu();
                }
                return this.basicGetFlowControlPdu();
            }
            case 8: {
                return this.getMaxAr();
            }
            case 9: {
                return this.getMaxAs();
            }
            case 10: {
                return this.getMaxBs();
            }
            case 11: {
                return this.getMaxBufferRequest();
            }
            case 12: {
                return this.getMaxFrIf();
            }
            case 13: {
                return this.getMaxRetries();
            }
            case 14: {
                return this.getMaximumMessageLength();
            }
            case 15: {
                return this.getMinimumSeparationTime();
            }
            case 16: {
                return this.getMulticastSegmentation();
            }
            case 17: {
                return this.getPduPools();
            }
            case 18: {
                return this.getTimeBr();
            }
            case 19: {
                return this.getTimeBuffer();
            }
            case 20: {
                return this.getTimeCs();
            }
            case 21: {
                return this.getTimeFrIf();
            }
            case 22: {
                return this.getTimeoutAr();
            }
            case 23: {
                return this.getTimeoutAs();
            }
            case 24: {
                return this.getTimeoutBs();
            }
            case 25: {
                return this.getTimeoutCr();
            }
            case 26: {
                return this.getTpConnections();
            }
            case 27: {
                return this.getTransmitCancellation();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setAckType((TpAckType)((Object)newValue));
                return;
            }
            case 6: {
                this.setExtendedAddressing((Boolean)newValue);
                return;
            }
            case 7: {
                this.setFlowControlPdu((NPdu)newValue);
                return;
            }
            case 8: {
                this.setMaxAr((Integer)newValue);
                return;
            }
            case 9: {
                this.setMaxAs((Integer)newValue);
                return;
            }
            case 10: {
                this.setMaxBs((Integer)newValue);
                return;
            }
            case 11: {
                this.setMaxBufferRequest((Integer)newValue);
                return;
            }
            case 12: {
                this.setMaxFrIf((Integer)newValue);
                return;
            }
            case 13: {
                this.setMaxRetries((Integer)newValue);
                return;
            }
            case 14: {
                this.setMaximumMessageLength((MaximumMessageLengthType)((Object)newValue));
                return;
            }
            case 15: {
                this.setMinimumSeparationTime((Double)newValue);
                return;
            }
            case 16: {
                this.setMulticastSegmentation((Boolean)newValue);
                return;
            }
            case 17: {
                this.getPduPools().clear();
                this.getPduPools().addAll((Collection)newValue);
                return;
            }
            case 18: {
                this.setTimeBr((Double)newValue);
                return;
            }
            case 19: {
                this.setTimeBuffer((Double)newValue);
                return;
            }
            case 20: {
                this.setTimeCs((Double)newValue);
                return;
            }
            case 21: {
                this.setTimeFrIf((Double)newValue);
                return;
            }
            case 22: {
                this.setTimeoutAr((Double)newValue);
                return;
            }
            case 23: {
                this.setTimeoutAs((Double)newValue);
                return;
            }
            case 24: {
                this.setTimeoutBs((Double)newValue);
                return;
            }
            case 25: {
                this.setTimeoutCr((Double)newValue);
                return;
            }
            case 26: {
                this.getTpConnections().clear();
                this.getTpConnections().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.setTransmitCancellation((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetAckType();
                return;
            }
            case 6: {
                this.unsetExtendedAddressing();
                return;
            }
            case 7: {
                this.setFlowControlPdu(null);
                return;
            }
            case 8: {
                this.unsetMaxAr();
                return;
            }
            case 9: {
                this.unsetMaxAs();
                return;
            }
            case 10: {
                this.unsetMaxBs();
                return;
            }
            case 11: {
                this.unsetMaxBufferRequest();
                return;
            }
            case 12: {
                this.unsetMaxFrIf();
                return;
            }
            case 13: {
                this.unsetMaxRetries();
                return;
            }
            case 14: {
                this.unsetMaximumMessageLength();
                return;
            }
            case 15: {
                this.unsetMinimumSeparationTime();
                return;
            }
            case 16: {
                this.unsetMulticastSegmentation();
                return;
            }
            case 17: {
                this.getPduPools().clear();
                return;
            }
            case 18: {
                this.unsetTimeBr();
                return;
            }
            case 19: {
                this.unsetTimeBuffer();
                return;
            }
            case 20: {
                this.unsetTimeCs();
                return;
            }
            case 21: {
                this.unsetTimeFrIf();
                return;
            }
            case 22: {
                this.unsetTimeoutAr();
                return;
            }
            case 23: {
                this.unsetTimeoutAs();
                return;
            }
            case 24: {
                this.unsetTimeoutBs();
                return;
            }
            case 25: {
                this.unsetTimeoutCr();
                return;
            }
            case 26: {
                this.getTpConnections().clear();
                return;
            }
            case 27: {
                this.unsetTransmitCancellation();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetAckType();
            }
            case 6: {
                return this.isSetExtendedAddressing();
            }
            case 7: {
                return this.flowControlPdu != null;
            }
            case 8: {
                return this.isSetMaxAr();
            }
            case 9: {
                return this.isSetMaxAs();
            }
            case 10: {
                return this.isSetMaxBs();
            }
            case 11: {
                return this.isSetMaxBufferRequest();
            }
            case 12: {
                return this.isSetMaxFrIf();
            }
            case 13: {
                return this.isSetMaxRetries();
            }
            case 14: {
                return this.isSetMaximumMessageLength();
            }
            case 15: {
                return this.isSetMinimumSeparationTime();
            }
            case 16: {
                return this.isSetMulticastSegmentation();
            }
            case 17: {
                return this.pduPools != null && !this.pduPools.isEmpty();
            }
            case 18: {
                return this.isSetTimeBr();
            }
            case 19: {
                return this.isSetTimeBuffer();
            }
            case 20: {
                return this.isSetTimeCs();
            }
            case 21: {
                return this.isSetTimeFrIf();
            }
            case 22: {
                return this.isSetTimeoutAr();
            }
            case 23: {
                return this.isSetTimeoutAs();
            }
            case 24: {
                return this.isSetTimeoutBs();
            }
            case 25: {
                return this.isSetTimeoutCr();
            }
            case 26: {
                return this.tpConnections != null && !this.tpConnections.isEmpty();
            }
            case 27: {
                return this.isSetTransmitCancellation();
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
        result.append(" (ackType: ");
        if (this.ackTypeESet) {
            result.append((Object)this.ackType);
        } else {
            result.append("<unset>");
        }
        result.append(", extendedAddressing: ");
        if (this.extendedAddressingESet) {
            result.append(this.extendedAddressing);
        } else {
            result.append("<unset>");
        }
        result.append(", maxAr: ");
        if (this.maxArESet) {
            result.append(this.maxAr);
        } else {
            result.append("<unset>");
        }
        result.append(", maxAs: ");
        if (this.maxAsESet) {
            result.append(this.maxAs);
        } else {
            result.append("<unset>");
        }
        result.append(", maxBs: ");
        if (this.maxBsESet) {
            result.append(this.maxBs);
        } else {
            result.append("<unset>");
        }
        result.append(", maxBufferRequest: ");
        if (this.maxBufferRequestESet) {
            result.append(this.maxBufferRequest);
        } else {
            result.append("<unset>");
        }
        result.append(", maxFrIf: ");
        if (this.maxFrIfESet) {
            result.append(this.maxFrIf);
        } else {
            result.append("<unset>");
        }
        result.append(", maxRetries: ");
        if (this.maxRetriesESet) {
            result.append(this.maxRetries);
        } else {
            result.append("<unset>");
        }
        result.append(", maximumMessageLength: ");
        if (this.maximumMessageLengthESet) {
            result.append((Object)this.maximumMessageLength);
        } else {
            result.append("<unset>");
        }
        result.append(", minimumSeparationTime: ");
        if (this.minimumSeparationTimeESet) {
            result.append(this.minimumSeparationTime);
        } else {
            result.append("<unset>");
        }
        result.append(", multicastSegmentation: ");
        if (this.multicastSegmentationESet) {
            result.append(this.multicastSegmentation);
        } else {
            result.append("<unset>");
        }
        result.append(", timeBr: ");
        if (this.timeBrESet) {
            result.append(this.timeBr);
        } else {
            result.append("<unset>");
        }
        result.append(", timeBuffer: ");
        if (this.timeBufferESet) {
            result.append(this.timeBuffer);
        } else {
            result.append("<unset>");
        }
        result.append(", timeCs: ");
        if (this.timeCsESet) {
            result.append(this.timeCs);
        } else {
            result.append("<unset>");
        }
        result.append(", timeFrIf: ");
        if (this.timeFrIfESet) {
            result.append(this.timeFrIf);
        } else {
            result.append("<unset>");
        }
        result.append(", timeoutAr: ");
        if (this.timeoutArESet) {
            result.append(this.timeoutAr);
        } else {
            result.append("<unset>");
        }
        result.append(", timeoutAs: ");
        if (this.timeoutAsESet) {
            result.append(this.timeoutAs);
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

