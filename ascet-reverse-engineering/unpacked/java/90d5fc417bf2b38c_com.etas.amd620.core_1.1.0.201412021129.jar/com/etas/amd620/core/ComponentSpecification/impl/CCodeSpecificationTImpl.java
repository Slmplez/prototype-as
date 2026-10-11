/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.CCodeSpecificationT;
import com.etas.amd620.core.ComponentSpecification.CCodeType;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.CtOutputsType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class CCodeSpecificationTImpl
extends MinimalEObjectImpl.Container
implements CCodeSpecificationT {
    protected CCodeType cCode;
    protected static final CtOutputsType CT_OUTPUTS_EDEFAULT = CtOutputsType.DIRECT;
    protected CtOutputsType ctOutputs = CT_OUTPUTS_EDEFAULT;
    protected boolean ctOutputsESet;

    protected CCodeSpecificationTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getCCodeSpecificationT();
    }

    @Override
    public CCodeType getCCode() {
        return this.cCode;
    }

    public NotificationChain basicSetCCode(CCodeType newCCode, NotificationChain msgs) {
        CCodeType oldCCode = this.cCode;
        this.cCode = newCCode;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldCCode, (Object)newCCode);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCCode(CCodeType newCCode) {
        if (newCCode != this.cCode) {
            NotificationChain msgs = null;
            if (this.cCode != null) {
                msgs = ((InternalEObject)this.cCode).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newCCode != null) {
                msgs = ((InternalEObject)newCCode).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetCCode(newCCode, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newCCode, (Object)newCCode));
        }
    }

    @Override
    public CtOutputsType getCtOutputs() {
        return this.ctOutputs;
    }

    @Override
    public void setCtOutputs(CtOutputsType newCtOutputs) {
        CtOutputsType oldCtOutputs = this.ctOutputs;
        this.ctOutputs = newCtOutputs == null ? CT_OUTPUTS_EDEFAULT : newCtOutputs;
        boolean oldCtOutputsESet = this.ctOutputsESet;
        this.ctOutputsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldCtOutputs, (Object)this.ctOutputs, !oldCtOutputsESet));
        }
    }

    @Override
    public void unsetCtOutputs() {
        CtOutputsType oldCtOutputs = this.ctOutputs;
        boolean oldCtOutputsESet = this.ctOutputsESet;
        this.ctOutputs = CT_OUTPUTS_EDEFAULT;
        this.ctOutputsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 1, (Object)oldCtOutputs, (Object)CT_OUTPUTS_EDEFAULT, oldCtOutputsESet));
        }
    }

    @Override
    public boolean isSetCtOutputs() {
        return this.ctOutputsESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetCCode(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getCCode();
            }
            case 1: {
                return this.getCtOutputs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setCCode((CCodeType)newValue);
                return;
            }
            case 1: {
                this.setCtOutputs((CtOutputsType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setCCode(null);
                return;
            }
            case 1: {
                this.unsetCtOutputs();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.cCode != null;
            }
            case 1: {
                return this.isSetCtOutputs();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (ctOutputs: ");
        if (this.ctOutputsESet) {
            result.append((Object)this.ctOutputs);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

