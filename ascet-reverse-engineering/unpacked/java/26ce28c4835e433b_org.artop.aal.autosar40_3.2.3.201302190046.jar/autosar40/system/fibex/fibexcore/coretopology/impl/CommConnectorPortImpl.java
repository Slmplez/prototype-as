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
package autosar40.system.fibex.fibexcore.coretopology.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.CommunicationDirectionType;
import autosar40.system.fibex.fibexcore.coretopology.CommConnectorPort;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar40.system.fibex.fibexcore.coretopology.CoretopologyPackage;
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
    protected VariationPoint variationPoint;

    protected CommConnectorPortImpl() {
    }

    protected EClass eStaticClass() {
        return CoretopologyPackage.Literals.COMM_CONNECTOR_PORT;
    }

    public CommunicationConnector getCommunicationConnector() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (CommunicationConnector)this.eContainer();
    }

    public NotificationChain basicSetCommunicationConnector(CommunicationConnector newCommunicationConnector, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommunicationConnector, 18, msgs);
        return msgs;
    }

    public void setCommunicationConnector(CommunicationConnector newCommunicationConnector) {
        if (newCommunicationConnector != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newCommunicationConnector != null) {
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newCommunicationConnector, (Object)newCommunicationConnector));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldCommunicationDirection, (Object)this.communicationDirection, !oldCommunicationDirectionESet));
        }
    }

    public void unsetCommunicationDirection() {
        CommunicationDirectionType oldCommunicationDirection = this.communicationDirection;
        boolean oldCommunicationDirectionESet = this.communicationDirectionESet;
        this.communicationDirection = COMMUNICATION_DIRECTION_EDEFAULT;
        this.communicationDirectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldCommunicationDirection, (Object)COMMUNICATION_DIRECTION_EDEFAULT, oldCommunicationDirectionESet));
        }
    }

    public boolean isSetCommunicationDirection() {
        return this.communicationDirectionESet;
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
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
            case 18: {
                return this.basicSetCommunicationConnector(null, msgs);
            }
            case 20: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, CommunicationConnector.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getCommunicationConnector();
            }
            case 19: {
                return this.getCommunicationDirection();
            }
            case 20: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setCommunicationConnector((CommunicationConnector)newValue);
                return;
            }
            case 19: {
                this.setCommunicationDirection((CommunicationDirectionType)((Object)newValue));
                return;
            }
            case 20: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setCommunicationConnector(null);
                return;
            }
            case 19: {
                this.unsetCommunicationDirection();
                return;
            }
            case 20: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getCommunicationConnector() != null;
            }
            case 19: {
                return this.isSetCommunicationDirection();
            }
            case 20: {
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

