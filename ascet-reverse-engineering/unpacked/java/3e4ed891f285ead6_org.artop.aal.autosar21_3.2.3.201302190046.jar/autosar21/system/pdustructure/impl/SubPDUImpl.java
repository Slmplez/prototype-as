/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.pdustructure.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.communication.Timing;
import autosar21.system.pdustructure.PdustructurePackage;
import autosar21.system.pdustructure.SignalPosition;
import autosar21.system.pdustructure.SubPDU;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SubPDUImpl
extends ARObjectImpl
implements SubPDU {
    protected EList<Timing> dynamicSubPDUTimings;
    protected EList<SignalPosition> includedSignals;
    protected static final Integer SELECTOR_FIELD_CODE_EDEFAULT = new Integer(0);
    protected Integer selectorFieldCode = SELECTOR_FIELD_CODE_EDEFAULT;
    protected boolean selectorFieldCodeESet;
    protected static final Integer START_POSITION_EDEFAULT = new Integer(0);
    protected Integer startPosition = START_POSITION_EDEFAULT;
    protected boolean startPositionESet;
    protected static final Integer SUB_PDU_SIZE_EDEFAULT = new Integer(0);
    protected Integer subPDUSize = SUB_PDU_SIZE_EDEFAULT;
    protected boolean subPDUSizeESet;

    protected SubPDUImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PdustructurePackage.Literals.SUB_PDU;
    }

    @Override
    public EList<Timing> getDynamicSubPDUTimings() {
        if (this.dynamicSubPDUTimings == null) {
            this.dynamicSubPDUTimings = new EObjectContainmentEList(Timing.class, (InternalEObject)this, 4);
        }
        return this.dynamicSubPDUTimings;
    }

    @Override
    public EList<SignalPosition> getIncludedSignals() {
        if (this.includedSignals == null) {
            this.includedSignals = new EObjectContainmentEList(SignalPosition.class, (InternalEObject)this, 5);
        }
        return this.includedSignals;
    }

    @Override
    public Integer getSelectorFieldCode() {
        return this.selectorFieldCode;
    }

    @Override
    public void setSelectorFieldCode(Integer newSelectorFieldCode) {
        Integer oldSelectorFieldCode = this.selectorFieldCode;
        this.selectorFieldCode = newSelectorFieldCode;
        boolean oldSelectorFieldCodeESet = this.selectorFieldCodeESet;
        this.selectorFieldCodeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSelectorFieldCode, (Object)this.selectorFieldCode, !oldSelectorFieldCodeESet));
        }
    }

    @Override
    public void unsetSelectorFieldCode() {
        Integer oldSelectorFieldCode = this.selectorFieldCode;
        boolean oldSelectorFieldCodeESet = this.selectorFieldCodeESet;
        this.selectorFieldCode = SELECTOR_FIELD_CODE_EDEFAULT;
        this.selectorFieldCodeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldSelectorFieldCode, (Object)SELECTOR_FIELD_CODE_EDEFAULT, oldSelectorFieldCodeESet));
        }
    }

    @Override
    public boolean isSetSelectorFieldCode() {
        return this.selectorFieldCodeESet;
    }

    @Override
    public Integer getStartPosition() {
        return this.startPosition;
    }

    @Override
    public void setStartPosition(Integer newStartPosition) {
        Integer oldStartPosition = this.startPosition;
        this.startPosition = newStartPosition;
        boolean oldStartPositionESet = this.startPositionESet;
        this.startPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldStartPosition, (Object)this.startPosition, !oldStartPositionESet));
        }
    }

    @Override
    public void unsetStartPosition() {
        Integer oldStartPosition = this.startPosition;
        boolean oldStartPositionESet = this.startPositionESet;
        this.startPosition = START_POSITION_EDEFAULT;
        this.startPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldStartPosition, (Object)START_POSITION_EDEFAULT, oldStartPositionESet));
        }
    }

    @Override
    public boolean isSetStartPosition() {
        return this.startPositionESet;
    }

    @Override
    public Integer getSubPDUSize() {
        return this.subPDUSize;
    }

    @Override
    public void setSubPDUSize(Integer newSubPDUSize) {
        Integer oldSubPDUSize = this.subPDUSize;
        this.subPDUSize = newSubPDUSize;
        boolean oldSubPDUSizeESet = this.subPDUSizeESet;
        this.subPDUSizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSubPDUSize, (Object)this.subPDUSize, !oldSubPDUSizeESet));
        }
    }

    @Override
    public void unsetSubPDUSize() {
        Integer oldSubPDUSize = this.subPDUSize;
        boolean oldSubPDUSizeESet = this.subPDUSizeESet;
        this.subPDUSize = SUB_PDU_SIZE_EDEFAULT;
        this.subPDUSizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldSubPDUSize, (Object)SUB_PDU_SIZE_EDEFAULT, oldSubPDUSizeESet));
        }
    }

    @Override
    public boolean isSetSubPDUSize() {
        return this.subPDUSizeESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getDynamicSubPDUTimings()).basicRemove((Object)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getIncludedSignals()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDynamicSubPDUTimings();
            }
            case 5: {
                return this.getIncludedSignals();
            }
            case 6: {
                return this.getSelectorFieldCode();
            }
            case 7: {
                return this.getStartPosition();
            }
            case 8: {
                return this.getSubPDUSize();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getDynamicSubPDUTimings().clear();
                this.getDynamicSubPDUTimings().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.getIncludedSignals().clear();
                this.getIncludedSignals().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setSelectorFieldCode((Integer)newValue);
                return;
            }
            case 7: {
                this.setStartPosition((Integer)newValue);
                return;
            }
            case 8: {
                this.setSubPDUSize((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.getDynamicSubPDUTimings().clear();
                return;
            }
            case 5: {
                this.getIncludedSignals().clear();
                return;
            }
            case 6: {
                this.unsetSelectorFieldCode();
                return;
            }
            case 7: {
                this.unsetStartPosition();
                return;
            }
            case 8: {
                this.unsetSubPDUSize();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.dynamicSubPDUTimings != null && !this.dynamicSubPDUTimings.isEmpty();
            }
            case 5: {
                return this.includedSignals != null && !this.includedSignals.isEmpty();
            }
            case 6: {
                return this.isSetSelectorFieldCode();
            }
            case 7: {
                return this.isSetStartPosition();
            }
            case 8: {
                return this.isSetSubPDUSize();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (selectorFieldCode: ");
        if (this.selectorFieldCodeESet) {
            result.append(this.selectorFieldCode);
        } else {
            result.append("<unset>");
        }
        result.append(", startPosition: ");
        if (this.startPositionESet) {
            result.append(this.startPosition);
        } else {
            result.append("<unset>");
        }
        result.append(", SubPDUSize: ");
        if (this.subPDUSizeESet) {
            result.append(this.subPDUSize);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

