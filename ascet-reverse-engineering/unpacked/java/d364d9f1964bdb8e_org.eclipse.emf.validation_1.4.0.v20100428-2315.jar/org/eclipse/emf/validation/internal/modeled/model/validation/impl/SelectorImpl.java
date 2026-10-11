/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.Selector;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.ClientContextImpl;

public class SelectorImpl
extends ClientContextImpl
implements Selector {
    protected static final String CLASS_NAME_EDEFAULT = null;
    protected String className = CLASS_NAME_EDEFAULT;

    protected SelectorImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.SELECTOR;
    }

    public String getClassName() {
        return this.className;
    }

    public void setClassName(String newClassName) {
        String oldClassName = this.className;
        this.className = newClassName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldClassName, (Object)this.className));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 2: {
                return this.getClassName();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 2: {
                this.setClassName((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 2: {
                this.setClassName(CLASS_NAME_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 2: {
                return CLASS_NAME_EDEFAULT == null ? this.className != null : !CLASS_NAME_EDEFAULT.equals(this.className);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (className: ");
        result.append(this.className);
        result.append(')');
        return result.toString();
    }
}

