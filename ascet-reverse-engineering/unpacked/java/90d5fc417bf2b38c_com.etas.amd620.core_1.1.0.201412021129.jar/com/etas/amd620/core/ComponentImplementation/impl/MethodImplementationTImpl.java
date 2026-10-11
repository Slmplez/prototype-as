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
import com.etas.amd620.core.ComponentImplementation.MethodImplementationT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class MethodImplementationTImpl
extends MinimalEObjectImpl.Container
implements MethodImplementationT {
    protected static final CacheLockingType CACHE_LOCKING_EDEFAULT = CacheLockingType.AUTOMATIC;
    protected CacheLockingType cacheLocking = CACHE_LOCKING_EDEFAULT;
    protected boolean cacheLockingESet;
    protected static final boolean INLINE_EDEFAULT = false;
    protected boolean inline = false;
    protected boolean inlineESet;
    protected static final String MEMORY_LOCATION_EDEFAULT = null;
    protected String memoryLocation = MEMORY_LOCATION_EDEFAULT;
    protected static final String METHOD_NAME_EDEFAULT = null;
    protected String methodName = METHOD_NAME_EDEFAULT;
    protected static final String METHOD_OID_EDEFAULT = null;
    protected String methodOID = METHOD_OID_EDEFAULT;
    protected static final String SYMBOL_EDEFAULT = null;
    protected String symbol = SYMBOL_EDEFAULT;
    protected static final boolean USE_FPU_EDEFAULT = false;
    protected boolean useFPU = false;
    protected boolean useFPUESet;

    protected MethodImplementationTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.METHOD_IMPLEMENTATION_T;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldCacheLocking, (Object)this.cacheLocking, !oldCacheLockingESet));
        }
    }

    @Override
    public void unsetCacheLocking() {
        CacheLockingType oldCacheLocking = this.cacheLocking;
        boolean oldCacheLockingESet = this.cacheLockingESet;
        this.cacheLocking = CACHE_LOCKING_EDEFAULT;
        this.cacheLockingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 0, (Object)oldCacheLocking, (Object)CACHE_LOCKING_EDEFAULT, oldCacheLockingESet));
        }
    }

    @Override
    public boolean isSetCacheLocking() {
        return this.cacheLockingESet;
    }

    @Override
    public boolean isInline() {
        return this.inline;
    }

    @Override
    public void setInline(boolean newInline) {
        boolean oldInline = this.inline;
        this.inline = newInline;
        boolean oldInlineESet = this.inlineESet;
        this.inlineESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, oldInline, this.inline, !oldInlineESet));
        }
    }

    @Override
    public void unsetInline() {
        boolean oldInline = this.inline;
        boolean oldInlineESet = this.inlineESet;
        this.inline = false;
        this.inlineESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 1, oldInline, false, oldInlineESet));
        }
    }

    @Override
    public boolean isSetInline() {
        return this.inlineESet;
    }

    @Override
    public String getMemoryLocation() {
        return this.memoryLocation;
    }

    @Override
    public void setMemoryLocation(String newMemoryLocation) {
        String oldMemoryLocation = this.memoryLocation;
        this.memoryLocation = newMemoryLocation;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldMemoryLocation, (Object)this.memoryLocation));
        }
    }

    @Override
    public String getMethodName() {
        return this.methodName;
    }

    @Override
    public void setMethodName(String newMethodName) {
        String oldMethodName = this.methodName;
        this.methodName = newMethodName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldMethodName, (Object)this.methodName));
        }
    }

    @Override
    public String getMethodOID() {
        return this.methodOID;
    }

    @Override
    public void setMethodOID(String newMethodOID) {
        String oldMethodOID = this.methodOID;
        this.methodOID = newMethodOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMethodOID, (Object)this.methodOID));
        }
    }

    @Override
    public String getSymbol() {
        return this.symbol;
    }

    @Override
    public void setSymbol(String newSymbol) {
        String oldSymbol = this.symbol;
        this.symbol = newSymbol;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSymbol, (Object)this.symbol));
        }
    }

    @Override
    public boolean isUseFPU() {
        return this.useFPU;
    }

    @Override
    public void setUseFPU(boolean newUseFPU) {
        boolean oldUseFPU = this.useFPU;
        this.useFPU = newUseFPU;
        boolean oldUseFPUESet = this.useFPUESet;
        this.useFPUESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, oldUseFPU, this.useFPU, !oldUseFPUESet));
        }
    }

    @Override
    public void unsetUseFPU() {
        boolean oldUseFPU = this.useFPU;
        boolean oldUseFPUESet = this.useFPUESet;
        this.useFPU = false;
        this.useFPUESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, oldUseFPU, false, oldUseFPUESet));
        }
    }

    @Override
    public boolean isSetUseFPU() {
        return this.useFPUESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getCacheLocking();
            }
            case 1: {
                return this.isInline();
            }
            case 2: {
                return this.getMemoryLocation();
            }
            case 3: {
                return this.getMethodName();
            }
            case 4: {
                return this.getMethodOID();
            }
            case 5: {
                return this.getSymbol();
            }
            case 6: {
                return this.isUseFPU();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setCacheLocking((CacheLockingType)((Object)newValue));
                return;
            }
            case 1: {
                this.setInline((Boolean)newValue);
                return;
            }
            case 2: {
                this.setMemoryLocation((String)newValue);
                return;
            }
            case 3: {
                this.setMethodName((String)newValue);
                return;
            }
            case 4: {
                this.setMethodOID((String)newValue);
                return;
            }
            case 5: {
                this.setSymbol((String)newValue);
                return;
            }
            case 6: {
                this.setUseFPU((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.unsetCacheLocking();
                return;
            }
            case 1: {
                this.unsetInline();
                return;
            }
            case 2: {
                this.setMemoryLocation(MEMORY_LOCATION_EDEFAULT);
                return;
            }
            case 3: {
                this.setMethodName(METHOD_NAME_EDEFAULT);
                return;
            }
            case 4: {
                this.setMethodOID(METHOD_OID_EDEFAULT);
                return;
            }
            case 5: {
                this.setSymbol(SYMBOL_EDEFAULT);
                return;
            }
            case 6: {
                this.unsetUseFPU();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.isSetCacheLocking();
            }
            case 1: {
                return this.isSetInline();
            }
            case 2: {
                return MEMORY_LOCATION_EDEFAULT == null ? this.memoryLocation != null : !MEMORY_LOCATION_EDEFAULT.equals(this.memoryLocation);
            }
            case 3: {
                return METHOD_NAME_EDEFAULT == null ? this.methodName != null : !METHOD_NAME_EDEFAULT.equals(this.methodName);
            }
            case 4: {
                return METHOD_OID_EDEFAULT == null ? this.methodOID != null : !METHOD_OID_EDEFAULT.equals(this.methodOID);
            }
            case 5: {
                return SYMBOL_EDEFAULT == null ? this.symbol != null : !SYMBOL_EDEFAULT.equals(this.symbol);
            }
            case 6: {
                return this.isSetUseFPU();
            }
        }
        return super.eIsSet(featureID);
    }

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
        result.append(", inline: ");
        if (this.inlineESet) {
            result.append(this.inline);
        } else {
            result.append("<unset>");
        }
        result.append(", memoryLocation: ");
        result.append(this.memoryLocation);
        result.append(", methodName: ");
        result.append(this.methodName);
        result.append(", methodOID: ");
        result.append(this.methodOID);
        result.append(", symbol: ");
        result.append(this.symbol);
        result.append(", useFPU: ");
        if (this.useFPUESet) {
            result.append(this.useFPU);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

