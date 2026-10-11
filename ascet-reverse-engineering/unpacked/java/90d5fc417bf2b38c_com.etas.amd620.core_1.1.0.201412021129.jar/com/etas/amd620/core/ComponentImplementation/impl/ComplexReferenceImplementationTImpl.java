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

import com.etas.amd620.core.ComponentImplementation.CacheLockingType;
import com.etas.amd620.core.ComponentImplementation.ComplexReferenceImplementationT;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.impl.ComplexImplementationTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ComplexReferenceImplementationTImpl
extends ComplexImplementationTImpl
implements ComplexReferenceImplementationT {
    protected static final CacheLockingType CACHE_LOCKING_EDEFAULT = CacheLockingType.AUTOMATIC;
    protected CacheLockingType cacheLocking = CACHE_LOCKING_EDEFAULT;
    protected boolean cacheLockingESet;
    protected static final String MEMORY_LOCATION_REFERENCE_EDEFAULT = null;
    protected String memoryLocationReference = MEMORY_LOCATION_REFERENCE_EDEFAULT;

    protected ComplexReferenceImplementationTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.COMPLEX_REFERENCE_IMPLEMENTATION_T;
    }

    @Override
    public CacheLockingType getCacheLocking() {
        return this.cacheLocking;
    }

    @Override
    public void setCacheLocking(CacheLockingType newCacheLocking) {
        CacheLockingType oldCacheLocking = this.cacheLocking;
        this.cacheLocking = newCacheLocking == null ? CACHE_LOCKING_EDEFAULT : newCacheLocking;
        boolean oldCacheLockingESet = this.cacheLockingESet;
        this.cacheLockingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCacheLocking, (Object)this.cacheLocking, !oldCacheLockingESet));
        }
    }

    @Override
    public void unsetCacheLocking() {
        CacheLockingType oldCacheLocking = this.cacheLocking;
        boolean oldCacheLockingESet = this.cacheLockingESet;
        this.cacheLocking = CACHE_LOCKING_EDEFAULT;
        this.cacheLockingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldCacheLocking, (Object)CACHE_LOCKING_EDEFAULT, oldCacheLockingESet));
        }
    }

    @Override
    public boolean isSetCacheLocking() {
        return this.cacheLockingESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldMemoryLocationReference, (Object)this.memoryLocationReference));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getCacheLocking();
            }
            case 7: {
                return this.getMemoryLocationReference();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setCacheLocking((CacheLockingType)((Object)newValue));
                return;
            }
            case 7: {
                this.setMemoryLocationReference((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.unsetCacheLocking();
                return;
            }
            case 7: {
                this.setMemoryLocationReference(MEMORY_LOCATION_REFERENCE_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.isSetCacheLocking();
            }
            case 7: {
                return MEMORY_LOCATION_REFERENCE_EDEFAULT == null ? this.memoryLocationReference != null : !MEMORY_LOCATION_REFERENCE_EDEFAULT.equals(this.memoryLocationReference);
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (cacheLocking: ");
        if (this.cacheLockingESet) {
            result.append((Object)this.cacheLocking);
        } else {
            result.append("<unset>");
        }
        result.append(", memoryLocationReference: ");
        result.append(this.memoryLocationReference);
        result.append(')');
        return result.toString();
    }
}

