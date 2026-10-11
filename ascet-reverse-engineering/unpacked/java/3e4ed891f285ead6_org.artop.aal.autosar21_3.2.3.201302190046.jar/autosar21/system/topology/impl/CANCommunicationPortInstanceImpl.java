/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.system.topology.impl;

import autosar21.system.topology.CANCommunicationPortInstance;
import autosar21.system.topology.CANCommunicationPortInstanceProtocolVersionEnum;
import autosar21.system.topology.TopologyPackage;
import autosar21.system.topology.impl.ECUCommunicationPortInstanceImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CANCommunicationPortInstanceImpl
extends ECUCommunicationPortInstanceImpl
implements CANCommunicationPortInstance {
    protected static final Integer BRP_EDEFAULT = new Integer(0);
    protected Integer brp = BRP_EDEFAULT;
    protected boolean brpESet;
    protected static final Double MAX_PERMITTED_PROCESSING_PERIOD_JITTER_EDEFAULT = new Double(0.0);
    protected Double maxPermittedProcessingPeriodJitter = MAX_PERMITTED_PROCESSING_PERIOD_JITTER_EDEFAULT;
    protected boolean maxPermittedProcessingPeriodJitterESet;
    protected static final Boolean PORT_TERMINATION_EDEFAULT = Boolean.FALSE;
    protected Boolean portTermination = PORT_TERMINATION_EDEFAULT;
    protected boolean portTerminationESet;
    protected static final CANCommunicationPortInstanceProtocolVersionEnum PROTOCOL_VERSION_EDEFAULT = CANCommunicationPortInstanceProtocolVersionEnum._20A;
    protected CANCommunicationPortInstanceProtocolVersionEnum protocolVersion = PROTOCOL_VERSION_EDEFAULT;
    protected boolean protocolVersionESet;
    protected static final Double RECEIVE_PROCESSING_PERIOD_EDEFAULT = new Double(0.0);
    protected Double receiveProcessingPeriod = RECEIVE_PROCESSING_PERIOD_EDEFAULT;
    protected boolean receiveProcessingPeriodESet;
    protected static final Integer SYNC_JUMP_WIDTH_EDEFAULT = new Integer(0);
    protected Integer syncJumpWidth = SYNC_JUMP_WIDTH_EDEFAULT;
    protected boolean syncJumpWidthESet;
    protected static final Integer TIME_SEG0_EDEFAULT = new Integer(0);
    protected Integer timeSeg0 = TIME_SEG0_EDEFAULT;
    protected boolean timeSeg0ESet;
    protected static final Integer TIME_SEG1_EDEFAULT = new Integer(0);
    protected Integer timeSeg1 = TIME_SEG1_EDEFAULT;
    protected boolean timeSeg1ESet;
    protected static final Double TRANSMIT_PROCESSING_PERIOD_EDEFAULT = new Double(0.0);
    protected Double transmitProcessingPeriod = TRANSMIT_PROCESSING_PERIOD_EDEFAULT;
    protected boolean transmitProcessingPeriodESet;

    protected CANCommunicationPortInstanceImpl() {
    }

    protected EClass eStaticClass() {
        return TopologyPackage.Literals.CAN_COMMUNICATION_PORT_INSTANCE;
    }

    public Integer getBRP() {
        return this.brp;
    }

    public void setBRP(Integer newBRP) {
        Integer oldBRP = this.brp;
        this.brp = newBRP;
        boolean oldBRPESet = this.brpESet;
        this.brpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldBRP, (Object)this.brp, !oldBRPESet));
        }
    }

    public void unsetBRP() {
        Integer oldBRP = this.brp;
        boolean oldBRPESet = this.brpESet;
        this.brp = BRP_EDEFAULT;
        this.brpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldBRP, (Object)BRP_EDEFAULT, oldBRPESet));
        }
    }

    public boolean isSetBRP() {
        return this.brpESet;
    }

    public Double getMaxPermittedProcessingPeriodJitter() {
        return this.maxPermittedProcessingPeriodJitter;
    }

    public void setMaxPermittedProcessingPeriodJitter(Double newMaxPermittedProcessingPeriodJitter) {
        Double oldMaxPermittedProcessingPeriodJitter = this.maxPermittedProcessingPeriodJitter;
        this.maxPermittedProcessingPeriodJitter = newMaxPermittedProcessingPeriodJitter;
        boolean oldMaxPermittedProcessingPeriodJitterESet = this.maxPermittedProcessingPeriodJitterESet;
        this.maxPermittedProcessingPeriodJitterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldMaxPermittedProcessingPeriodJitter, (Object)this.maxPermittedProcessingPeriodJitter, !oldMaxPermittedProcessingPeriodJitterESet));
        }
    }

    public void unsetMaxPermittedProcessingPeriodJitter() {
        Double oldMaxPermittedProcessingPeriodJitter = this.maxPermittedProcessingPeriodJitter;
        boolean oldMaxPermittedProcessingPeriodJitterESet = this.maxPermittedProcessingPeriodJitterESet;
        this.maxPermittedProcessingPeriodJitter = MAX_PERMITTED_PROCESSING_PERIOD_JITTER_EDEFAULT;
        this.maxPermittedProcessingPeriodJitterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldMaxPermittedProcessingPeriodJitter, (Object)MAX_PERMITTED_PROCESSING_PERIOD_JITTER_EDEFAULT, oldMaxPermittedProcessingPeriodJitterESet));
        }
    }

    public boolean isSetMaxPermittedProcessingPeriodJitter() {
        return this.maxPermittedProcessingPeriodJitterESet;
    }

    public Boolean getPortTermination() {
        return this.portTermination;
    }

    public void setPortTermination(Boolean newPortTermination) {
        Boolean oldPortTermination = this.portTermination;
        this.portTermination = newPortTermination;
        boolean oldPortTerminationESet = this.portTerminationESet;
        this.portTerminationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldPortTermination, (Object)this.portTermination, !oldPortTerminationESet));
        }
    }

    public void unsetPortTermination() {
        Boolean oldPortTermination = this.portTermination;
        boolean oldPortTerminationESet = this.portTerminationESet;
        this.portTermination = PORT_TERMINATION_EDEFAULT;
        this.portTerminationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldPortTermination, (Object)PORT_TERMINATION_EDEFAULT, oldPortTerminationESet));
        }
    }

    public boolean isSetPortTermination() {
        return this.portTerminationESet;
    }

    public CANCommunicationPortInstanceProtocolVersionEnum getProtocolVersion() {
        return this.protocolVersion;
    }

    public void setProtocolVersion(CANCommunicationPortInstanceProtocolVersionEnum newProtocolVersion) {
        CANCommunicationPortInstanceProtocolVersionEnum oldProtocolVersion = this.protocolVersion;
        this.protocolVersion = newProtocolVersion == null ? PROTOCOL_VERSION_EDEFAULT : newProtocolVersion;
        boolean oldProtocolVersionESet = this.protocolVersionESet;
        this.protocolVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldProtocolVersion, (Object)this.protocolVersion, !oldProtocolVersionESet));
        }
    }

    public void unsetProtocolVersion() {
        CANCommunicationPortInstanceProtocolVersionEnum oldProtocolVersion = this.protocolVersion;
        boolean oldProtocolVersionESet = this.protocolVersionESet;
        this.protocolVersion = PROTOCOL_VERSION_EDEFAULT;
        this.protocolVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldProtocolVersion, (Object)PROTOCOL_VERSION_EDEFAULT, oldProtocolVersionESet));
        }
    }

    public boolean isSetProtocolVersion() {
        return this.protocolVersionESet;
    }

    public Double getReceiveProcessingPeriod() {
        return this.receiveProcessingPeriod;
    }

    public void setReceiveProcessingPeriod(Double newReceiveProcessingPeriod) {
        Double oldReceiveProcessingPeriod = this.receiveProcessingPeriod;
        this.receiveProcessingPeriod = newReceiveProcessingPeriod;
        boolean oldReceiveProcessingPeriodESet = this.receiveProcessingPeriodESet;
        this.receiveProcessingPeriodESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldReceiveProcessingPeriod, (Object)this.receiveProcessingPeriod, !oldReceiveProcessingPeriodESet));
        }
    }

    public void unsetReceiveProcessingPeriod() {
        Double oldReceiveProcessingPeriod = this.receiveProcessingPeriod;
        boolean oldReceiveProcessingPeriodESet = this.receiveProcessingPeriodESet;
        this.receiveProcessingPeriod = RECEIVE_PROCESSING_PERIOD_EDEFAULT;
        this.receiveProcessingPeriodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldReceiveProcessingPeriod, (Object)RECEIVE_PROCESSING_PERIOD_EDEFAULT, oldReceiveProcessingPeriodESet));
        }
    }

    public boolean isSetReceiveProcessingPeriod() {
        return this.receiveProcessingPeriodESet;
    }

    public Integer getSyncJumpWidth() {
        return this.syncJumpWidth;
    }

    public void setSyncJumpWidth(Integer newSyncJumpWidth) {
        Integer oldSyncJumpWidth = this.syncJumpWidth;
        this.syncJumpWidth = newSyncJumpWidth;
        boolean oldSyncJumpWidthESet = this.syncJumpWidthESet;
        this.syncJumpWidthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldSyncJumpWidth, (Object)this.syncJumpWidth, !oldSyncJumpWidthESet));
        }
    }

    public void unsetSyncJumpWidth() {
        Integer oldSyncJumpWidth = this.syncJumpWidth;
        boolean oldSyncJumpWidthESet = this.syncJumpWidthESet;
        this.syncJumpWidth = SYNC_JUMP_WIDTH_EDEFAULT;
        this.syncJumpWidthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldSyncJumpWidth, (Object)SYNC_JUMP_WIDTH_EDEFAULT, oldSyncJumpWidthESet));
        }
    }

    public boolean isSetSyncJumpWidth() {
        return this.syncJumpWidthESet;
    }

    public Integer getTimeSeg0() {
        return this.timeSeg0;
    }

    public void setTimeSeg0(Integer newTimeSeg0) {
        Integer oldTimeSeg0 = this.timeSeg0;
        this.timeSeg0 = newTimeSeg0;
        boolean oldTimeSeg0ESet = this.timeSeg0ESet;
        this.timeSeg0ESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldTimeSeg0, (Object)this.timeSeg0, !oldTimeSeg0ESet));
        }
    }

    public void unsetTimeSeg0() {
        Integer oldTimeSeg0 = this.timeSeg0;
        boolean oldTimeSeg0ESet = this.timeSeg0ESet;
        this.timeSeg0 = TIME_SEG0_EDEFAULT;
        this.timeSeg0ESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldTimeSeg0, (Object)TIME_SEG0_EDEFAULT, oldTimeSeg0ESet));
        }
    }

    public boolean isSetTimeSeg0() {
        return this.timeSeg0ESet;
    }

    public Integer getTimeSeg1() {
        return this.timeSeg1;
    }

    public void setTimeSeg1(Integer newTimeSeg1) {
        Integer oldTimeSeg1 = this.timeSeg1;
        this.timeSeg1 = newTimeSeg1;
        boolean oldTimeSeg1ESet = this.timeSeg1ESet;
        this.timeSeg1ESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldTimeSeg1, (Object)this.timeSeg1, !oldTimeSeg1ESet));
        }
    }

    public void unsetTimeSeg1() {
        Integer oldTimeSeg1 = this.timeSeg1;
        boolean oldTimeSeg1ESet = this.timeSeg1ESet;
        this.timeSeg1 = TIME_SEG1_EDEFAULT;
        this.timeSeg1ESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldTimeSeg1, (Object)TIME_SEG1_EDEFAULT, oldTimeSeg1ESet));
        }
    }

    public boolean isSetTimeSeg1() {
        return this.timeSeg1ESet;
    }

    public Double getTransmitProcessingPeriod() {
        return this.transmitProcessingPeriod;
    }

    public void setTransmitProcessingPeriod(Double newTransmitProcessingPeriod) {
        Double oldTransmitProcessingPeriod = this.transmitProcessingPeriod;
        this.transmitProcessingPeriod = newTransmitProcessingPeriod;
        boolean oldTransmitProcessingPeriodESet = this.transmitProcessingPeriodESet;
        this.transmitProcessingPeriodESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldTransmitProcessingPeriod, (Object)this.transmitProcessingPeriod, !oldTransmitProcessingPeriodESet));
        }
    }

    public void unsetTransmitProcessingPeriod() {
        Double oldTransmitProcessingPeriod = this.transmitProcessingPeriod;
        boolean oldTransmitProcessingPeriodESet = this.transmitProcessingPeriodESet;
        this.transmitProcessingPeriod = TRANSMIT_PROCESSING_PERIOD_EDEFAULT;
        this.transmitProcessingPeriodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldTransmitProcessingPeriod, (Object)TRANSMIT_PROCESSING_PERIOD_EDEFAULT, oldTransmitProcessingPeriodESet));
        }
    }

    public boolean isSetTransmitProcessingPeriod() {
        return this.transmitProcessingPeriodESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getBRP();
            }
            case 22: {
                return this.getMaxPermittedProcessingPeriodJitter();
            }
            case 23: {
                return this.getPortTermination();
            }
            case 24: {
                return this.getProtocolVersion();
            }
            case 25: {
                return this.getReceiveProcessingPeriod();
            }
            case 26: {
                return this.getSyncJumpWidth();
            }
            case 27: {
                return this.getTimeSeg0();
            }
            case 28: {
                return this.getTimeSeg1();
            }
            case 29: {
                return this.getTransmitProcessingPeriod();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setBRP((Integer)newValue);
                return;
            }
            case 22: {
                this.setMaxPermittedProcessingPeriodJitter((Double)newValue);
                return;
            }
            case 23: {
                this.setPortTermination((Boolean)newValue);
                return;
            }
            case 24: {
                this.setProtocolVersion((CANCommunicationPortInstanceProtocolVersionEnum)((Object)newValue));
                return;
            }
            case 25: {
                this.setReceiveProcessingPeriod((Double)newValue);
                return;
            }
            case 26: {
                this.setSyncJumpWidth((Integer)newValue);
                return;
            }
            case 27: {
                this.setTimeSeg0((Integer)newValue);
                return;
            }
            case 28: {
                this.setTimeSeg1((Integer)newValue);
                return;
            }
            case 29: {
                this.setTransmitProcessingPeriod((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetBRP();
                return;
            }
            case 22: {
                this.unsetMaxPermittedProcessingPeriodJitter();
                return;
            }
            case 23: {
                this.unsetPortTermination();
                return;
            }
            case 24: {
                this.unsetProtocolVersion();
                return;
            }
            case 25: {
                this.unsetReceiveProcessingPeriod();
                return;
            }
            case 26: {
                this.unsetSyncJumpWidth();
                return;
            }
            case 27: {
                this.unsetTimeSeg0();
                return;
            }
            case 28: {
                this.unsetTimeSeg1();
                return;
            }
            case 29: {
                this.unsetTransmitProcessingPeriod();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetBRP();
            }
            case 22: {
                return this.isSetMaxPermittedProcessingPeriodJitter();
            }
            case 23: {
                return this.isSetPortTermination();
            }
            case 24: {
                return this.isSetProtocolVersion();
            }
            case 25: {
                return this.isSetReceiveProcessingPeriod();
            }
            case 26: {
                return this.isSetSyncJumpWidth();
            }
            case 27: {
                return this.isSetTimeSeg0();
            }
            case 28: {
                return this.isSetTimeSeg1();
            }
            case 29: {
                return this.isSetTransmitProcessingPeriod();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (BRP: ");
        if (this.brpESet) {
            result.append(this.brp);
        } else {
            result.append("<unset>");
        }
        result.append(", maxPermittedProcessingPeriodJitter: ");
        if (this.maxPermittedProcessingPeriodJitterESet) {
            result.append(this.maxPermittedProcessingPeriodJitter);
        } else {
            result.append("<unset>");
        }
        result.append(", portTermination: ");
        if (this.portTerminationESet) {
            result.append(this.portTermination);
        } else {
            result.append("<unset>");
        }
        result.append(", protocolVersion: ");
        if (this.protocolVersionESet) {
            result.append((Object)this.protocolVersion);
        } else {
            result.append("<unset>");
        }
        result.append(", receiveProcessingPeriod: ");
        if (this.receiveProcessingPeriodESet) {
            result.append(this.receiveProcessingPeriod);
        } else {
            result.append("<unset>");
        }
        result.append(", SyncJumpWidth: ");
        if (this.syncJumpWidthESet) {
            result.append(this.syncJumpWidth);
        } else {
            result.append("<unset>");
        }
        result.append(", TimeSeg0: ");
        if (this.timeSeg0ESet) {
            result.append(this.timeSeg0);
        } else {
            result.append("<unset>");
        }
        result.append(", TimeSeg1: ");
        if (this.timeSeg1ESet) {
            result.append(this.timeSeg1);
        } else {
            result.append("<unset>");
        }
        result.append(", transmitProcessingPeriod: ");
        if (this.transmitProcessingPeriodESet) {
            result.append(this.transmitProcessingPeriod);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

