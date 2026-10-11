/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.DimensionalReferenceImplementationT;
import com.etas.amd620.core.ComponentImplementation.impl.DimensionalImplementationTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class DimensionalReferenceImplementationTImpl
extends DimensionalImplementationTImpl
implements DimensionalReferenceImplementationT {
    protected static final String MEMORY_LOCATION_REFERENCE_EDEFAULT = null;
    protected String memoryLocationReference = MEMORY_LOCATION_REFERENCE_EDEFAULT;

    protected DimensionalReferenceImplementationTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.DIMENSIONAL_REFERENCE_IMPLEMENTATION_T;
    }

    @Override
    public String getMemoryLocationReference() {
        return this.memoryLocationReference;
    }

    @Override
    public void setMemoryLocationReference(String newMemoryLocationReference) {
        String oldMemoryLocationReference = this.memoryLocationReference;
        this.memoryLocationReference = newMemoryLocationReference;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMemoryLocationReference, (Object)this.memoryLocationReference));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getMemoryLocationReference();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setMemoryLocationReference((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setMemoryLocationReference(MEMORY_LOCATION_REFERENCE_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return MEMORY_LOCATION_REFERENCE_EDEFAULT == null ? this.memoryLocationReference != null : !MEMORY_LOCATION_REFERENCE_EDEFAULT.equals(this.memoryLocationReference);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (memoryLocationReference: ");
        result.append(this.memoryLocationReference);
        result.append(')');
        return result.toString();
    }
}

