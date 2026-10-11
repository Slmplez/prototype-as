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
import com.etas.amd620.core.ComponentMain.MappingItemT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class MappingItemTImpl
extends MinimalEObjectImpl.Container
implements MappingItemT {
    protected static final String DISPLAY_NAME_EDEFAULT = null;
    protected String displayName = DISPLAY_NAME_EDEFAULT;
    protected static final String ELEMENT_NAME_EDEFAULT = null;
    protected String elementName = ELEMENT_NAME_EDEFAULT;
    protected static final String ELEMENT_OID_EDEFAULT = null;
    protected String elementOID = ELEMENT_OID_EDEFAULT;
    protected static final String MODEL_NAME_EDEFAULT = null;
    protected String modelName = MODEL_NAME_EDEFAULT;
    protected static final String MODEL_OID_EDEFAULT = null;
    protected String modelOID = MODEL_OID_EDEFAULT;

    protected MappingItemTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.MAPPING_ITEM_T;
    }

    @Override
    public String getDisplayName() {
        return this.displayName;
    }

    @Override
    public void setDisplayName(String newDisplayName) {
        String oldDisplayName = this.displayName;
        this.displayName = newDisplayName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldDisplayName, (Object)this.displayName));
        }
    }

    @Override
    public String getElementName() {
        return this.elementName;
    }

    @Override
    public void setElementName(String newElementName) {
        String oldElementName = this.elementName;
        this.elementName = newElementName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldElementName, (Object)this.elementName));
        }
    }

    @Override
    public String getElementOID() {
        return this.elementOID;
    }

    @Override
    public void setElementOID(String newElementOID) {
        String oldElementOID = this.elementOID;
        this.elementOID = newElementOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldElementOID, (Object)this.elementOID));
        }
    }

    @Override
    public String getModelName() {
        return this.modelName;
    }

    @Override
    public void setModelName(String newModelName) {
        String oldModelName = this.modelName;
        this.modelName = newModelName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldModelName, (Object)this.modelName));
        }
    }

    @Override
    public String getModelOID() {
        return this.modelOID;
    }

    @Override
    public void setModelOID(String newModelOID) {
        String oldModelOID = this.modelOID;
        this.modelOID = newModelOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldModelOID, (Object)this.modelOID));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getDisplayName();
            }
            case 1: {
                return this.getElementName();
            }
            case 2: {
                return this.getElementOID();
            }
            case 3: {
                return this.getModelName();
            }
            case 4: {
                return this.getModelOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setDisplayName((String)newValue);
                return;
            }
            case 1: {
                this.setElementName((String)newValue);
                return;
            }
            case 2: {
                this.setElementOID((String)newValue);
                return;
            }
            case 3: {
                this.setModelName((String)newValue);
                return;
            }
            case 4: {
                this.setModelOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setDisplayName(DISPLAY_NAME_EDEFAULT);
                return;
            }
            case 1: {
                this.setElementName(ELEMENT_NAME_EDEFAULT);
                return;
            }
            case 2: {
                this.setElementOID(ELEMENT_OID_EDEFAULT);
                return;
            }
            case 3: {
                this.setModelName(MODEL_NAME_EDEFAULT);
                return;
            }
            case 4: {
                this.setModelOID(MODEL_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return DISPLAY_NAME_EDEFAULT == null ? this.displayName != null : !DISPLAY_NAME_EDEFAULT.equals(this.displayName);
            }
            case 1: {
                return ELEMENT_NAME_EDEFAULT == null ? this.elementName != null : !ELEMENT_NAME_EDEFAULT.equals(this.elementName);
            }
            case 2: {
                return ELEMENT_OID_EDEFAULT == null ? this.elementOID != null : !ELEMENT_OID_EDEFAULT.equals(this.elementOID);
            }
            case 3: {
                return MODEL_NAME_EDEFAULT == null ? this.modelName != null : !MODEL_NAME_EDEFAULT.equals(this.modelName);
            }
            case 4: {
                return MODEL_OID_EDEFAULT == null ? this.modelOID != null : !MODEL_OID_EDEFAULT.equals(this.modelOID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (displayName: ");
        result.append(this.displayName);
        result.append(", elementName: ");
        result.append(this.elementName);
        result.append(", elementOID: ");
        result.append(this.elementOID);
        result.append(", modelName: ");
        result.append(this.modelName);
        result.append(", modelOID: ");
        result.append(this.modelOID);
        result.append(')');
        return result.toString();
    }
}

