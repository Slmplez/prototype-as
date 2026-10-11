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
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.ConfigurationManagementT;
import com.etas.amd620.core.ComponentMain.GenericDataT;
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

public class ConfigurationManagementTImpl
extends MinimalEObjectImpl.Container
implements ConfigurationManagementT {
    protected EList<GenericDataT> genericData;
    protected static final Object CONFIGURATION_ID_EDEFAULT = null;
    protected Object configurationID = CONFIGURATION_ID_EDEFAULT;
    protected static final Object EDITION_EDEFAULT = null;
    protected Object edition = EDITION_EDEFAULT;
    protected static final String VERSION_ID_EDEFAULT = null;
    protected String versionID = VERSION_ID_EDEFAULT;

    protected ConfigurationManagementTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.CONFIGURATION_MANAGEMENT_T;
    }

    @Override
    public EList<GenericDataT> getGenericData() {
        if (this.genericData == null) {
            this.genericData = new EObjectContainmentEList(GenericDataT.class, (InternalEObject)this, 0);
        }
        return this.genericData;
    }

    @Override
    public Object getConfigurationID() {
        return this.configurationID;
    }

    @Override
    public void setConfigurationID(Object newConfigurationID) {
        Object oldConfigurationID = this.configurationID;
        this.configurationID = newConfigurationID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, oldConfigurationID, this.configurationID));
        }
    }

    @Override
    public Object getEdition() {
        return this.edition;
    }

    @Override
    public void setEdition(Object newEdition) {
        Object oldEdition = this.edition;
        this.edition = newEdition;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, oldEdition, this.edition));
        }
    }

    @Override
    public String getVersionID() {
        return this.versionID;
    }

    @Override
    public void setVersionID(String newVersionID) {
        String oldVersionID = this.versionID;
        this.versionID = newVersionID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldVersionID, (Object)this.versionID));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getGenericData()).basicRemove((Object)otherEnd, msgs);
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
                return this.getConfigurationID();
            }
            case 2: {
                return this.getEdition();
            }
            case 3: {
                return this.getVersionID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getGenericData().clear();
                this.getGenericData().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setConfigurationID(newValue);
                return;
            }
            case 2: {
                this.setEdition(newValue);
                return;
            }
            case 3: {
                this.setVersionID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getGenericData().clear();
                return;
            }
            case 1: {
                this.setConfigurationID(CONFIGURATION_ID_EDEFAULT);
                return;
            }
            case 2: {
                this.setEdition(EDITION_EDEFAULT);
                return;
            }
            case 3: {
                this.setVersionID(VERSION_ID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.genericData != null && !this.genericData.isEmpty();
            }
            case 1: {
                return CONFIGURATION_ID_EDEFAULT == null ? this.configurationID != null : !CONFIGURATION_ID_EDEFAULT.equals(this.configurationID);
            }
            case 2: {
                return EDITION_EDEFAULT == null ? this.edition != null : !EDITION_EDEFAULT.equals(this.edition);
            }
            case 3: {
                return VERSION_ID_EDEFAULT == null ? this.versionID != null : !VERSION_ID_EDEFAULT.equals(this.versionID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (configurationID: ");
        result.append(this.configurationID);
        result.append(", edition: ");
        result.append(this.edition);
        result.append(", versionID: ");
        result.append(this.versionID);
        result.append(')');
        return result.toString();
    }
}

