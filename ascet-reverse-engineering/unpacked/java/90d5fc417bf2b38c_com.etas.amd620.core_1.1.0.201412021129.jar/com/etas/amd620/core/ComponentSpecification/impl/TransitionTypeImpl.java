/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.TransitionType;
import com.etas.amd620.core.ComponentSpecification.impl.TransitionTImpl;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TransitionTypeImpl
extends TransitionTImpl
implements TransitionType {
    protected static final BigInteger PRIORITY_EDEFAULT = null;
    protected BigInteger priority = PRIORITY_EDEFAULT;
    protected static final String TRIGGER_NAME_EDEFAULT = null;
    protected String triggerName = TRIGGER_NAME_EDEFAULT;
    protected static final String TRIGGER_OID_EDEFAULT = null;
    protected String triggerOID = TRIGGER_OID_EDEFAULT;

    protected TransitionTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getTransitionType();
    }

    @Override
    public BigInteger getPriority() {
        return this.priority;
    }

    @Override
    public void setPriority(BigInteger newPriority) {
        BigInteger oldPriority = this.priority;
        this.priority = newPriority;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldPriority, (Object)this.priority));
        }
    }

    @Override
    public String getTriggerName() {
        return this.triggerName;
    }

    @Override
    public void setTriggerName(String newTriggerName) {
        String oldTriggerName = this.triggerName;
        this.triggerName = newTriggerName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldTriggerName, (Object)this.triggerName));
        }
    }

    @Override
    public String getTriggerOID() {
        return this.triggerOID;
    }

    @Override
    public void setTriggerOID(String newTriggerOID) {
        String oldTriggerOID = this.triggerOID;
        this.triggerOID = newTriggerOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldTriggerOID, (Object)this.triggerOID));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 9: {
                return this.getPriority();
            }
            case 10: {
                return this.getTriggerName();
            }
            case 11: {
                return this.getTriggerOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 9: {
                this.setPriority((BigInteger)newValue);
                return;
            }
            case 10: {
                this.setTriggerName((String)newValue);
                return;
            }
            case 11: {
                this.setTriggerOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 9: {
                this.setPriority(PRIORITY_EDEFAULT);
                return;
            }
            case 10: {
                this.setTriggerName(TRIGGER_NAME_EDEFAULT);
                return;
            }
            case 11: {
                this.setTriggerOID(TRIGGER_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 9: {
                return PRIORITY_EDEFAULT == null ? this.priority != null : !PRIORITY_EDEFAULT.equals(this.priority);
            }
            case 10: {
                return TRIGGER_NAME_EDEFAULT == null ? this.triggerName != null : !TRIGGER_NAME_EDEFAULT.equals(this.triggerName);
            }
            case 11: {
                return TRIGGER_OID_EDEFAULT == null ? this.triggerOID != null : !TRIGGER_OID_EDEFAULT.equals(this.triggerOID);
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
        result.append(" (priority: ");
        result.append(this.priority);
        result.append(", triggerName: ");
        result.append(this.triggerName);
        result.append(", triggerOID: ");
        result.append(this.triggerOID);
        result.append(')');
        return result.toString();
    }
}

