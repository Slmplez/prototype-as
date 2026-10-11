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
import com.etas.amd620.core.ComponentSpecification.RunnableType;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class RunnableTypeImpl
extends MinimalEObjectImpl.Container
implements RunnableType {
    protected static final BigInteger INDEX_EDEFAULT = null;
    protected BigInteger index = INDEX_EDEFAULT;
    protected static final String RUNNABLE_NAME_EDEFAULT = null;
    protected String runnableName = RUNNABLE_NAME_EDEFAULT;
    protected static final String RUNNABLE_OID_EDEFAULT = null;
    protected String runnableOID = RUNNABLE_OID_EDEFAULT;

    protected RunnableTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getRunnableType();
    }

    @Override
    public BigInteger getIndex() {
        return this.index;
    }

    @Override
    public void setIndex(BigInteger newIndex) {
        BigInteger oldIndex = this.index;
        this.index = newIndex;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldIndex, (Object)this.index));
        }
    }

    @Override
    public String getRunnableName() {
        return this.runnableName;
    }

    @Override
    public void setRunnableName(String newRunnableName) {
        String oldRunnableName = this.runnableName;
        this.runnableName = newRunnableName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldRunnableName, (Object)this.runnableName));
        }
    }

    @Override
    public String getRunnableOID() {
        return this.runnableOID;
    }

    @Override
    public void setRunnableOID(String newRunnableOID) {
        String oldRunnableOID = this.runnableOID;
        this.runnableOID = newRunnableOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldRunnableOID, (Object)this.runnableOID));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getIndex();
            }
            case 1: {
                return this.getRunnableName();
            }
            case 2: {
                return this.getRunnableOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setIndex((BigInteger)newValue);
                return;
            }
            case 1: {
                this.setRunnableName((String)newValue);
                return;
            }
            case 2: {
                this.setRunnableOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setIndex(INDEX_EDEFAULT);
                return;
            }
            case 1: {
                this.setRunnableName(RUNNABLE_NAME_EDEFAULT);
                return;
            }
            case 2: {
                this.setRunnableOID(RUNNABLE_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return INDEX_EDEFAULT == null ? this.index != null : !INDEX_EDEFAULT.equals(this.index);
            }
            case 1: {
                return RUNNABLE_NAME_EDEFAULT == null ? this.runnableName != null : !RUNNABLE_NAME_EDEFAULT.equals(this.runnableName);
            }
            case 2: {
                return RUNNABLE_OID_EDEFAULT == null ? this.runnableOID != null : !RUNNABLE_OID_EDEFAULT.equals(this.runnableOID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (index: ");
        result.append(this.index);
        result.append(", runnableName: ");
        result.append(this.runnableName);
        result.append(", runnableOID: ");
        result.append(this.runnableOID);
        result.append(')');
        return result.toString();
    }
}

