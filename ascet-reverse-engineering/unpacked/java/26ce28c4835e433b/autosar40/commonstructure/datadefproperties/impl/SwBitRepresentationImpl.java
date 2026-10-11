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
package autosar40.commonstructure.datadefproperties.impl;

import autosar40.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar40.commonstructure.datadefproperties.SwBitRepresentation;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsContent;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwBitRepresentationImpl
extends ARObjectImpl
implements SwBitRepresentation {
    protected static final IntegerDatatype BIT_POSITION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype bitPosition = BIT_POSITION_EDEFAULT.clone();
    protected boolean bitPositionESet;
    protected static final IntegerDatatype NUMBER_OF_BITS_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype numberOfBits = NUMBER_OF_BITS_EDEFAULT.clone();
    protected boolean numberOfBitsESet;

    protected SwBitRepresentationImpl() {
    }

    protected EClass eStaticClass() {
        return DatadefpropertiesPackage.Literals.SW_BIT_REPRESENTATION;
    }

    public SwDataDefPropsContent getSwDataDefPropsContent() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwDataDefPropsContent)this.eContainer();
    }

    public NotificationChain basicSetSwDataDefPropsContent(SwDataDefPropsContent newSwDataDefPropsContent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwDataDefPropsContent, 4, msgs);
        return msgs;
    }

    public void setSwDataDefPropsContent(SwDataDefPropsContent newSwDataDefPropsContent) {
        if (newSwDataDefPropsContent != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwDataDefPropsContent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwDataDefPropsContent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwDataDefPropsContent != null) {
                msgs = ((InternalEObject)newSwDataDefPropsContent).eInverseAdd((InternalEObject)this, 8, SwDataDefPropsContent.class, msgs);
            }
            if ((msgs = this.basicSetSwDataDefPropsContent(newSwDataDefPropsContent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwDataDefPropsContent, (Object)newSwDataDefPropsContent));
        }
    }

    public Integer getBitPosition() {
        return (Integer)this.bitPosition.basicGetValue();
    }

    public void setBitPosition(Integer newBitPosition) {
        Integer oldBitPosition = (Integer)this.bitPosition.basicGetValue();
        this.bitPosition.basicSetValue((Object)newBitPosition);
        boolean oldBitPositionESet = this.bitPositionESet;
        this.bitPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldBitPosition, (Object)newBitPosition, !oldBitPositionESet));
        }
    }

    public void unsetBitPosition() {
        Integer oldBitPosition = (Integer)this.bitPosition.basicGetValue();
        boolean oldBitPositionESet = this.bitPositionESet;
        this.bitPosition = BIT_POSITION_EDEFAULT.clone();
        this.bitPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldBitPosition, (Object)BIT_POSITION_EDEFAULT, oldBitPositionESet));
        }
    }

    public boolean isSetBitPosition() {
        return this.bitPositionESet;
    }

    public Integer getNumberOfBits() {
        return (Integer)this.numberOfBits.basicGetValue();
    }

    public void setNumberOfBits(Integer newNumberOfBits) {
        Integer oldNumberOfBits = (Integer)this.numberOfBits.basicGetValue();
        this.numberOfBits.basicSetValue((Object)newNumberOfBits);
        boolean oldNumberOfBitsESet = this.numberOfBitsESet;
        this.numberOfBitsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldNumberOfBits, (Object)newNumberOfBits, !oldNumberOfBitsESet));
        }
    }

    public void unsetNumberOfBits() {
        Integer oldNumberOfBits = (Integer)this.numberOfBits.basicGetValue();
        boolean oldNumberOfBitsESet = this.numberOfBitsESet;
        this.numberOfBits = NUMBER_OF_BITS_EDEFAULT.clone();
        this.numberOfBitsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldNumberOfBits, (Object)NUMBER_OF_BITS_EDEFAULT, oldNumberOfBitsESet));
        }
    }

    public boolean isSetNumberOfBits() {
        return this.numberOfBitsESet;
    }

    public IntegerDatatype getBitPositionData() {
        return this.bitPosition.clone();
    }

    public void setBitPositionData(IntegerDatatype newBitPosition) {
        this.bitPosition.setRadix((int)newBitPosition.getRadix());
        this.bitPosition.setNoOfDigits((int)newBitPosition.getNoOfDigits());
        this.setBitPosition(newBitPosition.getValue());
    }

    public IntegerDatatype getNumberOfBitsData() {
        return this.numberOfBits.clone();
    }

    public void setNumberOfBitsData(IntegerDatatype newNumberOfBits) {
        this.numberOfBits.setRadix((int)newNumberOfBits.getRadix());
        this.numberOfBits.setNoOfDigits((int)newNumberOfBits.getNoOfDigits());
        this.setNumberOfBits(newNumberOfBits.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwDataDefPropsContent((SwDataDefPropsContent)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwDataDefPropsContent(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 8, SwDataDefPropsContent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwDataDefPropsContent();
            }
            case 5: {
                return this.getBitPosition();
            }
            case 6: {
                return this.getNumberOfBits();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwDataDefPropsContent((SwDataDefPropsContent)newValue);
                return;
            }
            case 5: {
                this.setBitPosition((Integer)newValue);
                return;
            }
            case 6: {
                this.setNumberOfBits((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwDataDefPropsContent(null);
                return;
            }
            case 5: {
                this.unsetBitPosition();
                return;
            }
            case 6: {
                this.unsetNumberOfBits();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwDataDefPropsContent() != null;
            }
            case 5: {
                return this.isSetBitPosition();
            }
            case 6: {
                return this.isSetNumberOfBits();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (bitPosition: ");
        if (this.bitPositionESet) {
            result.append(this.bitPosition);
        } else {
            result.append("<unset>");
        }
        result.append(", numberOfBits: ");
        if (this.numberOfBitsESet) {
            result.append(this.numberOfBits);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

