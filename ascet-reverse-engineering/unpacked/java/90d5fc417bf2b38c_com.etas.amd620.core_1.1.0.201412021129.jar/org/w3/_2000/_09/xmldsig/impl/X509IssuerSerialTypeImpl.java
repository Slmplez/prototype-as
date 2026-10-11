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

import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.w3._2000._09.xmldsig.X509IssuerSerialType;
import org.w3._2000._09.xmldsig.XmldsigPackage;

public class X509IssuerSerialTypeImpl
extends MinimalEObjectImpl.Container
implements X509IssuerSerialType {
    protected static final String X509_ISSUER_NAME_EDEFAULT = null;
    protected String x509IssuerName = X509_ISSUER_NAME_EDEFAULT;
    protected static final BigInteger X509_SERIAL_NUMBER_EDEFAULT = null;
    protected BigInteger x509SerialNumber = X509_SERIAL_NUMBER_EDEFAULT;

    protected X509IssuerSerialTypeImpl() {
    }

    protected EClass eStaticClass() {
        return XmldsigPackage.Literals.X509_ISSUER_SERIAL_TYPE;
    }

    @Override
    public String getX509IssuerName() {
        return this.x509IssuerName;
    }

    @Override
    public void setX509IssuerName(String newX509IssuerName) {
        String oldX509IssuerName = this.x509IssuerName;
        this.x509IssuerName = newX509IssuerName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldX509IssuerName, (Object)this.x509IssuerName));
        }
    }

    @Override
    public BigInteger getX509SerialNumber() {
        return this.x509SerialNumber;
    }

    @Override
    public void setX509SerialNumber(BigInteger newX509SerialNumber) {
        BigInteger oldX509SerialNumber = this.x509SerialNumber;
        this.x509SerialNumber = newX509SerialNumber;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldX509SerialNumber, (Object)this.x509SerialNumber));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getX509IssuerName();
            }
            case 1: {
                return this.getX509SerialNumber();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setX509IssuerName((String)newValue);
                return;
            }
            case 1: {
                this.setX509SerialNumber((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setX509IssuerName(X509_ISSUER_NAME_EDEFAULT);
                return;
            }
            case 1: {
                this.setX509SerialNumber(X509_SERIAL_NUMBER_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return X509_ISSUER_NAME_EDEFAULT == null ? this.x509IssuerName != null : !X509_ISSUER_NAME_EDEFAULT.equals(this.x509IssuerName);
            }
            case 1: {
                return X509_SERIAL_NUMBER_EDEFAULT == null ? this.x509SerialNumber != null : !X509_SERIAL_NUMBER_EDEFAULT.equals(this.x509SerialNumber);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (x509IssuerName: ");
        result.append(this.x509IssuerName);
        result.append(", x509SerialNumber: ");
        result.append(this.x509SerialNumber);
        result.append(')');
        return result.toString();
    }
}

