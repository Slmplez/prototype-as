/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.system.transportprotocols.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import autosar3x.system.transportprotocols.FlexrayIsoTpConnectionControl;
import autosar3x.system.transportprotocols.TpAckType;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class FlexrayIsoTpConnectionControlImpl
extends IdentifiableImpl
implements FlexrayIsoTpConnectionControl {
    protected static final TpAckType ACK_TYPE_EDEFAULT = TpAckType.NO_ACK;
    protected TpAckType ackType = ACK_TYPE_EDEFAULT;
    protected boolean ackTypeESet;
    protected static final Integer MAX_AR_EDEFAULT = new Integer(0);
    protected Integer maxAr = MAX_AR_EDEFAULT;
    protected boolean maxArESet;
    protected static final Integer MAX_AS_EDEFAULT = new Integer(0);
    protected Integer maxAs = MAX_AS_EDEFAULT;
    protected boolean maxAsESet;
    protected static final Integer MAX_BUFFER_SIZE_EDEFAULT = new Integer(0);
    protected Integer maxBufferSize = MAX_BUFFER_SIZE_EDEFAULT;
    protected boolean maxBufferSizeESet;
    protected static final Integer MAX_FC_WAIT_EDEFAULT = new Integer(0);
    protected Integer maxFcWait = MAX_FC_WAIT_EDEFAULT;
    protected boolean maxFcWaitESet;
    protected static final Integer MAX_FR_IF_EDEFAULT = new Integer(0);
    protected Integer maxFrIf = MAX_FR_IF_EDEFAULT;
    protected boolean maxFrIfESet;
    protected static final Integer MAX_NUMBER_OF_NPDU_PER_CYCLE_EDEFAULT = new Integer(0);
    protected Integer maxNumberOfNpduPerCycle = MAX_NUMBER_OF_NPDU_PER_CYCLE_EDEFAULT;
    protected boolean maxNumberOfNpduPerCycleESet;
    protected static final Integer MAX_RETRIES_EDEFAULT = new Integer(0);
    protected Integer maxRetries = MAX_RETRIES_EDEFAULT;
    protected boolean maxRetriesESet;
    protected static final Integer SEPARATION_CYCLE_EXPONENT_EDEFAULT = new Integer(0);
    protected Integer separationCycleExponent = SEPARATION_CYCLE_EXPONENT_EDEFAULT;
    protected boolean separationCycleExponentESet;
    protected static final Double TIME_BR_EDEFAULT = new Double(0.0);
    protected Double timeBr = TIME_BR_EDEFAULT;
    protected boolean timeBrESet;
    protected static final Double TIME_BUFFER_EDEFAULT = new Double(0.0);
    protected Double timeBuffer = TIME_BUFFER_EDEFAULT;
    protected boolean timeBufferESet;
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

    protected FlexrayIsoTpConnectionControlImpl() {
    }

    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.FLEXRAY_ISO_TP_CONNECTION_CONTROL;
    }

    public FlexrayPhysicalChannel getFlexrayPhysicalChannel() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (FlexrayPhysicalChannel)this.eContainer();
    }

    public NotificationChain basicSetFlexrayPhysicalChannel(FlexrayPhysicalChannel newFlexrayPhysicalChannel, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFlexrayPhysicalChannel, 17, msgs);
        return msgs;
    }

    public void setFlexrayPhysicalChannel(FlexrayPhysicalChannel newFlexrayPhysicalChannel) {
        if (newFlexrayPhysicalChannel != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newFlexrayPhysicalChannel != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFlexrayPhysicalChannel)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFlexrayPhysicalChannel != null) {
                msgs = ((InternalEObject)newFlexrayPhysicalChannel).eInverseAdd((InternalEObject)this, 26, FlexrayPhysicalChannel.class, msgs);
            }
            if ((msgs = this.basicSetFlexrayPhysicalChannel(newFlexrayPhysicalChannel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newFlexrayPhysicalChannel, (Object)newFlexrayPhysicalChannel));
        }
    }

    public TpAckType getAckType() {
        return this.ackType;
    }

    public void setAckType(TpAckType newAckType) {
        TpAckType oldAckType = this.ackType;
        this.ackType = newAckType == null ? ACK_TYPE_EDEFAULT : newAckType;
        boolean oldAckTypeESet = this.ackTypeESet;
        this.ackTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldAckType, (Object)this.ackType, !oldAckTypeESet));
        }
    }

    public void unsetAckType() {
        TpAckType oldAckType = this.ackType;
        boolean oldAckTypeESet = this.ackTypeESet;
        this.ackType = ACK_TYPE_EDEFAULT;
        this.ackTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldAckType, (Object)ACK_TYPE_EDEFAULT, oldAckTypeESet));
        }
    }

    public boolean isSetAckType() {
        return this.ackTypeESet;
    }

    public Integer getMaxAr() {
        return this.maxAr;
    }

    public void setMaxAr(Integer newMaxAr) {
        Integer oldMaxAr = this.maxAr;
        this.maxAr = newMaxAr;
        boolean oldMaxArESet = this.maxArESet;
        this.maxArESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldMaxAr, (Object)this.maxAr, !oldMaxArESet));
        }
    }

    public void unsetMaxAr() {
        Integer oldMaxAr = this.maxAr;
        boolean oldMaxArESet = this.maxArESet;
        this.maxAr = MAX_AR_EDEFAULT;
        this.maxArESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldMaxAr, (Object)MAX_AR_EDEFAULT, oldMaxArESet));
        }
    }

    public boolean isSetMaxAr() {
        return this.maxArESet;
    }

    public Integer getMaxAs() {
        return this.maxAs;
    }

    public void setMaxAs(Integer newMaxAs) {
        Integer oldMaxAs = this.maxAs;
        this.maxAs = newMaxAs;
        boolean oldMaxAsESet = this.maxAsESet;
        this.maxAsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldMaxAs, (Object)this.maxAs, !oldMaxAsESet));
        }
    }

    public void unsetMaxAs() {
        Integer oldMaxAs = this.maxAs;
        boolean oldMaxAsESet = this.maxAsESet;
        this.maxAs = MAX_AS_EDEFAULT;
        this.maxAsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldMaxAs, (Object)MAX_AS_EDEFAULT, oldMaxAsESet));
        }
    }

    public boolean isSetMaxAs() {
        return this.maxAsESet;
    }

    public Integer getMaxBufferSize() {
        return this.maxBufferSize;
    }

    public void setMaxBufferSize(Integer newMaxBufferSize) {
        Integer oldMaxBufferSize = this.maxBufferSize;
        this.maxBufferSize = newMaxBufferSize;
        boolean oldMaxBufferSizeESet = this.maxBufferSizeESet;
        this.maxBufferSizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldMaxBufferSize, (Object)this.maxBufferSize, !oldMaxBufferSizeESet));
        }
    }

    public void unsetMaxBufferSize() {
        Integer oldMaxBufferSize = this.maxBufferSize;
        boolean oldMaxBufferSizeESet = this.maxBufferSizeESet;
        this.maxBufferSize = MAX_BUFFER_SIZE_EDEFAULT;
        this.maxBufferSizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldMaxBufferSize, (Object)MAX_BUFFER_SIZE_EDEFAULT, oldMaxBufferSizeESet));
        }
    }

    public boolean isSetMaxBufferSize() {
        return this.maxBufferSizeESet;
    }

    public Integer getMaxFcWait() {
        return this.maxFcWait;
    }

    public void setMaxFcWait(Integer newMaxFcWait) {
        Integer oldMaxFcWait = this.maxFcWait;
        this.maxFcWait = newMaxFcWait;
        boolean oldMaxFcWaitESet = this.maxFcWaitESet;
        this.maxFcWaitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldMaxFcWait, (Object)this.maxFcWait, !oldMaxFcWaitESet));
        }
    }

    public void unsetMaxFcWait() {
        Integer oldMaxFcWait = this.maxFcWait;
        boolean oldMaxFcWaitESet = this.maxFcWaitESet;
        this.maxFcWait = MAX_FC_WAIT_EDEFAULT;
        this.maxFcWaitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldMaxFcWait, (Object)MAX_FC_WAIT_EDEFAULT, oldMaxFcWaitESet));
        }
    }

    public boolean isSetMaxFcWait() {
        return this.maxFcWaitESet;
    }

    public Integer getMaxFrIf() {
        return this.maxFrIf;
    }

    public void setMaxFrIf(Integer newMaxFrIf) {
        Integer oldMaxFrIf = this.maxFrIf;
        this.maxFrIf = newMaxFrIf;
        boolean oldMaxFrIfESet = this.maxFrIfESet;
        this.maxFrIfESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldMaxFrIf, (Object)this.maxFrIf, !oldMaxFrIfESet));
        }
    }

    public void unsetMaxFrIf() {
        Integer oldMaxFrIf = this.maxFrIf;
        boolean oldMaxFrIfESet = this.maxFrIfESet;
        this.maxFrIf = MAX_FR_IF_EDEFAULT;
        this.maxFrIfESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldMaxFrIf, (Object)MAX_FR_IF_EDEFAULT, oldMaxFrIfESet));
        }
    }

    public boolean isSetMaxFrIf() {
        return this.maxFrIfESet;
    }

    public Integer getMaxNumberOfNpduPerCycle() {
        return this.maxNumberOfNpduPerCycle;
    }

    public void setMaxNumberOfNpduPerCycle(Integer newMaxNumberOfNpduPerCycle) {
        Integer oldMaxNumberOfNpduPerCycle = this.maxNumberOfNpduPerCycle;
        this.maxNumberOfNpduPerCycle = newMaxNumberOfNpduPerCycle;
        boolean oldMaxNumberOfNpduPerCycleESet = this.maxNumberOfNpduPerCycleESet;
        this.maxNumberOfNpduPerCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldMaxNumberOfNpduPerCycle, (Object)this.maxNumberOfNpduPerCycle, !oldMaxNumberOfNpduPerCycleESet));
        }
    }

    public void unsetMaxNumberOfNpduPerCycle() {
        Integer oldMaxNumberOfNpduPerCycle = this.maxNumberOfNpduPerCycle;
        boolean oldMaxNumberOfNpduPerCycleESet = this.maxNumberOfNpduPerCycleESet;
        this.maxNumberOfNpduPerCycle = MAX_NUMBER_OF_NPDU_PER_CYCLE_EDEFAULT;
        this.maxNumberOfNpduPerCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldMaxNumberOfNpduPerCycle, (Object)MAX_NUMBER_OF_NPDU_PER_CYCLE_EDEFAULT, oldMaxNumberOfNpduPerCycleESet));
        }
    }

    public boolean isSetMaxNumberOfNpduPerCycle() {
        return this.maxNumberOfNpduPerCycleESet;
    }

    public Integer getMaxRetries() {
        return this.maxRetries;
    }

    public void setMaxRetries(Integer newMaxRetries) {
        Integer oldMaxRetries = this.maxRetries;
        this.maxRetries = newMaxRetries;
        boolean oldMaxRetriesESet = this.maxRetriesESet;
        this.maxRetriesESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldMaxRetries, (Object)this.maxRetries, !oldMaxRetriesESet));
        }
    }

    public void unsetMaxRetries() {
        Integer oldMaxRetries = this.maxRetries;
        boolean oldMaxRetriesESet = this.maxRetriesESet;
        this.maxRetries = MAX_RETRIES_EDEFAULT;
        this.maxRetriesESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldMaxRetries, (Object)MAX_RETRIES_EDEFAULT, oldMaxRetriesESet));
        }
    }

    public boolean isSetMaxRetries() {
        return this.maxRetriesESet;
    }

    public Integer getSeparationCycleExponent() {
        return this.separationCycleExponent;
    }

    public void setSeparationCycleExponent(Integer newSeparationCycleExponent) {
        Integer oldSeparationCycleExponent = this.separationCycleExponent;
        this.separationCycleExponent = newSeparationCycleExponent;
        boolean oldSeparationCycleExponentESet = this.separationCycleExponentESet;
        this.separationCycleExponentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldSeparationCycleExponent, (Object)this.separationCycleExponent, !oldSeparationCycleExponentESet));
        }
    }

    public void unsetSeparationCycleExponent() {
        Integer oldSeparationCycleExponent = this.separationCycleExponent;
        boolean oldSeparationCycleExponentESet = this.separationCycleExponentESet;
        this.separationCycleExponent = SEPARATION_CYCLE_EXPONENT_EDEFAULT;
        this.separationCycleExponentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldSeparationCycleExponent, (Object)SEPARATION_CYCLE_EXPONENT_EDEFAULT, oldSeparationCycleExponentESet));
        }
    }

    public boolean isSetSeparationCycleExponent() {
        return this.separationCycleExponentESet;
    }

    public Double getTimeBr() {
        return this.timeBr;
    }

    public void setTimeBr(Double newTimeBr) {
        Double oldTimeBr = this.timeBr;
        this.timeBr = newTimeBr;
        boolean oldTimeBrESet = this.timeBrESet;
        this.timeBrESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldTimeBr, (Object)this.timeBr, !oldTimeBrESet));
        }
    }

    public void unsetTimeBr() {
        Double oldTimeBr = this.timeBr;
        boolean oldTimeBrESet = this.timeBrESet;
        this.timeBr = TIME_BR_EDEFAULT;
        this.timeBrESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldTimeBr, (Object)TIME_BR_EDEFAULT, oldTimeBrESet));
        }
    }

    public boolean isSetTimeBr() {
        return this.timeBrESet;
    }

    public Double getTimeBuffer() {
        return this.timeBuffer;
    }

    public void setTimeBuffer(Double newTimeBuffer) {
        Double oldTimeBuffer = this.timeBuffer;
        this.timeBuffer = newTimeBuffer;
        boolean oldTimeBufferESet = this.timeBufferESet;
        this.timeBufferESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldTimeBuffer, (Object)this.timeBuffer, !oldTimeBufferESet));
        }
    }

    public void unsetTimeBuffer() {
        Double oldTimeBuffer = this.timeBuffer;
        boolean oldTimeBufferESet = this.timeBufferESet;
        this.timeBuffer = TIME_BUFFER_EDEFAULT;
        this.timeBufferESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldTimeBuffer, (Object)TIME_BUFFER_EDEFAULT, oldTimeBufferESet));
        }
    }

    public boolean isSetTimeBuffer() {
        return this.timeBufferESet;
    }

    public Double getTimeFrIf() {
        return this.timeFrIf;
    }

    public void setTimeFrIf(Double newTimeFrIf) {
        Double oldTimeFrIf = this.timeFrIf;
        this.timeFrIf = newTimeFrIf;
        boolean oldTimeFrIfESet = this.timeFrIfESet;
        this.timeFrIfESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldTimeFrIf, (Object)this.timeFrIf, !oldTimeFrIfESet));
        }
    }

    public void unsetTimeFrIf() {
        Double oldTimeFrIf = this.timeFrIf;
        boolean oldTimeFrIfESet = this.timeFrIfESet;
        this.timeFrIf = TIME_FR_IF_EDEFAULT;
        this.timeFrIfESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldTimeFrIf, (Object)TIME_FR_IF_EDEFAULT, oldTimeFrIfESet));
        }
    }

    public boolean isSetTimeFrIf() {
        return this.timeFrIfESet;
    }

    public Double getTimeoutAr() {
        return this.timeoutAr;
    }

    public void setTimeoutAr(Double newTimeoutAr) {
        Double oldTimeoutAr = this.timeoutAr;
        this.timeoutAr = newTimeoutAr;
        boolean oldTimeoutArESet = this.timeoutArESet;
        this.timeoutArESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldTimeoutAr, (Object)this.timeoutAr, !oldTimeoutArESet));
        }
    }

    public void unsetTimeoutAr() {
        Double oldTimeoutAr = this.timeoutAr;
        boolean oldTimeoutArESet = this.timeoutArESet;
        this.timeoutAr = TIMEOUT_AR_EDEFAULT;
        this.timeoutArESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldTimeoutAr, (Object)TIMEOUT_AR_EDEFAULT, oldTimeoutArESet));
        }
    }

    public boolean isSetTimeoutAr() {
        return this.timeoutArESet;
    }

    public Double getTimeoutAs() {
        return this.timeoutAs;
    }

    public void setTimeoutAs(Double newTimeoutAs) {
        Double oldTimeoutAs = this.timeoutAs;
        this.timeoutAs = newTimeoutAs;
        boolean oldTimeoutAsESet = this.timeoutAsESet;
        this.timeoutAsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldTimeoutAs, (Object)this.timeoutAs, !oldTimeoutAsESet));
        }
    }

    public void unsetTimeoutAs() {
        Double oldTimeoutAs = this.timeoutAs;
        boolean oldTimeoutAsESet = this.timeoutAsESet;
        this.timeoutAs = TIMEOUT_AS_EDEFAULT;
        this.timeoutAsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldTimeoutAs, (Object)TIMEOUT_AS_EDEFAULT, oldTimeoutAsESet));
        }
    }

    public boolean isSetTimeoutAs() {
        return this.timeoutAsESet;
    }

    public Double getTimeoutBs() {
        return this.timeoutBs;
    }

    public void setTimeoutBs(Double newTimeoutBs) {
        Double oldTimeoutBs = this.timeoutBs;
        this.timeoutBs = newTimeoutBs;
        boolean oldTimeoutBsESet = this.timeoutBsESet;
        this.timeoutBsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldTimeoutBs, (Object)this.timeoutBs, !oldTimeoutBsESet));
        }
    }

    public void unsetTimeoutBs() {
        Double oldTimeoutBs = this.timeoutBs;
        boolean oldTimeoutBsESet = this.timeoutBsESet;
        this.timeoutBs = TIMEOUT_BS_EDEFAULT;
        this.timeoutBsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldTimeoutBs, (Object)TIMEOUT_BS_EDEFAULT, oldTimeoutBsESet));
        }
    }

    public boolean isSetTimeoutBs() {
        return this.timeoutBsESet;
    }

    public Double getTimeoutCr() {
        return this.timeoutCr;
    }

    public void setTimeoutCr(Double newTimeoutCr) {
        Double oldTimeoutCr = this.timeoutCr;
        this.timeoutCr = newTimeoutCr;
        boolean oldTimeoutCrESet = this.timeoutCrESet;
        this.timeoutCrESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldTimeoutCr, (Object)this.timeoutCr, !oldTimeoutCrESet));
        }
    }

    public void unsetTimeoutCr() {
        Double oldTimeoutCr = this.timeoutCr;
        boolean oldTimeoutCrESet = this.timeoutCrESet;
        this.timeoutCr = TIMEOUT_CR_EDEFAULT;
        this.timeoutCrESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldTimeoutCr, (Object)TIMEOUT_CR_EDEFAULT, oldTimeoutCrESet));
        }
    }

    public boolean isSetTimeoutCr() {
        return this.timeoutCrESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFlexrayPhysicalChannel((FlexrayPhysicalChannel)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetFlexrayPhysicalChannel(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 26, FlexrayPhysicalChannel.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getFlexrayPhysicalChannel();
            }
            case 18: {
                return this.getAckType();
            }
            case 19: {
                return this.getMaxAr();
            }
            case 20: {
                return this.getMaxAs();
            }
            case 21: {
                return this.getMaxBufferSize();
            }
            case 22: {
                return this.getMaxFcWait();
            }
            case 23: {
                return this.getMaxFrIf();
            }
            case 24: {
                return this.getMaxNumberOfNpduPerCycle();
            }
            case 25: {
                return this.getMaxRetries();
            }
            case 26: {
                return this.getSeparationCycleExponent();
            }
            case 27: {
                return this.getTimeBr();
            }
            case 28: {
                return this.getTimeBuffer();
            }
            case 29: {
                return this.getTimeFrIf();
            }
            case 30: {
                return this.getTimeoutAr();
            }
            case 31: {
                return this.getTimeoutAs();
            }
            case 32: {
                return this.getTimeoutBs();
            }
            case 33: {
                return this.getTimeoutCr();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setFlexrayPhysicalChannel((FlexrayPhysicalChannel)newValue);
                return;
            }
            case 18: {
                this.setAckType((TpAckType)((Object)newValue));
                return;
            }
            case 19: {
                this.setMaxAr((Integer)newValue);
                return;
            }
            case 20: {
                this.setMaxAs((Integer)newValue);
                return;
            }
            case 21: {
                this.setMaxBufferSize((Integer)newValue);
                return;
            }
            case 22: {
                this.setMaxFcWait((Integer)newValue);
                return;
            }
            case 23: {
                this.setMaxFrIf((Integer)newValue);
                return;
            }
            case 24: {
                this.setMaxNumberOfNpduPerCycle((Integer)newValue);
                return;
            }
            case 25: {
                this.setMaxRetries((Integer)newValue);
                return;
            }
            case 26: {
                this.setSeparationCycleExponent((Integer)newValue);
                return;
            }
            case 27: {
                this.setTimeBr((Double)newValue);
                return;
            }
            case 28: {
                this.setTimeBuffer((Double)newValue);
                return;
            }
            case 29: {
                this.setTimeFrIf((Double)newValue);
                return;
            }
            case 30: {
                this.setTimeoutAr((Double)newValue);
                return;
            }
            case 31: {
                this.setTimeoutAs((Double)newValue);
                return;
            }
            case 32: {
                this.setTimeoutBs((Double)newValue);
                return;
            }
            case 33: {
                this.setTimeoutCr((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setFlexrayPhysicalChannel(null);
                return;
            }
            case 18: {
                this.unsetAckType();
                return;
            }
            case 19: {
                this.unsetMaxAr();
                return;
            }
            case 20: {
                this.unsetMaxAs();
                return;
            }
            case 21: {
                this.unsetMaxBufferSize();
                return;
            }
            case 22: {
                this.unsetMaxFcWait();
                return;
            }
            case 23: {
                this.unsetMaxFrIf();
                return;
            }
            case 24: {
                this.unsetMaxNumberOfNpduPerCycle();
                return;
            }
            case 25: {
                this.unsetMaxRetries();
                return;
            }
            case 26: {
                this.unsetSeparationCycleExponent();
                return;
            }
            case 27: {
                this.unsetTimeBr();
                return;
            }
            case 28: {
                this.unsetTimeBuffer();
                return;
            }
            case 29: {
                this.unsetTimeFrIf();
                return;
            }
            case 30: {
                this.unsetTimeoutAr();
                return;
            }
            case 31: {
                this.unsetTimeoutAs();
                return;
            }
            case 32: {
                this.unsetTimeoutBs();
                return;
            }
            case 33: {
                this.unsetTimeoutCr();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getFlexrayPhysicalChannel() != null;
            }
            case 18: {
                return this.isSetAckType();
            }
            case 19: {
                return this.isSetMaxAr();
            }
            case 20: {
                return this.isSetMaxAs();
            }
            case 21: {
                return this.isSetMaxBufferSize();
            }
            case 22: {
                return this.isSetMaxFcWait();
            }
            case 23: {
                return this.isSetMaxFrIf();
            }
            case 24: {
                return this.isSetMaxNumberOfNpduPerCycle();
            }
            case 25: {
                return this.isSetMaxRetries();
            }
            case 26: {
                return this.isSetSeparationCycleExponent();
            }
            case 27: {
                return this.isSetTimeBr();
            }
            case 28: {
                return this.isSetTimeBuffer();
            }
            case 29: {
                return this.isSetTimeFrIf();
            }
            case 30: {
                return this.isSetTimeoutAr();
            }
            case 31: {
                return this.isSetTimeoutAs();
            }
            case 32: {
                return this.isSetTimeoutBs();
            }
            case 33: {
                return this.isSetTimeoutCr();
            }
        }
        return super.eIsSet(featureID);
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
        result.append(", maxBufferSize: ");
        if (this.maxBufferSizeESet) {
            result.append(this.maxBufferSize);
        } else {
            result.append("<unset>");
        }
        result.append(", maxFcWait: ");
        if (this.maxFcWaitESet) {
            result.append(this.maxFcWait);
        } else {
            result.append("<unset>");
        }
        result.append(", maxFrIf: ");
        if (this.maxFrIfESet) {
            result.append(this.maxFrIf);
        } else {
            result.append("<unset>");
        }
        result.append(", maxNumberOfNpduPerCycle: ");
        if (this.maxNumberOfNpduPerCycleESet) {
            result.append(this.maxNumberOfNpduPerCycle);
        } else {
            result.append("<unset>");
        }
        result.append(", maxRetries: ");
        if (this.maxRetriesESet) {
            result.append(this.maxRetries);
        } else {
            result.append("<unset>");
        }
        result.append(", separationCycleExponent: ");
        if (this.separationCycleExponentESet) {
            result.append(this.separationCycleExponent);
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
        result.append(')');
        return result.toString();
    }
}

