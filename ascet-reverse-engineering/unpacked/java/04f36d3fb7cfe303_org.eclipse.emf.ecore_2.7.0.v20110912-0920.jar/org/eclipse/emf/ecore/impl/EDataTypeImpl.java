/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.ecore.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EClassifierImpl;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EDataTypeImpl
extends EClassifierImpl
implements EDataType {
    protected static final boolean SERIALIZABLE_EDEFAULT = true;
    protected static final int SERIALIZABLE_EFLAG = 256;
    protected Object defaultValue = null;
    protected boolean defaultValueIsSet = false;

    protected EDataTypeImpl() {
        this.eFlags |= 0x100;
    }

    @Override
    public Object getDefaultValue() {
        if (!this.defaultValueIsSet) {
            Class<?> instanceClass = null;
            try {
                instanceClass = this.getInstanceClass();
            }
            catch (Exception exception) {
                // empty catch block
            }
            this.defaultValue = null;
            if (instanceClass != null && instanceClass.isPrimitive()) {
                this.defaultValue = instanceClass == Boolean.TYPE ? Boolean.FALSE : (instanceClass == Integer.TYPE ? Integer.valueOf(0) : (instanceClass == Float.TYPE ? Float.valueOf(0.0f) : (instanceClass == Double.TYPE ? Double.valueOf(0.0) : (instanceClass == Long.TYPE ? Long.valueOf(0L) : (instanceClass == Short.TYPE ? Short.valueOf((short)0) : (instanceClass == Byte.TYPE ? (Comparable<Byte>)Byte.valueOf((byte)0) : (Comparable<Byte>)Character.valueOf('\u0000')))))));
            }
            this.defaultValueIsSet = true;
        }
        return this.defaultValue;
    }

    @Override
    public void setInstanceClassGen(Class<?> instanceClass) {
        super.setInstanceClassGen(instanceClass);
        this.defaultValueIsSet = false;
    }

    @Override
    public void setGeneratedInstanceClass(boolean isGenerated) {
        super.setGeneratedInstanceClass(isGenerated);
        this.setDataTypeGeneratedInstanceClass(isGenerated);
    }

    protected void setDataTypeGeneratedInstanceClass(boolean isGenerated) {
        if (isGenerated) {
            this.instanceClassName = "org.eclipse.emf.common.util.AbstractEnumerator";
        }
    }

    @Override
    protected EClass eStaticClass() {
        return EcorePackage.Literals.EDATA_TYPE;
    }

    @Override
    public boolean isSerializable() {
        return (this.eFlags & 0x100) != 0;
    }

    @Override
    public void setSerializable(boolean newSerializable) {
        boolean oldSerializable;
        boolean bl = oldSerializable = (this.eFlags & 0x100) != 0;
        this.eFlags = newSerializable ? (this.eFlags |= 0x100) : (this.eFlags &= 0xFFFFFEFF);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, oldSerializable, newSerializable));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getEAnnotations();
            }
            case 1: {
                return this.getName();
            }
            case 2: {
                return this.getInstanceClassName();
            }
            case 3: {
                return this.getInstanceClass();
            }
            case 4: {
                return this.getDefaultValue();
            }
            case 5: {
                return this.getInstanceTypeName();
            }
            case 6: {
                if (resolve) {
                    return this.getEPackage();
                }
                return this.basicGetEPackage();
            }
            case 7: {
                return this.getETypeParameters();
            }
            case 8: {
                return this.isSerializable();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                this.getEAnnotations().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setName((String)newValue);
                return;
            }
            case 2: {
                this.setInstanceClassName((String)newValue);
                return;
            }
            case 5: {
                this.setInstanceTypeName((String)newValue);
                return;
            }
            case 7: {
                this.getETypeParameters().clear();
                this.getETypeParameters().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.setSerializable((Boolean)newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                return;
            }
            case 1: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 2: {
                this.unsetInstanceClassName();
                return;
            }
            case 5: {
                this.unsetInstanceTypeName();
                return;
            }
            case 7: {
                this.getETypeParameters().clear();
                return;
            }
            case 8: {
                this.setSerializable(true);
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.eAnnotations != null && !this.eAnnotations.isEmpty();
            }
            case 1: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 2: {
                return this.isSetInstanceClassName();
            }
            case 3: {
                return this.getInstanceClass() != null;
            }
            case 4: {
                return DEFAULT_VALUE_EDEFAULT == null ? this.getDefaultValue() != null : !DEFAULT_VALUE_EDEFAULT.equals(this.getDefaultValue());
            }
            case 5: {
                return this.isSetInstanceTypeName();
            }
            case 6: {
                return this.basicGetEPackage() != null;
            }
            case 7: {
                return this.eTypeParameters != null && !this.eTypeParameters.isEmpty();
            }
            case 8: {
                return (this.eFlags & 0x100) == 0;
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (serializable: ");
        result.append((this.eFlags & 0x100) != 0);
        result.append(')');
        return result.toString();
    }
}

