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
package autosar21.system.communicationprotocol.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.communicationprotocol.CommProtocolElement;
import autosar21.system.communicationprotocol.CommProtocolElementDirectionEnum;
import autosar21.system.communicationprotocol.CommProtocolType;
import autosar21.system.communicationprotocol.CommunicationprotocolPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class CommProtocolElementImpl
extends IdentifiableImpl
implements CommProtocolElement {
    protected static final CommProtocolElementDirectionEnum DIRECTION_EDEFAULT = CommProtocolElementDirectionEnum.S2R;
    protected CommProtocolElementDirectionEnum direction = DIRECTION_EDEFAULT;
    protected boolean directionESet;

    protected CommProtocolElementImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationprotocolPackage.Literals.COMM_PROTOCOL_ELEMENT;
    }

    public CommProtocolType getCommProtocolType() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (CommProtocolType)this.eContainer();
    }

    public NotificationChain basicSetCommProtocolType(CommProtocolType newCommProtocolType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommProtocolType, 16, msgs);
        return msgs;
    }

    public void setCommProtocolType(CommProtocolType newCommProtocolType) {
        if (newCommProtocolType != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newCommProtocolType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommProtocolType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommProtocolType != null) {
                msgs = ((InternalEObject)newCommProtocolType).eInverseAdd((InternalEObject)this, 18, CommProtocolType.class, msgs);
            }
            if ((msgs = this.basicSetCommProtocolType(newCommProtocolType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newCommProtocolType, (Object)newCommProtocolType));
        }
    }

    public CommProtocolElementDirectionEnum getDirection() {
        return this.direction;
    }

    public void setDirection(CommProtocolElementDirectionEnum newDirection) {
        CommProtocolElementDirectionEnum oldDirection = this.direction;
        this.direction = newDirection == null ? DIRECTION_EDEFAULT : newDirection;
        boolean oldDirectionESet = this.directionESet;
        this.directionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldDirection, (Object)this.direction, !oldDirectionESet));
        }
    }

    public void unsetDirection() {
        CommProtocolElementDirectionEnum oldDirection = this.direction;
        boolean oldDirectionESet = this.directionESet;
        this.direction = DIRECTION_EDEFAULT;
        this.directionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldDirection, (Object)DIRECTION_EDEFAULT, oldDirectionESet));
        }
    }

    public boolean isSetDirection() {
        return this.directionESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommProtocolType((CommProtocolType)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetCommProtocolType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, CommProtocolType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getCommProtocolType();
            }
            case 17: {
                return this.getDirection();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setCommProtocolType((CommProtocolType)newValue);
                return;
            }
            case 17: {
                this.setDirection((CommProtocolElementDirectionEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setCommProtocolType(null);
                return;
            }
            case 17: {
                this.unsetDirection();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getCommProtocolType() != null;
            }
            case 17: {
                return this.isSetDirection();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (direction: ");
        if (this.directionESet) {
            result.append((Object)this.direction);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

