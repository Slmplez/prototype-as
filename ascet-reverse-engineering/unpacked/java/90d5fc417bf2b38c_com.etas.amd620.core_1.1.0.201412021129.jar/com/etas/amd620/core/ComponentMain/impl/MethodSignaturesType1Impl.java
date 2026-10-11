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
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.MethodSignaturesType1;
import com.etas.amd620.core.ComponentMain.MethodT;
import com.etas.amd620.core.ComponentMain.RealizedMethodT;
import com.etas.amd620.core.ComponentMain.RealizedRunnableT;
import com.etas.amd620.core.ComponentMain.RunnableT;
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

public class MethodSignaturesType1Impl
extends MinimalEObjectImpl.Container
implements MethodSignaturesType1 {
    protected FeatureMap group;

    protected MethodSignaturesType1Impl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.METHOD_SIGNATURES_TYPE1;
    }

    @Override
    public FeatureMap getGroup() {
        if (this.group == null) {
            this.group = new BasicFeatureMap((InternalEObject)this, 0);
        }
        return this.group;
    }

    @Override
    public EList<RunnableT> getRunnableSignature() {
        return this.getGroup().list((EStructuralFeature)ComponentMainPackage.Literals.METHOD_SIGNATURES_TYPE1__RUNNABLE_SIGNATURE);
    }

    @Override
    public EList<RealizedRunnableT> getRealizedRunnableSignature() {
        return this.getGroup().list((EStructuralFeature)ComponentMainPackage.Literals.METHOD_SIGNATURES_TYPE1__REALIZED_RUNNABLE_SIGNATURE);
    }

    @Override
    public EList<MethodT> getMethodSignature() {
        return this.getGroup().list((EStructuralFeature)ComponentMainPackage.Literals.METHOD_SIGNATURES_TYPE1__METHOD_SIGNATURE);
    }

    @Override
    public EList<RealizedMethodT> getRealizedMethodSignature() {
        return this.getGroup().list((EStructuralFeature)ComponentMainPackage.Literals.METHOD_SIGNATURES_TYPE1__REALIZED_METHOD_SIGNATURE);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getGroup()).basicRemove((Object)otherEnd, msgs);
            }
            case 1: {
                return ((InternalEList)this.getRunnableSignature()).basicRemove((Object)otherEnd, msgs);
            }
            case 2: {
                return ((InternalEList)this.getRealizedRunnableSignature()).basicRemove((Object)otherEnd, msgs);
            }
            case 3: {
                return ((InternalEList)this.getMethodSignature()).basicRemove((Object)otherEnd, msgs);
            }
            case 4: {
                return ((InternalEList)this.getRealizedMethodSignature()).basicRemove((Object)otherEnd, msgs);
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
                return this.getRunnableSignature();
            }
            case 2: {
                return this.getRealizedRunnableSignature();
            }
            case 3: {
                return this.getMethodSignature();
            }
            case 4: {
                return this.getRealizedMethodSignature();
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
                this.getRunnableSignature().clear();
                this.getRunnableSignature().addAll((Collection)newValue);
                return;
            }
            case 2: {
                this.getRealizedRunnableSignature().clear();
                this.getRealizedRunnableSignature().addAll((Collection)newValue);
                return;
            }
            case 3: {
                this.getMethodSignature().clear();
                this.getMethodSignature().addAll((Collection)newValue);
                return;
            }
            case 4: {
                this.getRealizedMethodSignature().clear();
                this.getRealizedMethodSignature().addAll((Collection)newValue);
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
                this.getRunnableSignature().clear();
                return;
            }
            case 2: {
                this.getRealizedRunnableSignature().clear();
                return;
            }
            case 3: {
                this.getMethodSignature().clear();
                return;
            }
            case 4: {
                this.getRealizedMethodSignature().clear();
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
                return !this.getRunnableSignature().isEmpty();
            }
            case 2: {
                return !this.getRealizedRunnableSignature().isEmpty();
            }
            case 3: {
                return !this.getMethodSignature().isEmpty();
            }
            case 4: {
                return !this.getRealizedMethodSignature().isEmpty();
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

