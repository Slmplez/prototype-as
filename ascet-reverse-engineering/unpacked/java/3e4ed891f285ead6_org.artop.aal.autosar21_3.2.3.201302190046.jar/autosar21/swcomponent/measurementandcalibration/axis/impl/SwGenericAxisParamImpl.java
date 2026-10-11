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
package autosar21.swcomponent.measurementandcalibration.axis.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.measurementandcalibration.axis.AxisPackage;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisGeneric;
import autosar21.swcomponent.measurementandcalibration.axis.SwGenericAxisParam;
import autosar21.swcomponent.measurementandcalibration.axis.SwGenericAxisParamType;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwGenericAxisParamValue;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwGenericAxisParamImpl
extends ARObjectImpl
implements SwGenericAxisParam,
IReferringClass {
    protected SwGenericAxisParamType swGenericAxisParamType;
    protected SwGenericAxisParamValue swGenericAxisParamValue;

    protected SwGenericAxisParamImpl() {
    }

    protected EClass eStaticClass() {
        return AxisPackage.Literals.SW_GENERIC_AXIS_PARAM;
    }

    public SwAxisGeneric getSwAxisGeneric() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwAxisGeneric)this.eContainer();
    }

    public NotificationChain basicSetSwAxisGeneric(SwAxisGeneric newSwAxisGeneric, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwAxisGeneric, 4, msgs);
        return msgs;
    }

    public void setSwAxisGeneric(SwAxisGeneric newSwAxisGeneric) {
        if (newSwAxisGeneric != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwAxisGeneric != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwAxisGeneric)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwAxisGeneric != null) {
                msgs = ((InternalEObject)newSwAxisGeneric).eInverseAdd((InternalEObject)this, 6, SwAxisGeneric.class, msgs);
            }
            if ((msgs = this.basicSetSwAxisGeneric(newSwAxisGeneric, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwAxisGeneric, (Object)newSwAxisGeneric));
        }
    }

    public SwGenericAxisParamType getSwGenericAxisParamType() {
        if (this.swGenericAxisParamType != null && this.swGenericAxisParamType.eIsProxy()) {
            InternalEObject oldSwGenericAxisParamType = (InternalEObject)this.swGenericAxisParamType;
            this.swGenericAxisParamType = (SwGenericAxisParamType)this.eResolveProxy(oldSwGenericAxisParamType);
            if (this.swGenericAxisParamType != oldSwGenericAxisParamType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldSwGenericAxisParamType, (Object)this.swGenericAxisParamType));
            }
        }
        return this.swGenericAxisParamType;
    }

    public SwGenericAxisParamType basicGetSwGenericAxisParamType() {
        return this.swGenericAxisParamType;
    }

    public void setSwGenericAxisParamType(SwGenericAxisParamType newSwGenericAxisParamType) {
        SwGenericAxisParamType oldSwGenericAxisParamType = this.swGenericAxisParamType;
        this.swGenericAxisParamType = newSwGenericAxisParamType;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwGenericAxisParamType, (Object)this.swGenericAxisParamType));
        }
    }

    public SwGenericAxisParamValue getSwGenericAxisParamValue() {
        return this.swGenericAxisParamValue;
    }

    public NotificationChain basicSetSwGenericAxisParamValue(SwGenericAxisParamValue newSwGenericAxisParamValue, NotificationChain msgs) {
        SwGenericAxisParamValue oldSwGenericAxisParamValue = this.swGenericAxisParamValue;
        this.swGenericAxisParamValue = newSwGenericAxisParamValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwGenericAxisParamValue, (Object)newSwGenericAxisParamValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwGenericAxisParamValue(SwGenericAxisParamValue newSwGenericAxisParamValue) {
        if (newSwGenericAxisParamValue != this.swGenericAxisParamValue) {
            NotificationChain msgs = null;
            if (this.swGenericAxisParamValue != null) {
                msgs = ((InternalEObject)this.swGenericAxisParamValue).eInverseRemove((InternalEObject)this, 4, SwGenericAxisParamValue.class, msgs);
            }
            if (newSwGenericAxisParamValue != null) {
                msgs = ((InternalEObject)newSwGenericAxisParamValue).eInverseAdd((InternalEObject)this, 4, SwGenericAxisParamValue.class, msgs);
            }
            if ((msgs = this.basicSetSwGenericAxisParamValue(newSwGenericAxisParamValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSwGenericAxisParamValue, (Object)newSwGenericAxisParamValue));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwAxisGeneric((SwAxisGeneric)otherEnd, msgs);
            }
            case 6: {
                if (this.swGenericAxisParamValue != null) {
                    msgs = ((InternalEObject)this.swGenericAxisParamValue).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetSwGenericAxisParamValue((SwGenericAxisParamValue)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwAxisGeneric(null, msgs);
            }
            case 6: {
                return this.basicSetSwGenericAxisParamValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, SwAxisGeneric.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwAxisGeneric();
            }
            case 5: {
                if (resolve) {
                    return this.getSwGenericAxisParamType();
                }
                return this.basicGetSwGenericAxisParamType();
            }
            case 6: {
                return this.getSwGenericAxisParamValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwAxisGeneric((SwAxisGeneric)newValue);
                return;
            }
            case 5: {
                this.setSwGenericAxisParamType((SwGenericAxisParamType)newValue);
                return;
            }
            case 6: {
                this.setSwGenericAxisParamValue((SwGenericAxisParamValue)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwAxisGeneric(null);
                return;
            }
            case 5: {
                this.setSwGenericAxisParamType(null);
                return;
            }
            case 6: {
                this.setSwGenericAxisParamValue(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwAxisGeneric() != null;
            }
            case 5: {
                return this.swGenericAxisParamType != null;
            }
            case 6: {
                return this.swGenericAxisParamValue != null;
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

