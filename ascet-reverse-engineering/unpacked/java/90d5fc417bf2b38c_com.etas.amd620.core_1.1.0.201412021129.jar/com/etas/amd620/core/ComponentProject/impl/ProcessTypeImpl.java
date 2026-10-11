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
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.ProcessType;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ProcessTypeImpl
extends MinimalEObjectImpl.Container
implements ProcessType {
    protected static final boolean DEFAULT_EDEFAULT = false;
    protected boolean default_ = false;
    protected boolean defaultESet;
    protected static final String ELEMENT_NAME_EDEFAULT = null;
    protected String elementName = ELEMENT_NAME_EDEFAULT;
    protected static final String ELEMENT_OID_EDEFAULT = null;
    protected String elementOID = ELEMENT_OID_EDEFAULT;
    protected static final BigInteger INDEX_EDEFAULT = null;
    protected BigInteger index = INDEX_EDEFAULT;
    protected static final String METHOD_NAME_EDEFAULT = null;
    protected String methodName = METHOD_NAME_EDEFAULT;
    protected static final String METHOD_OID_EDEFAULT = null;
    protected String methodOID = METHOD_OID_EDEFAULT;

    protected ProcessTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.PROCESS_TYPE;
    }

    @Override
    public boolean isDefault() {
        return this.default_;
    }

    @Override
    public void setDefault(boolean newDefault) {
        boolean oldDefault = this.default_;
        this.default_ = newDefault;
        boolean oldDefaultESet = this.defaultESet;
        this.defaultESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, oldDefault, this.default_, !oldDefaultESet));
        }
    }

    @Override
    public void unsetDefault() {
        boolean oldDefault = this.default_;
        boolean oldDefaultESet = this.defaultESet;
        this.default_ = false;
        this.defaultESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 0, oldDefault, false, oldDefaultESet));
        }
    }

    @Override
    public boolean isSetDefault() {
        return this.defaultESet;
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
    public BigInteger getIndex() {
        return this.index;
    }

    @Override
    public void setIndex(BigInteger newIndex) {
        BigInteger oldIndex = this.index;
        this.index = newIndex;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldIndex, (Object)this.index));
        }
    }

    @Override
    public String getMethodName() {
        return this.methodName;
    }

    @Override
    public void setMethodName(String newMethodName) {
        String oldMethodName = this.methodName;
        this.methodName = newMethodName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMethodName, (Object)this.methodName));
        }
    }

    @Override
    public String getMethodOID() {
        return this.methodOID;
    }

    @Override
    public void setMethodOID(String newMethodOID) {
        String oldMethodOID = this.methodOID;
        this.methodOID = newMethodOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMethodOID, (Object)this.methodOID));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.isDefault();
            }
            case 1: {
                return this.getElementName();
            }
            case 2: {
                return this.getElementOID();
            }
            case 3: {
                return this.getIndex();
            }
            case 4: {
                return this.getMethodName();
            }
            case 5: {
                return this.getMethodOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setDefault((Boolean)newValue);
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
                this.setIndex((BigInteger)newValue);
                return;
            }
            case 4: {
                this.setMethodName((String)newValue);
                return;
            }
            case 5: {
                this.setMethodOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.unsetDefault();
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
                this.setIndex(INDEX_EDEFAULT);
                return;
            }
            case 4: {
                this.setMethodName(METHOD_NAME_EDEFAULT);
                return;
            }
            case 5: {
                this.setMethodOID(METHOD_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.isSetDefault();
            }
            case 1: {
                return ELEMENT_NAME_EDEFAULT == null ? this.elementName != null : !ELEMENT_NAME_EDEFAULT.equals(this.elementName);
            }
            case 2: {
                return ELEMENT_OID_EDEFAULT == null ? this.elementOID != null : !ELEMENT_OID_EDEFAULT.equals(this.elementOID);
            }
            case 3: {
                return INDEX_EDEFAULT == null ? this.index != null : !INDEX_EDEFAULT.equals(this.index);
            }
            case 4: {
                return METHOD_NAME_EDEFAULT == null ? this.methodName != null : !METHOD_NAME_EDEFAULT.equals(this.methodName);
            }
            case 5: {
                return METHOD_OID_EDEFAULT == null ? this.methodOID != null : !METHOD_OID_EDEFAULT.equals(this.methodOID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (default: ");
        if (this.defaultESet) {
            result.append(this.default_);
        } else {
            result.append("<unset>");
        }
        result.append(", elementName: ");
        result.append(this.elementName);
        result.append(", elementOID: ");
        result.append(this.elementOID);
        result.append(", index: ");
        result.append(this.index);
        result.append(", methodName: ");
        result.append(this.methodName);
        result.append(", methodOID: ");
        result.append(this.methodOID);
        result.append(')');
        return result.toString();
    }
}

