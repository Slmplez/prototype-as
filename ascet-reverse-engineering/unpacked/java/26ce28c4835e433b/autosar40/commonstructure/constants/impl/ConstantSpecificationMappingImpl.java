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
package autosar40.commonstructure.constants.impl;

import autosar40.commonstructure.constants.ConstantSpecification;
import autosar40.commonstructure.constants.ConstantSpecificationMapping;
import autosar40.commonstructure.constants.ConstantSpecificationMappingSet;
import autosar40.commonstructure.constants.ConstantsPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ConstantSpecificationMappingImpl
extends ARObjectImpl
implements ConstantSpecificationMapping,
IReferringClass {
    protected ConstantSpecification applConstant;
    protected ConstantSpecification implConstant;

    protected ConstantSpecificationMappingImpl() {
    }

    protected EClass eStaticClass() {
        return ConstantsPackage.Literals.CONSTANT_SPECIFICATION_MAPPING;
    }

    public ConstantSpecificationMappingSet getConstantSpecificationMappingSet() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ConstantSpecificationMappingSet)this.eContainer();
    }

    public NotificationChain basicSetConstantSpecificationMappingSet(ConstantSpecificationMappingSet newConstantSpecificationMappingSet, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newConstantSpecificationMappingSet, 4, msgs);
        return msgs;
    }

    public void setConstantSpecificationMappingSet(ConstantSpecificationMappingSet newConstantSpecificationMappingSet) {
        if (newConstantSpecificationMappingSet != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newConstantSpecificationMappingSet != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newConstantSpecificationMappingSet)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newConstantSpecificationMappingSet != null) {
                msgs = ((InternalEObject)newConstantSpecificationMappingSet).eInverseAdd((InternalEObject)this, 21, ConstantSpecificationMappingSet.class, msgs);
            }
            if ((msgs = this.basicSetConstantSpecificationMappingSet(newConstantSpecificationMappingSet, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newConstantSpecificationMappingSet, (Object)newConstantSpecificationMappingSet));
        }
    }

    public ConstantSpecification getApplConstant() {
        if (this.applConstant != null && this.applConstant.eIsProxy()) {
            InternalEObject oldApplConstant = (InternalEObject)this.applConstant;
            this.applConstant = (ConstantSpecification)this.eResolveProxy(oldApplConstant);
            if (this.applConstant != oldApplConstant && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldApplConstant, (Object)this.applConstant));
            }
        }
        return this.applConstant;
    }

    public ConstantSpecification basicGetApplConstant() {
        return this.applConstant;
    }

    public void setApplConstant(ConstantSpecification newApplConstant) {
        ConstantSpecification oldApplConstant = this.applConstant;
        this.applConstant = newApplConstant;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldApplConstant, (Object)this.applConstant));
        }
    }

    public ConstantSpecification getImplConstant() {
        if (this.implConstant != null && this.implConstant.eIsProxy()) {
            InternalEObject oldImplConstant = (InternalEObject)this.implConstant;
            this.implConstant = (ConstantSpecification)this.eResolveProxy(oldImplConstant);
            if (this.implConstant != oldImplConstant && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldImplConstant, (Object)this.implConstant));
            }
        }
        return this.implConstant;
    }

    public ConstantSpecification basicGetImplConstant() {
        return this.implConstant;
    }

    public void setImplConstant(ConstantSpecification newImplConstant) {
        ConstantSpecification oldImplConstant = this.implConstant;
        this.implConstant = newImplConstant;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldImplConstant, (Object)this.implConstant));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetConstantSpecificationMappingSet((ConstantSpecificationMappingSet)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetConstantSpecificationMappingSet(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, ConstantSpecificationMappingSet.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getConstantSpecificationMappingSet();
            }
            case 5: {
                if (resolve) {
                    return this.getApplConstant();
                }
                return this.basicGetApplConstant();
            }
            case 6: {
                if (resolve) {
                    return this.getImplConstant();
                }
                return this.basicGetImplConstant();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setConstantSpecificationMappingSet((ConstantSpecificationMappingSet)newValue);
                return;
            }
            case 5: {
                this.setApplConstant((ConstantSpecification)newValue);
                return;
            }
            case 6: {
                this.setImplConstant((ConstantSpecification)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setConstantSpecificationMappingSet(null);
                return;
            }
            case 5: {
                this.setApplConstant(null);
                return;
            }
            case 6: {
                this.setImplConstant(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getConstantSpecificationMappingSet() != null;
            }
            case 5: {
                return this.applConstant != null;
            }
            case 6: {
                return this.implConstant != null;
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

