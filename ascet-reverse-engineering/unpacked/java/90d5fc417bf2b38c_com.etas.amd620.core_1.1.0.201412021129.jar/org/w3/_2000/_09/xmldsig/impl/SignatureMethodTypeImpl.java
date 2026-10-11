/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.BasicFeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.w3._2000._09.xmldsig.impl;

import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.w3._2000._09.xmldsig.SignatureMethodType;
import org.w3._2000._09.xmldsig.XmldsigPackage;

public class SignatureMethodTypeImpl
extends MinimalEObjectImpl.Container
implements SignatureMethodType {
    protected FeatureMap mixed;
    protected static final BigInteger HMAC_OUTPUT_LENGTH_EDEFAULT = null;
    protected static final String ALGORITHM_EDEFAULT = null;
    protected String algorithm = ALGORITHM_EDEFAULT;

    protected SignatureMethodTypeImpl() {
    }

    protected EClass eStaticClass() {
        return XmldsigPackage.Literals.SIGNATURE_METHOD_TYPE;
    }

    @Override
    public FeatureMap getMixed() {
        if (this.mixed == null) {
            this.mixed = new BasicFeatureMap((InternalEObject)this, 0);
        }
        return this.mixed;
    }

    @Override
    public BigInteger getHMACOutputLength() {
        return (BigInteger)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.SIGNATURE_METHOD_TYPE__HMAC_OUTPUT_LENGTH, true);
    }

    @Override
    public void setHMACOutputLength(BigInteger newHMACOutputLength) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.SIGNATURE_METHOD_TYPE__HMAC_OUTPUT_LENGTH, (Object)newHMACOutputLength);
    }

    @Override
    public FeatureMap getAny() {
        return (FeatureMap)this.getMixed().list((EStructuralFeature)XmldsigPackage.Literals.SIGNATURE_METHOD_TYPE__ANY);
    }

    @Override
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override
    public void setAlgorithm(String newAlgorithm) {
        String oldAlgorithm = this.algorithm;
        this.algorithm = newAlgorithm;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldAlgorithm, (Object)this.algorithm));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getMixed()).basicRemove((Object)otherEnd, msgs);
            }
            case 2: {
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
                return this.getHMACOutputLength();
            }
            case 2: {
                if (coreType) {
                    return this.getAny();
                }
                return ((FeatureMap.Internal)this.getAny()).getWrapper();
            }
            case 3: {
                return this.getAlgorithm();
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
                this.setHMACOutputLength((BigInteger)newValue);
                return;
            }
            case 2: {
                ((FeatureMap.Internal)this.getAny()).set(newValue);
                return;
            }
            case 3: {
                this.setAlgorithm((String)newValue);
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
                this.setHMACOutputLength(HMAC_OUTPUT_LENGTH_EDEFAULT);
                return;
            }
            case 2: {
                this.getAny().clear();
                return;
            }
            case 3: {
                this.setAlgorithm(ALGORITHM_EDEFAULT);
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
                return HMAC_OUTPUT_LENGTH_EDEFAULT == null ? this.getHMACOutputLength() != null : !HMAC_OUTPUT_LENGTH_EDEFAULT.equals(this.getHMACOutputLength());
            }
            case 2: {
                return !this.getAny().isEmpty();
            }
            case 3: {
                return ALGORITHM_EDEFAULT == null ? this.algorithm != null : !ALGORITHM_EDEFAULT.equals(this.algorithm);
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
        result.append(", algorithm: ");
        result.append(this.algorithm);
        result.append(')');
        return result.toString();
    }
}

