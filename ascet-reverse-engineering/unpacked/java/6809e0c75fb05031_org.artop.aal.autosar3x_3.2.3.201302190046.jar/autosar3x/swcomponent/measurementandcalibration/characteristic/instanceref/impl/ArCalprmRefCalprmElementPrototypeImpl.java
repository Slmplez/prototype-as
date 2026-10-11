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
package autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.composition.ComponentPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.ArCalprmRef;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.ArCalprmRefCalprmElementPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.InstancerefPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ArCalprmRefCalprmElementPrototypeImpl
extends ARObjectImpl
implements ArCalprmRefCalprmElementPrototype,
IReferringClass {
    protected ComponentPrototype componentPrototype;
    protected PortPrototype portPrototype;
    protected CalprmElementPrototype calprmElementPrototype;

    protected ArCalprmRefCalprmElementPrototypeImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.AR_CALPRM_REF_CALPRM_ELEMENT_PROTOTYPE;
    }

    public ArCalprmRef getArCalprmRef() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ArCalprmRef)this.eContainer();
    }

    public NotificationChain basicSetArCalprmRef(ArCalprmRef newArCalprmRef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newArCalprmRef, 4, msgs);
        return msgs;
    }

    public void setArCalprmRef(ArCalprmRef newArCalprmRef) {
        if (newArCalprmRef != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newArCalprmRef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newArCalprmRef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newArCalprmRef != null) {
                msgs = ((InternalEObject)newArCalprmRef).eInverseAdd((InternalEObject)this, 4, ArCalprmRef.class, msgs);
            }
            if ((msgs = this.basicSetArCalprmRef(newArCalprmRef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newArCalprmRef, (Object)newArCalprmRef));
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

    public CalprmElementPrototype getCalprmElementPrototype() {
        if (this.calprmElementPrototype != null && this.calprmElementPrototype.eIsProxy()) {
            InternalEObject oldCalprmElementPrototype = (InternalEObject)this.calprmElementPrototype;
            this.calprmElementPrototype = (CalprmElementPrototype)this.eResolveProxy(oldCalprmElementPrototype);
            if (this.calprmElementPrototype != oldCalprmElementPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldCalprmElementPrototype, (Object)this.calprmElementPrototype));
            }
        }
        return this.calprmElementPrototype;
    }

    public CalprmElementPrototype basicGetCalprmElementPrototype() {
        return this.calprmElementPrototype;
    }

    public void setCalprmElementPrototype(CalprmElementPrototype newCalprmElementPrototype) {
        CalprmElementPrototype oldCalprmElementPrototype = this.calprmElementPrototype;
        this.calprmElementPrototype = newCalprmElementPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldCalprmElementPrototype, (Object)this.calprmElementPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetArCalprmRef((ArCalprmRef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetArCalprmRef(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, ArCalprmRef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getArCalprmRef();
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
            case 7: {
                if (resolve) {
                    return this.getCalprmElementPrototype();
                }
                return this.basicGetCalprmElementPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setArCalprmRef((ArCalprmRef)newValue);
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
            case 7: {
                this.setCalprmElementPrototype((CalprmElementPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setArCalprmRef(null);
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
            case 7: {
                this.setCalprmElementPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getArCalprmRef() != null;
            }
            case 5: {
                return this.componentPrototype != null;
            }
            case 6: {
                return this.portPrototype != null;
            }
            case 7: {
                return this.calprmElementPrototype != null;
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

