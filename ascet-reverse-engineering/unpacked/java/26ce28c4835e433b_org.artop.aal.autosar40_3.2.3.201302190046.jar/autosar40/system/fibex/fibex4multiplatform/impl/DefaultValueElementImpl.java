/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.fibex.fibex4multiplatform.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibex4multiplatform.DefaultValueElement;
import autosar40.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar40.system.fibex.fibex4multiplatform.PduMappingDefaultValue;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class DefaultValueElementImpl
extends ARObjectImpl
implements DefaultValueElement {
    protected static final IntegerDatatype ELEMENT_BYTE_VALUE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype elementByteValue = ELEMENT_BYTE_VALUE_EDEFAULT.clone();
    protected boolean elementByteValueESet;
    protected static final IntegerDatatype ELEMENT_POSITION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype elementPosition = ELEMENT_POSITION_EDEFAULT.clone();
    protected boolean elementPositionESet;

    protected DefaultValueElementImpl() {
    }

    protected EClass eStaticClass() {
        return Fibex4multiplatformPackage.Literals.DEFAULT_VALUE_ELEMENT;
    }

    public PduMappingDefaultValue getPduMappingDefaultValue() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (PduMappingDefaultValue)this.eContainer();
    }

    public NotificationChain basicSetPduMappingDefaultValue(PduMappingDefaultValue newPduMappingDefaultValue, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPduMappingDefaultValue, 4, msgs);
        return msgs;
    }

    public void setPduMappingDefaultValue(PduMappingDefaultValue newPduMappingDefaultValue) {
        if (newPduMappingDefaultValue != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newPduMappingDefaultValue != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPduMappingDefaultValue)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPduMappingDefaultValue != null) {
                msgs = ((InternalEObject)newPduMappingDefaultValue).eInverseAdd((InternalEObject)this, 5, PduMappingDefaultValue.class, msgs);
            }
            if ((msgs = this.basicSetPduMappingDefaultValue(newPduMappingDefaultValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPduMappingDefaultValue, (Object)newPduMappingDefaultValue));
        }
    }

    public Integer getElementByteValue() {
        return (Integer)this.elementByteValue.basicGetValue();
    }

    public void setElementByteValue(Integer newElementByteValue) {
        Integer oldElementByteValue = (Integer)this.elementByteValue.basicGetValue();
        this.elementByteValue.basicSetValue((Object)newElementByteValue);
        boolean oldElementByteValueESet = this.elementByteValueESet;
        this.elementByteValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldElementByteValue, (Object)newElementByteValue, !oldElementByteValueESet));
        }
    }

    public void unsetElementByteValue() {
        Integer oldElementByteValue = (Integer)this.elementByteValue.basicGetValue();
        boolean oldElementByteValueESet = this.elementByteValueESet;
        this.elementByteValue = ELEMENT_BYTE_VALUE_EDEFAULT.clone();
        this.elementByteValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldElementByteValue, (Object)ELEMENT_BYTE_VALUE_EDEFAULT, oldElementByteValueESet));
        }
    }

    public boolean isSetElementByteValue() {
        return this.elementByteValueESet;
    }

    public Integer getElementPosition() {
        return (Integer)this.elementPosition.basicGetValue();
    }

    public void setElementPosition(Integer newElementPosition) {
        Integer oldElementPosition = (Integer)this.elementPosition.basicGetValue();
        this.elementPosition.basicSetValue((Object)newElementPosition);
        boolean oldElementPositionESet = this.elementPositionESet;
        this.elementPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldElementPosition, (Object)newElementPosition, !oldElementPositionESet));
        }
    }

    public void unsetElementPosition() {
        Integer oldElementPosition = (Integer)this.elementPosition.basicGetValue();
        boolean oldElementPositionESet = this.elementPositionESet;
        this.elementPosition = ELEMENT_POSITION_EDEFAULT.clone();
        this.elementPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldElementPosition, (Object)ELEMENT_POSITION_EDEFAULT, oldElementPositionESet));
        }
    }

    public boolean isSetElementPosition() {
        return this.elementPositionESet;
    }

    public IntegerDatatype getElementByteValueData() {
        return this.elementByteValue.clone();
    }

    public void setElementByteValueData(IntegerDatatype newElementByteValue) {
        this.elementByteValue.setRadix((int)newElementByteValue.getRadix());
        this.elementByteValue.setNoOfDigits((int)newElementByteValue.getNoOfDigits());
        this.setElementByteValue(newElementByteValue.getValue());
    }

    public IntegerDatatype getElementPositionData() {
        return this.elementPosition.clone();
    }

    public void setElementPositionData(IntegerDatatype newElementPosition) {
        this.elementPosition.setRadix((int)newElementPosition.getRadix());
        this.elementPosition.setNoOfDigits((int)newElementPosition.getNoOfDigits());
        this.setElementPosition(newElementPosition.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPduMappingDefaultValue((PduMappingDefaultValue)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPduMappingDefaultValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, PduMappingDefaultValue.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPduMappingDefaultValue();
            }
            case 5: {
                return this.getElementByteValue();
            }
            case 6: {
                return this.getElementPosition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setPduMappingDefaultValue((PduMappingDefaultValue)newValue);
                return;
            }
            case 5: {
                this.setElementByteValue((Integer)newValue);
                return;
            }
            case 6: {
                this.setElementPosition((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPduMappingDefaultValue(null);
                return;
            }
            case 5: {
                this.unsetElementByteValue();
                return;
            }
            case 6: {
                this.unsetElementPosition();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getPduMappingDefaultValue() != null;
            }
            case 5: {
                return this.isSetElementByteValue();
            }
            case 6: {
                return this.isSetElementPosition();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (elementByteValue: ");
        if (this.elementByteValueESet) {
            result.append(this.elementByteValue);
        } else {
            result.append("<unset>");
        }
        result.append(", elementPosition: ");
        if (this.elementPositionESet) {
            result.append(this.elementPosition);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

