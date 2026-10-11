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
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.ItemType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ItemTypeImpl
extends MinimalEObjectImpl.Container
implements ItemType {
    protected static final String ITEM_NAME_EDEFAULT = null;
    protected String itemName = ITEM_NAME_EDEFAULT;
    protected static final String ITEM_OID_EDEFAULT = null;
    protected String itemOID = ITEM_OID_EDEFAULT;

    protected ItemTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.ITEM_TYPE;
    }

    @Override
    public String getItemName() {
        return this.itemName;
    }

    @Override
    public void setItemName(String newItemName) {
        String oldItemName = this.itemName;
        this.itemName = newItemName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldItemName, (Object)this.itemName));
        }
    }

    @Override
    public String getItemOID() {
        return this.itemOID;
    }

    @Override
    public void setItemOID(String newItemOID) {
        String oldItemOID = this.itemOID;
        this.itemOID = newItemOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldItemOID, (Object)this.itemOID));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getItemName();
            }
            case 1: {
                return this.getItemOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setItemName((String)newValue);
                return;
            }
            case 1: {
                this.setItemOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setItemName(ITEM_NAME_EDEFAULT);
                return;
            }
            case 1: {
                this.setItemOID(ITEM_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return ITEM_NAME_EDEFAULT == null ? this.itemName != null : !ITEM_NAME_EDEFAULT.equals(this.itemName);
            }
            case 1: {
                return ITEM_OID_EDEFAULT == null ? this.itemOID != null : !ITEM_OID_EDEFAULT.equals(this.itemOID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (itemName: ");
        result.append(this.itemName);
        result.append(", itemOID: ");
        result.append(this.itemOID);
        result.append(')');
        return result.toString();
    }
}

