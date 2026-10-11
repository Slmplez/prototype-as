/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.EnumerationAttributesT;
import com.etas.amd620.core.ComponentMain.impl.PrimitiveAttributesBaseTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class EnumerationAttributesTImpl
extends PrimitiveAttributesBaseTImpl
implements EnumerationAttributesT {
    protected static final String ENUMERATION_NAME_EDEFAULT = null;
    protected String enumerationName = ENUMERATION_NAME_EDEFAULT;
    protected static final String ENUMERATION_OID_EDEFAULT = null;
    protected String enumerationOID = ENUMERATION_OID_EDEFAULT;
    protected static final Object EXPLICIT_EDEFAULT = null;
    protected Object explicit = EXPLICIT_EDEFAULT;

    protected EnumerationAttributesTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.ENUMERATION_ATTRIBUTES_T;
    }

    @Override
    public String getEnumerationName() {
        return this.enumerationName;
    }

    @Override
    public void setEnumerationName(String newEnumerationName) {
        String oldEnumerationName = this.enumerationName;
        this.enumerationName = newEnumerationName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldEnumerationName, (Object)this.enumerationName));
        }
    }

    @Override
    public String getEnumerationOID() {
        return this.enumerationOID;
    }

    @Override
    public void setEnumerationOID(String newEnumerationOID) {
        String oldEnumerationOID = this.enumerationOID;
        this.enumerationOID = newEnumerationOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldEnumerationOID, (Object)this.enumerationOID));
        }
    }

    @Override
    public Object getExplicit() {
        return this.explicit;
    }

    @Override
    public void setExplicit(Object newExplicit) {
        Object oldExplicit = this.explicit;
        this.explicit = newExplicit;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, oldExplicit, this.explicit));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 10: {
                return this.getEnumerationName();
            }
            case 11: {
                return this.getEnumerationOID();
            }
            case 12: {
                return this.getExplicit();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 10: {
                this.setEnumerationName((String)newValue);
                return;
            }
            case 11: {
                this.setEnumerationOID((String)newValue);
                return;
            }
            case 12: {
                this.setExplicit(newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 10: {
                this.setEnumerationName(ENUMERATION_NAME_EDEFAULT);
                return;
            }
            case 11: {
                this.setEnumerationOID(ENUMERATION_OID_EDEFAULT);
                return;
            }
            case 12: {
                this.setExplicit(EXPLICIT_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 10: {
                return ENUMERATION_NAME_EDEFAULT == null ? this.enumerationName != null : !ENUMERATION_NAME_EDEFAULT.equals(this.enumerationName);
            }
            case 11: {
                return ENUMERATION_OID_EDEFAULT == null ? this.enumerationOID != null : !ENUMERATION_OID_EDEFAULT.equals(this.enumerationOID);
            }
            case 12: {
                return EXPLICIT_EDEFAULT == null ? this.explicit != null : !EXPLICIT_EDEFAULT.equals(this.explicit);
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
        result.append(" (enumerationName: ");
        result.append(this.enumerationName);
        result.append(", enumerationOID: ");
        result.append(this.enumerationOID);
        result.append(", explicit: ");
        result.append(this.explicit);
        result.append(')');
        return result.toString();
    }
}

