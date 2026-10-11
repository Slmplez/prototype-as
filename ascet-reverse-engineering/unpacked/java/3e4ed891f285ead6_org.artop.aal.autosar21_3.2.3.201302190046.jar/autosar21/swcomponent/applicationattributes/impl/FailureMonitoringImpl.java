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
package autosar21.swcomponent.applicationattributes.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar21.swcomponent.applicationattributes.FailureMonitoring;
import autosar21.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar21.swcomponent.applicationattributes.instanceref.FailureMonitoringMonitorsFailure;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class FailureMonitoringImpl
extends ARObjectImpl
implements FailureMonitoring {
    protected FailureMonitoringMonitorsFailure monitorsFailure;

    protected FailureMonitoringImpl() {
    }

    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.FAILURE_MONITORING;
    }

    public IoHwAbstractionServerAnnotation getIoHwAbstractionServerAnnotation() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (IoHwAbstractionServerAnnotation)this.eContainer();
    }

    public NotificationChain basicSetIoHwAbstractionServerAnnotation(IoHwAbstractionServerAnnotation newIoHwAbstractionServerAnnotation, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newIoHwAbstractionServerAnnotation, 4, msgs);
        return msgs;
    }

    public void setIoHwAbstractionServerAnnotation(IoHwAbstractionServerAnnotation newIoHwAbstractionServerAnnotation) {
        if (newIoHwAbstractionServerAnnotation != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newIoHwAbstractionServerAnnotation != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newIoHwAbstractionServerAnnotation)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newIoHwAbstractionServerAnnotation != null) {
                msgs = ((InternalEObject)newIoHwAbstractionServerAnnotation).eInverseAdd((InternalEObject)this, 12, IoHwAbstractionServerAnnotation.class, msgs);
            }
            if ((msgs = this.basicSetIoHwAbstractionServerAnnotation(newIoHwAbstractionServerAnnotation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newIoHwAbstractionServerAnnotation, (Object)newIoHwAbstractionServerAnnotation));
        }
    }

    public FailureMonitoringMonitorsFailure getMonitorsFailure() {
        return this.monitorsFailure;
    }

    public NotificationChain basicSetMonitorsFailure(FailureMonitoringMonitorsFailure newMonitorsFailure, NotificationChain msgs) {
        FailureMonitoringMonitorsFailure oldMonitorsFailure = this.monitorsFailure;
        this.monitorsFailure = newMonitorsFailure;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMonitorsFailure, (Object)newMonitorsFailure);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMonitorsFailure(FailureMonitoringMonitorsFailure newMonitorsFailure) {
        if (newMonitorsFailure != this.monitorsFailure) {
            NotificationChain msgs = null;
            if (this.monitorsFailure != null) {
                msgs = ((InternalEObject)this.monitorsFailure).eInverseRemove((InternalEObject)this, 4, FailureMonitoringMonitorsFailure.class, msgs);
            }
            if (newMonitorsFailure != null) {
                msgs = ((InternalEObject)newMonitorsFailure).eInverseAdd((InternalEObject)this, 4, FailureMonitoringMonitorsFailure.class, msgs);
            }
            if ((msgs = this.basicSetMonitorsFailure(newMonitorsFailure, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newMonitorsFailure, (Object)newMonitorsFailure));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetIoHwAbstractionServerAnnotation((IoHwAbstractionServerAnnotation)otherEnd, msgs);
            }
            case 5: {
                if (this.monitorsFailure != null) {
                    msgs = ((InternalEObject)this.monitorsFailure).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetMonitorsFailure((FailureMonitoringMonitorsFailure)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetIoHwAbstractionServerAnnotation(null, msgs);
            }
            case 5: {
                return this.basicSetMonitorsFailure(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 12, IoHwAbstractionServerAnnotation.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getIoHwAbstractionServerAnnotation();
            }
            case 5: {
                return this.getMonitorsFailure();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setIoHwAbstractionServerAnnotation((IoHwAbstractionServerAnnotation)newValue);
                return;
            }
            case 5: {
                this.setMonitorsFailure((FailureMonitoringMonitorsFailure)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setIoHwAbstractionServerAnnotation(null);
                return;
            }
            case 5: {
                this.setMonitorsFailure(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getIoHwAbstractionServerAnnotation() != null;
            }
            case 5: {
                return this.monitorsFailure != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

