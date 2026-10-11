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
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.InterfacesType7;
import com.etas.amd620.core.ComponentSpecification.MemberGetPortT;
import com.etas.amd620.core.ComponentSpecification.MemberSetPortT;
import com.etas.amd620.core.ComponentSpecification.MethodPortT;
import com.etas.amd620.core.ComponentSpecification.ReturnPortT;
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

public class InterfacesType7Impl
extends MinimalEObjectImpl.Container
implements InterfacesType7 {
    protected FeatureMap group;

    protected InterfacesType7Impl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getInterfacesType7();
    }

    @Override
    public FeatureMap getGroup() {
        if (this.group == null) {
            this.group = new BasicFeatureMap((InternalEObject)this, 0);
        }
        return this.group;
    }

    @Override
    public EList<MethodPortT> getMethodPort() {
        return this.getGroup().list((EStructuralFeature)ComponentSpecificationPackage.eINSTANCE.getInterfacesType7_MethodPort());
    }

    @Override
    public EList<ReturnPortT> getReturnPort() {
        return this.getGroup().list((EStructuralFeature)ComponentSpecificationPackage.eINSTANCE.getInterfacesType7_ReturnPort());
    }

    @Override
    public EList<MemberSetPortT> getMemberSetPort() {
        return this.getGroup().list((EStructuralFeature)ComponentSpecificationPackage.eINSTANCE.getInterfacesType7_MemberSetPort());
    }

    @Override
    public EList<MemberGetPortT> getMemberGetPort() {
        return this.getGroup().list((EStructuralFeature)ComponentSpecificationPackage.eINSTANCE.getInterfacesType7_MemberGetPort());
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getGroup()).basicRemove((Object)otherEnd, msgs);
            }
            case 1: {
                return ((InternalEList)this.getMethodPort()).basicRemove((Object)otherEnd, msgs);
            }
            case 2: {
                return ((InternalEList)this.getReturnPort()).basicRemove((Object)otherEnd, msgs);
            }
            case 3: {
                return ((InternalEList)this.getMemberSetPort()).basicRemove((Object)otherEnd, msgs);
            }
            case 4: {
                return ((InternalEList)this.getMemberGetPort()).basicRemove((Object)otherEnd, msgs);
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
                return this.getMethodPort();
            }
            case 2: {
                return this.getReturnPort();
            }
            case 3: {
                return this.getMemberSetPort();
            }
            case 4: {
                return this.getMemberGetPort();
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
                this.getMethodPort().clear();
                this.getMethodPort().addAll((Collection)newValue);
                return;
            }
            case 2: {
                this.getReturnPort().clear();
                this.getReturnPort().addAll((Collection)newValue);
                return;
            }
            case 3: {
                this.getMemberSetPort().clear();
                this.getMemberSetPort().addAll((Collection)newValue);
                return;
            }
            case 4: {
                this.getMemberGetPort().clear();
                this.getMemberGetPort().addAll((Collection)newValue);
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
                this.getMethodPort().clear();
                return;
            }
            case 2: {
                this.getReturnPort().clear();
                return;
            }
            case 3: {
                this.getMemberSetPort().clear();
                return;
            }
            case 4: {
                this.getMemberGetPort().clear();
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
                return !this.getMethodPort().isEmpty();
            }
            case 2: {
                return !this.getReturnPort().isEmpty();
            }
            case 3: {
                return !this.getMemberSetPort().isEmpty();
            }
            case 4: {
                return !this.getMemberGetPort().isEmpty();
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

