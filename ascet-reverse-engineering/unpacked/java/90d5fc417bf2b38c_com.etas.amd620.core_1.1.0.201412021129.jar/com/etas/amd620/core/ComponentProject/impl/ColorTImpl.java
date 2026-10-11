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
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ColorT;
import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ColorTImpl
extends MinimalEObjectImpl.Container
implements ColorT {
    protected static final BigInteger BLUE_EDEFAULT = null;
    protected BigInteger blue = BLUE_EDEFAULT;
    protected static final BigInteger GREEN_EDEFAULT = null;
    protected BigInteger green = GREEN_EDEFAULT;
    protected static final BigInteger RED_EDEFAULT = null;
    protected BigInteger red = RED_EDEFAULT;

    protected ColorTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.COLOR_T;
    }

    @Override
    public BigInteger getBlue() {
        return this.blue;
    }

    @Override
    public void setBlue(BigInteger newBlue) {
        BigInteger oldBlue = this.blue;
        this.blue = newBlue;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldBlue, (Object)this.blue));
        }
    }

    @Override
    public BigInteger getGreen() {
        return this.green;
    }

    @Override
    public void setGreen(BigInteger newGreen) {
        BigInteger oldGreen = this.green;
        this.green = newGreen;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldGreen, (Object)this.green));
        }
    }

    @Override
    public BigInteger getRed() {
        return this.red;
    }

    @Override
    public void setRed(BigInteger newRed) {
        BigInteger oldRed = this.red;
        this.red = newRed;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldRed, (Object)this.red));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getBlue();
            }
            case 1: {
                return this.getGreen();
            }
            case 2: {
                return this.getRed();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setBlue((BigInteger)newValue);
                return;
            }
            case 1: {
                this.setGreen((BigInteger)newValue);
                return;
            }
            case 2: {
                this.setRed((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setBlue(BLUE_EDEFAULT);
                return;
            }
            case 1: {
                this.setGreen(GREEN_EDEFAULT);
                return;
            }
            case 2: {
                this.setRed(RED_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return BLUE_EDEFAULT == null ? this.blue != null : !BLUE_EDEFAULT.equals(this.blue);
            }
            case 1: {
                return GREEN_EDEFAULT == null ? this.green != null : !GREEN_EDEFAULT.equals(this.green);
            }
            case 2: {
                return RED_EDEFAULT == null ? this.red != null : !RED_EDEFAULT.equals(this.red);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (blue: ");
        result.append(this.blue);
        result.append(", green: ");
        result.append(this.green);
        result.append(", red: ");
        result.append(this.red);
        result.append(')');
        return result.toString();
    }
}

