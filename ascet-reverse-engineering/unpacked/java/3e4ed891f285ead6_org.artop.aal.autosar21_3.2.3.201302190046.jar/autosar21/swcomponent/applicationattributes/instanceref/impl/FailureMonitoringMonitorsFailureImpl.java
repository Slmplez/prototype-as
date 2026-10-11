/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.swcomponent.applicationattributes.instanceref.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.applicationattributes.FailureMonitoring;
import autosar21.swcomponent.applicationattributes.instanceref.FailureMonitoringMonitorsFailure;
import autosar21.swcomponent.applicationattributes.instanceref.InstancerefPackage;
import autosar21.swcomponent.components.PortPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class FailureMonitoringMonitorsFailureImpl
extends ARObjectImpl
implements FailureMonitoringMonitorsFailure,
IReferringClass {
    protected ComponentPrototype componentPrototype;
    protected PortPrototype portPrototype;

    protected FailureMonitoringMonitorsFailureImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.FAILURE_MONITORING_MONITORS_FAILURE;
    }

    public FailureMonitoring getFailureMonitoring() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (FailureMonitoring)this.eContainer();
    }

    public NotificationChain basicSetFailureMonitoring(FailureMonitoring newFailureMonitoring, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFailureMonitoring, 4, msgs);
        return msgs;
    }

    public void setFailureMonitoring(FailureMonitoring newFailureMonitoring) {
        if (newFailureMonitoring != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newFailureMonitoring != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFailureMonitoring)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFailureMonitoring != null) {
                msgs = ((InternalEObject)newFailureMonitoring).eInverseAdd((InternalEObject)this, 5, FailureMonitoring.class, msgs);
            }
            if ((msgs = this.basicSetFailureMonitoring(newFailureMonitoring, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newFailureMonitoring, (Object)newFailureMonitoring));
        }
    }

    public ComponentPrototype getComponentPrototype() {
        if (this.componentPrototype != null && this.componentPrototype.eIsProxy()) {
            InternalEObject oldComponentPrototype = (InternalEObject)this.componentPrototype;
            this.componentPrototype = (ComponentPrototype)this.eResolveProxy(oldComponentPrototype);
            if (this.componentPrototype != oldComponentPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldComponentPrototype, (Object)this.componentPrototype));
            }
        }
        return this.componentPrototype;
    }

    public ComponentPrototype basicGetComponentPrototype() {
        return this.componentPrototype;
    }

    public void setComponentPrototype(ComponentPrototype newComponentPrototype) {
        ComponentPrototype oldComponentPrototype = this.componentPrototype;
        this.componentPrototype = newComponentPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldComponentPrototype, (Object)this.componentPrototype));
        }
    }

    public PortPrototype getPortPrototype() {
        if (this.portPrototype != null && this.portPrototype.eIsProxy()) {
            InternalEObject oldPortPrototype = (InternalEObject)this.portPrototype;
            this.portPrototype = (PortPrototype)this.eResolveProxy(oldPortPrototype);
            if (this.portPrototype != oldPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldPortPrototype, (Object)this.portPrototype));
            }
        }
        return this.portPrototype;
    }

    public PortPrototype basicGetPortPrototype() {
        return this.portPrototype;
    }

    public void setPortPrototype(PortPrototype newPortPrototype) {
        PortPrototype oldPortPrototype = this.portPrototype;
        this.portPrototype = newPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPortPrototype, (Object)this.portPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFailureMonitoring((FailureMonitoring)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetFailureMonitoring(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, FailureMonitoring.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getFailureMonitoring();
            }
            case 5: {
                if (resolve) {
                    return this.getComponentPrototype();
                }
                return this.basicGetComponentPrototype();
            }
            case 6: {
                if (resolve) {
                    return this.getPortPrototype();
                }
                return this.basicGetPortPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setFailureMonitoring((FailureMonitoring)newValue);
                return;
            }
            case 5: {
                this.setComponentPrototype((ComponentPrototype)newValue);
                return;
            }
            case 6: {
                this.setPortPrototype((PortPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setFailureMonitoring(null);
                return;
            }
            case 5: {
                this.setComponentPrototype(null);
                return;
            }
            case 6: {
                this.setPortPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getFailureMonitoring() != null;
            }
            case 5: {
                return this.componentPrototype != null;
            }
            case 6: {
                return this.portPrototype != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

