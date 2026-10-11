/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.IntervalT;
import com.etas.amd620.core.ComponentImplementation.MasterType;
import com.etas.amd620.core.ComponentImplementation.NumericImplementationT;
import com.etas.amd620.core.ComponentImplementation.impl.NumericImplementationBaseTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class NumericImplementationTImpl
extends NumericImplementationBaseTImpl
implements NumericImplementationT {
    protected IntervalT physicalInterval;
    protected IntervalT implementationInterval;
    protected static final String FORMULA_EDEFAULT = null;
    protected String formula = FORMULA_EDEFAULT;
    protected static final String IMPL_TYPE_EDEFAULT = null;
    protected String implType = IMPL_TYPE_EDEFAULT;
    protected static final MasterType MASTER_EDEFAULT = MasterType.MODEL;
    protected MasterType master = MASTER_EDEFAULT;
    protected boolean masterESet;
    protected static final String PHYS_TYPE_EDEFAULT = null;
    protected String physType = PHYS_TYPE_EDEFAULT;
    protected static final Object QUANTIZATION_EDEFAULT = null;
    protected Object quantization = QUANTIZATION_EDEFAULT;
    protected static final boolean ZERO_NOT_INCLUDED_EDEFAULT = false;
    protected boolean zeroNotIncluded = false;
    protected boolean zeroNotIncludedESet;

    protected NumericImplementationTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.NUMERIC_IMPLEMENTATION_T;
    }

    @Override
    public IntervalT getPhysicalInterval() {
        return this.physicalInterval;
    }

    public NotificationChain basicSetPhysicalInterval(IntervalT newPhysicalInterval, NotificationChain msgs) {
        IntervalT oldPhysicalInterval = this.physicalInterval;
        this.physicalInterval = newPhysicalInterval;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldPhysicalInterval, (Object)newPhysicalInterval);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setPhysicalInterval(IntervalT newPhysicalInterval) {
        if (newPhysicalInterval != this.physicalInterval) {
            NotificationChain msgs = null;
            if (this.physicalInterval != null) {
                msgs = ((InternalEObject)this.physicalInterval).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newPhysicalInterval != null) {
                msgs = ((InternalEObject)newPhysicalInterval).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetPhysicalInterval(newPhysicalInterval, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newPhysicalInterval, (Object)newPhysicalInterval));
        }
    }

    @Override
    public IntervalT getImplementationInterval() {
        return this.implementationInterval;
    }

    public NotificationChain basicSetImplementationInterval(IntervalT newImplementationInterval, NotificationChain msgs) {
        IntervalT oldImplementationInterval = this.implementationInterval;
        this.implementationInterval = newImplementationInterval;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldImplementationInterval, (Object)newImplementationInterval);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setImplementationInterval(IntervalT newImplementationInterval) {
        if (newImplementationInterval != this.implementationInterval) {
            NotificationChain msgs = null;
            if (this.implementationInterval != null) {
                msgs = ((InternalEObject)this.implementationInterval).eInverseRemove((InternalEObject)this, -12, null, msgs);
            }
            if (newImplementationInterval != null) {
                msgs = ((InternalEObject)newImplementationInterval).eInverseAdd((InternalEObject)this, -12, null, msgs);
            }
            if ((msgs = this.basicSetImplementationInterval(newImplementationInterval, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newImplementationInterval, (Object)newImplementationInterval));
        }
    }

    @Override
    public String getFormula() {
        return this.formula;
    }

    @Override
    public void setFormula(String newFormula) {
        String oldFormula = this.formula;
        this.formula = newFormula;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldFormula, (Object)this.formula));
        }
    }

    @Override
    public String getImplType() {
        return this.implType;
    }

    @Override
    public void setImplType(String newImplType) {
        String oldImplType = this.implType;
        this.implType = newImplType;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldImplType, (Object)this.implType));
        }
    }

    @Override
    public MasterType getMaster() {
        return this.master;
    }

    @Override
    public void setMaster(MasterType newMaster) {
        MasterType oldMaster = this.master;
        this.master = newMaster == null ? MASTER_EDEFAULT : newMaster;
        boolean oldMasterESet = this.masterESet;
        this.masterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldMaster, (Object)this.master, !oldMasterESet));
        }
    }

    @Override
    public void unsetMaster() {
        MasterType oldMaster = this.master;
        boolean oldMasterESet = this.masterESet;
        this.master = MASTER_EDEFAULT;
        this.masterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldMaster, (Object)MASTER_EDEFAULT, oldMasterESet));
        }
    }

    @Override
    public boolean isSetMaster() {
        return this.masterESet;
    }

    @Override
    public String getPhysType() {
        return this.physType;
    }

    @Override
    public void setPhysType(String newPhysType) {
        String oldPhysType = this.physType;
        this.physType = newPhysType;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldPhysType, (Object)this.physType));
        }
    }

    @Override
    public Object getQuantization() {
        return this.quantization;
    }

    @Override
    public void setQuantization(Object newQuantization) {
        Object oldQuantization = this.quantization;
        this.quantization = newQuantization;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, oldQuantization, this.quantization));
        }
    }

    @Override
    public boolean isZeroNotIncluded() {
        return this.zeroNotIncluded;
    }

    @Override
    public void setZeroNotIncluded(boolean newZeroNotIncluded) {
        boolean oldZeroNotIncluded = this.zeroNotIncluded;
        this.zeroNotIncluded = newZeroNotIncluded;
        boolean oldZeroNotIncludedESet = this.zeroNotIncludedESet;
        this.zeroNotIncludedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, oldZeroNotIncluded, this.zeroNotIncluded, !oldZeroNotIncludedESet));
        }
    }

    @Override
    public void unsetZeroNotIncluded() {
        boolean oldZeroNotIncluded = this.zeroNotIncluded;
        boolean oldZeroNotIncludedESet = this.zeroNotIncludedESet;
        this.zeroNotIncluded = false;
        this.zeroNotIncludedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, oldZeroNotIncluded, false, oldZeroNotIncludedESet));
        }
    }

    @Override
    public boolean isSetZeroNotIncluded() {
        return this.zeroNotIncludedESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 10: {
                return this.basicSetPhysicalInterval(null, msgs);
            }
            case 11: {
                return this.basicSetImplementationInterval(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 10: {
                return this.getPhysicalInterval();
            }
            case 11: {
                return this.getImplementationInterval();
            }
            case 12: {
                return this.getFormula();
            }
            case 13: {
                return this.getImplType();
            }
            case 14: {
                return this.getMaster();
            }
            case 15: {
                return this.getPhysType();
            }
            case 16: {
                return this.getQuantization();
            }
            case 17: {
                return this.isZeroNotIncluded();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 10: {
                this.setPhysicalInterval((IntervalT)newValue);
                return;
            }
            case 11: {
                this.setImplementationInterval((IntervalT)newValue);
                return;
            }
            case 12: {
                this.setFormula((String)newValue);
                return;
            }
            case 13: {
                this.setImplType((String)newValue);
                return;
            }
            case 14: {
                this.setMaster((MasterType)((Object)newValue));
                return;
            }
            case 15: {
                this.setPhysType((String)newValue);
                return;
            }
            case 16: {
                this.setQuantization(newValue);
                return;
            }
            case 17: {
                this.setZeroNotIncluded((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 10: {
                this.setPhysicalInterval(null);
                return;
            }
            case 11: {
                this.setImplementationInterval(null);
                return;
            }
            case 12: {
                this.setFormula(FORMULA_EDEFAULT);
                return;
            }
            case 13: {
                this.setImplType(IMPL_TYPE_EDEFAULT);
                return;
            }
            case 14: {
                this.unsetMaster();
                return;
            }
            case 15: {
                this.setPhysType(PHYS_TYPE_EDEFAULT);
                return;
            }
            case 16: {
                this.setQuantization(QUANTIZATION_EDEFAULT);
                return;
            }
            case 17: {
                this.unsetZeroNotIncluded();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 10: {
                return this.physicalInterval != null;
            }
            case 11: {
                return this.implementationInterval != null;
            }
            case 12: {
                return FORMULA_EDEFAULT == null ? this.formula != null : !FORMULA_EDEFAULT.equals(this.formula);
            }
            case 13: {
                return IMPL_TYPE_EDEFAULT == null ? this.implType != null : !IMPL_TYPE_EDEFAULT.equals(this.implType);
            }
            case 14: {
                return this.isSetMaster();
            }
            case 15: {
                return PHYS_TYPE_EDEFAULT == null ? this.physType != null : !PHYS_TYPE_EDEFAULT.equals(this.physType);
            }
            case 16: {
                return QUANTIZATION_EDEFAULT == null ? this.quantization != null : !QUANTIZATION_EDEFAULT.equals(this.quantization);
            }
            case 17: {
                return this.isSetZeroNotIncluded();
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
        result.append(" (formula: ");
        result.append(this.formula);
        result.append(", implType: ");
        result.append(this.implType);
        result.append(", master: ");
        if (this.masterESet) {
            result.append((Object)this.master);
        } else {
            result.append("<unset>");
        }
        result.append(", physType: ");
        result.append(this.physType);
        result.append(", quantization: ");
        result.append(this.quantization);
        result.append(", zeroNotIncluded: ");
        if (this.zeroNotIncludedESet) {
            result.append(this.zeroNotIncluded);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

