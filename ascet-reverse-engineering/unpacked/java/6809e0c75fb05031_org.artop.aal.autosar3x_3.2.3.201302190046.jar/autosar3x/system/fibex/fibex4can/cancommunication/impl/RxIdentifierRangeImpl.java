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
package autosar3x.system.fibex.fibex4can.cancommunication.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibex4can.cancommunication.CanFrameTriggering;
import autosar3x.system.fibex.fibex4can.cancommunication.CancommunicationPackage;
import autosar3x.system.fibex.fibex4can.cancommunication.RxIdentifierRange;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class RxIdentifierRangeImpl
extends ARObjectImpl
implements RxIdentifierRange {
    protected static final Integer LOWER_CAN_ID_EDEFAULT = new Integer(0);
    protected Integer lowerCanId = LOWER_CAN_ID_EDEFAULT;
    protected boolean lowerCanIdESet;
    protected static final Integer UPPER_CAN_ID_EDEFAULT = new Integer(0);
    protected Integer upperCanId = UPPER_CAN_ID_EDEFAULT;
    protected boolean upperCanIdESet;

    protected RxIdentifierRangeImpl() {
    }

    protected EClass eStaticClass() {
        return CancommunicationPackage.Literals.RX_IDENTIFIER_RANGE;
    }

    public CanFrameTriggering getCanFrameTriggering() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CanFrameTriggering)this.eContainer();
    }

    public NotificationChain basicSetCanFrameTriggering(CanFrameTriggering newCanFrameTriggering, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCanFrameTriggering, 4, msgs);
        return msgs;
    }

    public void setCanFrameTriggering(CanFrameTriggering newCanFrameTriggering) {
        if (newCanFrameTriggering != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCanFrameTriggering != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCanFrameTriggering)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCanFrameTriggering != null) {
                msgs = ((InternalEObject)newCanFrameTriggering).eInverseAdd((InternalEObject)this, 23, CanFrameTriggering.class, msgs);
            }
            if ((msgs = this.basicSetCanFrameTriggering(newCanFrameTriggering, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCanFrameTriggering, (Object)newCanFrameTriggering));
        }
    }

    public Integer getLowerCanId() {
        return this.lowerCanId;
    }

    public void setLowerCanId(Integer newLowerCanId) {
        Integer oldLowerCanId = this.lowerCanId;
        this.lowerCanId = newLowerCanId;
        boolean oldLowerCanIdESet = this.lowerCanIdESet;
        this.lowerCanIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldLowerCanId, (Object)this.lowerCanId, !oldLowerCanIdESet));
        }
    }

    public void unsetLowerCanId() {
        Integer oldLowerCanId = this.lowerCanId;
        boolean oldLowerCanIdESet = this.lowerCanIdESet;
        this.lowerCanId = LOWER_CAN_ID_EDEFAULT;
        this.lowerCanIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldLowerCanId, (Object)LOWER_CAN_ID_EDEFAULT, oldLowerCanIdESet));
        }
    }

    public boolean isSetLowerCanId() {
        return this.lowerCanIdESet;
    }

    public Integer getUpperCanId() {
        return this.upperCanId;
    }

    public void setUpperCanId(Integer newUpperCanId) {
        Integer oldUpperCanId = this.upperCanId;
        this.upperCanId = newUpperCanId;
        boolean oldUpperCanIdESet = this.upperCanIdESet;
        this.upperCanIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldUpperCanId, (Object)this.upperCanId, !oldUpperCanIdESet));
        }
    }

    public void unsetUpperCanId() {
        Integer oldUpperCanId = this.upperCanId;
        boolean oldUpperCanIdESet = this.upperCanIdESet;
        this.upperCanId = UPPER_CAN_ID_EDEFAULT;
        this.upperCanIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldUpperCanId, (Object)UPPER_CAN_ID_EDEFAULT, oldUpperCanIdESet));
        }
    }

    public boolean isSetUpperCanId() {
        return this.upperCanIdESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCanFrameTriggering((CanFrameTriggering)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCanFrameTriggering(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, CanFrameTriggering.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCanFrameTriggering();
            }
            case 5: {
                return this.getLowerCanId();
            }
            case 6: {
                return this.getUpperCanId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCanFrameTriggering((CanFrameTriggering)newValue);
                return;
            }
            case 5: {
                this.setLowerCanId((Integer)newValue);
                return;
            }
            case 6: {
                this.setUpperCanId((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCanFrameTriggering(null);
                return;
            }
            case 5: {
                this.unsetLowerCanId();
                return;
            }
            case 6: {
                this.unsetUpperCanId();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCanFrameTriggering() != null;
            }
            case 5: {
                return this.isSetLowerCanId();
            }
            case 6: {
                return this.isSetUpperCanId();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (lowerCanId: ");
        if (this.lowerCanIdESet) {
            result.append(this.lowerCanId);
        } else {
            result.append("<unset>");
        }
        result.append(", upperCanId: ");
        if (this.upperCanIdESet) {
            result.append(this.upperCanId);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

