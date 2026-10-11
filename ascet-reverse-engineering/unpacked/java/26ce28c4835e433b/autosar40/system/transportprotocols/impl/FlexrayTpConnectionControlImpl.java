/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.transportprotocols.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.transportprotocols.FlexrayTpConfig;
import autosar40.system.transportprotocols.FlexrayTpConnectionControl;
import autosar40.system.transportprotocols.TpAckType;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class FlexrayTpConnectionControlImpl
extends IdentifiableImpl
implements FlexrayTpConnectionControl {
    protected static final TpAckType ACK_TYPE_EDEFAULT = TpAckType.NO_ACK;
    protected TpAckType ackType = ACK_TYPE_EDEFAULT;
    protected boolean ackTypeESet;
    protected static final IntegerDatatype MAX_AR_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype maxAr = MAX_AR_EDEFAULT.clone();
    protected boolean maxArESet;
    protected static final IntegerDatatype MAX_AS_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype maxAs = MAX_AS_EDEFAULT.clone();
    protected boolean maxAsESet;
    protected static final IntegerDatatype MAX_BUFFER_SIZE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype maxBufferSize = MAX_BUFFER_SIZE_EDEFAULT.clone();
    protected boolean maxBufferSizeESet;
    protected static final IntegerDatatype MAX_FC_WAIT_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype maxFcWait = MAX_FC_WAIT_EDEFAULT.clone();
    protected boolean maxFcWaitESet;
    protected static final IntegerDatatype MAX_FR_IF_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype maxFrIf = MAX_FR_IF_EDEFAULT.clone();
    protected boolean maxFrIfESet;
    protected static final IntegerDatatype MAX_NUMBER_OF_NPDU_PER_CYCLE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype maxNumberOfNpduPerCycle = MAX_NUMBER_OF_NPDU_PER_CYCLE_EDEFAULT.clone();
    protected boolean maxNumberOfNpduPerCycleESet;
    protected static final IntegerDatatype MAX_RETRIES_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype maxRetries = MAX_RETRIES_EDEFAULT.clone();
    protected boolean maxRetriesESet;
    protected static final IntegerDatatype SEPARATION_CYCLE_EXPONENT_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype separationCycleExponent = SEPARATION_CYCLE_EXPONENT_EDEFAULT.clone();
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
    protected VariationPoint variationPoint;

    protected FlexrayTpConnectionControlImpl() {
    }

    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.FLEXRAY_TP_CONNECTION_CONTROL;
    }

    public FlexrayTpConfig getFlexrayTpConfig() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (FlexrayTpConfig)this.eContainer();
    }

    public NotificationChain basicSetFlexrayTpConfig(FlexrayTpConfig newFlexrayTpConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFlexrayTpConfig, 18, msgs);
        return msgs;
    }

    public void setFlexrayTpConfig(FlexrayTpConfig newFlexrayTpConfig) {
        if (newFlexrayTpConfig != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newFlexrayTpConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFlexrayTpConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFlexrayTpConfig != null) {
                msgs = ((InternalEObject)newFlexrayTpConfig).eInverseAdd((InternalEObject)this, 25, FlexrayTpConfig.class, msgs);
            }
            if ((msgs = this.basicSetFlexrayTpConfig(newFlexrayTpConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newFlexrayTpConfig, (Object)newFlexrayTpConfig));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldAckType, (Object)this.ackType, !oldAckTypeESet));
        }
    }

    public void unsetAckType() {
        TpAckType oldAckType = this.ackType;
        boolean oldAckTypeESet = this.ackTypeESet;
        this.ackType = ACK_TYPE_EDEFAULT;
        this.ackTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldAckType, (Object)ACK_TYPE_EDEFAULT, oldAckTypeESet));
        }
    }

    public boolean isSetAckType() {
        return this.ackTypeESet;
    }

    public Integer getMaxAr() {
        return (Integer)this.maxAr.basicGetValue();
    }

    public void setMaxAr(Integer newMaxAr) {
        Integer oldMaxAr = (Integer)this.maxAr.basicGetValue();
        this.maxAr.basicSetValue((Object)newMaxAr);
        boolean oldMaxArESet = this.maxArESet;
        this.maxArESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldMaxAr, (Object)newMaxAr, !oldMaxArESet));
        }
    }

    public void unsetMaxAr() {
        Integer oldMaxAr = (Integer)this.maxAr.basicGetValue();
        boolean oldMaxArESet = this.maxArESet;
        this.maxAr = MAX_AR_EDEFAULT.clone();
        this.maxArESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldMaxAr, (Object)MAX_AR_EDEFAULT, oldMaxArESet));
        }
    }

    public boolean isSetMaxAr() {
        return this.maxArESet;
    }

    public Integer getMaxAs() {
        return (Integer)this.maxAs.basicGetValue();
    }

    public void setMaxAs(Integer newMaxAs) {
        Integer oldMaxAs = (Integer)this.maxAs.basicGetValue();
        this.maxAs.basicSetValue((Object)newMaxAs);
        boolean oldMaxAsESet = this.maxAsESet;
        this.maxAsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldMaxAs, (Object)newMaxAs, !oldMaxAsESet));
        }
    }

    public void unsetMaxAs() {
        Integer oldMaxAs = (Integer)this.maxAs.basicGetValue();
        boolean oldMaxAsESet = this.maxAsESet;
        this.maxAs = MAX_AS_EDEFAULT.clone();
        this.maxAsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldMaxAs, (Object)MAX_AS_EDEFAULT, oldMaxAsESet));
        }
    }

    public boolean isSetMaxAs() {
        return this.maxAsESet;
    }

    public Integer getMaxBufferSize() {
        return (Integer)this.maxBufferSize.basicGetValue();
    }

    public void setMaxBufferSize(Integer newMaxBufferSize) {
        Integer oldMaxBufferSize = (Integer)this.maxBufferSize.basicGetValue();
        this.maxBufferSize.basicSetValue((Object)newMaxBufferSize);
        boolean oldMaxBufferSizeESet = this.maxBufferSizeESet;
        this.maxBufferSizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldMaxBufferSize, (Object)newMaxBufferSize, !oldMaxBufferSizeESet));
        }
    }

    public void unsetMaxBufferSize() {
        Integer oldMaxBufferSize = (Integer)this.maxBufferSize.basicGetValue();
        boolean oldMaxBufferSizeESet = this.maxBufferSizeESet;
        this.maxBufferSize = MAX_BUFFER_SIZE_EDEFAULT.clone();
        this.maxBufferSizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldMaxBufferSize, (Object)MAX_BUFFER_SIZE_EDEFAULT, oldMaxBufferSizeESet));
        }
    }

    public boolean isSetMaxBufferSize() {
        return this.maxBufferSizeESet;
    }

    public Integer getMaxFcWait() {
        return (Integer)this.maxFcWait.basicGetValue();
    }

    public void setMaxFcWait(Integer newMaxFcWait) {
        Integer oldMaxFcWait = (Integer)this.maxFcWait.basicGetValue();
        this.maxFcWait.basicSetValue((Object)newMaxFcWait);
        boolean oldMaxFcWaitESet = this.maxFcWaitESet;
        this.maxFcWaitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldMaxFcWait, (Object)newMaxFcWait, !oldMaxFcWaitESet));
        }
    }

    public void unsetMaxFcWait() {
        Integer oldMaxFcWait = (Integer)this.maxFcWait.basicGetValue();
        boolean oldMaxFcWaitESet = this.maxFcWaitESet;
        this.maxFcWait = MAX_FC_WAIT_EDEFAULT.clone();
        this.maxFcWaitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldMaxFcWait, (Object)MAX_FC_WAIT_EDEFAULT, oldMaxFcWaitESet));
        }
    }

    public boolean isSetMaxFcWait() {
        return this.maxFcWaitESet;
    }

    public Integer getMaxFrIf() {
        return (Integer)this.maxFrIf.basicGetValue();
    }

    public void setMaxFrIf(Integer newMaxFrIf) {
        Integer oldMaxFrIf = (Integer)this.maxFrIf.basicGetValue();
        this.maxFrIf.basicSetValue((Object)newMaxFrIf);
        boolean oldMaxFrIfESet = this.maxFrIfESet;
        this.maxFrIfESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldMaxFrIf, (Object)newMaxFrIf, !oldMaxFrIfESet));
        }
    }

    public void unsetMaxFrIf() {
        Integer oldMaxFrIf = (Integer)this.maxFrIf.basicGetValue();
        boolean oldMaxFrIfESet = this.maxFrIfESet;
        this.maxFrIf = MAX_FR_IF_EDEFAULT.clone();
        this.maxFrIfESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldMaxFrIf, (Object)MAX_FR_IF_EDEFAULT, oldMaxFrIfESet));
        }
    }

    public boolean isSetMaxFrIf() {
        return this.maxFrIfESet;
    }

    public Integer getMaxNumberOfNpduPerCycle() {
        return (Integer)this.maxNumberOfNpduPerCycle.basicGetValue();
    }

    public void setMaxNumberOfNpduPerCycle(Integer newMaxNumberOfNpduPerCycle) {
        Integer oldMaxNumberOfNpduPerCycle = (Integer)this.maxNumberOfNpduPerCycle.basicGetValue();
        this.maxNumberOfNpduPerCycle.basicSetValue((Object)newMaxNumberOfNpduPerCycle);
        boolean oldMaxNumberOfNpduPerCycleESet = this.maxNumberOfNpduPerCycleESet;
        this.maxNumberOfNpduPerCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldMaxNumberOfNpduPerCycle, (Object)newMaxNumberOfNpduPerCycle, !oldMaxNumberOfNpduPerCycleESet));
        }
    }

    public void unsetMaxNumberOfNpduPerCycle() {
        Integer oldMaxNumberOfNpduPerCycle = (Integer)this.maxNumberOfNpduPerCycle.basicGetValue();
        boolean oldMaxNumberOfNpduPerCycleESet = this.maxNumberOfNpduPerCycleESet;
        this.maxNumberOfNpduPerCycle = MAX_NUMBER_OF_NPDU_PER_CYCLE_EDEFAULT.clone();
        this.maxNumberOfNpduPerCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldMaxNumberOfNpduPerCycle, (Object)MAX_NUMBER_OF_NPDU_PER_CYCLE_EDEFAULT, oldMaxNumberOfNpduPerCycleESet));
        }
    }

    public boolean isSetMaxNumberOfNpduPerCycle() {
        return this.maxNumberOfNpduPerCycleESet;
    }

    public Integer getMaxRetries() {
        return (Integer)this.maxRetries.basicGetValue();
    }

    public void setMaxRetries(Integer newMaxRetries) {
        Integer oldMaxRetries = (Integer)this.maxRetries.basicGetValue();
        this.maxRetries.basicSetValue((Object)newMaxRetries);
        boolean oldMaxRetriesESet = this.maxRetriesESet;
        this.maxRetriesESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldMaxRetries, (Object)newMaxRetries, !oldMaxRetriesESet));
        }
    }

    public void unsetMaxRetries() {
        Integer oldMaxRetries = (Integer)this.maxRetries.basicGetValue();
        boolean oldMaxRetriesESet = this.maxRetriesESet;
        this.maxRetries = MAX_RETRIES_EDEFAULT.clone();
        this.maxRetriesESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldMaxRetries, (Object)MAX_RETRIES_EDEFAULT, oldMaxRetriesESet));
        }
    }

    public boolean isSetMaxRetries() {
        return this.maxRetriesESet;
    }

    public Integer getSeparationCycleExponent() {
        return (Integer)this.separationCycleExponent.basicGetValue();
    }

    public void setSeparationCycleExponent(Integer newSeparationCycleExponent) {
        Integer oldSeparationCycleExponent = (Integer)this.separationCycleExponent.basicGetValue();
        this.separationCycleExponent.basicSetValue((Object)newSeparationCycleExponent);
        boolean oldSeparationCycleExponentESet = this.separationCycleExponentESet;
        this.separationCycleExponentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldSeparationCycleExponent, (Object)newSeparationCycleExponent, !oldSeparationCycleExponentESet));
        }
    }

    public void unsetSeparationCycleExponent() {
        Integer oldSeparationCycleExponent = (Integer)this.separationCycleExponent.basicGetValue();
        boolean oldSeparationCycleExponentESet = this.separationCycleExponentESet;
        this.separationCycleExponent = SEPARATION_CYCLE_EXPONENT_EDEFAULT.clone();
        this.separationCycleExponentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldSeparationCycleExponent, (Object)SEPARATION_CYCLE_EXPONENT_EDEFAULT, oldSeparationCycleExponentESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldTimeBr, (Object)this.timeBr, !oldTimeBrESet));
        }
    }

    public void unsetTimeBr() {
        Double oldTimeBr = this.timeBr;
        boolean oldTimeBrESet = this.timeBrESet;
        this.timeBr = TIME_BR_EDEFAULT;
        this.timeBrESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldTimeBr, (Object)TIME_BR_EDEFAULT, oldTimeBrESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldTimeBuffer, (Object)this.timeBuffer, !oldTimeBufferESet));
        }
    }

    public void unsetTimeBuffer() {
        Double oldTimeBuffer = this.timeBuffer;
        boolean oldTimeBufferESet = this.timeBufferESet;
        this.timeBuffer = TIME_BUFFER_EDEFAULT;
        this.timeBufferESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldTimeBuffer, (Object)TIME_BUFFER_EDEFAULT, oldTimeBufferESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldTimeFrIf, (Object)this.timeFrIf, !oldTimeFrIfESet));
        }
    }

    public void unsetTimeFrIf() {
        Double oldTimeFrIf = this.timeFrIf;
        boolean oldTimeFrIfESet = this.timeFrIfESet;
        this.timeFrIf = TIME_FR_IF_EDEFAULT;
        this.timeFrIfESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldTimeFrIf, (Object)TIME_FR_IF_EDEFAULT, oldTimeFrIfESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldTimeoutAr, (Object)this.timeoutAr, !oldTimeoutArESet));
        }
    }

    public void unsetTimeoutAr() {
        Double oldTimeoutAr = this.timeoutAr;
        boolean oldTimeoutArESet = this.timeoutArESet;
        this.timeoutAr = TIMEOUT_AR_EDEFAULT;
        this.timeoutArESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldTimeoutAr, (Object)TIMEOUT_AR_EDEFAULT, oldTimeoutArESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldTimeoutAs, (Object)this.timeoutAs, !oldTimeoutAsESet));
        }
    }

    public void unsetTimeoutAs() {
        Double oldTimeoutAs = this.timeoutAs;
        boolean oldTimeoutAsESet = this.timeoutAsESet;
        this.timeoutAs = TIMEOUT_AS_EDEFAULT;
        this.timeoutAsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldTimeoutAs, (Object)TIMEOUT_AS_EDEFAULT, oldTimeoutAsESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldTimeoutBs, (Object)this.timeoutBs, !oldTimeoutBsESet));
        }
    }

    public void unsetTimeoutBs() {
        Double oldTimeoutBs = this.timeoutBs;
        boolean oldTimeoutBsESet = this.timeoutBsESet;
        this.timeoutBs = TIMEOUT_BS_EDEFAULT;
        this.timeoutBsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldTimeoutBs, (Object)TIMEOUT_BS_EDEFAULT, oldTimeoutBsESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldTimeoutCr, (Object)this.timeoutCr, !oldTimeoutCrESet));
        }
    }

    public void unsetTimeoutCr() {
        Double oldTimeoutCr = this.timeoutCr;
        boolean oldTimeoutCrESet = this.timeoutCrESet;
        this.timeoutCr = TIMEOUT_CR_EDEFAULT;
        this.timeoutCrESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldTimeoutCr, (Object)TIMEOUT_CR_EDEFAULT, oldTimeoutCrESet));
        }
    }

    public boolean isSetTimeoutCr() {
        return this.timeoutCrESet;
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -36, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -36, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public IntegerDatatype getMaxArData() {
        return this.maxAr.clone();
    }

    public void setMaxArData(IntegerDatatype newMaxAr) {
        this.maxAr.setRadix((int)newMaxAr.getRadix());
        this.maxAr.setNoOfDigits((int)newMaxAr.getNoOfDigits());
        this.setMaxAr(newMaxAr.getValue());
    }

    public IntegerDatatype getMaxAsData() {
        return this.maxAs.clone();
    }

    public void setMaxAsData(IntegerDatatype newMaxAs) {
        this.maxAs.setRadix((int)newMaxAs.getRadix());
        this.maxAs.setNoOfDigits((int)newMaxAs.getNoOfDigits());
        this.setMaxAs(newMaxAs.getValue());
    }

    public IntegerDatatype getMaxBufferSizeData() {
        return this.maxBufferSize.clone();
    }

    public void setMaxBufferSizeData(IntegerDatatype newMaxBufferSize) {
        this.maxBufferSize.setRadix((int)newMaxBufferSize.getRadix());
        this.maxBufferSize.setNoOfDigits((int)newMaxBufferSize.getNoOfDigits());
        this.setMaxBufferSize(newMaxBufferSize.getValue());
    }

    public IntegerDatatype getMaxFcWaitData() {
        return this.maxFcWait.clone();
    }

    public void setMaxFcWaitData(IntegerDatatype newMaxFcWait) {
        this.maxFcWait.setRadix((int)newMaxFcWait.getRadix());
        this.maxFcWait.setNoOfDigits((int)newMaxFcWait.getNoOfDigits());
        this.setMaxFcWait(newMaxFcWait.getValue());
    }

    public IntegerDatatype getMaxFrIfData() {
        return this.maxFrIf.clone();
    }

    public void setMaxFrIfData(IntegerDatatype newMaxFrIf) {
        this.maxFrIf.setRadix((int)newMaxFrIf.getRadix());
        this.maxFrIf.setNoOfDigits((int)newMaxFrIf.getNoOfDigits());
        this.setMaxFrIf(newMaxFrIf.getValue());
    }

    public IntegerDatatype getMaxNumberOfNpduPerCycleData() {
        return this.maxNumberOfNpduPerCycle.clone();
    }

    public void setMaxNumberOfNpduPerCycleData(IntegerDatatype newMaxNumberOfNpduPerCycle) {
        this.maxNumberOfNpduPerCycle.setRadix((int)newMaxNumberOfNpduPerCycle.getRadix());
        this.maxNumberOfNpduPerCycle.setNoOfDigits((int)newMaxNumberOfNpduPerCycle.getNoOfDigits());
        this.setMaxNumberOfNpduPerCycle(newMaxNumberOfNpduPerCycle.getValue());
    }

    public IntegerDatatype getMaxRetriesData() {
        return this.maxRetries.clone();
    }

    public void setMaxRetriesData(IntegerDatatype newMaxRetries) {
        this.maxRetries.setRadix((int)newMaxRetries.getRadix());
        this.maxRetries.setNoOfDigits((int)newMaxRetries.getNoOfDigits());
        this.setMaxRetries(newMaxRetries.getValue());
    }

    public IntegerDatatype getSeparationCycleExponentData() {
        return this.separationCycleExponent.clone();
    }

    public void setSeparationCycleExponentData(IntegerDatatype newSeparationCycleExponent) {
        this.separationCycleExponent.setRadix((int)newSeparationCycleExponent.getRadix());
        this.separationCycleExponent.setNoOfDigits((int)newSeparationCycleExponent.getNoOfDigits());
        this.setSeparationCycleExponent(newSeparationCycleExponent.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFlexrayTpConfig((FlexrayTpConfig)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetFlexrayTpConfig(null, msgs);
            }
            case 35: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, FlexrayTpConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getFlexrayTpConfig();
            }
            case 19: {
                return this.getAckType();
            }
            case 20: {
                return this.getMaxAr();
            }
            case 21: {
                return this.getMaxAs();
            }
            case 22: {
                return this.getMaxBufferSize();
            }
            case 23: {
                return this.getMaxFcWait();
            }
            case 24: {
                return this.getMaxFrIf();
            }
            case 25: {
                return this.getMaxNumberOfNpduPerCycle();
            }
            case 26: {
                return this.getMaxRetries();
            }
            case 27: {
                return this.getSeparationCycleExponent();
            }
            case 28: {
                return this.getTimeBr();
            }
            case 29: {
                return this.getTimeBuffer();
            }
            case 30: {
                return this.getTimeFrIf();
            }
            case 31: {
                return this.getTimeoutAr();
            }
            case 32: {
                return this.getTimeoutAs();
            }
            case 33: {
                return this.getTimeoutBs();
            }
            case 34: {
                return this.getTimeoutCr();
            }
            case 35: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setFlexrayTpConfig((FlexrayTpConfig)newValue);
                return;
            }
            case 19: {
                this.setAckType((TpAckType)((Object)newValue));
                return;
            }
            case 20: {
                this.setMaxAr((Integer)newValue);
                return;
            }
            case 21: {
                this.setMaxAs((Integer)newValue);
                return;
            }
            case 22: {
                this.setMaxBufferSize((Integer)newValue);
                return;
            }
            case 23: {
                this.setMaxFcWait((Integer)newValue);
                return;
            }
            case 24: {
                this.setMaxFrIf((Integer)newValue);
                return;
            }
            case 25: {
                this.setMaxNumberOfNpduPerCycle((Integer)newValue);
                return;
            }
            case 26: {
                this.setMaxRetries((Integer)newValue);
                return;
            }
            case 27: {
                this.setSeparationCycleExponent((Integer)newValue);
                return;
            }
            case 28: {
                this.setTimeBr((Double)newValue);
                return;
            }
            case 29: {
                this.setTimeBuffer((Double)newValue);
                return;
            }
            case 30: {
                this.setTimeFrIf((Double)newValue);
                return;
            }
            case 31: {
                this.setTimeoutAr((Double)newValue);
                return;
            }
            case 32: {
                this.setTimeoutAs((Double)newValue);
                return;
            }
            case 33: {
                this.setTimeoutBs((Double)newValue);
                return;
            }
            case 34: {
                this.setTimeoutCr((Double)newValue);
                return;
            }
            case 35: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setFlexrayTpConfig(null);
                return;
            }
            case 19: {
                this.unsetAckType();
                return;
            }
            case 20: {
                this.unsetMaxAr();
                return;
            }
            case 21: {
                this.unsetMaxAs();
                return;
            }
            case 22: {
                this.unsetMaxBufferSize();
                return;
            }
            case 23: {
                this.unsetMaxFcWait();
                return;
            }
            case 24: {
                this.unsetMaxFrIf();
                return;
            }
            case 25: {
                this.unsetMaxNumberOfNpduPerCycle();
                return;
            }
            case 26: {
                this.unsetMaxRetries();
                return;
            }
            case 27: {
                this.unsetSeparationCycleExponent();
                return;
            }
            case 28: {
                this.unsetTimeBr();
                return;
            }
            case 29: {
                this.unsetTimeBuffer();
                return;
            }
            case 30: {
                this.unsetTimeFrIf();
                return;
            }
            case 31: {
                this.unsetTimeoutAr();
                return;
            }
            case 32: {
                this.unsetTimeoutAs();
                return;
            }
            case 33: {
                this.unsetTimeoutBs();
                return;
            }
            case 34: {
                this.unsetTimeoutCr();
                return;
            }
            case 35: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getFlexrayTpConfig() != null;
            }
            case 19: {
                return this.isSetAckType();
            }
            case 20: {
                return this.isSetMaxAr();
            }
            case 21: {
                return this.isSetMaxAs();
            }
            case 22: {
                return this.isSetMaxBufferSize();
            }
            case 23: {
                return this.isSetMaxFcWait();
            }
            case 24: {
                return this.isSetMaxFrIf();
            }
            case 25: {
                return this.isSetMaxNumberOfNpduPerCycle();
            }
            case 26: {
                return this.isSetMaxRetries();
            }
            case 27: {
                return this.isSetSeparationCycleExponent();
            }
            case 28: {
                return this.isSetTimeBr();
            }
            case 29: {
                return this.isSetTimeBuffer();
            }
            case 30: {
                return this.isSetTimeFrIf();
            }
            case 31: {
                return this.isSetTimeoutAr();
            }
            case 32: {
                return this.isSetTimeoutAs();
            }
            case 33: {
                return this.isSetTimeoutBs();
            }
            case 34: {
                return this.isSetTimeoutCr();
            }
            case 35: {
                return this.variationPoint != null;
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

