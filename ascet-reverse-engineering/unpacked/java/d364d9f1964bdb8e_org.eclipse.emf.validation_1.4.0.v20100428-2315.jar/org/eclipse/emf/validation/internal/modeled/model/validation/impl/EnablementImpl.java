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
import org.eclipse.emf.validation.internal.modeled.model.validation.Enablement;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.ClientContextImpl;

public class EnablementImpl
extends ClientContextImpl
implements Enablement {
    protected static final String DOM_EXPRESSION_EDEFAULT = null;
    protected String domExpression = DOM_EXPRESSION_EDEFAULT;

    protected EnablementImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.ENABLEMENT;
    }

    public String getDomExpression() {
        return this.domExpression;
    }

    public void setDomExpression(String newDomExpression) {
        String oldDomExpression = this.domExpression;
        this.domExpression = newDomExpression;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldDomExpression, (Object)this.domExpression));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 2: {
                return this.getDomExpression();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 2: {
                this.setDomExpression((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 2: {
                this.setDomExpression(DOM_EXPRESSION_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 2: {
                return DOM_EXPRESSION_EDEFAULT == null ? this.domExpression != null : !DOM_EXPRESSION_EDEFAULT.equals(this.domExpression);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (domExpression: ");
        result.append(this.domExpression);
        result.append(')');
        return result.toString();
    }
}

