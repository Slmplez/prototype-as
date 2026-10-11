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
package com.etas.amd620.core.ComponentData.impl;

import com.etas.amd620.core.ComponentData.ComplexDataT;
import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.DataVariantT;
import com.etas.amd620.core.ComponentData.DependencyT;
import com.etas.amd620.core.ComponentData.DimensionalTypeT;
import com.etas.amd620.core.ComponentData.ReferenceDataT;
import com.etas.amd620.core.ComponentData.ScalarTypeT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class DataVariantTImpl
extends MinimalEObjectImpl.Container
implements DataVariantT {
    protected DimensionalTypeT dimensionalType;
    protected ScalarTypeT scalarType;
    protected ComplexDataT complexType;
    protected ReferenceDataT referenceType;
    protected DependencyT dependency;
    protected DimensionalTypeT dimensionalType1;
    protected ScalarTypeT scalarType1;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;
    protected static final String OID_EDEFAULT = null;
    protected String oID = OID_EDEFAULT;

    protected DataVariantTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentDataPackage.Literals.DATA_VARIANT_T;
    }

    @Override
    public DimensionalTypeT getDimensionalType() {
        return this.dimensionalType;
    }

    public NotificationChain basicSetDimensionalType(DimensionalTypeT newDimensionalType, NotificationChain msgs) {
        DimensionalTypeT oldDimensionalType = this.dimensionalType;
        this.dimensionalType = newDimensionalType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldDimensionalType, (Object)newDimensionalType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDimensionalType(DimensionalTypeT newDimensionalType) {
        if (newDimensionalType != this.dimensionalType) {
            NotificationChain msgs = null;
            if (this.dimensionalType != null) {
                msgs = ((InternalEObject)this.dimensionalType).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newDimensionalType != null) {
                msgs = ((InternalEObject)newDimensionalType).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetDimensionalType(newDimensionalType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newDimensionalType, (Object)newDimensionalType));
        }
    }

    @Override
    public ScalarTypeT getScalarType() {
        return this.scalarType;
    }

    public NotificationChain basicSetScalarType(ScalarTypeT newScalarType, NotificationChain msgs) {
        ScalarTypeT oldScalarType = this.scalarType;
        this.scalarType = newScalarType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldScalarType, (Object)newScalarType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setScalarType(ScalarTypeT newScalarType) {
        if (newScalarType != this.scalarType) {
            NotificationChain msgs = null;
            if (this.scalarType != null) {
                msgs = ((InternalEObject)this.scalarType).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newScalarType != null) {
                msgs = ((InternalEObject)newScalarType).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetScalarType(newScalarType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newScalarType, (Object)newScalarType));
        }
    }

    @Override
    public ComplexDataT getComplexType() {
        return this.complexType;
    }

    public NotificationChain basicSetComplexType(ComplexDataT newComplexType, NotificationChain msgs) {
        ComplexDataT oldComplexType = this.complexType;
        this.complexType = newComplexType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldComplexType, (Object)newComplexType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComplexType(ComplexDataT newComplexType) {
        if (newComplexType != this.complexType) {
            NotificationChain msgs = null;
            if (this.complexType != null) {
                msgs = ((InternalEObject)this.complexType).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newComplexType != null) {
                msgs = ((InternalEObject)newComplexType).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetComplexType(newComplexType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newComplexType, (Object)newComplexType));
        }
    }

    @Override
    public ReferenceDataT getReferenceType() {
        return this.referenceType;
    }

    public NotificationChain basicSetReferenceType(ReferenceDataT newReferenceType, NotificationChain msgs) {
        ReferenceDataT oldReferenceType = this.referenceType;
        this.referenceType = newReferenceType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldReferenceType, (Object)newReferenceType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setReferenceType(ReferenceDataT newReferenceType) {
        if (newReferenceType != this.referenceType) {
            NotificationChain msgs = null;
            if (this.referenceType != null) {
                msgs = ((InternalEObject)this.referenceType).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newReferenceType != null) {
                msgs = ((InternalEObject)newReferenceType).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetReferenceType(newReferenceType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newReferenceType, (Object)newReferenceType));
        }
    }

    @Override
    public DependencyT getDependency() {
        return this.dependency;
    }

    public NotificationChain basicSetDependency(DependencyT newDependency, NotificationChain msgs) {
        DependencyT oldDependency = this.dependency;
        this.dependency = newDependency;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldDependency, (Object)newDependency);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDependency(DependencyT newDependency) {
        if (newDependency != this.dependency) {
            NotificationChain msgs = null;
            if (this.dependency != null) {
                msgs = ((InternalEObject)this.dependency).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newDependency != null) {
                msgs = ((InternalEObject)newDependency).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetDependency(newDependency, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newDependency, (Object)newDependency));
        }
    }

    @Override
    public DimensionalTypeT getDimensionalType1() {
        return this.dimensionalType1;
    }

    public NotificationChain basicSetDimensionalType1(DimensionalTypeT newDimensionalType1, NotificationChain msgs) {
        DimensionalTypeT oldDimensionalType1 = this.dimensionalType1;
        this.dimensionalType1 = newDimensionalType1;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDimensionalType1, (Object)newDimensionalType1);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDimensionalType1(DimensionalTypeT newDimensionalType1) {
        if (newDimensionalType1 != this.dimensionalType1) {
            NotificationChain msgs = null;
            if (this.dimensionalType1 != null) {
                msgs = ((InternalEObject)this.dimensionalType1).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newDimensionalType1 != null) {
                msgs = ((InternalEObject)newDimensionalType1).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetDimensionalType1(newDimensionalType1, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newDimensionalType1, (Object)newDimensionalType1));
        }
    }

    @Override
    public ScalarTypeT getScalarType1() {
        return this.scalarType1;
    }

    public NotificationChain basicSetScalarType1(ScalarTypeT newScalarType1, NotificationChain msgs) {
        ScalarTypeT oldScalarType1 = this.scalarType1;
        this.scalarType1 = newScalarType1;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldScalarType1, (Object)newScalarType1);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setScalarType1(ScalarTypeT newScalarType1) {
        if (newScalarType1 != this.scalarType1) {
            NotificationChain msgs = null;
            if (this.scalarType1 != null) {
                msgs = ((InternalEObject)this.scalarType1).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newScalarType1 != null) {
                msgs = ((InternalEObject)newScalarType1).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetScalarType1(newScalarType1, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newScalarType1, (Object)newScalarType1));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldName, (Object)this.name));
        }
    }

    @Override
    public String getOID() {
        return this.oID;
    }

    @Override
    public void setOID(String newOID) {
        String oldOID = this.oID;
        this.oID = newOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldOID, (Object)this.oID));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetDimensionalType(null, msgs);
            }
            case 1: {
                return this.basicSetScalarType(null, msgs);
            }
            case 2: {
                return this.basicSetComplexType(null, msgs);
            }
            case 3: {
                return this.basicSetReferenceType(null, msgs);
            }
            case 4: {
                return this.basicSetDependency(null, msgs);
            }
            case 5: {
                return this.basicSetDimensionalType1(null, msgs);
            }
            case 6: {
                return this.basicSetScalarType1(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getDimensionalType();
            }
            case 1: {
                return this.getScalarType();
            }
            case 2: {
                return this.getComplexType();
            }
            case 3: {
                return this.getReferenceType();
            }
            case 4: {
                return this.getDependency();
            }
            case 5: {
                return this.getDimensionalType1();
            }
            case 6: {
                return this.getScalarType1();
            }
            case 7: {
                return this.getName();
            }
            case 8: {
                return this.getOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setDimensionalType((DimensionalTypeT)newValue);
                return;
            }
            case 1: {
                this.setScalarType((ScalarTypeT)newValue);
                return;
            }
            case 2: {
                this.setComplexType((ComplexDataT)newValue);
                return;
            }
            case 3: {
                this.setReferenceType((ReferenceDataT)newValue);
                return;
            }
            case 4: {
                this.setDependency((DependencyT)newValue);
                return;
            }
            case 5: {
                this.setDimensionalType1((DimensionalTypeT)newValue);
                return;
            }
            case 6: {
                this.setScalarType1((ScalarTypeT)newValue);
                return;
            }
            case 7: {
                this.setName((String)newValue);
                return;
            }
            case 8: {
                this.setOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setDimensionalType(null);
                return;
            }
            case 1: {
                this.setScalarType(null);
                return;
            }
            case 2: {
                this.setComplexType(null);
                return;
            }
            case 3: {
                this.setReferenceType(null);
                return;
            }
            case 4: {
                this.setDependency(null);
                return;
            }
            case 5: {
                this.setDimensionalType1(null);
                return;
            }
            case 6: {
                this.setScalarType1(null);
                return;
            }
            case 7: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 8: {
                this.setOID(OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.dimensionalType != null;
            }
            case 1: {
                return this.scalarType != null;
            }
            case 2: {
                return this.complexType != null;
            }
            case 3: {
                return this.referenceType != null;
            }
            case 4: {
                return this.dependency != null;
            }
            case 5: {
                return this.dimensionalType1 != null;
            }
            case 6: {
                return this.scalarType1 != null;
            }
            case 7: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 8: {
                return OID_EDEFAULT == null ? this.oID != null : !OID_EDEFAULT.equals(this.oID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (name: ");
        result.append(this.name);
        result.append(", oID: ");
        result.append(this.oID);
        result.append(')');
        return result.toString();
    }
}

