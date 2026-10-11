/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.BasicModelTypeType;
import com.etas.amd620.core.ComponentMain.ComplexTypeType;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.DimensionalTypeType;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;
import com.etas.amd620.core.ComponentMain.ModelTypeType;
import com.etas.amd620.core.ComponentMain.ScalarTypeType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ElementAttributesTImpl
extends MinimalEObjectImpl.Container
implements ElementAttributesT {
    protected ScalarTypeType scalarType;
    protected ComplexTypeType complexType;
    protected DimensionalTypeType dimensionalType;
    protected static final BasicModelTypeType BASIC_MODEL_TYPE_EDEFAULT = BasicModelTypeType.DT;
    protected BasicModelTypeType basicModelType = BASIC_MODEL_TYPE_EDEFAULT;
    protected boolean basicModelTypeESet;
    protected static final ModelTypeType MODEL_TYPE_EDEFAULT = ModelTypeType.SCALAR;
    protected ModelTypeType modelType = MODEL_TYPE_EDEFAULT;
    protected boolean modelTypeESet;
    protected static final String UNIT_EDEFAULT = null;
    protected String unit = UNIT_EDEFAULT;

    protected ElementAttributesTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.ELEMENT_ATTRIBUTES_T;
    }

    @Override
    public ScalarTypeType getScalarType() {
        return this.scalarType;
    }

    public NotificationChain basicSetScalarType(ScalarTypeType newScalarType, NotificationChain msgs) {
        ScalarTypeType oldScalarType = this.scalarType;
        this.scalarType = newScalarType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldScalarType, (Object)newScalarType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setScalarType(ScalarTypeType newScalarType) {
        if (newScalarType != this.scalarType) {
            NotificationChain msgs = null;
            if (this.scalarType != null) {
                msgs = ((InternalEObject)this.scalarType).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newScalarType != null) {
                msgs = ((InternalEObject)newScalarType).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetScalarType(newScalarType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newScalarType, (Object)newScalarType));
        }
    }

    @Override
    public ComplexTypeType getComplexType() {
        return this.complexType;
    }

    public NotificationChain basicSetComplexType(ComplexTypeType newComplexType, NotificationChain msgs) {
        ComplexTypeType oldComplexType = this.complexType;
        this.complexType = newComplexType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldComplexType, (Object)newComplexType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComplexType(ComplexTypeType newComplexType) {
        if (newComplexType != this.complexType) {
            NotificationChain msgs = null;
            if (this.complexType != null) {
                msgs = ((InternalEObject)this.complexType).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newComplexType != null) {
                msgs = ((InternalEObject)newComplexType).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetComplexType(newComplexType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newComplexType, (Object)newComplexType));
        }
    }

    @Override
    public DimensionalTypeType getDimensionalType() {
        return this.dimensionalType;
    }

    public NotificationChain basicSetDimensionalType(DimensionalTypeType newDimensionalType, NotificationChain msgs) {
        DimensionalTypeType oldDimensionalType = this.dimensionalType;
        this.dimensionalType = newDimensionalType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldDimensionalType, (Object)newDimensionalType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDimensionalType(DimensionalTypeType newDimensionalType) {
        if (newDimensionalType != this.dimensionalType) {
            NotificationChain msgs = null;
            if (this.dimensionalType != null) {
                msgs = ((InternalEObject)this.dimensionalType).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newDimensionalType != null) {
                msgs = ((InternalEObject)newDimensionalType).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetDimensionalType(newDimensionalType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newDimensionalType, (Object)newDimensionalType));
        }
    }

    @Override
    public BasicModelTypeType getBasicModelType() {
        return this.basicModelType;
    }

    @Override
    public void setBasicModelType(BasicModelTypeType newBasicModelType) {
        BasicModelTypeType oldBasicModelType = this.basicModelType;
        this.basicModelType = newBasicModelType == null ? BASIC_MODEL_TYPE_EDEFAULT : newBasicModelType;
        boolean oldBasicModelTypeESet = this.basicModelTypeESet;
        this.basicModelTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldBasicModelType, (Object)this.basicModelType, !oldBasicModelTypeESet));
        }
    }

    @Override
    public void unsetBasicModelType() {
        BasicModelTypeType oldBasicModelType = this.basicModelType;
        boolean oldBasicModelTypeESet = this.basicModelTypeESet;
        this.basicModelType = BASIC_MODEL_TYPE_EDEFAULT;
        this.basicModelTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 3, (Object)oldBasicModelType, (Object)BASIC_MODEL_TYPE_EDEFAULT, oldBasicModelTypeESet));
        }
    }

    @Override
    public boolean isSetBasicModelType() {
        return this.basicModelTypeESet;
    }

    @Override
    public ModelTypeType getModelType() {
        return this.modelType;
    }

    @Override
    public void setModelType(ModelTypeType newModelType) {
        ModelTypeType oldModelType = this.modelType;
        this.modelType = newModelType == null ? MODEL_TYPE_EDEFAULT : newModelType;
        boolean oldModelTypeESet = this.modelTypeESet;
        this.modelTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldModelType, (Object)this.modelType, !oldModelTypeESet));
        }
    }

    @Override
    public void unsetModelType() {
        ModelTypeType oldModelType = this.modelType;
        boolean oldModelTypeESet = this.modelTypeESet;
        this.modelType = MODEL_TYPE_EDEFAULT;
        this.modelTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldModelType, (Object)MODEL_TYPE_EDEFAULT, oldModelTypeESet));
        }
    }

    @Override
    public boolean isSetModelType() {
        return this.modelTypeESet;
    }

    @Override
    public String getUnit() {
        return this.unit;
    }

    @Override
    public void setUnit(String newUnit) {
        String oldUnit = this.unit;
        this.unit = newUnit;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldUnit, (Object)this.unit));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetScalarType(null, msgs);
            }
            case 1: {
                return this.basicSetComplexType(null, msgs);
            }
            case 2: {
                return this.basicSetDimensionalType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getScalarType();
            }
            case 1: {
                return this.getComplexType();
            }
            case 2: {
                return this.getDimensionalType();
            }
            case 3: {
                return this.getBasicModelType();
            }
            case 4: {
                return this.getModelType();
            }
            case 5: {
                return this.getUnit();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setScalarType((ScalarTypeType)newValue);
                return;
            }
            case 1: {
                this.setComplexType((ComplexTypeType)newValue);
                return;
            }
            case 2: {
                this.setDimensionalType((DimensionalTypeType)newValue);
                return;
            }
            case 3: {
                this.setBasicModelType((BasicModelTypeType)((Object)newValue));
                return;
            }
            case 4: {
                this.setModelType((ModelTypeType)((Object)newValue));
                return;
            }
            case 5: {
                this.setUnit((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setScalarType(null);
                return;
            }
            case 1: {
                this.setComplexType(null);
                return;
            }
            case 2: {
                this.setDimensionalType(null);
                return;
            }
            case 3: {
                this.unsetBasicModelType();
                return;
            }
            case 4: {
                this.unsetModelType();
                return;
            }
            case 5: {
                this.setUnit(UNIT_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.scalarType != null;
            }
            case 1: {
                return this.complexType != null;
            }
            case 2: {
                return this.dimensionalType != null;
            }
            case 3: {
                return this.isSetBasicModelType();
            }
            case 4: {
                return this.isSetModelType();
            }
            case 5: {
                return UNIT_EDEFAULT == null ? this.unit != null : !UNIT_EDEFAULT.equals(this.unit);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (basicModelType: ");
        if (this.basicModelTypeESet) {
            result.append((Object)this.basicModelType);
        } else {
            result.append("<unset>");
        }
        result.append(", modelType: ");
        if (this.modelTypeESet) {
            result.append((Object)this.modelType);
        } else {
            result.append("<unset>");
        }
        result.append(", unit: ");
        result.append(this.unit);
        result.append(')');
        return result.toString();
    }
}

