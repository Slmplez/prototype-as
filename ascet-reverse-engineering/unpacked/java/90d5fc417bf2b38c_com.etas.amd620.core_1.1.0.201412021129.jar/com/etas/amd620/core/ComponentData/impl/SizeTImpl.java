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
package com.etas.amd620.core.ComponentData.impl;

import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.SizeT;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class SizeTImpl
extends MinimalEObjectImpl.Container
implements SizeT {
    protected static final BigInteger X_EDEFAULT = null;
    protected BigInteger x = X_EDEFAULT;
    protected static final BigInteger Y_EDEFAULT = null;
    protected BigInteger y = Y_EDEFAULT;

    protected SizeTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentDataPackage.Literals.SIZE_T;
    }

    @Override
    public BigInteger getX() {
        return this.x;
    }

    @Override
    public void setX(BigInteger newX) {
        BigInteger oldX = this.x;
        this.x = newX;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldX, (Object)this.x));
        }
    }

    @Override
    public BigInteger getY() {
        return this.y;
    }

    @Override
    public void setY(BigInteger newY) {
        BigInteger oldY = this.y;
        this.y = newY;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldY, (Object)this.y));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getX();
            }
            case 1: {
                return this.getY();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setX((BigInteger)newValue);
                return;
            }
            case 1: {
                this.setY((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setX(X_EDEFAULT);
                return;
            }
            case 1: {
                this.setY(Y_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return X_EDEFAULT == null ? this.x != null : !X_EDEFAULT.equals(this.x);
            }
            case 1: {
                return Y_EDEFAULT == null ? this.y != null : !Y_EDEFAULT.equals(this.y);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (x: ");
        result.append(this.x);
        result.append(", y: ");
        result.append(this.y);
        result.append(')');
        return result.toString();
    }
}

