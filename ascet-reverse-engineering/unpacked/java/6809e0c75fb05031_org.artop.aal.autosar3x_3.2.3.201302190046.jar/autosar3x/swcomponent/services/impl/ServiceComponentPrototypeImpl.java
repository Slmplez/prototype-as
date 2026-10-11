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
package autosar3x.swcomponent.services.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.swcomponent.components.ServiceComponentType;
import autosar3x.swcomponent.services.EcuSwComposition;
import autosar3x.swcomponent.services.ServiceComponentPrototype;
import autosar3x.swcomponent.services.ServicesPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ServiceComponentPrototypeImpl
extends IdentifiableImpl
implements ServiceComponentPrototype,
IReferringClass {
    protected ServiceComponentType serviceComponent;

    protected ServiceComponentPrototypeImpl() {
    }

    protected EClass eStaticClass() {
        return ServicesPackage.Literals.SERVICE_COMPONENT_PROTOTYPE;
    }

    public EcuSwComposition getEcuSwComposition() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (EcuSwComposition)this.eContainer();
    }

    public NotificationChain basicSetEcuSwComposition(EcuSwComposition newEcuSwComposition, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcuSwComposition, 17, msgs);
        return msgs;
    }

    public void setEcuSwComposition(EcuSwComposition newEcuSwComposition) {
        if (newEcuSwComposition != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newEcuSwComposition != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcuSwComposition)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcuSwComposition != null) {
                msgs = ((InternalEObject)newEcuSwComposition).eInverseAdd((InternalEObject)this, 19, EcuSwComposition.class, msgs);
            }
            if ((msgs = this.basicSetEcuSwComposition(newEcuSwComposition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newEcuSwComposition, (Object)newEcuSwComposition));
        }
    }

    public ServiceComponentType getServiceComponent() {
        if (this.serviceComponent != null && this.serviceComponent.eIsProxy()) {
            InternalEObject oldServiceComponent = (InternalEObject)this.serviceComponent;
            this.serviceComponent = (ServiceComponentType)this.eResolveProxy(oldServiceComponent);
            if (this.serviceComponent != oldServiceComponent && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldServiceComponent, (Object)this.serviceComponent));
            }
        }
        return this.serviceComponent;
    }

    public ServiceComponentType basicGetServiceComponent() {
        return this.serviceComponent;
    }

    public void setServiceComponent(ServiceComponentType newServiceComponent) {
        ServiceComponentType oldServiceComponent = this.serviceComponent;
        this.serviceComponent = newServiceComponent;
        AutosarObjectUtil.setDest((EObject)this, (int)18, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldServiceComponent, (Object)this.serviceComponent));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEcuSwComposition((EcuSwComposition)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetEcuSwComposition(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, EcuSwComposition.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getEcuSwComposition();
            }
            case 18: {
                if (resolve) {
                    return this.getServiceComponent();
                }
                return this.basicGetServiceComponent();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setEcuSwComposition((EcuSwComposition)newValue);
                return;
            }
            case 18: {
                this.setServiceComponent((ServiceComponentType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setEcuSwComposition(null);
                return;
            }
            case 18: {
                this.setServiceComponent(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getEcuSwComposition() != null;
            }
            case 18: {
                return this.serviceComponent != null;
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

