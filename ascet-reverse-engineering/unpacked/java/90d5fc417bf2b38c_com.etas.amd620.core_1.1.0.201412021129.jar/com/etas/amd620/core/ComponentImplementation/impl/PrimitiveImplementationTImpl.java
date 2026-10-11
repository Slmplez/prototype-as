/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.CacheLockingType;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.PrimitiveImplementationT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class PrimitiveImplementationTImpl
extends MinimalEObjectImpl.Container
implements PrimitiveImplementationT {
    protected static final String ADDITIONAL_INFORMATION_EDEFAULT = null;
    protected String additionalInformation = ADDITIONAL_INFORMATION_EDEFAULT;
    protected static final CacheLockingType CACHE_LOCKING_EDEFAULT = CacheLockingType.AUTOMATIC;
    protected CacheLockingType cacheLocking = CACHE_LOCKING_EDEFAULT;
    protected boolean cacheLockingESet;
    protected static final String MEMORY_LOCATION_INSTANCE_EDEFAULT = null;
    protected String memoryLocationInstance = MEMORY_LOCATION_INSTANCE_EDEFAULT;
    protected static final String MEMORY_LOCATION_SEARCH_RESULT_EDEFAULT = null;
    protected String memoryLocationSearchResult = MEMORY_LOCATION_SEARCH_RESULT_EDEFAULT;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;
    protected static final String POLICY_EDEFAULT = null;
    protected String policy = POLICY_EDEFAULT;
    protected static final boolean RESCALED_EDEFAULT = false;
    protected boolean rescaled = false;
    protected boolean rescaledESet;

    protected PrimitiveImplementationTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.PRIMITIVE_IMPLEMENTATION_T;
    }

    @Override
    public String getAdditionalInformation() {
        return this.additionalInformation;
    }

    @Override
    public void setAdditionalInformation(String newAdditionalInformation) {
        String oldAdditionalInformation = this.additionalInformation;
        this.additionalInformation = newAdditionalInformation;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldAdditionalInformation, (Object)this.additionalInformation));
        }
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldCacheLocking, (Object)this.cacheLocking, !oldCacheLockingESet));
        }
    }

    @Override
    public void unsetCacheLocking() {
        CacheLockingType oldCacheLocking = this.cacheLocking;
        boolean oldCacheLockingESet = this.cacheLockingESet;
        this.cacheLocking = CACHE_LOCKING_EDEFAULT;
        this.cacheLockingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 1, (Object)oldCacheLocking, (Object)CACHE_LOCKING_EDEFAULT, oldCacheLockingESet));
        }
    }

    @Override
    public boolean isSetCacheLocking() {
        return this.cacheLockingESet;
    }

    @Override
    public String getMemoryLocationInstance() {
        return this.memoryLocationInstance;
    }

    @Override
    public void setMemoryLocationInstance(String newMemoryLocationInstance) {
        String oldMemoryLocationInstance = this.memoryLocationInstance;
        this.memoryLocationInstance = newMemoryLocationInstance;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldMemoryLocationInstance, (Object)this.memoryLocationInstance));
        }
    }

    @Override
    public String getMemoryLocationSearchResult() {
        return this.memoryLocationSearchResult;
    }

    @Override
    public void setMemoryLocationSearchResult(String newMemoryLocationSearchResult) {
        String oldMemoryLocationSearchResult = this.memoryLocationSearchResult;
        this.memoryLocationSearchResult = newMemoryLocationSearchResult;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldMemoryLocationSearchResult, (Object)this.memoryLocationSearchResult));
        }
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String newName) {
        String oldName = this.name;
        this.name = newName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldName, (Object)this.name));
        }
    }

    @Override
    public String getPolicy() {
        return this.policy;
    }

    @Override
    public void setPolicy(String newPolicy) {
        String oldPolicy = this.policy;
        this.policy = newPolicy;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldPolicy, (Object)this.policy));
        }
    }

    @Override
    public boolean isRescaled() {
        return this.rescaled;
    }

    @Override
    public void setRescaled(boolean newRescaled) {
        boolean oldRescaled = this.rescaled;
        this.rescaled = newRescaled;
        boolean oldRescaledESet = this.rescaledESet;
        this.rescaledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, oldRescaled, this.rescaled, !oldRescaledESet));
        }
    }

    @Override
    public void unsetRescaled() {
        boolean oldRescaled = this.rescaled;
        boolean oldRescaledESet = this.rescaledESet;
        this.rescaled = false;
        this.rescaledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, oldRescaled, false, oldRescaledESet));
        }
    }

    @Override
    public boolean isSetRescaled() {
        return this.rescaledESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getAdditionalInformation();
            }
            case 1: {
                return this.getCacheLocking();
            }
            case 2: {
                return this.getMemoryLocationInstance();
            }
            case 3: {
                return this.getMemoryLocationSearchResult();
            }
            case 4: {
                return this.getName();
            }
            case 5: {
                return this.getPolicy();
            }
            case 6: {
                return this.isRescaled();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setAdditionalInformation((String)newValue);
                return;
            }
            case 1: {
                this.setCacheLocking((CacheLockingType)((Object)newValue));
                return;
            }
            case 2: {
                this.setMemoryLocationInstance((String)newValue);
                return;
            }
            case 3: {
                this.setMemoryLocationSearchResult((String)newValue);
                return;
            }
            case 4: {
                this.setName((String)newValue);
                return;
            }
            case 5: {
                this.setPolicy((String)newValue);
                return;
            }
            case 6: {
                this.setRescaled((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setAdditionalInformation(ADDITIONAL_INFORMATION_EDEFAULT);
                return;
            }
            case 1: {
                this.unsetCacheLocking();
                return;
            }
            case 2: {
                this.setMemoryLocationInstance(MEMORY_LOCATION_INSTANCE_EDEFAULT);
                return;
            }
            case 3: {
                this.setMemoryLocationSearchResult(MEMORY_LOCATION_SEARCH_RESULT_EDEFAULT);
                return;
            }
            case 4: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 5: {
                this.setPolicy(POLICY_EDEFAULT);
                return;
            }
            case 6: {
                this.unsetRescaled();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return ADDITIONAL_INFORMATION_EDEFAULT == null ? this.additionalInformation != null : !ADDITIONAL_INFORMATION_EDEFAULT.equals(this.additionalInformation);
            }
            case 1: {
                return this.isSetCacheLocking();
            }
            case 2: {
                return MEMORY_LOCATION_INSTANCE_EDEFAULT == null ? this.memoryLocationInstance != null : !MEMORY_LOCATION_INSTANCE_EDEFAULT.equals(this.memoryLocationInstance);
            }
            case 3: {
                return MEMORY_LOCATION_SEARCH_RESULT_EDEFAULT == null ? this.memoryLocationSearchResult != null : !MEMORY_LOCATION_SEARCH_RESULT_EDEFAULT.equals(this.memoryLocationSearchResult);
            }
            case 4: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 5: {
                return POLICY_EDEFAULT == null ? this.policy != null : !POLICY_EDEFAULT.equals(this.policy);
            }
            case 6: {
                return this.isSetRescaled();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (additionalInformation: ");
        result.append(this.additionalInformation);
        result.append(", cacheLocking: ");
        if (this.cacheLockingESet) {
            result.append((Object)this.cacheLocking);
        } else {
            result.append("<unset>");
        }
        result.append(", memoryLocationInstance: ");
        result.append(this.memoryLocationInstance);
        result.append(", memoryLocationSearchResult: ");
        result.append(this.memoryLocationSearchResult);
        result.append(", name: ");
        result.append(this.name);
        result.append(", policy: ");
        result.append(this.policy);
        result.append(", rescaled: ");
        if (this.rescaledESet) {
            result.append(this.rescaled);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

