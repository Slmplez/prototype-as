/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.BasicEMap$Entry
 *  org.eclipse.emf.common.util.EMap
 */
package org.eclipse.emf.ecore.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.BasicEMap;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EStringToStringMapEntryImpl
extends MinimalEObjectImpl.Container
implements BasicEMap.Entry<String, String> {
    protected static final String KEY_EDEFAULT = null;
    protected String key = KEY_EDEFAULT;
    protected static final String VALUE_EDEFAULT = null;
    protected String value = VALUE_EDEFAULT;
    protected int hash = -1;

    protected EStringToStringMapEntryImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcorePackage.Literals.ESTRING_TO_STRING_MAP_ENTRY;
    }

    public String getTypedKey() {
        return this.key;
    }

    public void setTypedKeyGen(String newKey) {
        String oldKey = this.key;
        this.key = newKey;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldKey, (Object)this.key));
        }
    }

    public void setTypedKey(String newKey) {
        this.setTypedKeyGen(newKey == null ? null : newKey.intern());
    }

    public String getTypedValue() {
        return this.value;
    }

    public void setTypedValue(String newValue) {
        String oldValue = this.value;
        this.value = newValue;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldValue, (Object)this.value));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getTypedKey();
            }
            case 1: {
                return this.getTypedValue();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setTypedKey((String)newValue);
                return;
            }
            case 1: {
                this.setTypedValue((String)newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setTypedKey(KEY_EDEFAULT);
                return;
            }
            case 1: {
                this.setTypedValue(VALUE_EDEFAULT);
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return KEY_EDEFAULT == null ? this.key != null : !KEY_EDEFAULT.equals(this.key);
            }
            case 1: {
                return VALUE_EDEFAULT == null ? this.value != null : !VALUE_EDEFAULT.equals(this.value);
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
        result.append(" (key: ");
        result.append(this.key);
        result.append(", value: ");
        result.append(this.value);
        result.append(')');
        return result.toString();
    }

    public int getHash() {
        if (this.hash == -1) {
            String theKey = this.getKey();
            this.hash = theKey == null ? 0 : theKey.hashCode();
        }
        return this.hash;
    }

    public void setHash(int hash) {
        this.hash = hash;
    }

    public String getKey() {
        return this.getTypedKey();
    }

    public void setKey(String key) {
        this.setTypedKey(key);
    }

    public String getValue() {
        return this.getTypedValue();
    }

    public String setValue(String value) {
        String oldValue = this.getValue();
        this.setTypedValue(value);
        return oldValue;
    }

    public EMap<String, String> getEMap() {
        EObject container = this.eContainer();
        return container == null ? null : (EMap)container.eGet(this.eContainmentFeature());
    }
}

