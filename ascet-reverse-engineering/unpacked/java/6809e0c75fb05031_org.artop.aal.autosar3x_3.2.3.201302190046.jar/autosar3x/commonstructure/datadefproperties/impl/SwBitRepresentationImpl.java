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
package autosar3x.commonstructure.datadefproperties.impl;

import autosar3x.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar3x.commonstructure.datadefproperties.SwBitRepresentation;
import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
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
    protected static final Integer BIT_POSITION_EDEFAULT = new Integer(0);
    protected Integer bitPosition = BIT_POSITION_EDEFAULT;
    protected boolean bitPositionESet;
    protected static final Integer NUMBER_OF_BITS_EDEFAULT = new Integer(0);
    protected Integer numberOfBits = NUMBER_OF_BITS_EDEFAULT;
    protected boolean numberOfBitsESet;

    protected SwBitRepresentationImpl() {
    }

    protected EClass eStaticClass() {
        return DatadefpropertiesPackage.Literals.SW_BIT_REPRESENTATION;
    }

    public SwDataDefProps getSwDataDefProps() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwDataDefProps)this.eContainer();
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwDataDefProps, 4, msgs);
        return msgs;
    }

    public void setSwDataDefProps(SwDataDefProps newSwDataDefProps) {
        if (newSwDataDefProps != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwDataDefProps != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwDataDefProps)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, 10, SwDataDefProps.class, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    public Integer getBitPosition() {
        return this.bitPosition;
    }

    public void setBitPosition(Integer newBitPosition) {
        Integer oldBitPosition = this.bitPosition;
        this.bitPosition = newBitPosition;
        boolean oldBitPositionESet = this.bitPositionESet;
        this.bitPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldBitPosition, (Object)this.bitPosition, !oldBitPositionESet));
        }
    }

    public void unsetBitPosition() {
        Integer oldBitPosition = this.bitPosition;
        boolean oldBitPositionESet = this.bitPositionESet;
        this.bitPosition = BIT_POSITION_EDEFAULT;
        this.bitPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldBitPosition, (Object)BIT_POSITION_EDEFAULT, oldBitPositionESet));
        }
    }

    public boolean isSetBitPosition() {
        return this.bitPositionESet;
    }

    public Integer getNumberOfBits() {
        return this.numberOfBits;
    }

    public void setNumberOfBits(Integer newNumberOfBits) {
        Integer oldNumberOfBits = this.numberOfBits;
        this.numberOfBits = newNumberOfBits;
        boolean oldNumberOfBitsESet = this.numberOfBitsESet;
        this.numberOfBitsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldNumberOfBits, (Object)this.numberOfBits, !oldNumberOfBitsESet));
        }
    }

    public void unsetNumberOfBits() {
        Integer oldNumberOfBits = this.numberOfBits;
        boolean oldNumberOfBitsESet = this.numberOfBitsESet;
        this.numberOfBits = NUMBER_OF_BITS_EDEFAULT;
        this.numberOfBitsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldNumberOfBits, (Object)NUMBER_OF_BITS_EDEFAULT, oldNumberOfBitsESet));
        }
    }

    public boolean isSetNumberOfBits() {
        return this.numberOfBitsESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwDataDefProps((SwDataDefProps)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 10, SwDataDefProps.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwDataDefProps();
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
                this.setSwDataDefProps((SwDataDefProps)newValue);
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
                this.setSwDataDefProps(null);
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
                return this.getSwDataDefProps() != null;
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

