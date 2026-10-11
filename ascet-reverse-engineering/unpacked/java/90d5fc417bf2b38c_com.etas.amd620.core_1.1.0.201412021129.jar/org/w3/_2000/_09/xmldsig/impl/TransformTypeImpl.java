/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
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

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.w3._2000._09.xmldsig.TransformType;
import org.w3._2000._09.xmldsig.XmldsigPackage;

public class TransformTypeImpl
extends MinimalEObjectImpl.Container
implements TransformType {
    protected FeatureMap mixed;
    protected static final String ALGORITHM_EDEFAULT = null;
    protected String algorithm = ALGORITHM_EDEFAULT;

    protected TransformTypeImpl() {
    }

    protected EClass eStaticClass() {
        return XmldsigPackage.Literals.TRANSFORM_TYPE;
    }

    @Override
    public FeatureMap getMixed() {
        if (this.mixed == null) {
            this.mixed = new BasicFeatureMap((InternalEObject)this, 0);
        }
        return this.mixed;
    }

    @Override
    public FeatureMap getGroup() {
        return (FeatureMap)this.getMixed().list((EStructuralFeature)XmldsigPackage.Literals.TRANSFORM_TYPE__GROUP);
    }

    @Override
    public FeatureMap getAny() {
        return (FeatureMap)this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.TRANSFORM_TYPE__ANY);
    }

    @Override
    public EList<String> getXPath() {
        return this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.TRANSFORM_TYPE__XPATH);
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldAlgorithm, (Object)this.algorithm));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getMixed()).basicRemove((Object)otherEnd, msgs);
            }
            case 1: {
                return ((InternalEList)this.getGroup()).basicRemove((Object)otherEnd, msgs);
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
                if (coreType) {
                    return this.getGroup();
                }
                return ((FeatureMap.Internal)this.getGroup()).getWrapper();
            }
            case 2: {
                if (coreType) {
                    return this.getAny();
                }
                return ((FeatureMap.Internal)this.getAny()).getWrapper();
            }
            case 3: {
                return this.getXPath();
            }
            case 4: {
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
                ((FeatureMap.Internal)this.getGroup()).set(newValue);
                return;
            }
            case 2: {
                ((FeatureMap.Internal)this.getAny()).set(newValue);
                return;
            }
            case 3: {
                this.getXPath().clear();
                this.getXPath().addAll((Collection)newValue);
                return;
            }
            case 4: {
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
                this.getGroup().clear();
                return;
            }
            case 2: {
                this.getAny().clear();
                return;
            }
            case 3: {
                this.getXPath().clear();
                return;
            }
            case 4: {
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
                return !this.getGroup().isEmpty();
            }
            case 2: {
                return !this.getAny().isEmpty();
            }
            case 3: {
                return !this.getXPath().isEmpty();
            }
            case 4: {
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

