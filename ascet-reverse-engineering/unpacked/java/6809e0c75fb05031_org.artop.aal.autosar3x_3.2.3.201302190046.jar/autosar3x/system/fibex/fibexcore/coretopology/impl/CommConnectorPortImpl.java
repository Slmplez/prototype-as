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
package autosar3x.system.fibex.fibexcore.coretopology.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.CommunicationDirectionType;
import autosar3x.system.fibex.fibexcore.coretopology.CommConnectorPort;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar3x.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class CommConnectorPortImpl
extends IdentifiableImpl
implements CommConnectorPort {
    protected static final CommunicationDirectionType COMMUNICATION_DIRECTION_EDEFAULT = CommunicationDirectionType.IN;
    protected CommunicationDirectionType communicationDirection = COMMUNICATION_DIRECTION_EDEFAULT;
    protected boolean communicationDirectionESet;

    protected CommConnectorPortImpl() {
    }

    protected EClass eStaticClass() {
        return CoretopologyPackage.Literals.COMM_CONNECTOR_PORT;
    }

    public CommunicationConnector getCommunicationConnector() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (CommunicationConnector)this.eContainer();
    }

    public NotificationChain basicSetCommunicationConnector(CommunicationConnector newCommunicationConnector, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommunicationConnector, 17, msgs);
        return msgs;
    }

    public void setCommunicationConnector(CommunicationConnector newCommunicationConnector) {
        if (newCommunicationConnector != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newCommunicationConnector != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommunicationConnector)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommunicationConnector != null) {
                msgs = ((InternalEObject)newCommunicationConnector).eInverseAdd((InternalEObject)this, 20, CommunicationConnector.class, msgs);
            }
            if ((msgs = this.basicSetCommunicationConnector(newCommunicationConnector, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newCommunicationConnector, (Object)newCommunicationConnector));
        }
    }

    public CommunicationDirectionType getCommunicationDirection() {
        return this.communicationDirection;
    }

    public void setCommunicationDirection(CommunicationDirectionType newCommunicationDirection) {
        CommunicationDirectionType oldCommunicationDirection = this.communicationDirection;
        this.communicationDirection = newCommunicationDirection == null ? COMMUNICATION_DIRECTION_EDEFAULT : newCommunicationDirection;
        boolean oldCommunicationDirectionESet = this.communicationDirectionESet;
        this.communicationDirectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldCommunicationDirection, (Object)this.communicationDirection, !oldCommunicationDirectionESet));
        }
    }

    public void unsetCommunicationDirection() {
        CommunicationDirectionType oldCommunicationDirection = this.communicationDirection;
        boolean oldCommunicationDirectionESet = this.communicationDirectionESet;
        this.communicationDirection = COMMUNICATION_DIRECTION_EDEFAULT;
        this.communicationDirectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldCommunicationDirection, (Object)COMMUNICATION_DIRECTION_EDEFAULT, oldCommunicationDirectionESet));
        }
    }

    public boolean isSetCommunicationDirection() {
        return this.communicationDirectionESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommunicationConnector((CommunicationConnector)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetCommunicationConnector(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, CommunicationConnector.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getCommunicationConnector();
            }
            case 18: {
                return this.getCommunicationDirection();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setCommunicationConnector((CommunicationConnector)newValue);
                return;
            }
            case 18: {
                this.setCommunicationDirection((CommunicationDirectionType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setCommunicationConnector(null);
                return;
            }
            case 18: {
                this.unsetCommunicationDirection();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getCommunicationConnector() != null;
            }
            case 18: {
                return this.isSetCommunicationDirection();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (communicationDirection: ");
        if (this.communicationDirectionESet) {
            result.append((Object)this.communicationDirection);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

