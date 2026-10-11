/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.ecore.xml.type.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.xml.type.SimpleAnyType;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.ecore.xml.type.impl.AnyTypeImpl;

public class SimpleAnyTypeImpl
extends AnyTypeImpl
implements SimpleAnyType {
    protected static final String RAW_VALUE_EDEFAULT = null;
    protected static final Object VALUE_EDEFAULT = null;
    protected EDataType instanceType;

    protected SimpleAnyTypeImpl() {
    }

    protected EClass eStaticClass() {
        return XMLTypePackage.Literals.SIMPLE_ANY_TYPE;
    }

    public String getRawValue() {
        return (String)this.getMixed().get(XMLTypePackage.Literals.SIMPLE_ANY_TYPE__RAW_VALUE, true);
    }

    public void setRawValue(String newRawValue) {
        ((FeatureMap.Internal)this.getMixed()).set(XMLTypePackage.Literals.SIMPLE_ANY_TYPE__RAW_VALUE, newRawValue);
    }

    public Object getValue() {
        return EcoreUtil.createFromString(this.instanceType, this.getRawValue());
    }

    public void setValue(Object newValue) {
        this.setRawValue(EcoreUtil.convertToString(this.instanceType, newValue));
    }

    public EDataType getInstanceType() {
        return this.instanceType;
    }

    public void setInstanceType(EDataType newInstanceType) {
        EDataType oldInstanceType = this.instanceType;
        this.instanceType = newInstanceType;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldInstanceType, (Object)this.instanceType));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                if (coreType) {
                    return this.getMixed();
                }
                return ((FeatureMap.Internal)this.getMixed()).getWrapper();
            }
            case 1: {
                if (coreType) {
                    return this.getAny();
                }
                return ((FeatureMap.Internal)this.getAny()).getWrapper();
            }
            case 2: {
                if (coreType) {
                    return this.getAnyAttribute();
                }
                return ((FeatureMap.Internal)this.getAnyAttribute()).getWrapper();
            }
            case 3: {
                return this.getRawValue();
            }
            case 4: {
                return this.getValue();
            }
            case 5: {
                return this.getInstanceType();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                ((FeatureMap.Internal)this.getMixed()).set(newValue);
                return;
            }
            case 1: {
                ((FeatureMap.Internal)this.getAny()).set(newValue);
                return;
            }
            case 2: {
                ((FeatureMap.Internal)this.getAnyAttribute()).set(newValue);
                return;
            }
            case 3: {
                this.setRawValue((String)newValue);
                return;
            }
            case 4: {
                this.setValue(newValue);
                return;
            }
            case 5: {
                this.setInstanceType((EDataType)newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getMixed().clear();
                return;
            }
            case 1: {
                this.getAny().clear();
                return;
            }
            case 2: {
                this.getAnyAttribute().clear();
                return;
            }
            case 3: {
                this.setRawValue(RAW_VALUE_EDEFAULT);
                return;
            }
            case 4: {
                this.setValue(VALUE_EDEFAULT);
                return;
            }
            case 5: {
                this.setInstanceType(null);
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.mixed != null && !this.mixed.isEmpty();
            }
            case 1: {
                return !this.getAny().isEmpty();
            }
            case 2: {
                return this.anyAttribute != null && !this.anyAttribute.isEmpty();
            }
            case 3: {
                return RAW_VALUE_EDEFAULT == null ? this.getRawValue() != null : !RAW_VALUE_EDEFAULT.equals(this.getRawValue());
            }
            case 4: {
                return VALUE_EDEFAULT == null ? this.getValue() != null : !VALUE_EDEFAULT.equals(this.getValue());
            }
            case 5: {
                return this.instanceType != null;
            }
        }
        return this.eDynamicIsSet(featureID);
    }
}

