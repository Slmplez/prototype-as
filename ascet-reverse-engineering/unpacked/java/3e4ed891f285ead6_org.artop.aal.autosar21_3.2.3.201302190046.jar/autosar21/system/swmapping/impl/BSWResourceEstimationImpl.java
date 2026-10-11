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
package autosar21.system.swmapping.impl;

import autosar21.system.swmapping.BSWResourceEstimation;
import autosar21.system.swmapping.EcuResourceEstimation;
import autosar21.system.swmapping.SwmappingPackage;
import autosar21.system.swmapping.impl.ResourceEstimationDetailsImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class BSWResourceEstimationImpl
extends ResourceEstimationDetailsImpl
implements BSWResourceEstimation {
    protected BSWResourceEstimationImpl() {
    }

    protected EClass eStaticClass() {
        return SwmappingPackage.Literals.BSW_RESOURCE_ESTIMATION;
    }

    public EcuResourceEstimation getEcuResourceEstimation() {
        if (this.eContainerFeatureID() != 6) {
            return null;
        }
        return (EcuResourceEstimation)this.eContainer();
    }

    public NotificationChain basicSetEcuResourceEstimation(EcuResourceEstimation newEcuResourceEstimation, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcuResourceEstimation, 6, msgs);
        return msgs;
    }

    public void setEcuResourceEstimation(EcuResourceEstimation newEcuResourceEstimation) {
        if (newEcuResourceEstimation != this.eInternalContainer() || this.eContainerFeatureID() != 6 && newEcuResourceEstimation != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcuResourceEstimation)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcuResourceEstimation != null) {
                msgs = ((InternalEObject)newEcuResourceEstimation).eInverseAdd((InternalEObject)this, 5, EcuResourceEstimation.class, msgs);
            }
            if ((msgs = this.basicSetEcuResourceEstimation(newEcuResourceEstimation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newEcuResourceEstimation, (Object)newEcuResourceEstimation));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEcuResourceEstimation((EcuResourceEstimation)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetEcuResourceEstimation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 6: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, EcuResourceEstimation.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getEcuResourceEstimation();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setEcuResourceEstimation((EcuResourceEstimation)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.setEcuResourceEstimation(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.getEcuResourceEstimation() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

