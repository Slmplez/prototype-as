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

import com.etas.amd620.core.ComponentMain.AccessModesT;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.ConfigurationManagementT;
import com.etas.amd620.core.ComponentMain.CustomerSpecificAttributesType;
import com.etas.amd620.core.ComponentMain.GenericDataT;
import com.etas.amd620.core.ComponentMain.RequirementsManagementT;
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

public class CustomerSpecificAttributesTypeImpl
extends MinimalEObjectImpl.Container
implements CustomerSpecificAttributesType {
    protected ConfigurationManagementT configurationManagement;
    protected RequirementsManagementT requirementsManagement;
    protected AccessModesT accessManagement;
    protected EList<GenericDataT> customerData;

    protected CustomerSpecificAttributesTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.CUSTOMER_SPECIFIC_ATTRIBUTES_TYPE;
    }

    @Override
    public ConfigurationManagementT getConfigurationManagement() {
        return this.configurationManagement;
    }

    public NotificationChain basicSetConfigurationManagement(ConfigurationManagementT newConfigurationManagement, NotificationChain msgs) {
        ConfigurationManagementT oldConfigurationManagement = this.configurationManagement;
        this.configurationManagement = newConfigurationManagement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldConfigurationManagement, (Object)newConfigurationManagement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setConfigurationManagement(ConfigurationManagementT newConfigurationManagement) {
        if (newConfigurationManagement != this.configurationManagement) {
            NotificationChain msgs = null;
            if (this.configurationManagement != null) {
                msgs = ((InternalEObject)this.configurationManagement).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newConfigurationManagement != null) {
                msgs = ((InternalEObject)newConfigurationManagement).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetConfigurationManagement(newConfigurationManagement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newConfigurationManagement, (Object)newConfigurationManagement));
        }
    }

    @Override
    public RequirementsManagementT getRequirementsManagement() {
        return this.requirementsManagement;
    }

    public NotificationChain basicSetRequirementsManagement(RequirementsManagementT newRequirementsManagement, NotificationChain msgs) {
        RequirementsManagementT oldRequirementsManagement = this.requirementsManagement;
        this.requirementsManagement = newRequirementsManagement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldRequirementsManagement, (Object)newRequirementsManagement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setRequirementsManagement(RequirementsManagementT newRequirementsManagement) {
        if (newRequirementsManagement != this.requirementsManagement) {
            NotificationChain msgs = null;
            if (this.requirementsManagement != null) {
                msgs = ((InternalEObject)this.requirementsManagement).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newRequirementsManagement != null) {
                msgs = ((InternalEObject)newRequirementsManagement).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetRequirementsManagement(newRequirementsManagement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newRequirementsManagement, (Object)newRequirementsManagement));
        }
    }

    @Override
    public AccessModesT getAccessManagement() {
        return this.accessManagement;
    }

    public NotificationChain basicSetAccessManagement(AccessModesT newAccessManagement, NotificationChain msgs) {
        AccessModesT oldAccessManagement = this.accessManagement;
        this.accessManagement = newAccessManagement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldAccessManagement, (Object)newAccessManagement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setAccessManagement(AccessModesT newAccessManagement) {
        if (newAccessManagement != this.accessManagement) {
            NotificationChain msgs = null;
            if (this.accessManagement != null) {
                msgs = ((InternalEObject)this.accessManagement).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newAccessManagement != null) {
                msgs = ((InternalEObject)newAccessManagement).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetAccessManagement(newAccessManagement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newAccessManagement, (Object)newAccessManagement));
        }
    }

    @Override
    public EList<GenericDataT> getCustomerData() {
        if (this.customerData == null) {
            this.customerData = new EObjectContainmentEList(GenericDataT.class, (InternalEObject)this, 3);
        }
        return this.customerData;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetConfigurationManagement(null, msgs);
            }
            case 1: {
                return this.basicSetRequirementsManagement(null, msgs);
            }
            case 2: {
                return this.basicSetAccessManagement(null, msgs);
            }
            case 3: {
                return ((InternalEList)this.getCustomerData()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getConfigurationManagement();
            }
            case 1: {
                return this.getRequirementsManagement();
            }
            case 2: {
                return this.getAccessManagement();
            }
            case 3: {
                return this.getCustomerData();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setConfigurationManagement((ConfigurationManagementT)newValue);
                return;
            }
            case 1: {
                this.setRequirementsManagement((RequirementsManagementT)newValue);
                return;
            }
            case 2: {
                this.setAccessManagement((AccessModesT)newValue);
                return;
            }
            case 3: {
                this.getCustomerData().clear();
                this.getCustomerData().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setConfigurationManagement(null);
                return;
            }
            case 1: {
                this.setRequirementsManagement(null);
                return;
            }
            case 2: {
                this.setAccessManagement(null);
                return;
            }
            case 3: {
                this.getCustomerData().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.configurationManagement != null;
            }
            case 1: {
                return this.requirementsManagement != null;
            }
            case 2: {
                return this.accessManagement != null;
            }
            case 3: {
                return this.customerData != null && !this.customerData.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

