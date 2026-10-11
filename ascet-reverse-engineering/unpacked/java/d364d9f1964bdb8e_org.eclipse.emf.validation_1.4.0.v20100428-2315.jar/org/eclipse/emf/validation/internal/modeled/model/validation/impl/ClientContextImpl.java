/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.ClientContext;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;

public class ClientContextImpl
extends EObjectImpl
implements ClientContext {
    protected static final String ID_EDEFAULT = null;
    protected String id = ID_EDEFAULT;
    protected static final boolean DEFAULT_EDEFAULT = false;
    protected boolean default_ = false;

    protected ClientContextImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.CLIENT_CONTEXT;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String newId) {
        String oldId = this.id;
        this.id = newId;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldId, (Object)this.id));
        }
    }

    public boolean isDefault() {
        return this.default_;
    }

    public void setDefault(boolean newDefault) {
        boolean oldDefault = this.default_;
        this.default_ = newDefault;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, oldDefault, this.default_));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getId();
            }
            case 1: {
                return this.isDefault();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setId((String)newValue);
                return;
            }
            case 1: {
                this.setDefault((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setId(ID_EDEFAULT);
                return;
            }
            case 1: {
                this.setDefault(false);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return ID_EDEFAULT == null ? this.id != null : !ID_EDEFAULT.equals(this.id);
            }
            case 1: {
                return this.default_;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (id: ");
        result.append(this.id);
        result.append(", default: ");
        result.append(this.default_);
        result.append(')');
        return result.toString();
    }
}

