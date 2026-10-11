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
package autosar40.commonstructure.axis.impl;

import autosar40.commonstructure.axis.AxisPackage;
import autosar40.commonstructure.axis.SwAxisGeneric;
import autosar40.commonstructure.axis.SwGenericAxisParam;
import autosar40.commonstructure.axis.SwGenericAxisParamType;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
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
    protected NumericalValueVariationPoint vf;

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
                msgs = ((InternalEObject)newSwAxisGeneric).eInverseAdd((InternalEObject)this, 7, SwAxisGeneric.class, msgs);
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

    public NumericalValueVariationPoint getVf() {
        return this.vf;
    }

    public NotificationChain basicSetVf(NumericalValueVariationPoint newVf, NotificationChain msgs) {
        NumericalValueVariationPoint oldVf = this.vf;
        this.vf = newVf;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldVf, (Object)newVf);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVf(NumericalValueVariationPoint newVf) {
        if (newVf != this.vf) {
            NotificationChain msgs = null;
            if (this.vf != null) {
                msgs = ((InternalEObject)this.vf).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newVf != null) {
                msgs = ((InternalEObject)newVf).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetVf(newVf, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newVf, (Object)newVf));
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
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwAxisGeneric(null, msgs);
            }
            case 6: {
                return this.basicSetVf(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, SwAxisGeneric.class, msgs);
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
                return this.getVf();
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
                this.setVf((NumericalValueVariationPoint)newValue);
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
                this.setVf(null);
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
                return this.vf != null;
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

