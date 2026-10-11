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
import com.etas.amd620.core.ComponentMain.ElementMappingType2;
import com.etas.amd620.core.ComponentMain.ParameterMappingsType;
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

public class ParameterMappingsTypeImpl
extends MinimalEObjectImpl.Container
implements ParameterMappingsType {
    protected FeatureMap group;

    protected ParameterMappingsTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.PARAMETER_MAPPINGS_TYPE;
    }

    @Override
    public FeatureMap getGroup() {
        if (this.group == null) {
            this.group = new BasicFeatureMap((InternalEObject)this, 0);
        }
        return this.group;
    }

    @Override
    public EList<ElementMappingType2> getElementMapping() {
        return this.getGroup().list((EStructuralFeature)ComponentMainPackage.Literals.PARAMETER_MAPPINGS_TYPE__ELEMENT_MAPPING);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getGroup()).basicRemove((Object)otherEnd, msgs);
            }
            case 1: {
                return ((InternalEList)this.getElementMapping()).basicRemove((Object)otherEnd, msgs);
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
                return this.getElementMapping();
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
                this.getElementMapping().clear();
                this.getElementMapping().addAll((Collection)newValue);
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
                this.getElementMapping().clear();
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
                return !this.getElementMapping().isEmpty();
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

