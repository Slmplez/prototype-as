/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package org.w3._2000._09.xmldsig.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.w3._2000._09.xmldsig.RSAKeyValueType;
import org.w3._2000._09.xmldsig.XmldsigPackage;

public class RSAKeyValueTypeImpl
extends MinimalEObjectImpl.Container
implements RSAKeyValueType {
    protected static final byte[] MODULUS_EDEFAULT = null;
    protected byte[] modulus = MODULUS_EDEFAULT;
    protected static final byte[] EXPONENT_EDEFAULT = null;
    protected byte[] exponent = EXPONENT_EDEFAULT;

    protected RSAKeyValueTypeImpl() {
    }

    protected EClass eStaticClass() {
        return XmldsigPackage.Literals.RSA_KEY_VALUE_TYPE;
    }

    @Override
    public byte[] getModulus() {
        return this.modulus;
    }

    @Override
    public void setModulus(byte[] newModulus) {
        byte[] oldModulus = this.modulus;
        this.modulus = newModulus;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldModulus, (Object)this.modulus));
        }
    }

    @Override
    public byte[] getExponent() {
        return this.exponent;
    }

    @Override
    public void setExponent(byte[] newExponent) {
        byte[] oldExponent = this.exponent;
        this.exponent = newExponent;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldExponent, (Object)this.exponent));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getModulus();
            }
            case 1: {
                return this.getExponent();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setModulus((byte[])newValue);
                return;
            }
            case 1: {
                this.setExponent((byte[])newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setModulus(MODULUS_EDEFAULT);
                return;
            }
            case 1: {
                this.setExponent(EXPONENT_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return MODULUS_EDEFAULT == null ? this.modulus != null : !MODULUS_EDEFAULT.equals(this.modulus);
            }
            case 1: {
                return EXPONENT_EDEFAULT == null ? this.exponent != null : !EXPONENT_EDEFAULT.equals(this.exponent);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (modulus: ");
        result.append(this.modulus);
        result.append(", exponent: ");
        result.append(this.exponent);
        result.append(')');
        return result.toString();
    }
}

