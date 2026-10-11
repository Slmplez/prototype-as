/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.BasicFeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.w3._2000._09.xmldsig.impl;

import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.w3._2000._09.xmldsig.DSAKeyValueType;
import org.w3._2000._09.xmldsig.KeyValueType;
import org.w3._2000._09.xmldsig.RSAKeyValueType;
import org.w3._2000._09.xmldsig.XmldsigPackage;

public class KeyValueTypeImpl
extends MinimalEObjectImpl.Container
implements KeyValueType {
    protected FeatureMap mixed;

    protected KeyValueTypeImpl() {
    }

    protected EClass eStaticClass() {
        return XmldsigPackage.Literals.KEY_VALUE_TYPE;
    }

    @Override
    public FeatureMap getMixed() {
        if (this.mixed == null) {
            this.mixed = new BasicFeatureMap((InternalEObject)this, 0);
        }
        return this.mixed;
    }

    @Override
    public DSAKeyValueType getDSAKeyValue() {
        return (DSAKeyValueType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.KEY_VALUE_TYPE__DSA_KEY_VALUE, true);
    }

    public NotificationChain basicSetDSAKeyValue(DSAKeyValueType newDSAKeyValue, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.KEY_VALUE_TYPE__DSA_KEY_VALUE, (Object)newDSAKeyValue, msgs);
    }

    @Override
    public void setDSAKeyValue(DSAKeyValueType newDSAKeyValue) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.KEY_VALUE_TYPE__DSA_KEY_VALUE, (Object)newDSAKeyValue);
    }

    @Override
    public RSAKeyValueType getRSAKeyValue() {
        return (RSAKeyValueType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.KEY_VALUE_TYPE__RSA_KEY_VALUE, true);
    }

    public NotificationChain basicSetRSAKeyValue(RSAKeyValueType newRSAKeyValue, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.KEY_VALUE_TYPE__RSA_KEY_VALUE, (Object)newRSAKeyValue, msgs);
    }

    @Override
    public void setRSAKeyValue(RSAKeyValueType newRSAKeyValue) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.KEY_VALUE_TYPE__RSA_KEY_VALUE, (Object)newRSAKeyValue);
    }

    @Override
    public FeatureMap getAny() {
        return (FeatureMap)this.getMixed().list((EStructuralFeature)XmldsigPackage.Literals.KEY_VALUE_TYPE__ANY);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getMixed()).basicRemove((Object)otherEnd, msgs);
            }
            case 1: {
                return this.basicSetDSAKeyValue(null, msgs);
            }
            case 2: {
                return this.basicSetRSAKeyValue(null, msgs);
            }
            case 3: {
                return ((InternalEList)this.getAny()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
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
                return this.getDSAKeyValue();
            }
            case 2: {
                return this.getRSAKeyValue();
            }
            case 3: {
                if (coreType) {
                    return this.getAny();
                }
                return ((FeatureMap.Internal)this.getAny()).getWrapper();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                ((FeatureMap.Internal)this.getMixed()).set(newValue);
                return;
            }
            case 1: {
                this.setDSAKeyValue((DSAKeyValueType)newValue);
                return;
            }
            case 2: {
                this.setRSAKeyValue((RSAKeyValueType)newValue);
                return;
            }
            case 3: {
                ((FeatureMap.Internal)this.getAny()).set(newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getMixed().clear();
                return;
            }
            case 1: {
                this.setDSAKeyValue(null);
                return;
            }
            case 2: {
                this.setRSAKeyValue(null);
                return;
            }
            case 3: {
                this.getAny().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.mixed != null && !this.mixed.isEmpty();
            }
            case 1: {
                return this.getDSAKeyValue() != null;
            }
            case 2: {
                return this.getRSAKeyValue() != null;
            }
            case 3: {
                return !this.getAny().isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (mixed: ");
        result.append(this.mixed);
        result.append(')');
        return result.toString();
    }
}

