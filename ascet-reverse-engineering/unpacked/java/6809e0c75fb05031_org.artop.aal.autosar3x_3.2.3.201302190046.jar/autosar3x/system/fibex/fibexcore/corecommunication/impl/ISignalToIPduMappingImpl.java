/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignal;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignalToIPduMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.TransferPropertyEnum;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ISignalToIPduMappingImpl
extends IdentifiableImpl
implements ISignalToIPduMapping,
IReferringClass {
    protected static final ByteOrderEnum PACKING_BYTE_ORDER_EDEFAULT = ByteOrderEnum.MOST_SIGNIFICANT_BYTE_LAST;
    protected ByteOrderEnum packingByteOrder = PACKING_BYTE_ORDER_EDEFAULT;
    protected boolean packingByteOrderESet;
    protected ISignal signal;
    protected static final Integer START_POSITION_EDEFAULT = new Integer(0);
    protected Integer startPosition = START_POSITION_EDEFAULT;
    protected boolean startPositionESet;
    protected static final TransferPropertyEnum TRANSFER_PROPERTY_EDEFAULT = TransferPropertyEnum.TRIGGERED;
    protected TransferPropertyEnum transferProperty = TRANSFER_PROPERTY_EDEFAULT;
    protected boolean transferPropertyESet;
    protected static final Integer UPDATE_INDICATION_BIT_POSITION_EDEFAULT = new Integer(0);
    protected Integer updateIndicationBitPosition = UPDATE_INDICATION_BIT_POSITION_EDEFAULT;
    protected boolean updateIndicationBitPositionESet;

    protected ISignalToIPduMappingImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.ISIGNAL_TO_IPDU_MAPPING;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldPackingByteOrder, (Object)this.packingByteOrder, !oldPackingByteOrderESet));
        }
    }

    public void unsetPackingByteOrder() {
        ByteOrderEnum oldPackingByteOrder = this.packingByteOrder;
        boolean oldPackingByteOrderESet = this.packingByteOrderESet;
        this.packingByteOrder = PACKING_BYTE_ORDER_EDEFAULT;
        this.packingByteOrderESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldPackingByteOrder, (Object)PACKING_BYTE_ORDER_EDEFAULT, oldPackingByteOrderESet));
        }
    }

    public boolean isSetPackingByteOrder() {
        return this.packingByteOrderESet;
    }

    public ISignal getSignal() {
        if (this.signal != null && this.signal.eIsProxy()) {
            InternalEObject oldSignal = (InternalEObject)this.signal;
            this.signal = (ISignal)this.eResolveProxy(oldSignal);
            if (this.signal != oldSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldSignal, (Object)this.signal));
            }
        }
        return this.signal;
    }

    public ISignal basicGetSignal() {
        return this.signal;
    }

    public void setSignal(ISignal newSignal) {
        ISignal oldSignal = this.signal;
        this.signal = newSignal;
        AutosarObjectUtil.setDest((EObject)this, (int)18, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldSignal, (Object)this.signal));
        }
    }

    public Integer getStartPosition() {
        return this.startPosition;
    }

    public void setStartPosition(Integer newStartPosition) {
        Integer oldStartPosition = this.startPosition;
        this.startPosition = newStartPosition;
        boolean oldStartPositionESet = this.startPositionESet;
        this.startPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldStartPosition, (Object)this.startPosition, !oldStartPositionESet));
        }
    }

    public void unsetStartPosition() {
        Integer oldStartPosition = this.startPosition;
        boolean oldStartPositionESet = this.startPositionESet;
        this.startPosition = START_POSITION_EDEFAULT;
        this.startPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldStartPosition, (Object)START_POSITION_EDEFAULT, oldStartPositionESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldTransferProperty, (Object)this.transferProperty, !oldTransferPropertyESet));
        }
    }

    public void unsetTransferProperty() {
        TransferPropertyEnum oldTransferProperty = this.transferProperty;
        boolean oldTransferPropertyESet = this.transferPropertyESet;
        this.transferProperty = TRANSFER_PROPERTY_EDEFAULT;
        this.transferPropertyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldTransferProperty, (Object)TRANSFER_PROPERTY_EDEFAULT, oldTransferPropertyESet));
        }
    }

    public boolean isSetTransferProperty() {
        return this.transferPropertyESet;
    }

    public Integer getUpdateIndicationBitPosition() {
        return this.updateIndicationBitPosition;
    }

    public void setUpdateIndicationBitPosition(Integer newUpdateIndicationBitPosition) {
        Integer oldUpdateIndicationBitPosition = this.updateIndicationBitPosition;
        this.updateIndicationBitPosition = newUpdateIndicationBitPosition;
        boolean oldUpdateIndicationBitPositionESet = this.updateIndicationBitPositionESet;
        this.updateIndicationBitPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldUpdateIndicationBitPosition, (Object)this.updateIndicationBitPosition, !oldUpdateIndicationBitPositionESet));
        }
    }

    public void unsetUpdateIndicationBitPosition() {
        Integer oldUpdateIndicationBitPosition = this.updateIndicationBitPosition;
        boolean oldUpdateIndicationBitPositionESet = this.updateIndicationBitPositionESet;
        this.updateIndicationBitPosition = UPDATE_INDICATION_BIT_POSITION_EDEFAULT;
        this.updateIndicationBitPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldUpdateIndicationBitPosition, (Object)UPDATE_INDICATION_BIT_POSITION_EDEFAULT, oldUpdateIndicationBitPositionESet));
        }
    }

    public boolean isSetUpdateIndicationBitPosition() {
        return this.updateIndicationBitPositionESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getPackingByteOrder();
            }
            case 18: {
                if (resolve) {
                    return this.getSignal();
                }
                return this.basicGetSignal();
            }
            case 19: {
                return this.getStartPosition();
            }
            case 20: {
                return this.getTransferProperty();
            }
            case 21: {
                return this.getUpdateIndicationBitPosition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setPackingByteOrder((ByteOrderEnum)((Object)newValue));
                return;
            }
            case 18: {
                this.setSignal((ISignal)newValue);
                return;
            }
            case 19: {
                this.setStartPosition((Integer)newValue);
                return;
            }
            case 20: {
                this.setTransferProperty((TransferPropertyEnum)((Object)newValue));
                return;
            }
            case 21: {
                this.setUpdateIndicationBitPosition((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.unsetPackingByteOrder();
                return;
            }
            case 18: {
                this.setSignal(null);
                return;
            }
            case 19: {
                this.unsetStartPosition();
                return;
            }
            case 20: {
                this.unsetTransferProperty();
                return;
            }
            case 21: {
                this.unsetUpdateIndicationBitPosition();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.isSetPackingByteOrder();
            }
            case 18: {
                return this.signal != null;
            }
            case 19: {
                return this.isSetStartPosition();
            }
            case 20: {
                return this.isSetTransferProperty();
            }
            case 21: {
                return this.isSetUpdateIndicationBitPosition();
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

