/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.GenericDataT;
import com.etas.amd620.core.ComponentMain.RequirementsManagementT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class RequirementsManagementTImpl
extends MinimalEObjectImpl.Container
implements RequirementsManagementT {
    protected GenericDataT genericData;
    protected static final String REQUIREMENTS_ID_EDEFAULT = null;
    protected String requirementsID = REQUIREMENTS_ID_EDEFAULT;

    protected RequirementsManagementTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.REQUIREMENTS_MANAGEMENT_T;
    }

    @Override
    public GenericDataT getGenericData() {
        return this.genericData;
    }

    public NotificationChain basicSetGenericData(GenericDataT newGenericData, NotificationChain msgs) {
        GenericDataT oldGenericData = this.genericData;
        this.genericData = newGenericData;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldGenericData, (Object)newGenericData);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setGenericData(GenericDataT newGenericData) {
        if (newGenericData != this.genericData) {
            NotificationChain msgs = null;
            if (this.genericData != null) {
                msgs = ((InternalEObject)this.genericData).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newGenericData != null) {
                msgs = ((InternalEObject)newGenericData).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetGenericData(newGenericData, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newGenericData, (Object)newGenericData));
        }
    }

    @Override
    public String getRequirementsID() {
        return this.requirementsID;
    }

    @Override
    public void setRequirementsID(String newRequirementsID) {
        String oldRequirementsID = this.requirementsID;
        this.requirementsID = newRequirementsID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldRequirementsID, (Object)this.requirementsID));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetGenericData(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getGenericData();
            }
            case 1: {
                return this.getRequirementsID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setGenericData((GenericDataT)newValue);
                return;
            }
            case 1: {
                this.setRequirementsID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setGenericData(null);
                return;
            }
            case 1: {
                this.setRequirementsID(REQUIREMENTS_ID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.genericData != null;
            }
            case 1: {
                return REQUIREMENTS_ID_EDEFAULT == null ? this.requirementsID != null : !REQUIREMENTS_ID_EDEFAULT.equals(this.requirementsID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (requirementsID: ");
        result.append(this.requirementsID);
        result.append(')');
        return result.toString();
    }
}

