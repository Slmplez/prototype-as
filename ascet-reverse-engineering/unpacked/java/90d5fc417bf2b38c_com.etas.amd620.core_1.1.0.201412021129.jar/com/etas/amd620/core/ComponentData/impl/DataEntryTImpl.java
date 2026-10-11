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
import com.etas.amd620.core.ComponentData.DataEntryT;
import com.etas.amd620.core.ComponentData.DataVariantT;
import com.etas.amd620.core.ComponentData.GenericDataT;
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

public class DataEntryTImpl
extends MinimalEObjectImpl.Container
implements DataEntryT {
    protected DataVariantT dataVariant;
    protected EList<GenericDataT> customerData;
    protected static final String ELEMENT_NAME_EDEFAULT = null;
    protected String elementName = ELEMENT_NAME_EDEFAULT;
    protected static final String ELEMENT_OID_EDEFAULT = null;
    protected String elementOID = ELEMENT_OID_EDEFAULT;
    protected static final String IGNORE_EDEFAULT = "false";
    protected String ignore = "false";
    protected boolean ignoreESet;

    protected DataEntryTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentDataPackage.Literals.DATA_ENTRY_T;
    }

    @Override
    public DataVariantT getDataVariant() {
        return this.dataVariant;
    }

    public NotificationChain basicSetDataVariant(DataVariantT newDataVariant, NotificationChain msgs) {
        DataVariantT oldDataVariant = this.dataVariant;
        this.dataVariant = newDataVariant;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldDataVariant, (Object)newDataVariant);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDataVariant(DataVariantT newDataVariant) {
        if (newDataVariant != this.dataVariant) {
            NotificationChain msgs = null;
            if (this.dataVariant != null) {
                msgs = ((InternalEObject)this.dataVariant).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newDataVariant != null) {
                msgs = ((InternalEObject)newDataVariant).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetDataVariant(newDataVariant, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newDataVariant, (Object)newDataVariant));
        }
    }

    @Override
    public EList<GenericDataT> getCustomerData() {
        if (this.customerData == null) {
            this.customerData = new EObjectContainmentEList(GenericDataT.class, (InternalEObject)this, 1);
        }
        return this.customerData;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldElementName, (Object)this.elementName));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldElementOID, (Object)this.elementOID));
        }
    }

    @Override
    public String getIgnore() {
        return this.ignore;
    }

    @Override
    public void setIgnore(String newIgnore) {
        String oldIgnore = this.ignore;
        this.ignore = newIgnore;
        boolean oldIgnoreESet = this.ignoreESet;
        this.ignoreESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldIgnore, (Object)this.ignore, !oldIgnoreESet));
        }
    }

    @Override
    public void unsetIgnore() {
        String oldIgnore = this.ignore;
        boolean oldIgnoreESet = this.ignoreESet;
        this.ignore = IGNORE_EDEFAULT;
        this.ignoreESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldIgnore, (Object)IGNORE_EDEFAULT, oldIgnoreESet));
        }
    }

    @Override
    public boolean isSetIgnore() {
        return this.ignoreESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetDataVariant(null, msgs);
            }
            case 1: {
                return ((InternalEList)this.getCustomerData()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getDataVariant();
            }
            case 1: {
                return this.getCustomerData();
            }
            case 2: {
                return this.getElementName();
            }
            case 3: {
                return this.getElementOID();
            }
            case 4: {
                return this.getIgnore();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setDataVariant((DataVariantT)newValue);
                return;
            }
            case 1: {
                this.getCustomerData().clear();
                this.getCustomerData().addAll((Collection)newValue);
                return;
            }
            case 2: {
                this.setElementName((String)newValue);
                return;
            }
            case 3: {
                this.setElementOID((String)newValue);
                return;
            }
            case 4: {
                this.setIgnore((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setDataVariant(null);
                return;
            }
            case 1: {
                this.getCustomerData().clear();
                return;
            }
            case 2: {
                this.setElementName(ELEMENT_NAME_EDEFAULT);
                return;
            }
            case 3: {
                this.setElementOID(ELEMENT_OID_EDEFAULT);
                return;
            }
            case 4: {
                this.unsetIgnore();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.dataVariant != null;
            }
            case 1: {
                return this.customerData != null && !this.customerData.isEmpty();
            }
            case 2: {
                return ELEMENT_NAME_EDEFAULT == null ? this.elementName != null : !ELEMENT_NAME_EDEFAULT.equals(this.elementName);
            }
            case 3: {
                return ELEMENT_OID_EDEFAULT == null ? this.elementOID != null : !ELEMENT_OID_EDEFAULT.equals(this.elementOID);
            }
            case 4: {
                return this.isSetIgnore();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (elementName: ");
        result.append(this.elementName);
        result.append(", elementOID: ");
        result.append(this.elementOID);
        result.append(", ignore: ");
        if (this.ignoreESet) {
            result.append(this.ignore);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

