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

import com.etas.amd620.core.ComponentImplementation.ComplexImplementationT;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ComplexImplementationTImpl
extends MinimalEObjectImpl.Container
implements ComplexImplementationT {
    protected static final byte[] CHECKSUM_EDEFAULT = null;
    protected byte[] checksum = CHECKSUM_EDEFAULT;
    protected static final String IMPLEMENTATION_NAME_EDEFAULT = null;
    protected String implementationName = IMPLEMENTATION_NAME_EDEFAULT;
    protected static final String IMPLEMENTATION_OID_EDEFAULT = null;
    protected String implementationOID = IMPLEMENTATION_OID_EDEFAULT;
    protected static final String MEMORY_LOCATION_INSTANCE_EDEFAULT = null;
    protected String memoryLocationInstance = MEMORY_LOCATION_INSTANCE_EDEFAULT;
    protected static final String POLICY_EDEFAULT = null;
    protected String policy = POLICY_EDEFAULT;
    protected static final String RESCALING_FORMULA_EDEFAULT = null;
    protected String rescalingFormula = RESCALING_FORMULA_EDEFAULT;

    protected ComplexImplementationTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.COMPLEX_IMPLEMENTATION_T;
    }

    @Override
    public byte[] getChecksum() {
        return this.checksum;
    }

    @Override
    public void setChecksum(byte[] newChecksum) {
        byte[] oldChecksum = this.checksum;
        this.checksum = newChecksum;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldChecksum, (Object)this.checksum));
        }
    }

    @Override
    public String getImplementationName() {
        return this.implementationName;
    }

    @Override
    public void setImplementationName(String newImplementationName) {
        String oldImplementationName = this.implementationName;
        this.implementationName = newImplementationName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldImplementationName, (Object)this.implementationName));
        }
    }

    @Override
    public String getImplementationOID() {
        return this.implementationOID;
    }

    @Override
    public void setImplementationOID(String newImplementationOID) {
        String oldImplementationOID = this.implementationOID;
        this.implementationOID = newImplementationOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldImplementationOID, (Object)this.implementationOID));
        }
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldMemoryLocationInstance, (Object)this.memoryLocationInstance));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldPolicy, (Object)this.policy));
        }
    }

    @Override
    public String getRescalingFormula() {
        return this.rescalingFormula;
    }

    @Override
    public void setRescalingFormula(String newRescalingFormula) {
        String oldRescalingFormula = this.rescalingFormula;
        this.rescalingFormula = newRescalingFormula;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldRescalingFormula, (Object)this.rescalingFormula));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getChecksum();
            }
            case 1: {
                return this.getImplementationName();
            }
            case 2: {
                return this.getImplementationOID();
            }
            case 3: {
                return this.getMemoryLocationInstance();
            }
            case 4: {
                return this.getPolicy();
            }
            case 5: {
                return this.getRescalingFormula();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setChecksum((byte[])newValue);
                return;
            }
            case 1: {
                this.setImplementationName((String)newValue);
                return;
            }
            case 2: {
                this.setImplementationOID((String)newValue);
                return;
            }
            case 3: {
                this.setMemoryLocationInstance((String)newValue);
                return;
            }
            case 4: {
                this.setPolicy((String)newValue);
                return;
            }
            case 5: {
                this.setRescalingFormula((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setChecksum(CHECKSUM_EDEFAULT);
                return;
            }
            case 1: {
                this.setImplementationName(IMPLEMENTATION_NAME_EDEFAULT);
                return;
            }
            case 2: {
                this.setImplementationOID(IMPLEMENTATION_OID_EDEFAULT);
                return;
            }
            case 3: {
                this.setMemoryLocationInstance(MEMORY_LOCATION_INSTANCE_EDEFAULT);
                return;
            }
            case 4: {
                this.setPolicy(POLICY_EDEFAULT);
                return;
            }
            case 5: {
                this.setRescalingFormula(RESCALING_FORMULA_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return CHECKSUM_EDEFAULT == null ? this.checksum != null : !CHECKSUM_EDEFAULT.equals(this.checksum);
            }
            case 1: {
                return IMPLEMENTATION_NAME_EDEFAULT == null ? this.implementationName != null : !IMPLEMENTATION_NAME_EDEFAULT.equals(this.implementationName);
            }
            case 2: {
                return IMPLEMENTATION_OID_EDEFAULT == null ? this.implementationOID != null : !IMPLEMENTATION_OID_EDEFAULT.equals(this.implementationOID);
            }
            case 3: {
                return MEMORY_LOCATION_INSTANCE_EDEFAULT == null ? this.memoryLocationInstance != null : !MEMORY_LOCATION_INSTANCE_EDEFAULT.equals(this.memoryLocationInstance);
            }
            case 4: {
                return POLICY_EDEFAULT == null ? this.policy != null : !POLICY_EDEFAULT.equals(this.policy);
            }
            case 5: {
                return RESCALING_FORMULA_EDEFAULT == null ? this.rescalingFormula != null : !RESCALING_FORMULA_EDEFAULT.equals(this.rescalingFormula);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (checksum: ");
        result.append(this.checksum);
        result.append(", implementationName: ");
        result.append(this.implementationName);
        result.append(", implementationOID: ");
        result.append(this.implementationOID);
        result.append(", memoryLocationInstance: ");
        result.append(this.memoryLocationInstance);
        result.append(", policy: ");
        result.append(this.policy);
        result.append(", rescalingFormula: ");
        result.append(this.rescalingFormula);
        result.append(')');
        return result.toString();
    }
}

