/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.metamodel.MinimalARObjectImpl
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.BasicEMap$Entry
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.generaltemplateclasses.identifiable.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.IdentifiablePackage;
import org.artop.aal.common.metamodel.MinimalARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.BasicEMap;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IdentifiableAllExtensionsMapEntryImpl
extends MinimalARObjectImpl
implements BasicEMap.Entry<String, EObject> {
    protected static final String KEY_EDEFAULT = "";
    protected String key = "";
    protected boolean keyESet;
    protected EObject value;
    protected int hash = -1;

    protected IdentifiableAllExtensionsMapEntryImpl() {
    }

    protected EClass eStaticClass() {
        return IdentifiablePackage.Literals.IDENTIFIABLE_ALL_EXTENSIONS_MAP_ENTRY;
    }

    public String getTypedKey() {
        return this.key;
    }

    public void setTypedKey(String newKey) {
        String oldKey = this.key;
        this.key = newKey;
        boolean oldKeyESet = this.keyESet;
        this.keyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldKey, (Object)this.key, !oldKeyESet));
        }
    }

    public void unsetTypedKey() {
        String oldKey = this.key;
        boolean oldKeyESet = this.keyESet;
        this.key = KEY_EDEFAULT;
        this.keyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 0, (Object)oldKey, (Object)KEY_EDEFAULT, oldKeyESet));
        }
    }

    public boolean isSetTypedKey() {
        return this.keyESet;
    }

    public EObject getTypedValue() {
        if (this.value != null && this.value.eIsProxy()) {
            InternalEObject oldValue = (InternalEObject)this.value;
            this.value = this.eResolveProxy(oldValue);
            if (this.value != oldValue && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 1, (Object)oldValue, (Object)this.value));
            }
        }
        return this.value;
    }

    public EObject basicGetTypedValue() {
        return this.value;
    }

    public void setTypedValue(EObject newValue) {
        EObject oldValue = this.value;
        this.value = newValue;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldValue, (Object)this.value));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getTypedKey();
            }
            case 1: {
                if (resolve) {
                    return this.getTypedValue();
                }
                return this.basicGetTypedValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setTypedKey((String)newValue);
                return;
            }
            case 1: {
                this.setTypedValue((EObject)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.unsetTypedKey();
                return;
            }
            case 1: {
                this.setTypedValue(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.isSetTypedKey();
            }
            case 1: {
                return this.value != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (key: ");
        if (this.keyESet) {
            result.append(this.key);
        } else {
            result.append("<unset>");
        }
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

    public EObject getValue() {
        return this.getTypedValue();
    }

    public EObject setValue(EObject value) {
        EObject oldValue = this.getValue();
        this.setTypedValue(value);
        return oldValue;
    }

    public EMap<String, EObject> getEMap() {
        EObject container = this.eContainer();
        return container == null ? null : (EMap)container.eGet((EStructuralFeature)this.eContainmentFeature());
    }
}

