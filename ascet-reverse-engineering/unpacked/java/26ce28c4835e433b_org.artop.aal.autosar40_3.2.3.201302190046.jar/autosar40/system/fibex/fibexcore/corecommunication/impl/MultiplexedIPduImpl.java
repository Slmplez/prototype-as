/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.primitivetypes.ByteOrderEnum;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.DynamicPart;
import autosar40.system.fibex.fibexcore.corecommunication.MultiplexedIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.StaticPart;
import autosar40.system.fibex.fibexcore.corecommunication.TriggerMode;
import autosar40.system.fibex.fibexcore.corecommunication.impl.IPduImpl;
import java.util.Collection;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MultiplexedIPduImpl
extends IPduImpl
implements MultiplexedIPdu {
    protected EList<DynamicPart> dynamicParts;
    protected static final ByteOrderEnum SELECTOR_FIELD_BYTE_ORDER_EDEFAULT = ByteOrderEnum.MOST_SIGNIFICANT_BYTE_FIRST;
    protected ByteOrderEnum selectorFieldByteOrder = SELECTOR_FIELD_BYTE_ORDER_EDEFAULT;
    protected boolean selectorFieldByteOrderESet;
    protected static final IntegerDatatype SELECTOR_FIELD_LENGTH_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype selectorFieldLength = SELECTOR_FIELD_LENGTH_EDEFAULT.clone();
    protected boolean selectorFieldLengthESet;
    protected static final IntegerDatatype SELECTOR_FIELD_START_POSITION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype selectorFieldStartPosition = SELECTOR_FIELD_START_POSITION_EDEFAULT.clone();
    protected boolean selectorFieldStartPositionESet;
    protected EList<StaticPart> staticParts;
    protected static final TriggerMode TRIGGER_MODE_EDEFAULT = TriggerMode.NONE;
    protected TriggerMode triggerMode = TRIGGER_MODE_EDEFAULT;
    protected boolean triggerModeESet;
    protected static final IntegerDatatype UNUSED_BIT_PATTERN_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype unusedBitPattern = UNUSED_BIT_PATTERN_EDEFAULT.clone();
    protected boolean unusedBitPatternESet;

    protected MultiplexedIPduImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.MULTIPLEXED_IPDU;
    }

    @Override
    public EList<DynamicPart> getDynamicParts() {
        if (this.dynamicParts == null) {
            this.dynamicParts = new EObjectContainmentWithInverseEList(DynamicPart.class, (InternalEObject)this, 22, 5);
        }
        return this.dynamicParts;
    }

    @Override
    public ByteOrderEnum getSelectorFieldByteOrder() {
        return this.selectorFieldByteOrder;
    }

    @Override
    public void setSelectorFieldByteOrder(ByteOrderEnum newSelectorFieldByteOrder) {
        ByteOrderEnum oldSelectorFieldByteOrder = this.selectorFieldByteOrder;
        this.selectorFieldByteOrder = newSelectorFieldByteOrder == null ? SELECTOR_FIELD_BYTE_ORDER_EDEFAULT : newSelectorFieldByteOrder;
        boolean oldSelectorFieldByteOrderESet = this.selectorFieldByteOrderESet;
        this.selectorFieldByteOrderESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldSelectorFieldByteOrder, (Object)this.selectorFieldByteOrder, !oldSelectorFieldByteOrderESet));
        }
    }

    @Override
    public void unsetSelectorFieldByteOrder() {
        ByteOrderEnum oldSelectorFieldByteOrder = this.selectorFieldByteOrder;
        boolean oldSelectorFieldByteOrderESet = this.selectorFieldByteOrderESet;
        this.selectorFieldByteOrder = SELECTOR_FIELD_BYTE_ORDER_EDEFAULT;
        this.selectorFieldByteOrderESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldSelectorFieldByteOrder, (Object)SELECTOR_FIELD_BYTE_ORDER_EDEFAULT, oldSelectorFieldByteOrderESet));
        }
    }

    @Override
    public boolean isSetSelectorFieldByteOrder() {
        return this.selectorFieldByteOrderESet;
    }

    @Override
    public Integer getSelectorFieldLength() {
        return (Integer)this.selectorFieldLength.basicGetValue();
    }

    @Override
    public void setSelectorFieldLength(Integer newSelectorFieldLength) {
        Integer oldSelectorFieldLength = (Integer)this.selectorFieldLength.basicGetValue();
        this.selectorFieldLength.basicSetValue((Object)newSelectorFieldLength);
        boolean oldSelectorFieldLengthESet = this.selectorFieldLengthESet;
        this.selectorFieldLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldSelectorFieldLength, (Object)newSelectorFieldLength, !oldSelectorFieldLengthESet));
        }
    }

    @Override
    public void unsetSelectorFieldLength() {
        Integer oldSelectorFieldLength = (Integer)this.selectorFieldLength.basicGetValue();
        boolean oldSelectorFieldLengthESet = this.selectorFieldLengthESet;
        this.selectorFieldLength = SELECTOR_FIELD_LENGTH_EDEFAULT.clone();
        this.selectorFieldLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldSelectorFieldLength, (Object)SELECTOR_FIELD_LENGTH_EDEFAULT, oldSelectorFieldLengthESet));
        }
    }

    @Override
    public boolean isSetSelectorFieldLength() {
        return this.selectorFieldLengthESet;
    }

    @Override
    public Integer getSelectorFieldStartPosition() {
        return (Integer)this.selectorFieldStartPosition.basicGetValue();
    }

    @Override
    public void setSelectorFieldStartPosition(Integer newSelectorFieldStartPosition) {
        Integer oldSelectorFieldStartPosition = (Integer)this.selectorFieldStartPosition.basicGetValue();
        this.selectorFieldStartPosition.basicSetValue((Object)newSelectorFieldStartPosition);
        boolean oldSelectorFieldStartPositionESet = this.selectorFieldStartPositionESet;
        this.selectorFieldStartPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldSelectorFieldStartPosition, (Object)newSelectorFieldStartPosition, !oldSelectorFieldStartPositionESet));
        }
    }

    @Override
    public void unsetSelectorFieldStartPosition() {
        Integer oldSelectorFieldStartPosition = (Integer)this.selectorFieldStartPosition.basicGetValue();
        boolean oldSelectorFieldStartPositionESet = this.selectorFieldStartPositionESet;
        this.selectorFieldStartPosition = SELECTOR_FIELD_START_POSITION_EDEFAULT.clone();
        this.selectorFieldStartPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldSelectorFieldStartPosition, (Object)SELECTOR_FIELD_START_POSITION_EDEFAULT, oldSelectorFieldStartPositionESet));
        }
    }

    @Override
    public boolean isSetSelectorFieldStartPosition() {
        return this.selectorFieldStartPositionESet;
    }

    @Override
    public EList<StaticPart> getStaticParts() {
        if (this.staticParts == null) {
            this.staticParts = new EObjectContainmentWithInverseEList(StaticPart.class, (InternalEObject)this, 26, 5);
        }
        return this.staticParts;
    }

    @Override
    public TriggerMode getTriggerMode() {
        return this.triggerMode;
    }

    @Override
    public void setTriggerMode(TriggerMode newTriggerMode) {
        TriggerMode oldTriggerMode = this.triggerMode;
        this.triggerMode = newTriggerMode == null ? TRIGGER_MODE_EDEFAULT : newTriggerMode;
        boolean oldTriggerModeESet = this.triggerModeESet;
        this.triggerModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldTriggerMode, (Object)this.triggerMode, !oldTriggerModeESet));
        }
    }

    @Override
    public void unsetTriggerMode() {
        TriggerMode oldTriggerMode = this.triggerMode;
        boolean oldTriggerModeESet = this.triggerModeESet;
        this.triggerMode = TRIGGER_MODE_EDEFAULT;
        this.triggerModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldTriggerMode, (Object)TRIGGER_MODE_EDEFAULT, oldTriggerModeESet));
        }
    }

    @Override
    public boolean isSetTriggerMode() {
        return this.triggerModeESet;
    }

    @Override
    public Integer getUnusedBitPattern() {
        return (Integer)this.unusedBitPattern.basicGetValue();
    }

    @Override
    public void setUnusedBitPattern(Integer newUnusedBitPattern) {
        Integer oldUnusedBitPattern = (Integer)this.unusedBitPattern.basicGetValue();
        this.unusedBitPattern.basicSetValue((Object)newUnusedBitPattern);
        boolean oldUnusedBitPatternESet = this.unusedBitPatternESet;
        this.unusedBitPatternESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldUnusedBitPattern, (Object)newUnusedBitPattern, !oldUnusedBitPatternESet));
        }
    }

    @Override
    public void unsetUnusedBitPattern() {
        Integer oldUnusedBitPattern = (Integer)this.unusedBitPattern.basicGetValue();
        boolean oldUnusedBitPatternESet = this.unusedBitPatternESet;
        this.unusedBitPattern = UNUSED_BIT_PATTERN_EDEFAULT.clone();
        this.unusedBitPatternESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldUnusedBitPattern, (Object)UNUSED_BIT_PATTERN_EDEFAULT, oldUnusedBitPatternESet));
        }
    }

    @Override
    public boolean isSetUnusedBitPattern() {
        return this.unusedBitPatternESet;
    }

    @Override
    public IntegerDatatype getSelectorFieldLengthData() {
        return this.selectorFieldLength.clone();
    }

    @Override
    public void setSelectorFieldLengthData(IntegerDatatype newSelectorFieldLength) {
        this.selectorFieldLength.setRadix((int)newSelectorFieldLength.getRadix());
        this.selectorFieldLength.setNoOfDigits((int)newSelectorFieldLength.getNoOfDigits());
        this.setSelectorFieldLength(newSelectorFieldLength.getValue());
    }

    @Override
    public IntegerDatatype getSelectorFieldStartPositionData() {
        return this.selectorFieldStartPosition.clone();
    }

    @Override
    public void setSelectorFieldStartPositionData(IntegerDatatype newSelectorFieldStartPosition) {
        this.selectorFieldStartPosition.setRadix((int)newSelectorFieldStartPosition.getRadix());
        this.selectorFieldStartPosition.setNoOfDigits((int)newSelectorFieldStartPosition.getNoOfDigits());
        this.setSelectorFieldStartPosition(newSelectorFieldStartPosition.getValue());
    }

    @Override
    public IntegerDatatype getUnusedBitPatternData() {
        return this.unusedBitPattern.clone();
    }

    @Override
    public void setUnusedBitPatternData(IntegerDatatype newUnusedBitPattern) {
        this.unusedBitPattern.setRadix((int)newUnusedBitPattern.getRadix());
        this.unusedBitPattern.setNoOfDigits((int)newUnusedBitPattern.getNoOfDigits());
        this.setUnusedBitPattern(newUnusedBitPattern.getValue());
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getDynamicParts()).basicAdd((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getStaticParts()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getDynamicParts()).basicRemove((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getStaticParts()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getDynamicParts();
            }
            case 23: {
                return this.getSelectorFieldByteOrder();
            }
            case 24: {
                return this.getSelectorFieldLength();
            }
            case 25: {
                return this.getSelectorFieldStartPosition();
            }
            case 26: {
                return this.getStaticParts();
            }
            case 27: {
                return this.getTriggerMode();
            }
            case 28: {
                return this.getUnusedBitPattern();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.getDynamicParts().clear();
                this.getDynamicParts().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.setSelectorFieldByteOrder((ByteOrderEnum)((Object)newValue));
                return;
            }
            case 24: {
                this.setSelectorFieldLength((Integer)newValue);
                return;
            }
            case 25: {
                this.setSelectorFieldStartPosition((Integer)newValue);
                return;
            }
            case 26: {
                this.getStaticParts().clear();
                this.getStaticParts().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.setTriggerMode((TriggerMode)((Object)newValue));
                return;
            }
            case 28: {
                this.setUnusedBitPattern((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.getDynamicParts().clear();
                return;
            }
            case 23: {
                this.unsetSelectorFieldByteOrder();
                return;
            }
            case 24: {
                this.unsetSelectorFieldLength();
                return;
            }
            case 25: {
                this.unsetSelectorFieldStartPosition();
                return;
            }
            case 26: {
                this.getStaticParts().clear();
                return;
            }
            case 27: {
                this.unsetTriggerMode();
                return;
            }
            case 28: {
                this.unsetUnusedBitPattern();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.dynamicParts != null && !this.dynamicParts.isEmpty();
            }
            case 23: {
                return this.isSetSelectorFieldByteOrder();
            }
            case 24: {
                return this.isSetSelectorFieldLength();
            }
            case 25: {
                return this.isSetSelectorFieldStartPosition();
            }
            case 26: {
                return this.staticParts != null && !this.staticParts.isEmpty();
            }
            case 27: {
                return this.isSetTriggerMode();
            }
            case 28: {
                return this.isSetUnusedBitPattern();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
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
        result.append(", unusedBitPattern: ");
        if (this.unusedBitPatternESet) {
            result.append(this.unusedBitPattern);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

