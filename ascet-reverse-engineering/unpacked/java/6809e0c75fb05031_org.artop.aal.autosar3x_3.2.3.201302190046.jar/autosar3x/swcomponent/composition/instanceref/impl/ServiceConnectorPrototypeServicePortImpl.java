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
package autosar3x.swcomponent.composition.instanceref.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.composition.ServiceConnectorPrototype;
import autosar3x.swcomponent.composition.instanceref.InstancerefPackage;
import autosar3x.swcomponent.composition.instanceref.ServiceConnectorPrototypeServicePort;
import autosar3x.swcomponent.services.ServiceComponentPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ServiceConnectorPrototypeServicePortImpl
extends ARObjectImpl
implements ServiceConnectorPrototypeServicePort,
IReferringClass {
    protected ServiceComponentPrototype serviceComponentPrototype;
    protected PortPrototype portPrototype;

    protected ServiceConnectorPrototypeServicePortImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.SERVICE_CONNECTOR_PROTOTYPE_SERVICE_PORT;
    }

    public ServiceConnectorPrototype getServiceConnectorPrototype() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ServiceConnectorPrototype)this.eContainer();
    }

    public NotificationChain basicSetServiceConnectorPrototype(ServiceConnectorPrototype newServiceConnectorPrototype, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newServiceConnectorPrototype, 4, msgs);
        return msgs;
    }

    public void setServiceConnectorPrototype(ServiceConnectorPrototype newServiceConnectorPrototype) {
        if (newServiceConnectorPrototype != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newServiceConnectorPrototype != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newServiceConnectorPrototype)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newServiceConnectorPrototype != null) {
                msgs = ((InternalEObject)newServiceConnectorPrototype).eInverseAdd((InternalEObject)this, 20, ServiceConnectorPrototype.class, msgs);
            }
            if ((msgs = this.basicSetServiceConnectorPrototype(newServiceConnectorPrototype, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newServiceConnectorPrototype, (Object)newServiceConnectorPrototype));
        }
    }

    public ServiceComponentPrototype getServiceComponentPrototype() {
        if (this.serviceComponentPrototype != null && this.serviceComponentPrototype.eIsProxy()) {
            InternalEObject oldServiceComponentPrototype = (InternalEObject)this.serviceComponentPrototype;
            this.serviceComponentPrototype = (ServiceComponentPrototype)this.eResolveProxy(oldServiceComponentPrototype);
            if (this.serviceComponentPrototype != oldServiceComponentPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldServiceComponentPrototype, (Object)this.serviceComponentPrototype));
            }
        }
        return this.serviceComponentPrototype;
    }

    public ServiceComponentPrototype basicGetServiceComponentPrototype() {
        return this.serviceComponentPrototype;
    }

    public void setServiceComponentPrototype(ServiceComponentPrototype newServiceComponentPrototype) {
        ServiceComponentPrototype oldServiceComponentPrototype = this.serviceComponentPrototype;
        this.serviceComponentPrototype = newServiceComponentPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldServiceComponentPrototype, (Object)this.serviceComponentPrototype));
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
                return this.basicSetServiceConnectorPrototype((ServiceConnectorPrototype)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetServiceConnectorPrototype(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, ServiceConnectorPrototype.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getServiceConnectorPrototype();
            }
            case 5: {
                if (resolve) {
                    return this.getServiceComponentPrototype();
                }
                return this.basicGetServiceComponentPrototype();
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
                this.setServiceConnectorPrototype((ServiceConnectorPrototype)newValue);
                return;
            }
            case 5: {
                this.setServiceComponentPrototype((ServiceComponentPrototype)newValue);
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
                this.setServiceConnectorPrototype(null);
                return;
            }
            case 5: {
                this.setServiceComponentPrototype(null);
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
                return this.getServiceConnectorPrototype() != null;
            }
            case 5: {
                return this.serviceComponentPrototype != null;
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

