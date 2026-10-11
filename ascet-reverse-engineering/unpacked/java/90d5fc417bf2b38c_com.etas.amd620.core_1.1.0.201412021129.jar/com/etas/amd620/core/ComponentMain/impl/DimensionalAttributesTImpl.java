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
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.DimensionalAttributesT;
import com.etas.amd620.core.ComponentMain.FormulaType;
import com.etas.amd620.core.ComponentMain.impl.PrimitiveAttributesBaseTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class DimensionalAttributesTImpl
extends PrimitiveAttributesBaseTImpl
implements DimensionalAttributesT {
    protected FormulaType formula;
    protected static final boolean DEPENDENT_EDEFAULT = false;
    protected boolean dependent = false;
    protected boolean dependentESet;
    protected static final boolean REFERENCE_EDEFAULT = false;
    protected boolean reference = false;
    protected boolean referenceESet;
    protected static final boolean VIRTUAL_EDEFAULT = false;
    protected boolean virtual = false;
    protected boolean virtualESet;

    protected DimensionalAttributesTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.DIMENSIONAL_ATTRIBUTES_T;
    }

    @Override
    public FormulaType getFormula() {
        return this.formula;
    }

    public NotificationChain basicSetFormula(FormulaType newFormula, NotificationChain msgs) {
        FormulaType oldFormula = this.formula;
        this.formula = newFormula;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldFormula, (Object)newFormula);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setFormula(FormulaType newFormula) {
        if (newFormula != this.formula) {
            NotificationChain msgs = null;
            if (this.formula != null) {
                msgs = ((InternalEObject)this.formula).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newFormula != null) {
                msgs = ((InternalEObject)newFormula).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetFormula(newFormula, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newFormula, (Object)newFormula));
        }
    }

    @Override
    public boolean isDependent() {
        return this.dependent;
    }

    @Override
    public void setDependent(boolean newDependent) {
        boolean oldDependent = this.dependent;
        this.dependent = newDependent;
        boolean oldDependentESet = this.dependentESet;
        this.dependentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, oldDependent, this.dependent, !oldDependentESet));
        }
    }

    @Override
    public void unsetDependent() {
        boolean oldDependent = this.dependent;
        boolean oldDependentESet = this.dependentESet;
        this.dependent = false;
        this.dependentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, oldDependent, false, oldDependentESet));
        }
    }

    @Override
    public boolean isSetDependent() {
        return this.dependentESet;
    }

    @Override
    public boolean isReference() {
        return this.reference;
    }

    @Override
    public void setReference(boolean newReference) {
        boolean oldReference = this.reference;
        this.reference = newReference;
        boolean oldReferenceESet = this.referenceESet;
        this.referenceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, oldReference, this.reference, !oldReferenceESet));
        }
    }

    @Override
    public void unsetReference() {
        boolean oldReference = this.reference;
        boolean oldReferenceESet = this.referenceESet;
        this.reference = false;
        this.referenceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, oldReference, false, oldReferenceESet));
        }
    }

    @Override
    public boolean isSetReference() {
        return this.referenceESet;
    }

    @Override
    public boolean isVirtual() {
        return this.virtual;
    }

    @Override
    public void setVirtual(boolean newVirtual) {
        boolean oldVirtual = this.virtual;
        this.virtual = newVirtual;
        boolean oldVirtualESet = this.virtualESet;
        this.virtualESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, oldVirtual, this.virtual, !oldVirtualESet));
        }
    }

    @Override
    public void unsetVirtual() {
        boolean oldVirtual = this.virtual;
        boolean oldVirtualESet = this.virtualESet;
        this.virtual = false;
        this.virtualESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, oldVirtual, false, oldVirtualESet));
        }
    }

    @Override
    public boolean isSetVirtual() {
        return this.virtualESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 10: {
                return this.basicSetFormula(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 10: {
                return this.getFormula();
            }
            case 11: {
                return this.isDependent();
            }
            case 12: {
                return this.isReference();
            }
            case 13: {
                return this.isVirtual();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 10: {
                this.setFormula((FormulaType)newValue);
                return;
            }
            case 11: {
                this.setDependent((Boolean)newValue);
                return;
            }
            case 12: {
                this.setReference((Boolean)newValue);
                return;
            }
            case 13: {
                this.setVirtual((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 10: {
                this.setFormula(null);
                return;
            }
            case 11: {
                this.unsetDependent();
                return;
            }
            case 12: {
                this.unsetReference();
                return;
            }
            case 13: {
                this.unsetVirtual();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 10: {
                return this.formula != null;
            }
            case 11: {
                return this.isSetDependent();
            }
            case 12: {
                return this.isSetReference();
            }
            case 13: {
                return this.isSetVirtual();
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
        result.append(" (dependent: ");
        if (this.dependentESet) {
            result.append(this.dependent);
        } else {
            result.append("<unset>");
        }
        result.append(", reference: ");
        if (this.referenceESet) {
            result.append(this.reference);
        } else {
            result.append("<unset>");
        }
        result.append(", virtual: ");
        if (this.virtualESet) {
            result.append(this.virtual);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

