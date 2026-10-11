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
import org.w3._2000._09.xmldsig.KeyInfoType;
import org.w3._2000._09.xmldsig.KeyValueType;
import org.w3._2000._09.xmldsig.PGPDataType;
import org.w3._2000._09.xmldsig.RetrievalMethodType;
import org.w3._2000._09.xmldsig.SPKIDataType;
import org.w3._2000._09.xmldsig.X509DataType;
import org.w3._2000._09.xmldsig.XmldsigPackage;

public class KeyInfoTypeImpl
extends MinimalEObjectImpl.Container
implements KeyInfoType {
    protected FeatureMap mixed;
    protected static final String ID_EDEFAULT = null;
    protected String id = ID_EDEFAULT;

    protected KeyInfoTypeImpl() {
    }

    protected EClass eStaticClass() {
        return XmldsigPackage.Literals.KEY_INFO_TYPE;
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
        return (FeatureMap)this.getMixed().list((EStructuralFeature)XmldsigPackage.Literals.KEY_INFO_TYPE__GROUP);
    }

    @Override
    public EList<String> getKeyName() {
        return this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.KEY_INFO_TYPE__KEY_NAME);
    }

    @Override
    public EList<KeyValueType> getKeyValue() {
        return this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.KEY_INFO_TYPE__KEY_VALUE);
    }

    @Override
    public EList<RetrievalMethodType> getRetrievalMethod() {
        return this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.KEY_INFO_TYPE__RETRIEVAL_METHOD);
    }

    @Override
    public EList<X509DataType> getX509Data() {
        return this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.KEY_INFO_TYPE__X509_DATA);
    }

    @Override
    public EList<PGPDataType> getPGPData() {
        return this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.KEY_INFO_TYPE__PGP_DATA);
    }

    @Override
    public EList<SPKIDataType> getSPKIData() {
        return this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.KEY_INFO_TYPE__SPKI_DATA);
    }

    @Override
    public EList<String> getMgmtData() {
        return this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.KEY_INFO_TYPE__MGMT_DATA);
    }

    @Override
    public FeatureMap getAny() {
        return (FeatureMap)this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.KEY_INFO_TYPE__ANY);
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldId, (Object)this.id));
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
            case 3: {
                return ((InternalEList)this.getKeyValue()).basicRemove((Object)otherEnd, msgs);
            }
            case 4: {
                return ((InternalEList)this.getRetrievalMethod()).basicRemove((Object)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getX509Data()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getPGPData()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getSPKIData()).basicRemove((Object)otherEnd, msgs);
            }
            case 9: {
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
                return this.getKeyName();
            }
            case 3: {
                return this.getKeyValue();
            }
            case 4: {
                return this.getRetrievalMethod();
            }
            case 5: {
                return this.getX509Data();
            }
            case 6: {
                return this.getPGPData();
            }
            case 7: {
                return this.getSPKIData();
            }
            case 8: {
                return this.getMgmtData();
            }
            case 9: {
                if (coreType) {
                    return this.getAny();
                }
                return ((FeatureMap.Internal)this.getAny()).getWrapper();
            }
            case 10: {
                return this.getId();
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
                this.getKeyName().clear();
                this.getKeyName().addAll((Collection)newValue);
                return;
            }
            case 3: {
                this.getKeyValue().clear();
                this.getKeyValue().addAll((Collection)newValue);
                return;
            }
            case 4: {
                this.getRetrievalMethod().clear();
                this.getRetrievalMethod().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.getX509Data().clear();
                this.getX509Data().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getPGPData().clear();
                this.getPGPData().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getSPKIData().clear();
                this.getSPKIData().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.getMgmtData().clear();
                this.getMgmtData().addAll((Collection)newValue);
                return;
            }
            case 9: {
                ((FeatureMap.Internal)this.getAny()).set(newValue);
                return;
            }
            case 10: {
                this.setId((String)newValue);
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
                this.getKeyName().clear();
                return;
            }
            case 3: {
                this.getKeyValue().clear();
                return;
            }
            case 4: {
                this.getRetrievalMethod().clear();
                return;
            }
            case 5: {
                this.getX509Data().clear();
                return;
            }
            case 6: {
                this.getPGPData().clear();
                return;
            }
            case 7: {
                this.getSPKIData().clear();
                return;
            }
            case 8: {
                this.getMgmtData().clear();
                return;
            }
            case 9: {
                this.getAny().clear();
                return;
            }
            case 10: {
                this.setId(ID_EDEFAULT);
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
                return !this.getKeyName().isEmpty();
            }
            case 3: {
                return !this.getKeyValue().isEmpty();
            }
            case 4: {
                return !this.getRetrievalMethod().isEmpty();
            }
            case 5: {
                return !this.getX509Data().isEmpty();
            }
            case 6: {
                return !this.getPGPData().isEmpty();
            }
            case 7: {
                return !this.getSPKIData().isEmpty();
            }
            case 8: {
                return !this.getMgmtData().isEmpty();
            }
            case 9: {
                return !this.getAny().isEmpty();
            }
            case 10: {
                return ID_EDEFAULT == null ? this.id != null : !ID_EDEFAULT.equals(this.id);
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
        result.append(')');
        return result.toString();
    }
}

