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
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.ByteOrderEnum;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.MultiplexedPart;
import autosar40.system.fibex.fibexcore.corecommunication.SegmentPosition;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SegmentPositionImpl
extends ARObjectImpl
implements SegmentPosition {
    protected static final ByteOrderEnum SEGMENT_BYTE_ORDER_EDEFAULT = ByteOrderEnum.MOST_SIGNIFICANT_BYTE_FIRST;
    protected ByteOrderEnum segmentByteOrder = SEGMENT_BYTE_ORDER_EDEFAULT;
    protected boolean segmentByteOrderESet;
    protected static final IntegerDatatype SEGMENT_LENGTH_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype segmentLength = SEGMENT_LENGTH_EDEFAULT.clone();
    protected boolean segmentLengthESet;
    protected static final IntegerDatatype SEGMENT_POSITION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype segmentPosition = SEGMENT_POSITION_EDEFAULT.clone();
    protected boolean segmentPositionESet;

    protected SegmentPositionImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.SEGMENT_POSITION;
    }

    public MultiplexedPart getMultiplexedPart() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (MultiplexedPart)this.eContainer();
    }

    public NotificationChain basicSetMultiplexedPart(MultiplexedPart newMultiplexedPart, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMultiplexedPart, 4, msgs);
        return msgs;
    }

    public void setMultiplexedPart(MultiplexedPart newMultiplexedPart) {
        if (newMultiplexedPart != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newMultiplexedPart != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMultiplexedPart)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMultiplexedPart != null) {
                msgs = ((InternalEObject)newMultiplexedPart).eInverseAdd((InternalEObject)this, 4, MultiplexedPart.class, msgs);
            }
            if ((msgs = this.basicSetMultiplexedPart(newMultiplexedPart, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newMultiplexedPart, (Object)newMultiplexedPart));
        }
    }

    public ByteOrderEnum getSegmentByteOrder() {
        return this.segmentByteOrder;
    }

    public void setSegmentByteOrder(ByteOrderEnum newSegmentByteOrder) {
        ByteOrderEnum oldSegmentByteOrder = this.segmentByteOrder;
        this.segmentByteOrder = newSegmentByteOrder == null ? SEGMENT_BYTE_ORDER_EDEFAULT : newSegmentByteOrder;
        boolean oldSegmentByteOrderESet = this.segmentByteOrderESet;
        this.segmentByteOrderESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSegmentByteOrder, (Object)this.segmentByteOrder, !oldSegmentByteOrderESet));
        }
    }

    public void unsetSegmentByteOrder() {
        ByteOrderEnum oldSegmentByteOrder = this.segmentByteOrder;
        boolean oldSegmentByteOrderESet = this.segmentByteOrderESet;
        this.segmentByteOrder = SEGMENT_BYTE_ORDER_EDEFAULT;
        this.segmentByteOrderESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldSegmentByteOrder, (Object)SEGMENT_BYTE_ORDER_EDEFAULT, oldSegmentByteOrderESet));
        }
    }

    public boolean isSetSegmentByteOrder() {
        return this.segmentByteOrderESet;
    }

    public Integer getSegmentLength() {
        return (Integer)this.segmentLength.basicGetValue();
    }

    public void setSegmentLength(Integer newSegmentLength) {
        Integer oldSegmentLength = (Integer)this.segmentLength.basicGetValue();
        this.segmentLength.basicSetValue((Object)newSegmentLength);
        boolean oldSegmentLengthESet = this.segmentLengthESet;
        this.segmentLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSegmentLength, (Object)newSegmentLength, !oldSegmentLengthESet));
        }
    }

    public void unsetSegmentLength() {
        Integer oldSegmentLength = (Integer)this.segmentLength.basicGetValue();
        boolean oldSegmentLengthESet = this.segmentLengthESet;
        this.segmentLength = SEGMENT_LENGTH_EDEFAULT.clone();
        this.segmentLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldSegmentLength, (Object)SEGMENT_LENGTH_EDEFAULT, oldSegmentLengthESet));
        }
    }

    public boolean isSetSegmentLength() {
        return this.segmentLengthESet;
    }

    public Integer getSegmentPosition() {
        return (Integer)this.segmentPosition.basicGetValue();
    }

    public void setSegmentPosition(Integer newSegmentPosition) {
        Integer oldSegmentPosition = (Integer)this.segmentPosition.basicGetValue();
        this.segmentPosition.basicSetValue((Object)newSegmentPosition);
        boolean oldSegmentPositionESet = this.segmentPositionESet;
        this.segmentPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSegmentPosition, (Object)newSegmentPosition, !oldSegmentPositionESet));
        }
    }

    public void unsetSegmentPosition() {
        Integer oldSegmentPosition = (Integer)this.segmentPosition.basicGetValue();
        boolean oldSegmentPositionESet = this.segmentPositionESet;
        this.segmentPosition = SEGMENT_POSITION_EDEFAULT.clone();
        this.segmentPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldSegmentPosition, (Object)SEGMENT_POSITION_EDEFAULT, oldSegmentPositionESet));
        }
    }

    public boolean isSetSegmentPosition() {
        return this.segmentPositionESet;
    }

    public IntegerDatatype getSegmentLengthData() {
        return this.segmentLength.clone();
    }

    public void setSegmentLengthData(IntegerDatatype newSegmentLength) {
        this.segmentLength.setRadix((int)newSegmentLength.getRadix());
        this.segmentLength.setNoOfDigits((int)newSegmentLength.getNoOfDigits());
        this.setSegmentLength(newSegmentLength.getValue());
    }

    public IntegerDatatype getSegmentPositionData() {
        return this.segmentPosition.clone();
    }

    public void setSegmentPositionData(IntegerDatatype newSegmentPosition) {
        this.segmentPosition.setRadix((int)newSegmentPosition.getRadix());
        this.segmentPosition.setNoOfDigits((int)newSegmentPosition.getNoOfDigits());
        this.setSegmentPosition(newSegmentPosition.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMultiplexedPart((MultiplexedPart)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetMultiplexedPart(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, MultiplexedPart.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMultiplexedPart();
            }
            case 5: {
                return this.getSegmentByteOrder();
            }
            case 6: {
                return this.getSegmentLength();
            }
            case 7: {
                return this.getSegmentPosition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMultiplexedPart((MultiplexedPart)newValue);
                return;
            }
            case 5: {
                this.setSegmentByteOrder((ByteOrderEnum)((Object)newValue));
                return;
            }
            case 6: {
                this.setSegmentLength((Integer)newValue);
                return;
            }
            case 7: {
                this.setSegmentPosition((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setMultiplexedPart(null);
                return;
            }
            case 5: {
                this.unsetSegmentByteOrder();
                return;
            }
            case 6: {
                this.unsetSegmentLength();
                return;
            }
            case 7: {
                this.unsetSegmentPosition();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getMultiplexedPart() != null;
            }
            case 5: {
                return this.isSetSegmentByteOrder();
            }
            case 6: {
                return this.isSetSegmentLength();
            }
            case 7: {
                return this.isSetSegmentPosition();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (segmentByteOrder: ");
        if (this.segmentByteOrderESet) {
            result.append((Object)this.segmentByteOrder);
        } else {
            result.append("<unset>");
        }
        result.append(", segmentLength: ");
        if (this.segmentLengthESet) {
            result.append(this.segmentLength);
        } else {
            result.append("<unset>");
        }
        result.append(", segmentPosition: ");
        if (this.segmentPositionESet) {
            result.append(this.segmentPosition);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

