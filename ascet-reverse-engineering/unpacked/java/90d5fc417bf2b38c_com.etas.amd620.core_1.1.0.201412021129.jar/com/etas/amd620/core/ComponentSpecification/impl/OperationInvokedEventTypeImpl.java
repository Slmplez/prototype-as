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
import com.etas.amd620.core.ComponentSpecification.OperationInvokedEventType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class OperationInvokedEventTypeImpl
extends MinimalEObjectImpl.Container
implements OperationInvokedEventType {
    protected static final String OPERATION_NAME_EDEFAULT = null;
    protected String operationName = OPERATION_NAME_EDEFAULT;
    protected static final String OPERATION_OID_EDEFAULT = null;
    protected String operationOID = OPERATION_OID_EDEFAULT;
    protected static final String PORT_NAME_EDEFAULT = null;
    protected String portName = PORT_NAME_EDEFAULT;
    protected static final String PORT_OID_EDEFAULT = null;
    protected String portOID = PORT_OID_EDEFAULT;

    protected OperationInvokedEventTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getOperationInvokedEventType();
    }

    @Override
    public String getOperationName() {
        return this.operationName;
    }

    @Override
    public void setOperationName(String newOperationName) {
        String oldOperationName = this.operationName;
        this.operationName = newOperationName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldOperationName, (Object)this.operationName));
        }
    }

    @Override
    public String getOperationOID() {
        return this.operationOID;
    }

    @Override
    public void setOperationOID(String newOperationOID) {
        String oldOperationOID = this.operationOID;
        this.operationOID = newOperationOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldOperationOID, (Object)this.operationOID));
        }
    }

    @Override
    public String getPortName() {
        return this.portName;
    }

    @Override
    public void setPortName(String newPortName) {
        String oldPortName = this.portName;
        this.portName = newPortName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldPortName, (Object)this.portName));
        }
    }

    @Override
    public String getPortOID() {
        return this.portOID;
    }

    @Override
    public void setPortOID(String newPortOID) {
        String oldPortOID = this.portOID;
        this.portOID = newPortOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldPortOID, (Object)this.portOID));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getOperationName();
            }
            case 1: {
                return this.getOperationOID();
            }
            case 2: {
                return this.getPortName();
            }
            case 3: {
                return this.getPortOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setOperationName((String)newValue);
                return;
            }
            case 1: {
                this.setOperationOID((String)newValue);
                return;
            }
            case 2: {
                this.setPortName((String)newValue);
                return;
            }
            case 3: {
                this.setPortOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setOperationName(OPERATION_NAME_EDEFAULT);
                return;
            }
            case 1: {
                this.setOperationOID(OPERATION_OID_EDEFAULT);
                return;
            }
            case 2: {
                this.setPortName(PORT_NAME_EDEFAULT);
                return;
            }
            case 3: {
                this.setPortOID(PORT_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return OPERATION_NAME_EDEFAULT == null ? this.operationName != null : !OPERATION_NAME_EDEFAULT.equals(this.operationName);
            }
            case 1: {
                return OPERATION_OID_EDEFAULT == null ? this.operationOID != null : !OPERATION_OID_EDEFAULT.equals(this.operationOID);
            }
            case 2: {
                return PORT_NAME_EDEFAULT == null ? this.portName != null : !PORT_NAME_EDEFAULT.equals(this.portName);
            }
            case 3: {
                return PORT_OID_EDEFAULT == null ? this.portOID != null : !PORT_OID_EDEFAULT.equals(this.portOID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (operationName: ");
        result.append(this.operationName);
        result.append(", operationOID: ");
        result.append(this.operationOID);
        result.append(", portName: ");
        result.append(this.portName);
        result.append(", portOID: ");
        result.append(this.portOID);
        result.append(')');
        return result.toString();
    }
}

