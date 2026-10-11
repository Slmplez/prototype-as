/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.AssignedOperationModesType;
import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.OperationModeType;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

public class AssignedOperationModesTypeImpl
extends MinimalEObjectImpl.Container
implements AssignedOperationModesType {
    protected EList<OperationModeType> operationMode;

    protected AssignedOperationModesTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.ASSIGNED_OPERATION_MODES_TYPE;
    }

    @Override
    public EList<OperationModeType> getOperationMode() {
        if (this.operationMode == null) {
            this.operationMode = new EObjectContainmentEList(OperationModeType.class, (InternalEObject)this, 0);
        }
        return this.operationMode;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getOperationMode()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getOperationMode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getOperationMode().clear();
                this.getOperationMode().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getOperationMode().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.operationMode != null && !this.operationMode.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

