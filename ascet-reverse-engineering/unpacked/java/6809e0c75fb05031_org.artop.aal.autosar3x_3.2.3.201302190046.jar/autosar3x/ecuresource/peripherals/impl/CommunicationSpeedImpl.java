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
package autosar3x.ecuresource.peripherals.impl;

import autosar3x.ecuresource.peripherals.CommunicationHWPort;
import autosar3x.ecuresource.peripherals.CommunicationSpeed;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class CommunicationSpeedImpl
extends ARObjectImpl
implements CommunicationSpeed {
    protected static final Double TOLERANCE_EDEFAULT = new Double(0.0);
    protected Double tolerance = TOLERANCE_EDEFAULT;
    protected boolean toleranceESet;

    protected CommunicationSpeedImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.COMMUNICATION_SPEED;
    }

    public CommunicationHWPort getCommunicationHWPort() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CommunicationHWPort)this.eContainer();
    }

    public NotificationChain basicSetCommunicationHWPort(CommunicationHWPort newCommunicationHWPort, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommunicationHWPort, 4, msgs);
        return msgs;
    }

    public void setCommunicationHWPort(CommunicationHWPort newCommunicationHWPort) {
        if (newCommunicationHWPort != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCommunicationHWPort != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommunicationHWPort)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommunicationHWPort != null) {
                msgs = ((InternalEObject)newCommunicationHWPort).eInverseAdd((InternalEObject)this, 26, CommunicationHWPort.class, msgs);
            }
            if ((msgs = this.basicSetCommunicationHWPort(newCommunicationHWPort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCommunicationHWPort, (Object)newCommunicationHWPort));
        }
    }

    public Double getTolerance() {
        return this.tolerance;
    }

    public void setTolerance(Double newTolerance) {
        Double oldTolerance = this.tolerance;
        this.tolerance = newTolerance;
        boolean oldToleranceESet = this.toleranceESet;
        this.toleranceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldTolerance, (Object)this.tolerance, !oldToleranceESet));
        }
    }

    public void unsetTolerance() {
        Double oldTolerance = this.tolerance;
        boolean oldToleranceESet = this.toleranceESet;
        this.tolerance = TOLERANCE_EDEFAULT;
        this.toleranceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldTolerance, (Object)TOLERANCE_EDEFAULT, oldToleranceESet));
        }
    }

    public boolean isSetTolerance() {
        return this.toleranceESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommunicationHWPort((CommunicationHWPort)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCommunicationHWPort(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 26, CommunicationHWPort.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCommunicationHWPort();
            }
            case 5: {
                return this.getTolerance();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCommunicationHWPort((CommunicationHWPort)newValue);
                return;
            }
            case 5: {
                this.setTolerance((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCommunicationHWPort(null);
                return;
            }
            case 5: {
                this.unsetTolerance();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCommunicationHWPort() != null;
            }
            case 5: {
                return this.isSetTolerance();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (tolerance: ");
        if (this.toleranceESet) {
            result.append(this.tolerance);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

