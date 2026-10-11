/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComplexElementT;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.TypeType3;
import com.etas.amd620.core.ComponentSpecification.impl.LayoutTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ComplexElementTImpl
extends LayoutTImpl
implements ComplexElementT {
    protected static final String ELEMENT_NAME_EDEFAULT = null;
    protected String elementName = ELEMENT_NAME_EDEFAULT;
    protected static final String ELEMENT_OID_EDEFAULT = null;
    protected String elementOID = ELEMENT_OID_EDEFAULT;
    protected static final String METHOD_NAME_EDEFAULT = null;
    protected String methodName = METHOD_NAME_EDEFAULT;
    protected static final TypeType3 TYPE_EDEFAULT = TypeType3.ARRAY;
    protected TypeType3 type = TYPE_EDEFAULT;
    protected boolean typeESet;

    protected ComplexElementTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getComplexElementT();
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldElementName, (Object)this.elementName));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldElementOID, (Object)this.elementOID));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldMethodName, (Object)this.methodName));
        }
    }

    @Override
    public TypeType3 getType() {
        return this.type;
    }

    @Override
    public void setType(TypeType3 newType) {
        TypeType3 oldType = this.type;
        this.type = newType == null ? TYPE_EDEFAULT : newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    @Override
    public void unsetType() {
        TypeType3 oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = TYPE_EDEFAULT;
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldType, (Object)TYPE_EDEFAULT, oldTypeESet));
        }
    }

    @Override
    public boolean isSetType() {
        return this.typeESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getElementName();
            }
            case 17: {
                return this.getElementOID();
            }
            case 18: {
                return this.getMethodName();
            }
            case 19: {
                return this.getType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setElementName((String)newValue);
                return;
            }
            case 17: {
                this.setElementOID((String)newValue);
                return;
            }
            case 18: {
                this.setMethodName((String)newValue);
                return;
            }
            case 19: {
                this.setType((TypeType3)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setElementName(ELEMENT_NAME_EDEFAULT);
                return;
            }
            case 17: {
                this.setElementOID(ELEMENT_OID_EDEFAULT);
                return;
            }
            case 18: {
                this.setMethodName(METHOD_NAME_EDEFAULT);
                return;
            }
            case 19: {
                this.unsetType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return ELEMENT_NAME_EDEFAULT == null ? this.elementName != null : !ELEMENT_NAME_EDEFAULT.equals(this.elementName);
            }
            case 17: {
                return ELEMENT_OID_EDEFAULT == null ? this.elementOID != null : !ELEMENT_OID_EDEFAULT.equals(this.elementOID);
            }
            case 18: {
                return METHOD_NAME_EDEFAULT == null ? this.methodName != null : !METHOD_NAME_EDEFAULT.equals(this.methodName);
            }
            case 19: {
                return this.isSetType();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (elementName: ");
        result.append(this.elementName);
        result.append(", elementOID: ");
        result.append(this.elementOID);
        result.append(", methodName: ");
        result.append(this.methodName);
        result.append(", type: ");
        if (this.typeESet) {
            result.append((Object)this.type);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

