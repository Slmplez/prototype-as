/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentData.impl;

import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.ComponentDataType;
import com.etas.amd620.core.ComponentData.DataSetT;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;
import org.w3._2000._09.xmldsig.SignatureType;

public class ComponentDataTypeImpl
extends MinimalEObjectImpl.Container
implements ComponentDataType {
    protected EList<DataSetT> dataSet;
    protected SignatureType signature;
    protected static final String SCHEMA_VERSION_EDEFAULT = null;
    protected String schemaVersion = SCHEMA_VERSION_EDEFAULT;
    protected static final String TOOL_VERSION_EDEFAULT = null;
    protected String toolVersion = TOOL_VERSION_EDEFAULT;

    protected ComponentDataTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentDataPackage.Literals.COMPONENT_DATA_TYPE;
    }

    @Override
    public EList<DataSetT> getDataSet() {
        if (this.dataSet == null) {
            this.dataSet = new EObjectContainmentEList(DataSetT.class, (InternalEObject)this, 0);
        }
        return this.dataSet;
    }

    @Override
    public SignatureType getSignature() {
        return this.signature;
    }

    public NotificationChain basicSetSignature(SignatureType newSignature, NotificationChain msgs) {
        SignatureType oldSignature = this.signature;
        this.signature = newSignature;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldSignature, (Object)newSignature);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSignature(SignatureType newSignature) {
        if (newSignature != this.signature) {
            NotificationChain msgs = null;
            if (this.signature != null) {
                msgs = ((InternalEObject)this.signature).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newSignature != null) {
                msgs = ((InternalEObject)newSignature).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetSignature(newSignature, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newSignature, (Object)newSignature));
        }
    }

    @Override
    public String getSchemaVersion() {
        return this.schemaVersion;
    }

    @Override
    public void setSchemaVersion(String newSchemaVersion) {
        String oldSchemaVersion = this.schemaVersion;
        this.schemaVersion = newSchemaVersion;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldSchemaVersion, (Object)this.schemaVersion));
        }
    }

    @Override
    public String getToolVersion() {
        return this.toolVersion;
    }

    @Override
    public void setToolVersion(String newToolVersion) {
        String oldToolVersion = this.toolVersion;
        this.toolVersion = newToolVersion;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldToolVersion, (Object)this.toolVersion));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getDataSet()).basicRemove((Object)otherEnd, msgs);
            }
            case 1: {
                return this.basicSetSignature(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getDataSet();
            }
            case 1: {
                return this.getSignature();
            }
            case 2: {
                return this.getSchemaVersion();
            }
            case 3: {
                return this.getToolVersion();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getDataSet().clear();
                this.getDataSet().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setSignature((SignatureType)newValue);
                return;
            }
            case 2: {
                this.setSchemaVersion((String)newValue);
                return;
            }
            case 3: {
                this.setToolVersion((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getDataSet().clear();
                return;
            }
            case 1: {
                this.setSignature(null);
                return;
            }
            case 2: {
                this.setSchemaVersion(SCHEMA_VERSION_EDEFAULT);
                return;
            }
            case 3: {
                this.setToolVersion(TOOL_VERSION_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.dataSet != null && !this.dataSet.isEmpty();
            }
            case 1: {
                return this.signature != null;
            }
            case 2: {
                return SCHEMA_VERSION_EDEFAULT == null ? this.schemaVersion != null : !SCHEMA_VERSION_EDEFAULT.equals(this.schemaVersion);
            }
            case 3: {
                return TOOL_VERSION_EDEFAULT == null ? this.toolVersion != null : !TOOL_VERSION_EDEFAULT.equals(this.toolVersion);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (schemaVersion: ");
        result.append(this.schemaVersion);
        result.append(", toolVersion: ");
        result.append(this.toolVersion);
        result.append(')');
        return result.toString();
    }
}

