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
package com.etas.amd620.core.ComponentData.impl;

import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.FileReferenceT;
import com.etas.amd620.core.ComponentData.TypeType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class FileReferenceTImpl
extends MinimalEObjectImpl.Container
implements FileReferenceT {
    protected static final String VALUE_EDEFAULT = null;
    protected String value = VALUE_EDEFAULT;
    protected static final byte[] CHECKSUM_EDEFAULT = null;
    protected byte[] checksum = CHECKSUM_EDEFAULT;
    protected static final TypeType TYPE_EDEFAULT = TypeType.ASAM;
    protected TypeType type = TYPE_EDEFAULT;
    protected boolean typeESet;

    protected FileReferenceTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentDataPackage.Literals.FILE_REFERENCE_T;
    }

    @Override
    public String getValue() {
        return this.value;
    }

    @Override
    public void setValue(String newValue) {
        String oldValue = this.value;
        this.value = newValue;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldValue, (Object)this.value));
        }
    }

    @Override
    public byte[] getChecksum() {
        return this.checksum;
    }

    @Override
    public void setChecksum(byte[] newChecksum) {
        byte[] oldChecksum = this.checksum;
        this.checksum = newChecksum;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldChecksum, (Object)this.checksum));
        }
    }

    @Override
    public TypeType getType() {
        return this.type;
    }

    @Override
    public void setType(TypeType newType) {
        TypeType oldType = this.type;
        this.type = newType == null ? TYPE_EDEFAULT : newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    @Override
    public void unsetType() {
        TypeType oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = TYPE_EDEFAULT;
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 2, (Object)oldType, (Object)TYPE_EDEFAULT, oldTypeESet));
        }
    }

    @Override
    public boolean isSetType() {
        return this.typeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getValue();
            }
            case 1: {
                return this.getChecksum();
            }
            case 2: {
                return this.getType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setValue((String)newValue);
                return;
            }
            case 1: {
                this.setChecksum((byte[])newValue);
                return;
            }
            case 2: {
                this.setType((TypeType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setValue(VALUE_EDEFAULT);
                return;
            }
            case 1: {
                this.setChecksum(CHECKSUM_EDEFAULT);
                return;
            }
            case 2: {
                this.unsetType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return VALUE_EDEFAULT == null ? this.value != null : !VALUE_EDEFAULT.equals(this.value);
            }
            case 1: {
                return CHECKSUM_EDEFAULT == null ? this.checksum != null : !CHECKSUM_EDEFAULT.equals(this.checksum);
            }
            case 2: {
                return this.isSetType();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (value: ");
        result.append(this.value);
        result.append(", checksum: ");
        result.append(this.checksum);
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

