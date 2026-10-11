/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
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

import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.w3._2000._09.xmldsig.X509DataType;
import org.w3._2000._09.xmldsig.X509IssuerSerialType;
import org.w3._2000._09.xmldsig.XmldsigPackage;

public class X509DataTypeImpl
extends MinimalEObjectImpl.Container
implements X509DataType {
    protected FeatureMap group;

    protected X509DataTypeImpl() {
    }

    protected EClass eStaticClass() {
        return XmldsigPackage.Literals.X509_DATA_TYPE;
    }

    @Override
    public FeatureMap getGroup() {
        if (this.group == null) {
            this.group = new BasicFeatureMap((InternalEObject)this, 0);
        }
        return this.group;
    }

    @Override
    public EList<X509IssuerSerialType> getX509IssuerSerial() {
        return this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.X509_DATA_TYPE__X509_ISSUER_SERIAL);
    }

    @Override
    public EList<byte[]> getX509SKI() {
        return this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.X509_DATA_TYPE__X509_SKI);
    }

    @Override
    public EList<String> getX509SubjectName() {
        return this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.X509_DATA_TYPE__X509_SUBJECT_NAME);
    }

    @Override
    public EList<byte[]> getX509Certificate() {
        return this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.X509_DATA_TYPE__X509_CERTIFICATE);
    }

    @Override
    public EList<byte[]> getX509CRL() {
        return this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.X509_DATA_TYPE__X509_CRL);
    }

    @Override
    public FeatureMap getAny() {
        return (FeatureMap)this.getGroup().list((EStructuralFeature)XmldsigPackage.Literals.X509_DATA_TYPE__ANY);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getGroup()).basicRemove((Object)otherEnd, msgs);
            }
            case 1: {
                return ((InternalEList)this.getX509IssuerSerial()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getAny()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                if (coreType) {
                    return this.getGroup();
                }
                return ((FeatureMap.Internal)this.getGroup()).getWrapper();
            }
            case 1: {
                return this.getX509IssuerSerial();
            }
            case 2: {
                return this.getX509SKI();
            }
            case 3: {
                return this.getX509SubjectName();
            }
            case 4: {
                return this.getX509Certificate();
            }
            case 5: {
                return this.getX509CRL();
            }
            case 6: {
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
                ((FeatureMap.Internal)this.getGroup()).set(newValue);
                return;
            }
            case 1: {
                this.getX509IssuerSerial().clear();
                this.getX509IssuerSerial().addAll((Collection)newValue);
                return;
            }
            case 2: {
                this.getX509SKI().clear();
                this.getX509SKI().addAll((Collection)newValue);
                return;
            }
            case 3: {
                this.getX509SubjectName().clear();
                this.getX509SubjectName().addAll((Collection)newValue);
                return;
            }
            case 4: {
                this.getX509Certificate().clear();
                this.getX509Certificate().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.getX509CRL().clear();
                this.getX509CRL().addAll((Collection)newValue);
                return;
            }
            case 6: {
                ((FeatureMap.Internal)this.getAny()).set(newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getGroup().clear();
                return;
            }
            case 1: {
                this.getX509IssuerSerial().clear();
                return;
            }
            case 2: {
                this.getX509SKI().clear();
                return;
            }
            case 3: {
                this.getX509SubjectName().clear();
                return;
            }
            case 4: {
                this.getX509Certificate().clear();
                return;
            }
            case 5: {
                this.getX509CRL().clear();
                return;
            }
            case 6: {
                this.getAny().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.group != null && !this.group.isEmpty();
            }
            case 1: {
                return !this.getX509IssuerSerial().isEmpty();
            }
            case 2: {
                return !this.getX509SKI().isEmpty();
            }
            case 3: {
                return !this.getX509SubjectName().isEmpty();
            }
            case 4: {
                return !this.getX509Certificate().isEmpty();
            }
            case 5: {
                return !this.getX509CRL().isEmpty();
            }
            case 6: {
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
        result.append(" (group: ");
        result.append(this.group);
        result.append(')');
        return result.toString();
    }
}

