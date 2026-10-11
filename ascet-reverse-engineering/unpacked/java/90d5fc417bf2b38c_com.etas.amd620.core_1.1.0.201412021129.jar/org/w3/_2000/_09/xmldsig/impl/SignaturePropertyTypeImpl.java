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
import org.w3._2000._09.xmldsig.SignaturePropertyType;
import org.w3._2000._09.xmldsig.XmldsigPackage;

public class SignaturePropertyTypeImpl
extends MinimalEObjectImpl.Container
implements SignaturePropertyType {
    protected FeatureMap mixed;
    protected static final String ID_EDEFAULT = null;
    protected String id = ID_EDEFAULT;
    protected static final String TARGET_EDEFAULT = null;
    protected String target = TARGET_EDEFAULT;

    protected SignaturePropertyTypeImpl() {
    }

    protected EClass eStaticClass() {
        return XmldsigPackage.Literals.SIGNATURE_PROPERTY_TYPE;
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
        return (FeatureMap)this.getMixed().list((EStructuralFeature)XmldsigPackage.Literals.SIGNATURE_PROPERTY_TYPE__GROUP);
    }

    @Override
    public FeatureMap getAny() {
        return (FeatureMap)this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.SIGNATURE_PROPERTY_TYPE__ANY);
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public void setId(String newId) {
        String oldId = this.id;
        this.id = newId;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldId, (Object)this.id));
        }
    }

    @Override
    public String getTarget() {
        return this.target;
    }

    @Override
    public void setTarget(String newTarget) {
        String oldTarget = this.target;
        this.target = newTarget;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldTarget, (Object)this.target));
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
                return this.getId();
            }
            case 4: {
                return this.getTarget();
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
                this.setId((String)newValue);
                return;
            }
            case 4: {
                this.setTarget((String)newValue);
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
                this.setId(ID_EDEFAULT);
                return;
            }
            case 4: {
                this.setTarget(TARGET_EDEFAULT);
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
                return ID_EDEFAULT == null ? this.id != null : !ID_EDEFAULT.equals(this.id);
            }
            case 4: {
                return TARGET_EDEFAULT == null ? this.target != null : !TARGET_EDEFAULT.equals(this.target);
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
        result.append(", id: ");
        result.append(this.id);
        result.append(", target: ");
        result.append(this.target);
        result.append(')');
        return result.toString();
    }
}

