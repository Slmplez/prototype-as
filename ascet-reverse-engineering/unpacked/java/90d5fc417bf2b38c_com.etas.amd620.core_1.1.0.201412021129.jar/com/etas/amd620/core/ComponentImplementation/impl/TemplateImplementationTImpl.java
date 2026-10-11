/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.TemplateImplementationT;
import com.etas.amd620.core.ComponentImplementation.impl.NumericImplementationBaseTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TemplateImplementationTImpl
extends NumericImplementationBaseTImpl
implements TemplateImplementationT {
    protected static final boolean IGNORE_IMPLEMENTATION_CAST_EDEFAULT = false;
    protected boolean ignoreImplementationCast = false;
    protected boolean ignoreImplementationCastESet;
    protected static final String REFERS_TO_EDEFAULT = null;
    protected String refersTo = REFERS_TO_EDEFAULT;

    protected TemplateImplementationTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.TEMPLATE_IMPLEMENTATION_T;
    }

    @Override
    public boolean isIgnoreImplementationCast() {
        return this.ignoreImplementationCast;
    }

    @Override
    public void setIgnoreImplementationCast(boolean newIgnoreImplementationCast) {
        boolean oldIgnoreImplementationCast = this.ignoreImplementationCast;
        this.ignoreImplementationCast = newIgnoreImplementationCast;
        boolean oldIgnoreImplementationCastESet = this.ignoreImplementationCastESet;
        this.ignoreImplementationCastESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, oldIgnoreImplementationCast, this.ignoreImplementationCast, !oldIgnoreImplementationCastESet));
        }
    }

    @Override
    public void unsetIgnoreImplementationCast() {
        boolean oldIgnoreImplementationCast = this.ignoreImplementationCast;
        boolean oldIgnoreImplementationCastESet = this.ignoreImplementationCastESet;
        this.ignoreImplementationCast = false;
        this.ignoreImplementationCastESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, oldIgnoreImplementationCast, false, oldIgnoreImplementationCastESet));
        }
    }

    @Override
    public boolean isSetIgnoreImplementationCast() {
        return this.ignoreImplementationCastESet;
    }

    @Override
    public String getRefersTo() {
        return this.refersTo;
    }

    @Override
    public void setRefersTo(String newRefersTo) {
        String oldRefersTo = this.refersTo;
        this.refersTo = newRefersTo;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldRefersTo, (Object)this.refersTo));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 10: {
                return this.isIgnoreImplementationCast();
            }
            case 11: {
                return this.getRefersTo();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 10: {
                this.setIgnoreImplementationCast((Boolean)newValue);
                return;
            }
            case 11: {
                this.setRefersTo((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 10: {
                this.unsetIgnoreImplementationCast();
                return;
            }
            case 11: {
                this.setRefersTo(REFERS_TO_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 10: {
                return this.isSetIgnoreImplementationCast();
            }
            case 11: {
                return REFERS_TO_EDEFAULT == null ? this.refersTo != null : !REFERS_TO_EDEFAULT.equals(this.refersTo);
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (ignoreImplementationCast: ");
        if (this.ignoreImplementationCastESet) {
            result.append(this.ignoreImplementationCast);
        } else {
            result.append("<unset>");
        }
        result.append(", refersTo: ");
        result.append(this.refersTo);
        result.append(')');
        return result.toString();
    }
}

