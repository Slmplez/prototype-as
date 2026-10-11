/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.FormalType;
import com.etas.amd620.core.ComponentMain.FormulaType;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

public class FormulaTypeImpl
extends MinimalEObjectImpl.Container
implements FormulaType {
    protected EList<FormalType> formal;
    protected static final String CODE_EDEFAULT = null;
    protected String code = CODE_EDEFAULT;

    protected FormulaTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.FORMULA_TYPE;
    }

    @Override
    public EList<FormalType> getFormal() {
        if (this.formal == null) {
            this.formal = new EObjectContainmentEList(FormalType.class, (InternalEObject)this, 0);
        }
        return this.formal;
    }

    @Override
    public String getCode() {
        return this.code;
    }

    @Override
    public void setCode(String newCode) {
        String oldCode = this.code;
        this.code = newCode;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldCode, (Object)this.code));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getFormal()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getFormal();
            }
            case 1: {
                return this.getCode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getFormal().clear();
                this.getFormal().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setCode((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getFormal().clear();
                return;
            }
            case 1: {
                this.setCode(CODE_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.formal != null && !this.formal.isEmpty();
            }
            case 1: {
                return CODE_EDEFAULT == null ? this.code != null : !CODE_EDEFAULT.equals(this.code);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (code: ");
        result.append(this.code);
        result.append(')');
        return result.toString();
    }
}

