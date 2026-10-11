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
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.TimeStampT;
import java.math.BigInteger;
import javax.xml.datatype.XMLGregorianCalendar;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class TimeStampTImpl
extends MinimalEObjectImpl.Container
implements TimeStampT {
    protected static final BigInteger TIME_STAMP_COUNTER_EDEFAULT = null;
    protected BigInteger timeStampCounter = TIME_STAMP_COUNTER_EDEFAULT;
    protected static final String TIME_STAMP_KEY_EDEFAULT = null;
    protected String timeStampKey = TIME_STAMP_KEY_EDEFAULT;
    protected static final XMLGregorianCalendar TIME_STAMP_VALUE_EDEFAULT = null;
    protected XMLGregorianCalendar timeStampValue = TIME_STAMP_VALUE_EDEFAULT;

    protected TimeStampTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getTimeStampT();
    }

    @Override
    public BigInteger getTimeStampCounter() {
        return this.timeStampCounter;
    }

    @Override
    public void setTimeStampCounter(BigInteger newTimeStampCounter) {
        BigInteger oldTimeStampCounter = this.timeStampCounter;
        this.timeStampCounter = newTimeStampCounter;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldTimeStampCounter, (Object)this.timeStampCounter));
        }
    }

    @Override
    public String getTimeStampKey() {
        return this.timeStampKey;
    }

    @Override
    public void setTimeStampKey(String newTimeStampKey) {
        String oldTimeStampKey = this.timeStampKey;
        this.timeStampKey = newTimeStampKey;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldTimeStampKey, (Object)this.timeStampKey));
        }
    }

    @Override
    public XMLGregorianCalendar getTimeStampValue() {
        return this.timeStampValue;
    }

    @Override
    public void setTimeStampValue(XMLGregorianCalendar newTimeStampValue) {
        XMLGregorianCalendar oldTimeStampValue = this.timeStampValue;
        this.timeStampValue = newTimeStampValue;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldTimeStampValue, (Object)this.timeStampValue));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getTimeStampCounter();
            }
            case 1: {
                return this.getTimeStampKey();
            }
            case 2: {
                return this.getTimeStampValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setTimeStampCounter((BigInteger)newValue);
                return;
            }
            case 1: {
                this.setTimeStampKey((String)newValue);
                return;
            }
            case 2: {
                this.setTimeStampValue((XMLGregorianCalendar)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setTimeStampCounter(TIME_STAMP_COUNTER_EDEFAULT);
                return;
            }
            case 1: {
                this.setTimeStampKey(TIME_STAMP_KEY_EDEFAULT);
                return;
            }
            case 2: {
                this.setTimeStampValue(TIME_STAMP_VALUE_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return TIME_STAMP_COUNTER_EDEFAULT == null ? this.timeStampCounter != null : !TIME_STAMP_COUNTER_EDEFAULT.equals(this.timeStampCounter);
            }
            case 1: {
                return TIME_STAMP_KEY_EDEFAULT == null ? this.timeStampKey != null : !TIME_STAMP_KEY_EDEFAULT.equals(this.timeStampKey);
            }
            case 2: {
                return TIME_STAMP_VALUE_EDEFAULT == null ? this.timeStampValue != null : !TIME_STAMP_VALUE_EDEFAULT.equals(this.timeStampValue);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (timeStampCounter: ");
        result.append(this.timeStampCounter);
        result.append(", timeStampKey: ");
        result.append(this.timeStampKey);
        result.append(", timeStampValue: ");
        result.append(this.timeStampValue);
        result.append(')');
        return result.toString();
    }
}

