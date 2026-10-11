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
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.ComplexImplementationT;
import com.etas.amd620.core.ComponentImplementation.ComplexReferenceImplementationT;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.DimensionalImplementationT;
import com.etas.amd620.core.ComponentImplementation.DimensionalReferenceImplementationT;
import com.etas.amd620.core.ComponentImplementation.ElementImplementationT;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ElementImplementationTImpl
extends MinimalEObjectImpl.Container
implements ElementImplementationT {
    protected ScalarImplementationT scalarImplementation;
    protected DimensionalImplementationT dimensionalImplementation;
    protected ComplexImplementationT complexImplementation;
    protected DimensionalReferenceImplementationT dimensionalReferenceImplementation;
    protected ComplexReferenceImplementationT complexReferenceImplementation;
    protected static final boolean AS_REFERENCE_EDEFAULT = false;
    protected boolean asReference = false;
    protected boolean asReferenceESet;
    protected static final String ELEMENT_NAME_EDEFAULT = null;
    protected String elementName = ELEMENT_NAME_EDEFAULT;
    protected static final String ELEMENT_OID_EDEFAULT = null;
    protected String elementOID = ELEMENT_OID_EDEFAULT;
    protected static final BigInteger INDEX_EDEFAULT = null;
    protected BigInteger index = INDEX_EDEFAULT;
    protected static final String METHOD_NAME_EDEFAULT = null;
    protected String methodName = METHOD_NAME_EDEFAULT;

    protected ElementImplementationTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.ELEMENT_IMPLEMENTATION_T;
    }

    @Override
    public ScalarImplementationT getScalarImplementation() {
        return this.scalarImplementation;
    }

    public NotificationChain basicSetScalarImplementation(ScalarImplementationT newScalarImplementation, NotificationChain msgs) {
        ScalarImplementationT oldScalarImplementation = this.scalarImplementation;
        this.scalarImplementation = newScalarImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldScalarImplementation, (Object)newScalarImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setScalarImplementation(ScalarImplementationT newScalarImplementation) {
        if (newScalarImplementation != this.scalarImplementation) {
            NotificationChain msgs = null;
            if (this.scalarImplementation != null) {
                msgs = ((InternalEObject)this.scalarImplementation).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newScalarImplementation != null) {
                msgs = ((InternalEObject)newScalarImplementation).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetScalarImplementation(newScalarImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newScalarImplementation, (Object)newScalarImplementation));
        }
    }

    @Override
    public DimensionalImplementationT getDimensionalImplementation() {
        return this.dimensionalImplementation;
    }

    public NotificationChain basicSetDimensionalImplementation(DimensionalImplementationT newDimensionalImplementation, NotificationChain msgs) {
        DimensionalImplementationT oldDimensionalImplementation = this.dimensionalImplementation;
        this.dimensionalImplementation = newDimensionalImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldDimensionalImplementation, (Object)newDimensionalImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDimensionalImplementation(DimensionalImplementationT newDimensionalImplementation) {
        if (newDimensionalImplementation != this.dimensionalImplementation) {
            NotificationChain msgs = null;
            if (this.dimensionalImplementation != null) {
                msgs = ((InternalEObject)this.dimensionalImplementation).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newDimensionalImplementation != null) {
                msgs = ((InternalEObject)newDimensionalImplementation).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetDimensionalImplementation(newDimensionalImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newDimensionalImplementation, (Object)newDimensionalImplementation));
        }
    }

    @Override
    public ComplexImplementationT getComplexImplementation() {
        return this.complexImplementation;
    }

    public NotificationChain basicSetComplexImplementation(ComplexImplementationT newComplexImplementation, NotificationChain msgs) {
        ComplexImplementationT oldComplexImplementation = this.complexImplementation;
        this.complexImplementation = newComplexImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldComplexImplementation, (Object)newComplexImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComplexImplementation(ComplexImplementationT newComplexImplementation) {
        if (newComplexImplementation != this.complexImplementation) {
            NotificationChain msgs = null;
            if (this.complexImplementation != null) {
                msgs = ((InternalEObject)this.complexImplementation).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newComplexImplementation != null) {
                msgs = ((InternalEObject)newComplexImplementation).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetComplexImplementation(newComplexImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newComplexImplementation, (Object)newComplexImplementation));
        }
    }

    @Override
    public DimensionalReferenceImplementationT getDimensionalReferenceImplementation() {
        return this.dimensionalReferenceImplementation;
    }

    public NotificationChain basicSetDimensionalReferenceImplementation(DimensionalReferenceImplementationT newDimensionalReferenceImplementation, NotificationChain msgs) {
        DimensionalReferenceImplementationT oldDimensionalReferenceImplementation = this.dimensionalReferenceImplementation;
        this.dimensionalReferenceImplementation = newDimensionalReferenceImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldDimensionalReferenceImplementation, (Object)newDimensionalReferenceImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDimensionalReferenceImplementation(DimensionalReferenceImplementationT newDimensionalReferenceImplementation) {
        if (newDimensionalReferenceImplementation != this.dimensionalReferenceImplementation) {
            NotificationChain msgs = null;
            if (this.dimensionalReferenceImplementation != null) {
                msgs = ((InternalEObject)this.dimensionalReferenceImplementation).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newDimensionalReferenceImplementation != null) {
                msgs = ((InternalEObject)newDimensionalReferenceImplementation).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetDimensionalReferenceImplementation(newDimensionalReferenceImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newDimensionalReferenceImplementation, (Object)newDimensionalReferenceImplementation));
        }
    }

    @Override
    public ComplexReferenceImplementationT getComplexReferenceImplementation() {
        return this.complexReferenceImplementation;
    }

    public NotificationChain basicSetComplexReferenceImplementation(ComplexReferenceImplementationT newComplexReferenceImplementation, NotificationChain msgs) {
        ComplexReferenceImplementationT oldComplexReferenceImplementation = this.complexReferenceImplementation;
        this.complexReferenceImplementation = newComplexReferenceImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldComplexReferenceImplementation, (Object)newComplexReferenceImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComplexReferenceImplementation(ComplexReferenceImplementationT newComplexReferenceImplementation) {
        if (newComplexReferenceImplementation != this.complexReferenceImplementation) {
            NotificationChain msgs = null;
            if (this.complexReferenceImplementation != null) {
                msgs = ((InternalEObject)this.complexReferenceImplementation).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newComplexReferenceImplementation != null) {
                msgs = ((InternalEObject)newComplexReferenceImplementation).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetComplexReferenceImplementation(newComplexReferenceImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newComplexReferenceImplementation, (Object)newComplexReferenceImplementation));
        }
    }

    @Override
    public boolean isAsReference() {
        return this.asReference;
    }

    @Override
    public void setAsReference(boolean newAsReference) {
        boolean oldAsReference = this.asReference;
        this.asReference = newAsReference;
        boolean oldAsReferenceESet = this.asReferenceESet;
        this.asReferenceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, oldAsReference, this.asReference, !oldAsReferenceESet));
        }
    }

    @Override
    public void unsetAsReference() {
        boolean oldAsReference = this.asReference;
        boolean oldAsReferenceESet = this.asReferenceESet;
        this.asReference = false;
        this.asReferenceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, oldAsReference, false, oldAsReferenceESet));
        }
    }

    @Override
    public boolean isSetAsReference() {
        return this.asReferenceESet;
    }

    @Override
    public String getElementName() {
        return this.elementName;
    }

    @Override
    public void setElementName(String newElementName) {
        String oldElementName = this.elementName;
        this.elementName = newElementName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldElementName, (Object)this.elementName));
        }
    }

    @Override
    public String getElementOID() {
        return this.elementOID;
    }

    @Override
    public void setElementOID(String newElementOID) {
        String oldElementOID = this.elementOID;
        this.elementOID = newElementOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldElementOID, (Object)this.elementOID));
        }
    }

    @Override
    public BigInteger getIndex() {
        return this.index;
    }

    @Override
    public void setIndex(BigInteger newIndex) {
        BigInteger oldIndex = this.index;
        this.index = newIndex;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldIndex, (Object)this.index));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldMethodName, (Object)this.methodName));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetScalarImplementation(null, msgs);
            }
            case 1: {
                return this.basicSetDimensionalImplementation(null, msgs);
            }
            case 2: {
                return this.basicSetComplexImplementation(null, msgs);
            }
            case 3: {
                return this.basicSetDimensionalReferenceImplementation(null, msgs);
            }
            case 4: {
                return this.basicSetComplexReferenceImplementation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getScalarImplementation();
            }
            case 1: {
                return this.getDimensionalImplementation();
            }
            case 2: {
                return this.getComplexImplementation();
            }
            case 3: {
                return this.getDimensionalReferenceImplementation();
            }
            case 4: {
                return this.getComplexReferenceImplementation();
            }
            case 5: {
                return this.isAsReference();
            }
            case 6: {
                return this.getElementName();
            }
            case 7: {
                return this.getElementOID();
            }
            case 8: {
                return this.getIndex();
            }
            case 9: {
                return this.getMethodName();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setScalarImplementation((ScalarImplementationT)newValue);
                return;
            }
            case 1: {
                this.setDimensionalImplementation((DimensionalImplementationT)newValue);
                return;
            }
            case 2: {
                this.setComplexImplementation((ComplexImplementationT)newValue);
                return;
            }
            case 3: {
                this.setDimensionalReferenceImplementation((DimensionalReferenceImplementationT)newValue);
                return;
            }
            case 4: {
                this.setComplexReferenceImplementation((ComplexReferenceImplementationT)newValue);
                return;
            }
            case 5: {
                this.setAsReference((Boolean)newValue);
                return;
            }
            case 6: {
                this.setElementName((String)newValue);
                return;
            }
            case 7: {
                this.setElementOID((String)newValue);
                return;
            }
            case 8: {
                this.setIndex((BigInteger)newValue);
                return;
            }
            case 9: {
                this.setMethodName((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setScalarImplementation(null);
                return;
            }
            case 1: {
                this.setDimensionalImplementation(null);
                return;
            }
            case 2: {
                this.setComplexImplementation(null);
                return;
            }
            case 3: {
                this.setDimensionalReferenceImplementation(null);
                return;
            }
            case 4: {
                this.setComplexReferenceImplementation(null);
                return;
            }
            case 5: {
                this.unsetAsReference();
                return;
            }
            case 6: {
                this.setElementName(ELEMENT_NAME_EDEFAULT);
                return;
            }
            case 7: {
                this.setElementOID(ELEMENT_OID_EDEFAULT);
                return;
            }
            case 8: {
                this.setIndex(INDEX_EDEFAULT);
                return;
            }
            case 9: {
                this.setMethodName(METHOD_NAME_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.scalarImplementation != null;
            }
            case 1: {
                return this.dimensionalImplementation != null;
            }
            case 2: {
                return this.complexImplementation != null;
            }
            case 3: {
                return this.dimensionalReferenceImplementation != null;
            }
            case 4: {
                return this.complexReferenceImplementation != null;
            }
            case 5: {
                return this.isSetAsReference();
            }
            case 6: {
                return ELEMENT_NAME_EDEFAULT == null ? this.elementName != null : !ELEMENT_NAME_EDEFAULT.equals(this.elementName);
            }
            case 7: {
                return ELEMENT_OID_EDEFAULT == null ? this.elementOID != null : !ELEMENT_OID_EDEFAULT.equals(this.elementOID);
            }
            case 8: {
                return INDEX_EDEFAULT == null ? this.index != null : !INDEX_EDEFAULT.equals(this.index);
            }
            case 9: {
                return METHOD_NAME_EDEFAULT == null ? this.methodName != null : !METHOD_NAME_EDEFAULT.equals(this.methodName);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (asReference: ");
        if (this.asReferenceESet) {
            result.append(this.asReference);
        } else {
            result.append("<unset>");
        }
        result.append(", elementName: ");
        result.append(this.elementName);
        result.append(", elementOID: ");
        result.append(this.elementOID);
        result.append(", index: ");
        result.append(this.index);
        result.append(", methodName: ");
        result.append(this.methodName);
        result.append(')');
        return result.toString();
    }
}

