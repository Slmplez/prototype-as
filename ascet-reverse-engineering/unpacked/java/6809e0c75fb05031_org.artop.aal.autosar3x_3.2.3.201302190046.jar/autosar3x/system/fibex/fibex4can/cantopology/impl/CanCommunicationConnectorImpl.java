/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.fibex.fibex4can.cantopology.impl;

import autosar3x.system.fibex.fibex4can.cantopology.CanCommunicationConnector;
import autosar3x.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.impl.CommunicationConnectorImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CanCommunicationConnectorImpl
extends CommunicationConnectorImpl
implements CanCommunicationConnector {
    protected static final Integer PNC_WAKEUP_CAN_ID_EDEFAULT = new Integer(0);
    protected Integer pncWakeupCanId = PNC_WAKEUP_CAN_ID_EDEFAULT;
    protected boolean pncWakeupCanIdESet;
    protected static final Boolean PNC_WAKEUP_CAN_ID_EXTENDED_EDEFAULT = Boolean.FALSE;
    protected Boolean pncWakeupCanIdExtended = PNC_WAKEUP_CAN_ID_EXTENDED_EDEFAULT;
    protected boolean pncWakeupCanIdExtendedESet;
    protected static final Integer PNC_WAKEUP_CAN_ID_MASK_EDEFAULT = new Integer(0);
    protected Integer pncWakeupCanIdMask = PNC_WAKEUP_CAN_ID_MASK_EDEFAULT;
    protected boolean pncWakeupCanIdMaskESet;
    protected static final Integer PNC_WAKEUP_DATA_MASK_EDEFAULT = new Integer(0);
    protected Integer pncWakeupDataMask = PNC_WAKEUP_DATA_MASK_EDEFAULT;
    protected boolean pncWakeupDataMaskESet;
    protected static final Integer PNC_WAKEUP_DLC_EDEFAULT = new Integer(0);
    protected Integer pncWakeupDlc = PNC_WAKEUP_DLC_EDEFAULT;
    protected boolean pncWakeupDlcESet;

    protected CanCommunicationConnectorImpl() {
    }

    protected EClass eStaticClass() {
        return CantopologyPackage.Literals.CAN_COMMUNICATION_CONNECTOR;
    }

    public Integer getPncWakeupCanId() {
        return this.pncWakeupCanId;
    }

    public void setPncWakeupCanId(Integer newPncWakeupCanId) {
        Integer oldPncWakeupCanId = this.pncWakeupCanId;
        this.pncWakeupCanId = newPncWakeupCanId;
        boolean oldPncWakeupCanIdESet = this.pncWakeupCanIdESet;
        this.pncWakeupCanIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldPncWakeupCanId, (Object)this.pncWakeupCanId, !oldPncWakeupCanIdESet));
        }
    }

    public void unsetPncWakeupCanId() {
        Integer oldPncWakeupCanId = this.pncWakeupCanId;
        boolean oldPncWakeupCanIdESet = this.pncWakeupCanIdESet;
        this.pncWakeupCanId = PNC_WAKEUP_CAN_ID_EDEFAULT;
        this.pncWakeupCanIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldPncWakeupCanId, (Object)PNC_WAKEUP_CAN_ID_EDEFAULT, oldPncWakeupCanIdESet));
        }
    }

    public boolean isSetPncWakeupCanId() {
        return this.pncWakeupCanIdESet;
    }

    public Boolean getPncWakeupCanIdExtended() {
        return this.pncWakeupCanIdExtended;
    }

    public void setPncWakeupCanIdExtended(Boolean newPncWakeupCanIdExtended) {
        Boolean oldPncWakeupCanIdExtended = this.pncWakeupCanIdExtended;
        this.pncWakeupCanIdExtended = newPncWakeupCanIdExtended;
        boolean oldPncWakeupCanIdExtendedESet = this.pncWakeupCanIdExtendedESet;
        this.pncWakeupCanIdExtendedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldPncWakeupCanIdExtended, (Object)this.pncWakeupCanIdExtended, !oldPncWakeupCanIdExtendedESet));
        }
    }

    public void unsetPncWakeupCanIdExtended() {
        Boolean oldPncWakeupCanIdExtended = this.pncWakeupCanIdExtended;
        boolean oldPncWakeupCanIdExtendedESet = this.pncWakeupCanIdExtendedESet;
        this.pncWakeupCanIdExtended = PNC_WAKEUP_CAN_ID_EXTENDED_EDEFAULT;
        this.pncWakeupCanIdExtendedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldPncWakeupCanIdExtended, (Object)PNC_WAKEUP_CAN_ID_EXTENDED_EDEFAULT, oldPncWakeupCanIdExtendedESet));
        }
    }

    public boolean isSetPncWakeupCanIdExtended() {
        return this.pncWakeupCanIdExtendedESet;
    }

    public Integer getPncWakeupCanIdMask() {
        return this.pncWakeupCanIdMask;
    }

    public void setPncWakeupCanIdMask(Integer newPncWakeupCanIdMask) {
        Integer oldPncWakeupCanIdMask = this.pncWakeupCanIdMask;
        this.pncWakeupCanIdMask = newPncWakeupCanIdMask;
        boolean oldPncWakeupCanIdMaskESet = this.pncWakeupCanIdMaskESet;
        this.pncWakeupCanIdMaskESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldPncWakeupCanIdMask, (Object)this.pncWakeupCanIdMask, !oldPncWakeupCanIdMaskESet));
        }
    }

    public void unsetPncWakeupCanIdMask() {
        Integer oldPncWakeupCanIdMask = this.pncWakeupCanIdMask;
        boolean oldPncWakeupCanIdMaskESet = this.pncWakeupCanIdMaskESet;
        this.pncWakeupCanIdMask = PNC_WAKEUP_CAN_ID_MASK_EDEFAULT;
        this.pncWakeupCanIdMaskESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldPncWakeupCanIdMask, (Object)PNC_WAKEUP_CAN_ID_MASK_EDEFAULT, oldPncWakeupCanIdMaskESet));
        }
    }

    public boolean isSetPncWakeupCanIdMask() {
        return this.pncWakeupCanIdMaskESet;
    }

    public Integer getPncWakeupDataMask() {
        return this.pncWakeupDataMask;
    }

    public void setPncWakeupDataMask(Integer newPncWakeupDataMask) {
        Integer oldPncWakeupDataMask = this.pncWakeupDataMask;
        this.pncWakeupDataMask = newPncWakeupDataMask;
        boolean oldPncWakeupDataMaskESet = this.pncWakeupDataMaskESet;
        this.pncWakeupDataMaskESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldPncWakeupDataMask, (Object)this.pncWakeupDataMask, !oldPncWakeupDataMaskESet));
        }
    }

    public void unsetPncWakeupDataMask() {
        Integer oldPncWakeupDataMask = this.pncWakeupDataMask;
        boolean oldPncWakeupDataMaskESet = this.pncWakeupDataMaskESet;
        this.pncWakeupDataMask = PNC_WAKEUP_DATA_MASK_EDEFAULT;
        this.pncWakeupDataMaskESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldPncWakeupDataMask, (Object)PNC_WAKEUP_DATA_MASK_EDEFAULT, oldPncWakeupDataMaskESet));
        }
    }

    public boolean isSetPncWakeupDataMask() {
        return this.pncWakeupDataMaskESet;
    }

    public Integer getPncWakeupDlc() {
        return this.pncWakeupDlc;
    }

    public void setPncWakeupDlc(Integer newPncWakeupDlc) {
        Integer oldPncWakeupDlc = this.pncWakeupDlc;
        this.pncWakeupDlc = newPncWakeupDlc;
        boolean oldPncWakeupDlcESet = this.pncWakeupDlcESet;
        this.pncWakeupDlcESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldPncWakeupDlc, (Object)this.pncWakeupDlc, !oldPncWakeupDlcESet));
        }
    }

    public void unsetPncWakeupDlc() {
        Integer oldPncWakeupDlc = this.pncWakeupDlc;
        boolean oldPncWakeupDlcESet = this.pncWakeupDlcESet;
        this.pncWakeupDlc = PNC_WAKEUP_DLC_EDEFAULT;
        this.pncWakeupDlcESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldPncWakeupDlc, (Object)PNC_WAKEUP_DLC_EDEFAULT, oldPncWakeupDlcESet));
        }
    }

    public boolean isSetPncWakeupDlc() {
        return this.pncWakeupDlcESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 23: {
                return this.getPncWakeupCanId();
            }
            case 24: {
                return this.getPncWakeupCanIdExtended();
            }
            case 25: {
                return this.getPncWakeupCanIdMask();
            }
            case 26: {
                return this.getPncWakeupDataMask();
            }
            case 27: {
                return this.getPncWakeupDlc();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 23: {
                this.setPncWakeupCanId((Integer)newValue);
                return;
            }
            case 24: {
                this.setPncWakeupCanIdExtended((Boolean)newValue);
                return;
            }
            case 25: {
                this.setPncWakeupCanIdMask((Integer)newValue);
                return;
            }
            case 26: {
                this.setPncWakeupDataMask((Integer)newValue);
                return;
            }
            case 27: {
                this.setPncWakeupDlc((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 23: {
                this.unsetPncWakeupCanId();
                return;
            }
            case 24: {
                this.unsetPncWakeupCanIdExtended();
                return;
            }
            case 25: {
                this.unsetPncWakeupCanIdMask();
                return;
            }
            case 26: {
                this.unsetPncWakeupDataMask();
                return;
            }
            case 27: {
                this.unsetPncWakeupDlc();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 23: {
                return this.isSetPncWakeupCanId();
            }
            case 24: {
                return this.isSetPncWakeupCanIdExtended();
            }
            case 25: {
                return this.isSetPncWakeupCanIdMask();
            }
            case 26: {
                return this.isSetPncWakeupDataMask();
            }
            case 27: {
                return this.isSetPncWakeupDlc();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (pncWakeupCanId: ");
        if (this.pncWakeupCanIdESet) {
            result.append(this.pncWakeupCanId);
        } else {
            result.append("<unset>");
        }
        result.append(", pncWakeupCanIdExtended: ");
        if (this.pncWakeupCanIdExtendedESet) {
            result.append(this.pncWakeupCanIdExtended);
        } else {
            result.append("<unset>");
        }
        result.append(", pncWakeupCanIdMask: ");
        if (this.pncWakeupCanIdMaskESet) {
            result.append(this.pncWakeupCanIdMask);
        } else {
            result.append("<unset>");
        }
        result.append(", pncWakeupDataMask: ");
        if (this.pncWakeupDataMaskESet) {
            result.append(this.pncWakeupDataMask);
        } else {
            result.append("<unset>");
        }
        result.append(", pncWakeupDlc: ");
        if (this.pncWakeupDlcESet) {
            result.append(this.pncWakeupDlc);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

