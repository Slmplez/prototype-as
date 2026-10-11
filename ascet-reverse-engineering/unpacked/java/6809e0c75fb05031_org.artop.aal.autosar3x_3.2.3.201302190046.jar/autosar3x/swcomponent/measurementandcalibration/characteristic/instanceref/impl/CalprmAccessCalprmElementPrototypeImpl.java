/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GPortPrototype
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
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
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmAccess;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.CalprmAccessCalprmElementPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.InstancerefPackage;
import gautosar.gswcomponents.gcomponents.GPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CalprmAccessCalprmElementPrototypeImpl
extends ARObjectImpl
implements CalprmAccessCalprmElementPrototype,
IReferringClass {
    protected ComponentPrototype componentPrototype;
    protected PortPrototype portPrototype;
    protected CalprmElementPrototype calprmElementPrototype;

    protected CalprmAccessCalprmElementPrototypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE;
    }

    public GPortPrototype gGetContextPort() {
        return this.getPortPrototype();
    }

    public void gSetContextPort(GPortPrototype newGContextPort) {
        this.setPortPrototype((PortPrototype)newGContextPort);
    }

    public GDataPrototype gGetTargetParameter() {
        return this.getCalprmElementPrototype();
    }

    public void gSetTargetParameter(GDataPrototype newGTargetParameter) {
        this.setCalprmElementPrototype((CalprmElementPrototype)newGTargetParameter);
    }

    @Override
    public CalprmAccess getCalprmAccess() {
        if (this.eContainerFeatureID() != 6) {
            return null;
        }
        return (CalprmAccess)this.eContainer();
    }

    public NotificationChain basicSetCalprmAccess(CalprmAccess newCalprmAccess, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCalprmAccess, 6, msgs);
        return msgs;
    }

    @Override
    public void setCalprmAccess(CalprmAccess newCalprmAccess) {
        if (newCalprmAccess != this.eInternalContainer() || this.eContainerFeatureID() != 6 && newCalprmAccess != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCalprmAccess)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCalprmAccess != null) {
                msgs = ((InternalEObject)newCalprmAccess).eInverseAdd((InternalEObject)this, 19, CalprmAccess.class, msgs);
            }
            if ((msgs = this.basicSetCalprmAccess(newCalprmAccess, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newCalprmAccess, (Object)newCalprmAccess));
        }
    }

    @Override
    public ComponentPrototype getComponentPrototype() {
        if (this.componentPrototype != null && this.componentPrototype.eIsProxy()) {
            InternalEObject oldComponentPrototype = (InternalEObject)this.componentPrototype;
            this.componentPrototype = (ComponentPrototype)this.eResolveProxy(oldComponentPrototype);
            if (this.componentPrototype != oldComponentPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldComponentPrototype, (Object)this.componentPrototype));
            }
        }
        return this.componentPrototype;
    }

    public ComponentPrototype basicGetComponentPrototype() {
        return this.componentPrototype;
    }

    @Override
    public void setComponentPrototype(ComponentPrototype newComponentPrototype) {
        ComponentPrototype oldComponentPrototype = this.componentPrototype;
        this.componentPrototype = newComponentPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldComponentPrototype, (Object)this.componentPrototype));
        }
    }

    @Override
    public PortPrototype getPortPrototype() {
        if (this.portPrototype != null && this.portPrototype.eIsProxy()) {
            InternalEObject oldPortPrototype = (InternalEObject)this.portPrototype;
            this.portPrototype = (PortPrototype)this.eResolveProxy(oldPortPrototype);
            if (this.portPrototype != oldPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldPortPrototype, (Object)this.portPrototype));
            }
        }
        return this.portPrototype;
    }

    public PortPrototype basicGetPortPrototype() {
        return this.portPrototype;
    }

    @Override
    public void setPortPrototype(PortPrototype newPortPrototype) {
        PortPrototype oldPortPrototype = this.portPrototype;
        this.portPrototype = newPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldPortPrototype, (Object)this.portPrototype));
        }
    }

    @Override
    public CalprmElementPrototype getCalprmElementPrototype() {
        if (this.calprmElementPrototype != null && this.calprmElementPrototype.eIsProxy()) {
            InternalEObject oldCalprmElementPrototype = (InternalEObject)this.calprmElementPrototype;
            this.calprmElementPrototype = (CalprmElementPrototype)this.eResolveProxy(oldCalprmElementPrototype);
            if (this.calprmElementPrototype != oldCalprmElementPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldCalprmElementPrototype, (Object)this.calprmElementPrototype));
            }
        }
        return this.calprmElementPrototype;
    }

    public CalprmElementPrototype basicGetCalprmElementPrototype() {
        return this.calprmElementPrototype;
    }

    @Override
    public void setCalprmElementPrototype(CalprmElementPrototype newCalprmElementPrototype) {
        CalprmElementPrototype oldCalprmElementPrototype = this.calprmElementPrototype;
        this.calprmElementPrototype = newCalprmElementPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldCalprmElementPrototype, (Object)this.calprmElementPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCalprmAccess((CalprmAccess)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetCalprmAccess(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 6: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, CalprmAccess.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetContextPort();
            }
            case 5: {
                return this.gGetTargetParameter();
            }
            case 6: {
                return this.getCalprmAccess();
            }
            case 7: {
                if (resolve) {
                    return this.getComponentPrototype();
                }
                return this.basicGetComponentPrototype();
            }
            case 8: {
                if (resolve) {
                    return this.getPortPrototype();
                }
                return this.basicGetPortPrototype();
            }
            case 9: {
                if (resolve) {
                    return this.getCalprmElementPrototype();
                }
                return this.basicGetCalprmElementPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gSetContextPort((GPortPrototype)newValue);
                return;
            }
            case 5: {
                this.gSetTargetParameter((GDataPrototype)newValue);
                return;
            }
            case 6: {
                this.setCalprmAccess((CalprmAccess)newValue);
                return;
            }
            case 7: {
                this.setComponentPrototype((ComponentPrototype)newValue);
                return;
            }
            case 8: {
                this.setPortPrototype((PortPrototype)newValue);
                return;
            }
            case 9: {
                this.setCalprmElementPrototype((CalprmElementPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gSetContextPort(null);
                return;
            }
            case 5: {
                this.gSetTargetParameter(null);
                return;
            }
            case 6: {
                this.setCalprmAccess(null);
                return;
            }
            case 7: {
                this.setComponentPrototype(null);
                return;
            }
            case 8: {
                this.setPortPrototype(null);
                return;
            }
            case 9: {
                this.setCalprmElementPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.gGetContextPort() != null;
            }
            case 5: {
                return this.gGetTargetParameter() != null;
            }
            case 6: {
                return this.getCalprmAccess() != null;
            }
            case 7: {
                return this.componentPrototype != null;
            }
            case 8: {
                return this.portPrototype != null;
            }
            case 9: {
                return this.calprmElementPrototype != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GParameterInAtomicSwcIRef.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
                case 5: {
                    return 3;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GParameterInAtomicSwcIRef.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
                case 3: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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

