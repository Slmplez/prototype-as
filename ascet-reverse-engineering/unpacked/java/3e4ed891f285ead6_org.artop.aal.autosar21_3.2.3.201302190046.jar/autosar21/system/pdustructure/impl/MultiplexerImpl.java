/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.pdustructure.impl;

import autosar21.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.pdustructure.Multiplexer;
import autosar21.system.pdustructure.PDUType;
import autosar21.system.pdustructure.PdustructurePackage;
import autosar21.system.pdustructure.SubPDU;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MultiplexerImpl
extends ARObjectImpl
implements Multiplexer {
    protected EList<SubPDU> datas;
    protected static final ByteOrderEnum SELECTOR_FIELD_BYTE_ORDER_EDEFAULT = ByteOrderEnum.MOST_SIGNIFICANT_BYTE_LAST;
    protected ByteOrderEnum selectorFieldByteOrder = SELECTOR_FIELD_BYTE_ORDER_EDEFAULT;
    protected boolean selectorFieldByteOrderESet;
    protected static final Integer SELECTOR_FIELD_LENGTH_EDEFAULT = new Integer(0);
    protected Integer selectorFieldLength = SELECTOR_FIELD_LENGTH_EDEFAULT;
    protected boolean selectorFieldLengthESet;
    protected static final Integer SELECTOR_FIELD_START_POSITION_EDEFAULT = new Integer(0);
    protected Integer selectorFieldStartPosition = SELECTOR_FIELD_START_POSITION_EDEFAULT;
    protected boolean selectorFieldStartPositionESet;

    protected MultiplexerImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PdustructurePackage.Literals.MULTIPLEXER;
    }

    @Override
    public PDUType getPDUType() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (PDUType)this.eContainer();
    }

    public NotificationChain basicSetPDUType(PDUType newPDUType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPDUType, 4, msgs);
        return msgs;
    }

    @Override
    public void setPDUType(PDUType newPDUType) {
        if (newPDUType != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newPDUType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPDUType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPDUType != null) {
                msgs = ((InternalEObject)newPDUType).eInverseAdd((InternalEObject)this, 19, PDUType.class, msgs);
            }
            if ((msgs = this.basicSetPDUType(newPDUType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPDUType, (Object)newPDUType));
        }
    }

    @Override
    public EList<SubPDU> getDatas() {
        if (this.datas == null) {
            this.datas = new EObjectContainmentEList(SubPDU.class, (InternalEObject)this, 5);
        }
        return this.datas;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSelectorFieldByteOrder, (Object)this.selectorFieldByteOrder, !oldSelectorFieldByteOrderESet));
        }
    }

    @Override
    public void unsetSelectorFieldByteOrder() {
        ByteOrderEnum oldSelectorFieldByteOrder = this.selectorFieldByteOrder;
        boolean oldSelectorFieldByteOrderESet = this.selectorFieldByteOrderESet;
        this.selectorFieldByteOrder = SELECTOR_FIELD_BYTE_ORDER_EDEFAULT;
        this.selectorFieldByteOrderESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldSelectorFieldByteOrder, (Object)SELECTOR_FIELD_BYTE_ORDER_EDEFAULT, oldSelectorFieldByteOrderESet));
        }
    }

    @Override
    public boolean isSetSelectorFieldByteOrder() {
        return this.selectorFieldByteOrderESet;
    }

    @Override
    public Integer getSelectorFieldLength() {
        return this.selectorFieldLength;
    }

    @Override
    public void setSelectorFieldLength(Integer newSelectorFieldLength) {
        Integer oldSelectorFieldLength = this.selectorFieldLength;
        this.selectorFieldLength = newSelectorFieldLength;
        boolean oldSelectorFieldLengthESet = this.selectorFieldLengthESet;
        this.selectorFieldLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSelectorFieldLength, (Object)this.selectorFieldLength, !oldSelectorFieldLengthESet));
        }
    }

    @Override
    public void unsetSelectorFieldLength() {
        Integer oldSelectorFieldLength = this.selectorFieldLength;
        boolean oldSelectorFieldLengthESet = this.selectorFieldLengthESet;
        this.selectorFieldLength = SELECTOR_FIELD_LENGTH_EDEFAULT;
        this.selectorFieldLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldSelectorFieldLength, (Object)SELECTOR_FIELD_LENGTH_EDEFAULT, oldSelectorFieldLengthESet));
        }
    }

    @Override
    public boolean isSetSelectorFieldLength() {
        return this.selectorFieldLengthESet;
    }

    @Override
    public Integer getSelectorFieldStartPosition() {
        return this.selectorFieldStartPosition;
    }

    @Override
    public void setSelectorFieldStartPosition(Integer newSelectorFieldStartPosition) {
        Integer oldSelectorFieldStartPosition = this.selectorFieldStartPosition;
        this.selectorFieldStartPosition = newSelectorFieldStartPosition;
        boolean oldSelectorFieldStartPositionESet = this.selectorFieldStartPositionESet;
        this.selectorFieldStartPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSelectorFieldStartPosition, (Object)this.selectorFieldStartPosition, !oldSelectorFieldStartPositionESet));
        }
    }

    @Override
    public void unsetSelectorFieldStartPosition() {
        Integer oldSelectorFieldStartPosition = this.selectorFieldStartPosition;
        boolean oldSelectorFieldStartPositionESet = this.selectorFieldStartPositionESet;
        this.selectorFieldStartPosition = SELECTOR_FIELD_START_POSITION_EDEFAULT;
        this.selectorFieldStartPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldSelectorFieldStartPosition, (Object)SELECTOR_FIELD_START_POSITION_EDEFAULT, oldSelectorFieldStartPositionESet));
        }
    }

    @Override
    public boolean isSetSelectorFieldStartPosition() {
        return this.selectorFieldStartPositionESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPDUType((PDUType)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPDUType(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getDatas()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, PDUType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPDUType();
            }
            case 5: {
                return this.getDatas();
            }
            case 6: {
                return this.getSelectorFieldByteOrder();
            }
            case 7: {
                return this.getSelectorFieldLength();
            }
            case 8: {
                return this.getSelectorFieldStartPosition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setPDUType((PDUType)newValue);
                return;
            }
            case 5: {
                this.getDatas().clear();
                this.getDatas().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setSelectorFieldByteOrder((ByteOrderEnum)((Object)newValue));
                return;
            }
            case 7: {
                this.setSelectorFieldLength((Integer)newValue);
                return;
            }
            case 8: {
                this.setSelectorFieldStartPosition((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPDUType(null);
                return;
            }
            case 5: {
                this.getDatas().clear();
                return;
            }
            case 6: {
                this.unsetSelectorFieldByteOrder();
                return;
            }
            case 7: {
                this.unsetSelectorFieldLength();
                return;
            }
            case 8: {
                this.unsetSelectorFieldStartPosition();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getPDUType() != null;
            }
            case 5: {
                return this.datas != null && !this.datas.isEmpty();
            }
            case 6: {
                return this.isSetSelectorFieldByteOrder();
            }
            case 7: {
                return this.isSetSelectorFieldLength();
            }
            case 8: {
                return this.isSetSelectorFieldStartPosition();
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
        result.append(')');
        return result.toString();
    }
}

