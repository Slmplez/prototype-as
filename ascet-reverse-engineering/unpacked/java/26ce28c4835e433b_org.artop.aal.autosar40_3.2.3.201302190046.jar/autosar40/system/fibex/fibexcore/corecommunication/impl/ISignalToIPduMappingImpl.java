/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.ByteOrderEnum;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.ISignal;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalGroup;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalToIPduMapping;
import autosar40.system.fibex.fibexcore.corecommunication.TransferPropertyEnum;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ISignalToIPduMappingImpl
extends IdentifiableImpl
implements ISignalToIPduMapping,
IReferringClass {
    protected ISignalGroup iSignalGroup;
    protected ISignal iSignal;
    protected static final ByteOrderEnum PACKING_BYTE_ORDER_EDEFAULT = ByteOrderEnum.MOST_SIGNIFICANT_BYTE_FIRST;
    protected ByteOrderEnum packingByteOrder = PACKING_BYTE_ORDER_EDEFAULT;
    protected boolean packingByteOrderESet;
    protected static final IntegerDatatype START_POSITION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype startPosition = START_POSITION_EDEFAULT.clone();
    protected boolean startPositionESet;
    protected static final TransferPropertyEnum TRANSFER_PROPERTY_EDEFAULT = TransferPropertyEnum.TRIGGERED;
    protected TransferPropertyEnum transferProperty = TRANSFER_PROPERTY_EDEFAULT;
    protected boolean transferPropertyESet;
    protected static final IntegerDatatype UPDATE_INDICATION_BIT_POSITION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype updateIndicationBitPosition = UPDATE_INDICATION_BIT_POSITION_EDEFAULT.clone();
    protected boolean updateIndicationBitPositionESet;
    protected VariationPoint variationPoint;

    protected ISignalToIPduMappingImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.ISIGNAL_TO_IPDU_MAPPING;
    }

    public ISignalGroup getISignalGroup() {
        if (this.iSignalGroup != null && this.iSignalGroup.eIsProxy()) {
            InternalEObject oldISignalGroup = (InternalEObject)this.iSignalGroup;
            this.iSignalGroup = (ISignalGroup)this.eResolveProxy(oldISignalGroup);
            if (this.iSignalGroup != oldISignalGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldISignalGroup, (Object)this.iSignalGroup));
            }
        }
        return this.iSignalGroup;
    }

    public ISignalGroup basicGetISignalGroup() {
        return this.iSignalGroup;
    }

    public void setISignalGroup(ISignalGroup newISignalGroup) {
        ISignalGroup oldISignalGroup = this.iSignalGroup;
        this.iSignalGroup = newISignalGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)18, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldISignalGroup, (Object)this.iSignalGroup));
        }
    }

    public ISignal getISignal() {
        if (this.iSignal != null && this.iSignal.eIsProxy()) {
            InternalEObject oldISignal = (InternalEObject)this.iSignal;
            this.iSignal = (ISignal)this.eResolveProxy(oldISignal);
            if (this.iSignal != oldISignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldISignal, (Object)this.iSignal));
            }
        }
        return this.iSignal;
    }

    public ISignal basicGetISignal() {
        return this.iSignal;
    }

    public void setISignal(ISignal newISignal) {
        ISignal oldISignal = this.iSignal;
        this.iSignal = newISignal;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldISignal, (Object)this.iSignal));
        }
    }

    public ByteOrderEnum getPackingByteOrder() {
        return this.packingByteOrder;
    }

    public void setPackingByteOrder(ByteOrderEnum newPackingByteOrder) {
        ByteOrderEnum oldPackingByteOrder = this.packingByteOrder;
        this.packingByteOrder = newPackingByteOrder == null ? PACKING_BYTE_ORDER_EDEFAULT : newPackingByteOrder;
        boolean oldPackingByteOrderESet = this.packingByteOrderESet;
        this.packingByteOrderESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldPackingByteOrder, (Object)this.packingByteOrder, !oldPackingByteOrderESet));
        }
    }

    public void unsetPackingByteOrder() {
        ByteOrderEnum oldPackingByteOrder = this.packingByteOrder;
        boolean oldPackingByteOrderESet = this.packingByteOrderESet;
        this.packingByteOrder = PACKING_BYTE_ORDER_EDEFAULT;
        this.packingByteOrderESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldPackingByteOrder, (Object)PACKING_BYTE_ORDER_EDEFAULT, oldPackingByteOrderESet));
        }
    }

    public boolean isSetPackingByteOrder() {
        return this.packingByteOrderESet;
    }

    public Integer getStartPosition() {
        return (Integer)this.startPosition.basicGetValue();
    }

    public void setStartPosition(Integer newStartPosition) {
        Integer oldStartPosition = (Integer)this.startPosition.basicGetValue();
        this.startPosition.basicSetValue((Object)newStartPosition);
        boolean oldStartPositionESet = this.startPositionESet;
        this.startPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldStartPosition, (Object)newStartPosition, !oldStartPositionESet));
        }
    }

    public void unsetStartPosition() {
        Integer oldStartPosition = (Integer)this.startPosition.basicGetValue();
        boolean oldStartPositionESet = this.startPositionESet;
        this.startPosition = START_POSITION_EDEFAULT.clone();
        this.startPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldStartPosition, (Object)START_POSITION_EDEFAULT, oldStartPositionESet));
        }
    }

    public boolean isSetStartPosition() {
        return this.startPositionESet;
    }

    public TransferPropertyEnum getTransferProperty() {
        return this.transferProperty;
    }

    public void setTransferProperty(TransferPropertyEnum newTransferProperty) {
        TransferPropertyEnum oldTransferProperty = this.transferProperty;
        this.transferProperty = newTransferProperty == null ? TRANSFER_PROPERTY_EDEFAULT : newTransferProperty;
        boolean oldTransferPropertyESet = this.transferPropertyESet;
        this.transferPropertyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldTransferProperty, (Object)this.transferProperty, !oldTransferPropertyESet));
        }
    }

    public void unsetTransferProperty() {
        TransferPropertyEnum oldTransferProperty = this.transferProperty;
        boolean oldTransferPropertyESet = this.transferPropertyESet;
        this.transferProperty = TRANSFER_PROPERTY_EDEFAULT;
        this.transferPropertyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldTransferProperty, (Object)TRANSFER_PROPERTY_EDEFAULT, oldTransferPropertyESet));
        }
    }

    public boolean isSetTransferProperty() {
        return this.transferPropertyESet;
    }

    public Integer getUpdateIndicationBitPosition() {
        return (Integer)this.updateIndicationBitPosition.basicGetValue();
    }

    public void setUpdateIndicationBitPosition(Integer newUpdateIndicationBitPosition) {
        Integer oldUpdateIndicationBitPosition = (Integer)this.updateIndicationBitPosition.basicGetValue();
        this.updateIndicationBitPosition.basicSetValue((Object)newUpdateIndicationBitPosition);
        boolean oldUpdateIndicationBitPositionESet = this.updateIndicationBitPositionESet;
        this.updateIndicationBitPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldUpdateIndicationBitPosition, (Object)newUpdateIndicationBitPosition, !oldUpdateIndicationBitPositionESet));
        }
    }

    public void unsetUpdateIndicationBitPosition() {
        Integer oldUpdateIndicationBitPosition = (Integer)this.updateIndicationBitPosition.basicGetValue();
        boolean oldUpdateIndicationBitPositionESet = this.updateIndicationBitPositionESet;
        this.updateIndicationBitPosition = UPDATE_INDICATION_BIT_POSITION_EDEFAULT.clone();
        this.updateIndicationBitPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldUpdateIndicationBitPosition, (Object)UPDATE_INDICATION_BIT_POSITION_EDEFAULT, oldUpdateIndicationBitPositionESet));
        }
    }

    public boolean isSetUpdateIndicationBitPosition() {
        return this.updateIndicationBitPositionESet;
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public IntegerDatatype getStartPositionData() {
        return this.startPosition.clone();
    }

    public void setStartPositionData(IntegerDatatype newStartPosition) {
        this.startPosition.setRadix((int)newStartPosition.getRadix());
        this.startPosition.setNoOfDigits((int)newStartPosition.getNoOfDigits());
        this.setStartPosition(newStartPosition.getValue());
    }

    public IntegerDatatype getUpdateIndicationBitPositionData() {
        return this.updateIndicationBitPosition.clone();
    }

    public void setUpdateIndicationBitPositionData(IntegerDatatype newUpdateIndicationBitPosition) {
        this.updateIndicationBitPosition.setRadix((int)newUpdateIndicationBitPosition.getRadix());
        this.updateIndicationBitPosition.setNoOfDigits((int)newUpdateIndicationBitPosition.getNoOfDigits());
        this.setUpdateIndicationBitPosition(newUpdateIndicationBitPosition.getValue());
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                if (resolve) {
                    return this.getISignalGroup();
                }
                return this.basicGetISignalGroup();
            }
            case 19: {
                if (resolve) {
                    return this.getISignal();
                }
                return this.basicGetISignal();
            }
            case 20: {
                return this.getPackingByteOrder();
            }
            case 21: {
                return this.getStartPosition();
            }
            case 22: {
                return this.getTransferProperty();
            }
            case 23: {
                return this.getUpdateIndicationBitPosition();
            }
            case 24: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setISignalGroup((ISignalGroup)newValue);
                return;
            }
            case 19: {
                this.setISignal((ISignal)newValue);
                return;
            }
            case 20: {
                this.setPackingByteOrder((ByteOrderEnum)((Object)newValue));
                return;
            }
            case 21: {
                this.setStartPosition((Integer)newValue);
                return;
            }
            case 22: {
                this.setTransferProperty((TransferPropertyEnum)((Object)newValue));
                return;
            }
            case 23: {
                this.setUpdateIndicationBitPosition((Integer)newValue);
                return;
            }
            case 24: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setISignalGroup(null);
                return;
            }
            case 19: {
                this.setISignal(null);
                return;
            }
            case 20: {
                this.unsetPackingByteOrder();
                return;
            }
            case 21: {
                this.unsetStartPosition();
                return;
            }
            case 22: {
                this.unsetTransferProperty();
                return;
            }
            case 23: {
                this.unsetUpdateIndicationBitPosition();
                return;
            }
            case 24: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.iSignalGroup != null;
            }
            case 19: {
                return this.iSignal != null;
            }
            case 20: {
                return this.isSetPackingByteOrder();
            }
            case 21: {
                return this.isSetStartPosition();
            }
            case 22: {
                return this.isSetTransferProperty();
            }
            case 23: {
                return this.isSetUpdateIndicationBitPosition();
            }
            case 24: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (packingByteOrder: ");
        if (this.packingByteOrderESet) {
            result.append((Object)this.packingByteOrder);
        } else {
            result.append("<unset>");
        }
        result.append(", startPosition: ");
        if (this.startPositionESet) {
            result.append(this.startPosition);
        } else {
            result.append("<unset>");
        }
        result.append(", transferProperty: ");
        if (this.transferPropertyESet) {
            result.append((Object)this.transferProperty);
        } else {
            result.append("<unset>");
        }
        result.append(", updateIndicationBitPosition: ");
        if (this.updateIndicationBitPositionESet) {
            result.append(this.updateIndicationBitPosition);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

