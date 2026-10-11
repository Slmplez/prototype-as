/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.Frame;
import autosar3x.system.fibex.fibexcore.corecommunication.Pdu;
import autosar3x.system.fibex.fibexcore.corecommunication.PduToFrameMapping;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class PduToFrameMappingImpl
extends IdentifiableImpl
implements PduToFrameMapping,
IReferringClass {
    protected static final ByteOrderEnum PACKING_BYTE_ORDER_EDEFAULT = ByteOrderEnum.MOST_SIGNIFICANT_BYTE_LAST;
    protected ByteOrderEnum packingByteOrder = PACKING_BYTE_ORDER_EDEFAULT;
    protected boolean packingByteOrderESet;
    protected Pdu pdu;
    protected static final Integer START_POSITION_EDEFAULT = new Integer(0);
    protected Integer startPosition = START_POSITION_EDEFAULT;
    protected boolean startPositionESet;
    protected static final Integer UPDATE_INDICATION_BIT_POSITION_EDEFAULT = new Integer(0);
    protected Integer updateIndicationBitPosition = UPDATE_INDICATION_BIT_POSITION_EDEFAULT;
    protected boolean updateIndicationBitPositionESet;

    protected PduToFrameMappingImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.PDU_TO_FRAME_MAPPING;
    }

    public Frame getFrame() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (Frame)this.eContainer();
    }

    public NotificationChain basicSetFrame(Frame newFrame, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFrame, 17, msgs);
        return msgs;
    }

    public void setFrame(Frame newFrame) {
        if (newFrame != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newFrame != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFrame)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFrame != null) {
                msgs = ((InternalEObject)newFrame).eInverseAdd((InternalEObject)this, 20, Frame.class, msgs);
            }
            if ((msgs = this.basicSetFrame(newFrame, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newFrame, (Object)newFrame));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldPackingByteOrder, (Object)this.packingByteOrder, !oldPackingByteOrderESet));
        }
    }

    public void unsetPackingByteOrder() {
        ByteOrderEnum oldPackingByteOrder = this.packingByteOrder;
        boolean oldPackingByteOrderESet = this.packingByteOrderESet;
        this.packingByteOrder = PACKING_BYTE_ORDER_EDEFAULT;
        this.packingByteOrderESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldPackingByteOrder, (Object)PACKING_BYTE_ORDER_EDEFAULT, oldPackingByteOrderESet));
        }
    }

    public boolean isSetPackingByteOrder() {
        return this.packingByteOrderESet;
    }

    public Pdu getPdu() {
        if (this.pdu != null && this.pdu.eIsProxy()) {
            InternalEObject oldPdu = (InternalEObject)this.pdu;
            this.pdu = (Pdu)this.eResolveProxy(oldPdu);
            if (this.pdu != oldPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldPdu, (Object)this.pdu));
            }
        }
        return this.pdu;
    }

    public Pdu basicGetPdu() {
        return this.pdu;
    }

    public void setPdu(Pdu newPdu) {
        Pdu oldPdu = this.pdu;
        this.pdu = newPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldPdu, (Object)this.pdu));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldStartPosition, (Object)this.startPosition, !oldStartPositionESet));
        }
    }

    public void unsetStartPosition() {
        Integer oldStartPosition = this.startPosition;
        boolean oldStartPositionESet = this.startPositionESet;
        this.startPosition = START_POSITION_EDEFAULT;
        this.startPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldStartPosition, (Object)START_POSITION_EDEFAULT, oldStartPositionESet));
        }
    }

    public boolean isSetStartPosition() {
        return this.startPositionESet;
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

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFrame((Frame)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetFrame(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, Frame.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getFrame();
            }
            case 18: {
                return this.getPackingByteOrder();
            }
            case 19: {
                if (resolve) {
                    return this.getPdu();
                }
                return this.basicGetPdu();
            }
            case 20: {
                return this.getStartPosition();
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
                this.setFrame((Frame)newValue);
                return;
            }
            case 18: {
                this.setPackingByteOrder((ByteOrderEnum)((Object)newValue));
                return;
            }
            case 19: {
                this.setPdu((Pdu)newValue);
                return;
            }
            case 20: {
                this.setStartPosition((Integer)newValue);
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
                this.setFrame(null);
                return;
            }
            case 18: {
                this.unsetPackingByteOrder();
                return;
            }
            case 19: {
                this.setPdu(null);
                return;
            }
            case 20: {
                this.unsetStartPosition();
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
                return this.getFrame() != null;
            }
            case 18: {
                return this.isSetPackingByteOrder();
            }
            case 19: {
                return this.pdu != null;
            }
            case 20: {
                return this.isSetStartPosition();
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

