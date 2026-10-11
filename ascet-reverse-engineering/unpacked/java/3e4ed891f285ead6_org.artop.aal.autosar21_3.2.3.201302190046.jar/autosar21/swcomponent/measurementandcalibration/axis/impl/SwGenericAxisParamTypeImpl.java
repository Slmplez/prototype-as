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

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.measurementandcalibration.axis.AxisPackage;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisType;
import autosar21.swcomponent.measurementandcalibration.axis.SwGenericAxisParamType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwGenericAxisParamTypeImpl
extends IdentifiableImpl
implements SwGenericAxisParamType {
    protected SwGenericAxisParamTypeImpl() {
    }

    protected EClass eStaticClass() {
        return AxisPackage.Literals.SW_GENERIC_AXIS_PARAM_TYPE;
    }

    public SwAxisType getSwAxisType() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (SwAxisType)this.eContainer();
    }

    public NotificationChain basicSetSwAxisType(SwAxisType newSwAxisType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwAxisType, 16, msgs);
        return msgs;
    }

    public void setSwAxisType(SwAxisType newSwAxisType) {
        if (newSwAxisType != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newSwAxisType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwAxisType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwAxisType != null) {
                msgs = ((InternalEObject)newSwAxisType).eInverseAdd((InternalEObject)this, 18, SwAxisType.class, msgs);
            }
            if ((msgs = this.basicSetSwAxisType(newSwAxisType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newSwAxisType, (Object)newSwAxisType));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwAxisType((SwAxisType)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetSwAxisType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, SwAxisType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getSwAxisType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setSwAxisType((SwAxisType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setSwAxisType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getSwAxisType() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

