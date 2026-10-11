/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.impl;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.DynamicEObjectImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.impl.EStoreEObjectImpl;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DynamicEStoreEObjectImpl
extends DynamicEObjectImpl {
    protected static final InternalEObject EUNINITIALIZED_CONTAINER = new EObjectImpl();
    protected InternalEObject.EStore eStore;

    public DynamicEStoreEObjectImpl() {
        this.eContainer = EUNINITIALIZED_CONTAINER;
    }

    public DynamicEStoreEObjectImpl(InternalEObject.EStore eStore) {
        this.eSetStore(eStore);
        this.eContainer = EUNINITIALIZED_CONTAINER;
    }

    public DynamicEStoreEObjectImpl(EClass eClass) {
        super(eClass);
        this.eContainer = EUNINITIALIZED_CONTAINER;
    }

    public DynamicEStoreEObjectImpl(EClass eClass, InternalEObject.EStore eStore) {
        super(eClass);
        this.eSetStore(eStore);
        this.eContainer = EUNINITIALIZED_CONTAINER;
    }

    protected boolean eIsCaching() {
        return true;
    }

    @Override
    public Object dynamicGet(int dynamicFeatureID) {
        EStructuralFeature eStructuralFeature;
        EList result = this.eSettings[dynamicFeatureID];
        if (result == null && !(eStructuralFeature = this.eDynamicFeature(dynamicFeatureID)).isTransient()) {
            if (FeatureMapUtil.isFeatureMap(eStructuralFeature)) {
                result = this.createFeatureMap(eStructuralFeature);
                this.eSettings[dynamicFeatureID] = result;
            } else if (eStructuralFeature.isMany()) {
                this.eSettings[dynamicFeatureID] = result = this.createList(eStructuralFeature);
            } else {
                result = this.eStore().get(this, eStructuralFeature, -1);
                if (this.eIsCaching()) {
                    this.eSettings[dynamicFeatureID] = result;
                }
            }
        }
        return result;
    }

    @Override
    public void dynamicSet(int dynamicFeatureID, Object value) {
        EStructuralFeature eStructuralFeature = this.eDynamicFeature(dynamicFeatureID);
        if (eStructuralFeature.isTransient()) {
            this.eSettings[dynamicFeatureID] = value;
        } else {
            this.eStore().set(this, eStructuralFeature, -1, value == NIL ? null : value);
            if (this.eIsCaching()) {
                this.eSettings[dynamicFeatureID] = value;
            }
        }
    }

    @Override
    public void dynamicUnset(int dynamicFeatureID) {
        this.eStore().unset(this, this.eDynamicFeature(dynamicFeatureID));
        this.eSettings[dynamicFeatureID] = null;
    }

    @Override
    public boolean eDynamicIsSet(EStructuralFeature eStructuralFeature) {
        return eStructuralFeature.isTransient() ? super.eDynamicIsSet(eStructuralFeature) : this.eStore().isSet(this, eStructuralFeature);
    }

    protected <T> EList<T> createList(EStructuralFeature eStructuralFeature) {
        return new EStoreEObjectImpl.EStoreEList(this, eStructuralFeature, this.eStore());
    }

    protected FeatureMap createFeatureMap(EStructuralFeature eStructuralFeature) {
        return new EStoreEObjectImpl.EStoreFeatureMap(this, eStructuralFeature, this.eStore());
    }

    @Override
    public InternalEObject eInternalContainer() {
        if (this.eContainer == EUNINITIALIZED_CONTAINER) {
            this.eInitializeContainer();
        }
        return this.eContainer;
    }

    @Override
    public int eContainerFeatureID() {
        if (this.eContainer == EUNINITIALIZED_CONTAINER) {
            this.eInitializeContainer();
        }
        return this.eContainerFeatureID;
    }

    protected void eInitializeContainer() {
        this.eContainer = this.eStore().getContainer(this);
        if (this.eContainer != null) {
            EReference eContainingReference;
            EReference eOpposite;
            EStructuralFeature eContainingFeature = this.eStore().getContainingFeature(this);
            if (eContainingFeature instanceof EReference && (eOpposite = (eContainingReference = (EReference)eContainingFeature).getEOpposite()) != null) {
                this.eContainerFeatureID = this.eClass().getFeatureID(eOpposite);
                return;
            }
            this.eContainerFeatureID = -1 - this.eContainer.eClass().getFeatureID(eContainingFeature);
        }
    }

    @Override
    public InternalEObject.EStore eStore() {
        return this.eStore;
    }

    @Override
    public void eSetStore(InternalEObject.EStore store) {
        this.eStore = store;
    }
}

