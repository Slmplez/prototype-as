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
import com.etas.amd620.core.ComponentData.DimensionalDataT;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class DimensionalDataTImpl
extends MinimalEObjectImpl.Container
implements DimensionalDataT {
    protected static final BigInteger CURRENT_SIZE_X_EDEFAULT = null;
    protected BigInteger currentSizeX = CURRENT_SIZE_X_EDEFAULT;
    protected static final BigInteger CURRENT_SIZE_Y_EDEFAULT = null;
    protected BigInteger currentSizeY = CURRENT_SIZE_Y_EDEFAULT;

    protected DimensionalDataTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentDataPackage.Literals.DIMENSIONAL_DATA_T;
    }

    @Override
    public BigInteger getCurrentSizeX() {
        return this.currentSizeX;
    }

    @Override
    public void setCurrentSizeX(BigInteger newCurrentSizeX) {
        BigInteger oldCurrentSizeX = this.currentSizeX;
        this.currentSizeX = newCurrentSizeX;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldCurrentSizeX, (Object)this.currentSizeX));
        }
    }

    @Override
    public BigInteger getCurrentSizeY() {
        return this.currentSizeY;
    }

    @Override
    public void setCurrentSizeY(BigInteger newCurrentSizeY) {
        BigInteger oldCurrentSizeY = this.currentSizeY;
        this.currentSizeY = newCurrentSizeY;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldCurrentSizeY, (Object)this.currentSizeY));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getCurrentSizeX();
            }
            case 1: {
                return this.getCurrentSizeY();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setCurrentSizeX((BigInteger)newValue);
                return;
            }
            case 1: {
                this.setCurrentSizeY((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setCurrentSizeX(CURRENT_SIZE_X_EDEFAULT);
                return;
            }
            case 1: {
                this.setCurrentSizeY(CURRENT_SIZE_Y_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return CURRENT_SIZE_X_EDEFAULT == null ? this.currentSizeX != null : !CURRENT_SIZE_X_EDEFAULT.equals(this.currentSizeX);
            }
            case 1: {
                return CURRENT_SIZE_Y_EDEFAULT == null ? this.currentSizeY != null : !CURRENT_SIZE_Y_EDEFAULT.equals(this.currentSizeY);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (currentSizeX: ");
        result.append(this.currentSizeX);
        result.append(", currentSizeY: ");
        result.append(this.currentSizeY);
        result.append(')');
        return result.toString();
    }
}

