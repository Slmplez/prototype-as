/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.swcomponent.datatype.datatypes.impl;

import autosar3x.swcomponent.datatype.datatypes.ArrayElement;
import autosar3x.swcomponent.datatype.datatypes.ArrayType;
import autosar3x.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar3x.swcomponent.datatype.datatypes.impl.DataPrototypeImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ArrayElementImpl
extends DataPrototypeImpl
implements ArrayElement {
    protected static final Integer MAX_NUMBER_OF_ELEMENTS_EDEFAULT = new Integer(0);
    protected Integer maxNumberOfElements = MAX_NUMBER_OF_ELEMENTS_EDEFAULT;
    protected boolean maxNumberOfElementsESet;

    protected ArrayElementImpl() {
    }

    protected EClass eStaticClass() {
        return DatatypesPackage.Literals.ARRAY_ELEMENT;
    }

    public ArrayType getArrayType() {
        if (this.eContainerFeatureID() != 21) {
            return null;
        }
        return (ArrayType)this.eContainer();
    }

    public NotificationChain basicSetArrayType(ArrayType newArrayType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newArrayType, 21, msgs);
        return msgs;
    }

    public void setArrayType(ArrayType newArrayType) {
        if (newArrayType != this.eInternalContainer() || this.eContainerFeatureID() != 21 && newArrayType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newArrayType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newArrayType != null) {
                msgs = ((InternalEObject)newArrayType).eInverseAdd((InternalEObject)this, 19, ArrayType.class, msgs);
            }
            if ((msgs = this.basicSetArrayType(newArrayType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newArrayType, (Object)newArrayType));
        }
    }

    public Integer getMaxNumberOfElements() {
        return this.maxNumberOfElements;
    }

    public void setMaxNumberOfElements(Integer newMaxNumberOfElements) {
        Integer oldMaxNumberOfElements = this.maxNumberOfElements;
        this.maxNumberOfElements = newMaxNumberOfElements;
        boolean oldMaxNumberOfElementsESet = this.maxNumberOfElementsESet;
        this.maxNumberOfElementsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldMaxNumberOfElements, (Object)this.maxNumberOfElements, !oldMaxNumberOfElementsESet));
        }
    }

    public void unsetMaxNumberOfElements() {
        Integer oldMaxNumberOfElements = this.maxNumberOfElements;
        boolean oldMaxNumberOfElementsESet = this.maxNumberOfElementsESet;
        this.maxNumberOfElements = MAX_NUMBER_OF_ELEMENTS_EDEFAULT;
        this.maxNumberOfElementsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldMaxNumberOfElements, (Object)MAX_NUMBER_OF_ELEMENTS_EDEFAULT, oldMaxNumberOfElementsESet));
        }
    }

    public boolean isSetMaxNumberOfElements() {
        return this.maxNumberOfElementsESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetArrayType((ArrayType)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return this.basicSetArrayType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 21: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, ArrayType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getArrayType();
            }
            case 22: {
                return this.getMaxNumberOfElements();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setArrayType((ArrayType)newValue);
                return;
            }
            case 22: {
                this.setMaxNumberOfElements((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setArrayType(null);
                return;
            }
            case 22: {
                this.unsetMaxNumberOfElements();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.getArrayType() != null;
            }
            case 22: {
                return this.isSetMaxNumberOfElements();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (maxNumberOfElements: ");
        if (this.maxNumberOfElementsESet) {
            result.append(this.maxNumberOfElements);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

