/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.DynamicPart;
import autosar3x.system.fibex.fibexcore.corecommunication.MultiplexedIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.StaticPart;
import autosar3x.system.fibex.fibexcore.corecommunication.TriggerMode;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.IPduImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class MultiplexedIPduImpl
extends IPduImpl
implements MultiplexedIPdu {
    protected DynamicPart dynamicPart;
    protected static final ByteOrderEnum SELECTOR_FIELD_BYTE_ORDER_EDEFAULT = ByteOrderEnum.MOST_SIGNIFICANT_BYTE_LAST;
    protected ByteOrderEnum selectorFieldByteOrder = SELECTOR_FIELD_BYTE_ORDER_EDEFAULT;
    protected boolean selectorFieldByteOrderESet;
    protected static final Integer SELECTOR_FIELD_LENGTH_EDEFAULT = new Integer(0);
    protected Integer selectorFieldLength = SELECTOR_FIELD_LENGTH_EDEFAULT;
    protected boolean selectorFieldLengthESet;
    protected static final Integer SELECTOR_FIELD_START_POSITION_EDEFAULT = new Integer(0);
    protected Integer selectorFieldStartPosition = SELECTOR_FIELD_START_POSITION_EDEFAULT;
    protected boolean selectorFieldStartPositionESet;
    protected StaticPart staticPart;
    protected static final TriggerMode TRIGGER_MODE_EDEFAULT = TriggerMode.NONE;
    protected TriggerMode triggerMode = TRIGGER_MODE_EDEFAULT;
    protected boolean triggerModeESet;

    protected MultiplexedIPduImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.MULTIPLEXED_IPDU;
    }

    public DynamicPart getDynamicPart() {
        return this.dynamicPart;
    }

    public NotificationChain basicSetDynamicPart(DynamicPart newDynamicPart, NotificationChain msgs) {
        DynamicPart oldDynamicPart = this.dynamicPart;
        this.dynamicPart = newDynamicPart;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldDynamicPart, (Object)newDynamicPart);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setDynamicPart(DynamicPart newDynamicPart) {
        if (newDynamicPart != this.dynamicPart) {
            NotificationChain msgs = null;
            if (this.dynamicPart != null) {
                msgs = ((InternalEObject)this.dynamicPart).eInverseRemove((InternalEObject)this, 5, DynamicPart.class, msgs);
            }
            if (newDynamicPart != null) {
                msgs = ((InternalEObject)newDynamicPart).eInverseAdd((InternalEObject)this, 5, DynamicPart.class, msgs);
            }
            if ((msgs = this.basicSetDynamicPart(newDynamicPart, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newDynamicPart, (Object)newDynamicPart));
        }
    }

    public ByteOrderEnum getSelectorFieldByteOrder() {
        return this.selectorFieldByteOrder;
    }

    public void setSelectorFieldByteOrder(ByteOrderEnum newSelectorFieldByteOrder) {
        ByteOrderEnum oldSelectorFieldByteOrder = this.selectorFieldByteOrder;
        this.selectorFieldByteOrder = newSelectorFieldByteOrder == null ? SELECTOR_FIELD_BYTE_ORDER_EDEFAULT : newSelectorFieldByteOrder;
        boolean oldSelectorFieldByteOrderESet = this.selectorFieldByteOrderESet;
        this.selectorFieldByteOrderESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldSelectorFieldByteOrder, (Object)this.selectorFieldByteOrder, !oldSelectorFieldByteOrderESet));
        }
    }

    public void unsetSelectorFieldByteOrder() {
        ByteOrderEnum oldSelectorFieldByteOrder = this.selectorFieldByteOrder;
        boolean oldSelectorFieldByteOrderESet = this.selectorFieldByteOrderESet;
        this.selectorFieldByteOrder = SELECTOR_FIELD_BYTE_ORDER_EDEFAULT;
        this.selectorFieldByteOrderESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldSelectorFieldByteOrder, (Object)SELECTOR_FIELD_BYTE_ORDER_EDEFAULT, oldSelectorFieldByteOrderESet));
        }
    }

    public boolean isSetSelectorFieldByteOrder() {
        return this.selectorFieldByteOrderESet;
    }

    public Integer getSelectorFieldLength() {
        return this.selectorFieldLength;
    }

    public void setSelectorFieldLength(Integer newSelectorFieldLength) {
        Integer oldSelectorFieldLength = this.selectorFieldLength;
        this.selectorFieldLength = newSelectorFieldLength;
        boolean oldSelectorFieldLengthESet = this.selectorFieldLengthESet;
        this.selectorFieldLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldSelectorFieldLength, (Object)this.selectorFieldLength, !oldSelectorFieldLengthESet));
        }
    }

    public void unsetSelectorFieldLength() {
        Integer oldSelectorFieldLength = this.selectorFieldLength;
        boolean oldSelectorFieldLengthESet = this.selectorFieldLengthESet;
        this.selectorFieldLength = SELECTOR_FIELD_LENGTH_EDEFAULT;
        this.selectorFieldLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldSelectorFieldLength, (Object)SELECTOR_FIELD_LENGTH_EDEFAULT, oldSelectorFieldLengthESet));
        }
    }

    public boolean isSetSelectorFieldLength() {
        return this.selectorFieldLengthESet;
    }

    public Integer getSelectorFieldStartPosition() {
        return this.selectorFieldStartPosition;
    }

    public void setSelectorFieldStartPosition(Integer newSelectorFieldStartPosition) {
        Integer oldSelectorFieldStartPosition = this.selectorFieldStartPosition;
        this.selectorFieldStartPosition = newSelectorFieldStartPosition;
        boolean oldSelectorFieldStartPositionESet = this.selectorFieldStartPositionESet;
        this.selectorFieldStartPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldSelectorFieldStartPosition, (Object)this.selectorFieldStartPosition, !oldSelectorFieldStartPositionESet));
        }
    }

    public void unsetSelectorFieldStartPosition() {
        Integer oldSelectorFieldStartPosition = this.selectorFieldStartPosition;
        boolean oldSelectorFieldStartPositionESet = this.selectorFieldStartPositionESet;
        this.selectorFieldStartPosition = SELECTOR_FIELD_START_POSITION_EDEFAULT;
        this.selectorFieldStartPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldSelectorFieldStartPosition, (Object)SELECTOR_FIELD_START_POSITION_EDEFAULT, oldSelectorFieldStartPositionESet));
        }
    }

    public boolean isSetSelectorFieldStartPosition() {
        return this.selectorFieldStartPositionESet;
    }

    public StaticPart getStaticPart() {
        return this.staticPart;
    }

    public NotificationChain basicSetStaticPart(StaticPart newStaticPart, NotificationChain msgs) {
        StaticPart oldStaticPart = this.staticPart;
        this.staticPart = newStaticPart;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldStaticPart, (Object)newStaticPart);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setStaticPart(StaticPart newStaticPart) {
        if (newStaticPart != this.staticPart) {
            NotificationChain msgs = null;
            if (this.staticPart != null) {
                msgs = ((InternalEObject)this.staticPart).eInverseRemove((InternalEObject)this, 5, StaticPart.class, msgs);
            }
            if (newStaticPart != null) {
                msgs = ((InternalEObject)newStaticPart).eInverseAdd((InternalEObject)this, 5, StaticPart.class, msgs);
            }
            if ((msgs = this.basicSetStaticPart(newStaticPart, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)newStaticPart, (Object)newStaticPart));
        }
    }

    public TriggerMode getTriggerMode() {
        return this.triggerMode;
    }

    public void setTriggerMode(TriggerMode newTriggerMode) {
        TriggerMode oldTriggerMode = this.triggerMode;
        this.triggerMode = newTriggerMode == null ? TRIGGER_MODE_EDEFAULT : newTriggerMode;
        boolean oldTriggerModeESet = this.triggerModeESet;
        this.triggerModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldTriggerMode, (Object)this.triggerMode, !oldTriggerModeESet));
        }
    }

    public void unsetTriggerMode() {
        TriggerMode oldTriggerMode = this.triggerMode;
        boolean oldTriggerModeESet = this.triggerModeESet;
        this.triggerMode = TRIGGER_MODE_EDEFAULT;
        this.triggerModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldTriggerMode, (Object)TRIGGER_MODE_EDEFAULT, oldTriggerModeESet));
        }
    }

    public boolean isSetTriggerMode() {
        return this.triggerModeESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                if (this.dynamicPart != null) {
                    msgs = ((InternalEObject)this.dynamicPart).eInverseRemove((InternalEObject)this, -22, null, msgs);
                }
                return this.basicSetDynamicPart((DynamicPart)otherEnd, msgs);
            }
            case 25: {
                if (this.staticPart != null) {
                    msgs = ((InternalEObject)this.staticPart).eInverseRemove((InternalEObject)this, -26, null, msgs);
                }
                return this.basicSetStaticPart((StaticPart)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return this.basicSetDynamicPart(null, msgs);
            }
            case 25: {
                return this.basicSetStaticPart(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getDynamicPart();
            }
            case 22: {
                return this.getSelectorFieldByteOrder();
            }
            case 23: {
                return this.getSelectorFieldLength();
            }
            case 24: {
                return this.getSelectorFieldStartPosition();
            }
            case 25: {
                return this.getStaticPart();
            }
            case 26: {
                return this.getTriggerMode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setDynamicPart((DynamicPart)newValue);
                return;
            }
            case 22: {
                this.setSelectorFieldByteOrder((ByteOrderEnum)((Object)newValue));
                return;
            }
            case 23: {
                this.setSelectorFieldLength((Integer)newValue);
                return;
            }
            case 24: {
                this.setSelectorFieldStartPosition((Integer)newValue);
                return;
            }
            case 25: {
                this.setStaticPart((StaticPart)newValue);
                return;
            }
            case 26: {
                this.setTriggerMode((TriggerMode)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setDynamicPart(null);
                return;
            }
            case 22: {
                this.unsetSelectorFieldByteOrder();
                return;
            }
            case 23: {
                this.unsetSelectorFieldLength();
                return;
            }
            case 24: {
                this.unsetSelectorFieldStartPosition();
                return;
            }
            case 25: {
                this.setStaticPart(null);
                return;
            }
            case 26: {
                this.unsetTriggerMode();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.dynamicPart != null;
            }
            case 22: {
                return this.isSetSelectorFieldByteOrder();
            }
            case 23: {
                return this.isSetSelectorFieldLength();
            }
            case 24: {
                return this.isSetSelectorFieldStartPosition();
            }
            case 25: {
                return this.staticPart != null;
            }
            case 26: {
                return this.isSetTriggerMode();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (selectorFieldByteOrder: ");
        if (this.selectorFieldByteOrderESet) {
            result.append((Object)this.selectorFieldByteOrder);
        } else {
            result.append("<unset>");
        }
        result.append(", selectorFieldLength: ");
        if (this.selectorFieldLengthESet) {
            result.append(this.selectorFieldLength);
        } else {
            result.append("<unset>");
        }
        result.append(", selectorFieldStartPosition: ");
        if (this.selectorFieldStartPositionESet) {
            result.append(this.selectorFieldStartPosition);
        } else {
            result.append("<unset>");
        }
        result.append(", triggerMode: ");
        if (this.triggerModeESet) {
            result.append((Object)this.triggerMode);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

