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
package autosar21.swcomponent.measurementandcalibration.axis.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.measurementandcalibration.axis.AxisPackage;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisGrouped;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisCommonAxis;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwCalprmRefProxy;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwAxisGroupedImpl
extends ARObjectImpl
implements SwAxisGrouped {
    protected SwCalprmRefProxy swCalprm;

    protected SwAxisGroupedImpl() {
    }

    protected EClass eStaticClass() {
        return AxisPackage.Literals.SW_AXIS_GROUPED;
    }

    public SwCalprmAxisCommonAxis getSwCalprmAxisCommonAxis() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwCalprmAxisCommonAxis)this.eContainer();
    }

    public NotificationChain basicSetSwCalprmAxisCommonAxis(SwCalprmAxisCommonAxis newSwCalprmAxisCommonAxis, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwCalprmAxisCommonAxis, 4, msgs);
        return msgs;
    }

    public void setSwCalprmAxisCommonAxis(SwCalprmAxisCommonAxis newSwCalprmAxisCommonAxis) {
        if (newSwCalprmAxisCommonAxis != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwCalprmAxisCommonAxis != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwCalprmAxisCommonAxis)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwCalprmAxisCommonAxis != null) {
                msgs = ((InternalEObject)newSwCalprmAxisCommonAxis).eInverseAdd((InternalEObject)this, 5, SwCalprmAxisCommonAxis.class, msgs);
            }
            if ((msgs = this.basicSetSwCalprmAxisCommonAxis(newSwCalprmAxisCommonAxis, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwCalprmAxisCommonAxis, (Object)newSwCalprmAxisCommonAxis));
        }
    }

    public SwCalprmRefProxy getSwCalprm() {
        return this.swCalprm;
    }

    public NotificationChain basicSetSwCalprm(SwCalprmRefProxy newSwCalprm, NotificationChain msgs) {
        SwCalprmRefProxy oldSwCalprm = this.swCalprm;
        this.swCalprm = newSwCalprm;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwCalprm, (Object)newSwCalprm);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwCalprm(SwCalprmRefProxy newSwCalprm) {
        if (newSwCalprm != this.swCalprm) {
            NotificationChain msgs = null;
            if (this.swCalprm != null) {
                msgs = ((InternalEObject)this.swCalprm).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newSwCalprm != null) {
                msgs = ((InternalEObject)newSwCalprm).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetSwCalprm(newSwCalprm, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newSwCalprm, (Object)newSwCalprm));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwCalprmAxisCommonAxis((SwCalprmAxisCommonAxis)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwCalprmAxisCommonAxis(null, msgs);
            }
            case 5: {
                return this.basicSetSwCalprm(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, SwCalprmAxisCommonAxis.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwCalprmAxisCommonAxis();
            }
            case 5: {
                return this.getSwCalprm();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwCalprmAxisCommonAxis((SwCalprmAxisCommonAxis)newValue);
                return;
            }
            case 5: {
                this.setSwCalprm((SwCalprmRefProxy)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwCalprmAxisCommonAxis(null);
                return;
            }
            case 5: {
                this.setSwCalprm(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwCalprmAxisCommonAxis() != null;
            }
            case 5: {
                return this.swCalprm != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

