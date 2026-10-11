/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.BasicEMap$Entry
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.ecore.change.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.BasicEMap;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.change.ChangePackage;
import org.eclipse.emf.ecore.change.FeatureChange;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EObjectToChangesMapEntryImpl
extends EObjectImpl
implements BasicEMap.Entry<EObject, EList<FeatureChange>> {
    protected static final int EPROXY_KEY = 8;
    protected EObject key;
    protected EList<FeatureChange> value;
    protected int hash = -1;

    protected EObjectToChangesMapEntryImpl() {
    }

    protected EClass eStaticClass() {
        return ChangePackage.Literals.EOBJECT_TO_CHANGES_MAP_ENTRY;
    }

    public EObject getTypedKeyGen() {
        if (this.key != null && this.key.eIsProxy()) {
            InternalEObject oldKey = (InternalEObject)this.key;
            this.key = this.eResolveProxy(oldKey);
            if (this.key != oldKey && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 0, (Object)oldKey, (Object)this.key));
            }
        }
        return this.key;
    }

    public EObject getTypedKey() {
        EObject newKey;
        if ((this.eFlags & 8) != 0 && !(newKey = this.getTypedKeyGen()).eIsProxy()) {
            this.eFlags &= 0xFFFFFFF7;
        }
        return this.key;
    }

    public EObject basicGetTypedKey() {
        return this.key;
    }

    public void setTypedKeyGen(EObject newKey) {
        EObject oldKey = this.key;
        this.key = newKey;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldKey, (Object)this.key));
        }
    }

    public void setTypedKey(EObject newKey) {
        this.setTypedKeyGen(newKey);
        this.eFlags = this.key != null ? (this.eFlags |= 8) : (this.eFlags &= 0xFFFFFFF7);
    }

    public EList<FeatureChange> getTypedValue() {
        if (this.value == null) {
            this.value = new EObjectContainmentEList(FeatureChange.class, (InternalEObject)this, 1);
        }
        return this.value;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 1: {
                return ((InternalEList)this.getTypedValue()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                if (resolve) {
                    return this.getTypedKey();
                }
                return this.basicGetTypedKey();
            }
            case 1: {
                return this.getTypedValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setTypedKey((EObject)newValue);
                return;
            }
            case 1: {
                this.getTypedValue().clear();
                this.getTypedValue().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setTypedKey(null);
                return;
            }
            case 1: {
                this.getTypedValue().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.key != null;
            }
            case 1: {
                return this.value != null && !this.value.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public int getHash() {
        if (this.hash == -1) {
            EObject theKey = this.getKey();
            this.hash = theKey == null ? 0 : theKey.hashCode();
        }
        return this.hash;
    }

    public void setHash(int hash) {
        this.hash = hash;
    }

    public EObject getKey() {
        return this.getTypedKey();
    }

    public void setKey(EObject key) {
        this.setTypedKey(key);
    }

    public EList<FeatureChange> getValue() {
        return this.getTypedValue();
    }

    public EList<FeatureChange> setValue(EList<FeatureChange> value) {
        EList<FeatureChange> oldValue = this.getValue();
        this.getTypedValue().clear();
        this.getTypedValue().addAll(value);
        return oldValue;
    }

    public EMap<EObject, EList<FeatureChange>> getEMap() {
        EObject container = this.eContainer();
        return container == null ? null : (EMap)container.eGet((EStructuralFeature)this.eContainmentFeature());
    }
}

