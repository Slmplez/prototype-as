/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibex4can.cantopology.impl;

import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationConnector;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar40.system.fibex.fibex4can.cantopology.impl.AbstractCanCommunicationConnectorImpl;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CanCommunicationConnectorImpl
extends AbstractCanCommunicationConnectorImpl
implements CanCommunicationConnector {
    protected static final PositiveIntegerDatatype PNC_WAKEUP_CAN_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype pncWakeupCanId = PNC_WAKEUP_CAN_ID_EDEFAULT.clone();
    protected boolean pncWakeupCanIdESet;
    protected static final Boolean PNC_WAKEUP_CAN_ID_EXTENDED_EDEFAULT = Boolean.FALSE;
    protected Boolean pncWakeupCanIdExtended = PNC_WAKEUP_CAN_ID_EXTENDED_EDEFAULT;
    protected boolean pncWakeupCanIdExtendedESet;
    protected static final PositiveIntegerDatatype PNC_WAKEUP_CAN_ID_MASK_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype pncWakeupCanIdMask = PNC_WAKEUP_CAN_ID_MASK_EDEFAULT.clone();
    protected boolean pncWakeupCanIdMaskESet;
    protected static final PositiveIntegerDatatype PNC_WAKEUP_DATA_MASK_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype pncWakeupDataMask = PNC_WAKEUP_DATA_MASK_EDEFAULT.clone();
    protected boolean pncWakeupDataMaskESet;
    protected static final PositiveIntegerDatatype PNC_WAKEUP_DLC_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype pncWakeupDlc = PNC_WAKEUP_DLC_EDEFAULT.clone();
    protected boolean pncWakeupDlcESet;

    protected CanCommunicationConnectorImpl() {
    }

    protected EClass eStaticClass() {
        return CantopologyPackage.Literals.CAN_COMMUNICATION_CONNECTOR;
    }

    public Long getPncWakeupCanId() {
        return (Long)this.pncWakeupCanId.basicGetValue();
    }

    public void setPncWakeupCanId(Long newPncWakeupCanId) {
        Long oldPncWakeupCanId = (Long)this.pncWakeupCanId.basicGetValue();
        this.pncWakeupCanId.basicSetValue((Object)newPncWakeupCanId);
        boolean oldPncWakeupCanIdESet = this.pncWakeupCanIdESet;
        this.pncWakeupCanIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldPncWakeupCanId, (Object)newPncWakeupCanId, !oldPncWakeupCanIdESet));
        }
    }

    public void unsetPncWakeupCanId() {
        Long oldPncWakeupCanId = (Long)this.pncWakeupCanId.basicGetValue();
        boolean oldPncWakeupCanIdESet = this.pncWakeupCanIdESet;
        this.pncWakeupCanId = PNC_WAKEUP_CAN_ID_EDEFAULT.clone();
        this.pncWakeupCanIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldPncWakeupCanId, (Object)PNC_WAKEUP_CAN_ID_EDEFAULT, oldPncWakeupCanIdESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldPncWakeupCanIdExtended, (Object)this.pncWakeupCanIdExtended, !oldPncWakeupCanIdExtendedESet));
        }
    }

    public void unsetPncWakeupCanIdExtended() {
        Boolean oldPncWakeupCanIdExtended = this.pncWakeupCanIdExtended;
        boolean oldPncWakeupCanIdExtendedESet = this.pncWakeupCanIdExtendedESet;
        this.pncWakeupCanIdExtended = PNC_WAKEUP_CAN_ID_EXTENDED_EDEFAULT;
        this.pncWakeupCanIdExtendedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldPncWakeupCanIdExtended, (Object)PNC_WAKEUP_CAN_ID_EXTENDED_EDEFAULT, oldPncWakeupCanIdExtendedESet));
        }
    }

    public boolean isSetPncWakeupCanIdExtended() {
        return this.pncWakeupCanIdExtendedESet;
    }

    public Long getPncWakeupCanIdMask() {
        return (Long)this.pncWakeupCanIdMask.basicGetValue();
    }

    public void setPncWakeupCanIdMask(Long newPncWakeupCanIdMask) {
        Long oldPncWakeupCanIdMask = (Long)this.pncWakeupCanIdMask.basicGetValue();
        this.pncWakeupCanIdMask.basicSetValue((Object)newPncWakeupCanIdMask);
        boolean oldPncWakeupCanIdMaskESet = this.pncWakeupCanIdMaskESet;
        this.pncWakeupCanIdMaskESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldPncWakeupCanIdMask, (Object)newPncWakeupCanIdMask, !oldPncWakeupCanIdMaskESet));
        }
    }

    public void unsetPncWakeupCanIdMask() {
        Long oldPncWakeupCanIdMask = (Long)this.pncWakeupCanIdMask.basicGetValue();
        boolean oldPncWakeupCanIdMaskESet = this.pncWakeupCanIdMaskESet;
        this.pncWakeupCanIdMask = PNC_WAKEUP_CAN_ID_MASK_EDEFAULT.clone();
        this.pncWakeupCanIdMaskESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldPncWakeupCanIdMask, (Object)PNC_WAKEUP_CAN_ID_MASK_EDEFAULT, oldPncWakeupCanIdMaskESet));
        }
    }

    public boolean isSetPncWakeupCanIdMask() {
        return this.pncWakeupCanIdMaskESet;
    }

    public Long getPncWakeupDataMask() {
        return (Long)this.pncWakeupDataMask.basicGetValue();
    }

    public void setPncWakeupDataMask(Long newPncWakeupDataMask) {
        Long oldPncWakeupDataMask = (Long)this.pncWakeupDataMask.basicGetValue();
        this.pncWakeupDataMask.basicSetValue((Object)newPncWakeupDataMask);
        boolean oldPncWakeupDataMaskESet = this.pncWakeupDataMaskESet;
        this.pncWakeupDataMaskESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldPncWakeupDataMask, (Object)newPncWakeupDataMask, !oldPncWakeupDataMaskESet));
        }
    }

    public void unsetPncWakeupDataMask() {
        Long oldPncWakeupDataMask = (Long)this.pncWakeupDataMask.basicGetValue();
        boolean oldPncWakeupDataMaskESet = this.pncWakeupDataMaskESet;
        this.pncWakeupDataMask = PNC_WAKEUP_DATA_MASK_EDEFAULT.clone();
        this.pncWakeupDataMaskESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldPncWakeupDataMask, (Object)PNC_WAKEUP_DATA_MASK_EDEFAULT, oldPncWakeupDataMaskESet));
        }
    }

    public boolean isSetPncWakeupDataMask() {
        return this.pncWakeupDataMaskESet;
    }

    public Long getPncWakeupDlc() {
        return (Long)this.pncWakeupDlc.basicGetValue();
    }

    public void setPncWakeupDlc(Long newPncWakeupDlc) {
        Long oldPncWakeupDlc = (Long)this.pncWakeupDlc.basicGetValue();
        this.pncWakeupDlc.basicSetValue((Object)newPncWakeupDlc);
        boolean oldPncWakeupDlcESet = this.pncWakeupDlcESet;
        this.pncWakeupDlcESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldPncWakeupDlc, (Object)newPncWakeupDlc, !oldPncWakeupDlcESet));
        }
    }

    public void unsetPncWakeupDlc() {
        Long oldPncWakeupDlc = (Long)this.pncWakeupDlc.basicGetValue();
        boolean oldPncWakeupDlcESet = this.pncWakeupDlcESet;
        this.pncWakeupDlc = PNC_WAKEUP_DLC_EDEFAULT.clone();
        this.pncWakeupDlcESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldPncWakeupDlc, (Object)PNC_WAKEUP_DLC_EDEFAULT, oldPncWakeupDlcESet));
        }
    }

    public boolean isSetPncWakeupDlc() {
        return this.pncWakeupDlcESet;
    }

    public PositiveIntegerDatatype getPncWakeupCanIdData() {
        return this.pncWakeupCanId.clone();
    }

    public void setPncWakeupCanIdData(PositiveIntegerDatatype newPncWakeupCanId) {
        this.pncWakeupCanId.setRadix((int)newPncWakeupCanId.getRadix());
        this.pncWakeupCanId.setNoOfDigits((int)newPncWakeupCanId.getNoOfDigits());
        this.setPncWakeupCanId(newPncWakeupCanId.getValue());
    }

    public PositiveIntegerDatatype getPncWakeupCanIdMaskData() {
        return this.pncWakeupCanIdMask.clone();
    }

    public void setPncWakeupCanIdMaskData(PositiveIntegerDatatype newPncWakeupCanIdMask) {
        this.pncWakeupCanIdMask.setRadix((int)newPncWakeupCanIdMask.getRadix());
        this.pncWakeupCanIdMask.setNoOfDigits((int)newPncWakeupCanIdMask.getNoOfDigits());
        this.setPncWakeupCanIdMask(newPncWakeupCanIdMask.getValue());
    }

    public PositiveIntegerDatatype getPncWakeupDataMaskData() {
        return this.pncWakeupDataMask.clone();
    }

    public void setPncWakeupDataMaskData(PositiveIntegerDatatype newPncWakeupDataMask) {
        this.pncWakeupDataMask.setRadix((int)newPncWakeupDataMask.getRadix());
        this.pncWakeupDataMask.setNoOfDigits((int)newPncWakeupDataMask.getNoOfDigits());
        this.setPncWakeupDataMask(newPncWakeupDataMask.getValue());
    }

    public PositiveIntegerDatatype getPncWakeupDlcData() {
        return this.pncWakeupDlc.clone();
    }

    public void setPncWakeupDlcData(PositiveIntegerDatatype newPncWakeupDlc) {
        this.pncWakeupDlc.setRadix((int)newPncWakeupDlc.getRadix());
        this.pncWakeupDlc.setNoOfDigits((int)newPncWakeupDlc.getNoOfDigits());
        this.setPncWakeupDlc(newPncWakeupDlc.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getPncWakeupCanId();
            }
            case 23: {
                return this.getPncWakeupCanIdExtended();
            }
            case 24: {
                return this.getPncWakeupCanIdMask();
            }
            case 25: {
                return this.getPncWakeupDataMask();
            }
            case 26: {
                return this.getPncWakeupDlc();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setPncWakeupCanId((Long)newValue);
                return;
            }
            case 23: {
                this.setPncWakeupCanIdExtended((Boolean)newValue);
                return;
            }
            case 24: {
                this.setPncWakeupCanIdMask((Long)newValue);
                return;
            }
            case 25: {
                this.setPncWakeupDataMask((Long)newValue);
                return;
            }
            case 26: {
                this.setPncWakeupDlc((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.unsetPncWakeupCanId();
                return;
            }
            case 23: {
                this.unsetPncWakeupCanIdExtended();
                return;
            }
            case 24: {
                this.unsetPncWakeupCanIdMask();
                return;
            }
            case 25: {
                this.unsetPncWakeupDataMask();
                return;
            }
            case 26: {
                this.unsetPncWakeupDlc();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.isSetPncWakeupCanId();
            }
            case 23: {
                return this.isSetPncWakeupCanIdExtended();
            }
            case 24: {
                return this.isSetPncWakeupCanIdMask();
            }
            case 25: {
                return this.isSetPncWakeupDataMask();
            }
            case 26: {
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

