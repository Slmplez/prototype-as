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
package autosar21.swcomponent.measurementandcalibration.calibrationparameter.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.CalibrationparameterPackage;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxis;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisAxis;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class SwCalprmAxisAxisImpl
extends ARObjectImpl
implements SwCalprmAxisAxis {
    protected SwCalprmAxisAxisImpl() {
    }

    protected EClass eStaticClass() {
        return CalibrationparameterPackage.Literals.SW_CALPRM_AXIS_AXIS;
    }

    public SwCalprmAxis getSwCalprmAxis() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwCalprmAxis)this.eContainer();
    }

    public NotificationChain basicSetSwCalprmAxis(SwCalprmAxis newSwCalprmAxis, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwCalprmAxis, 4, msgs);
        return msgs;
    }

    public void setSwCalprmAxis(SwCalprmAxis newSwCalprmAxis) {
        if (newSwCalprmAxis != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwCalprmAxis != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwCalprmAxis)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwCalprmAxis != null) {
                msgs = ((InternalEObject)newSwCalprmAxis).eInverseAdd((InternalEObject)this, 7, SwCalprmAxis.class, msgs);
            }
            if ((msgs = this.basicSetSwCalprmAxis(newSwCalprmAxis, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwCalprmAxis, (Object)newSwCalprmAxis));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwCalprmAxis((SwCalprmAxis)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwCalprmAxis(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, SwCalprmAxis.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwCalprmAxis();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwCalprmAxis((SwCalprmAxis)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwCalprmAxis(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwCalprmAxis() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

