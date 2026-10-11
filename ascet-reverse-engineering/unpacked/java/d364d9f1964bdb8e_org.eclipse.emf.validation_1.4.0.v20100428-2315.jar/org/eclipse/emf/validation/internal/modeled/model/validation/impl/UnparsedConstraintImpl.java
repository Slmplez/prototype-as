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
import org.eclipse.emf.validation.internal.modeled.model.validation.UnparsedConstraint;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.ConstraintImpl;

public class UnparsedConstraintImpl
extends ConstraintImpl
implements UnparsedConstraint {
    protected static final String BODY_EDEFAULT = null;
    protected String body = BODY_EDEFAULT;

    protected UnparsedConstraintImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.UNPARSED_CONSTRAINT;
    }

    public String getBody() {
        return this.body;
    }

    public void setBody(String newBody) {
        String oldBody = this.body;
        this.body = newBody;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldBody, (Object)this.body));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 12: {
                return this.getBody();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 12: {
                this.setBody((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 12: {
                this.setBody(BODY_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 12: {
                return BODY_EDEFAULT == null ? this.body != null : !BODY_EDEFAULT.equals(this.body);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (body: ");
        result.append(this.body);
        result.append(')');
        return result.toString();
    }
}

