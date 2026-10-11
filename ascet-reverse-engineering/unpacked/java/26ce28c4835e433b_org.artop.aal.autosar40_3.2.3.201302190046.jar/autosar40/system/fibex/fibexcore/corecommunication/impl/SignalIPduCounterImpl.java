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
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.SignalIPduCounter;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SignalIPduCounterImpl
extends ARObjectImpl
implements SignalIPduCounter {
    protected static final IntegerDatatype PDU_COUNTER_SIZE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype pduCounterSize = PDU_COUNTER_SIZE_EDEFAULT.clone();
    protected boolean pduCounterSizeESet;
    protected static final IntegerDatatype PDU_COUNTER_START_POSITION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype pduCounterStartPosition = PDU_COUNTER_START_POSITION_EDEFAULT.clone();
    protected boolean pduCounterStartPositionESet;
    protected static final IntegerDatatype PDU_COUNTER_THRESHOLD_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype pduCounterThreshold = PDU_COUNTER_THRESHOLD_EDEFAULT.clone();
    protected boolean pduCounterThresholdESet;
    protected VariationPoint variationPoint;

    protected SignalIPduCounterImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.SIGNAL_IPDU_COUNTER;
    }

    public ISignalIPdu getISignalIPdu() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ISignalIPdu)this.eContainer();
    }

    public NotificationChain basicSetISignalIPdu(ISignalIPdu newISignalIPdu, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newISignalIPdu, 4, msgs);
        return msgs;
    }

    public void setISignalIPdu(ISignalIPdu newISignalIPdu) {
        if (newISignalIPdu != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newISignalIPdu != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newISignalIPdu)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newISignalIPdu != null) {
                msgs = ((InternalEObject)newISignalIPdu).eInverseAdd((InternalEObject)this, 24, ISignalIPdu.class, msgs);
            }
            if ((msgs = this.basicSetISignalIPdu(newISignalIPdu, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newISignalIPdu, (Object)newISignalIPdu));
        }
    }

    public Integer getPduCounterSize() {
        return (Integer)this.pduCounterSize.basicGetValue();
    }

    public void setPduCounterSize(Integer newPduCounterSize) {
        Integer oldPduCounterSize = (Integer)this.pduCounterSize.basicGetValue();
        this.pduCounterSize.basicSetValue((Object)newPduCounterSize);
        boolean oldPduCounterSizeESet = this.pduCounterSizeESet;
        this.pduCounterSizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldPduCounterSize, (Object)newPduCounterSize, !oldPduCounterSizeESet));
        }
    }

    public void unsetPduCounterSize() {
        Integer oldPduCounterSize = (Integer)this.pduCounterSize.basicGetValue();
        boolean oldPduCounterSizeESet = this.pduCounterSizeESet;
        this.pduCounterSize = PDU_COUNTER_SIZE_EDEFAULT.clone();
        this.pduCounterSizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldPduCounterSize, (Object)PDU_COUNTER_SIZE_EDEFAULT, oldPduCounterSizeESet));
        }
    }

    public boolean isSetPduCounterSize() {
        return this.pduCounterSizeESet;
    }

    public Integer getPduCounterStartPosition() {
        return (Integer)this.pduCounterStartPosition.basicGetValue();
    }

    public void setPduCounterStartPosition(Integer newPduCounterStartPosition) {
        Integer oldPduCounterStartPosition = (Integer)this.pduCounterStartPosition.basicGetValue();
        this.pduCounterStartPosition.basicSetValue((Object)newPduCounterStartPosition);
        boolean oldPduCounterStartPositionESet = this.pduCounterStartPositionESet;
        this.pduCounterStartPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPduCounterStartPosition, (Object)newPduCounterStartPosition, !oldPduCounterStartPositionESet));
        }
    }

    public void unsetPduCounterStartPosition() {
        Integer oldPduCounterStartPosition = (Integer)this.pduCounterStartPosition.basicGetValue();
        boolean oldPduCounterStartPositionESet = this.pduCounterStartPositionESet;
        this.pduCounterStartPosition = PDU_COUNTER_START_POSITION_EDEFAULT.clone();
        this.pduCounterStartPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldPduCounterStartPosition, (Object)PDU_COUNTER_START_POSITION_EDEFAULT, oldPduCounterStartPositionESet));
        }
    }

    public boolean isSetPduCounterStartPosition() {
        return this.pduCounterStartPositionESet;
    }

    public Integer getPduCounterThreshold() {
        return (Integer)this.pduCounterThreshold.basicGetValue();
    }

    public void setPduCounterThreshold(Integer newPduCounterThreshold) {
        Integer oldPduCounterThreshold = (Integer)this.pduCounterThreshold.basicGetValue();
        this.pduCounterThreshold.basicSetValue((Object)newPduCounterThreshold);
        boolean oldPduCounterThresholdESet = this.pduCounterThresholdESet;
        this.pduCounterThresholdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldPduCounterThreshold, (Object)newPduCounterThreshold, !oldPduCounterThresholdESet));
        }
    }

    public void unsetPduCounterThreshold() {
        Integer oldPduCounterThreshold = (Integer)this.pduCounterThreshold.basicGetValue();
        boolean oldPduCounterThresholdESet = this.pduCounterThresholdESet;
        this.pduCounterThreshold = PDU_COUNTER_THRESHOLD_EDEFAULT.clone();
        this.pduCounterThresholdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldPduCounterThreshold, (Object)PDU_COUNTER_THRESHOLD_EDEFAULT, oldPduCounterThresholdESet));
        }
    }

    public boolean isSetPduCounterThreshold() {
        return this.pduCounterThresholdESet;
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public IntegerDatatype getPduCounterSizeData() {
        return this.pduCounterSize.clone();
    }

    public void setPduCounterSizeData(IntegerDatatype newPduCounterSize) {
        this.pduCounterSize.setRadix((int)newPduCounterSize.getRadix());
        this.pduCounterSize.setNoOfDigits((int)newPduCounterSize.getNoOfDigits());
        this.setPduCounterSize(newPduCounterSize.getValue());
    }

    public IntegerDatatype getPduCounterStartPositionData() {
        return this.pduCounterStartPosition.clone();
    }

    public void setPduCounterStartPositionData(IntegerDatatype newPduCounterStartPosition) {
        this.pduCounterStartPosition.setRadix((int)newPduCounterStartPosition.getRadix());
        this.pduCounterStartPosition.setNoOfDigits((int)newPduCounterStartPosition.getNoOfDigits());
        this.setPduCounterStartPosition(newPduCounterStartPosition.getValue());
    }

    public IntegerDatatype getPduCounterThresholdData() {
        return this.pduCounterThreshold.clone();
    }

    public void setPduCounterThresholdData(IntegerDatatype newPduCounterThreshold) {
        this.pduCounterThreshold.setRadix((int)newPduCounterThreshold.getRadix());
        this.pduCounterThreshold.setNoOfDigits((int)newPduCounterThreshold.getNoOfDigits());
        this.setPduCounterThreshold(newPduCounterThreshold.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetISignalIPdu((ISignalIPdu)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetISignalIPdu(null, msgs);
            }
            case 8: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, ISignalIPdu.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getISignalIPdu();
            }
            case 5: {
                return this.getPduCounterSize();
            }
            case 6: {
                return this.getPduCounterStartPosition();
            }
            case 7: {
                return this.getPduCounterThreshold();
            }
            case 8: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setISignalIPdu((ISignalIPdu)newValue);
                return;
            }
            case 5: {
                this.setPduCounterSize((Integer)newValue);
                return;
            }
            case 6: {
                this.setPduCounterStartPosition((Integer)newValue);
                return;
            }
            case 7: {
                this.setPduCounterThreshold((Integer)newValue);
                return;
            }
            case 8: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setISignalIPdu(null);
                return;
            }
            case 5: {
                this.unsetPduCounterSize();
                return;
            }
            case 6: {
                this.unsetPduCounterStartPosition();
                return;
            }
            case 7: {
                this.unsetPduCounterThreshold();
                return;
            }
            case 8: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getISignalIPdu() != null;
            }
            case 5: {
                return this.isSetPduCounterSize();
            }
            case 6: {
                return this.isSetPduCounterStartPosition();
            }
            case 7: {
                return this.isSetPduCounterThreshold();
            }
            case 8: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (pduCounterSize: ");
        if (this.pduCounterSizeESet) {
            result.append(this.pduCounterSize);
        } else {
            result.append("<unset>");
        }
        result.append(", pduCounterStartPosition: ");
        if (this.pduCounterStartPositionESet) {
            result.append(this.pduCounterStartPosition);
        } else {
            result.append("<unset>");
        }
        result.append(", pduCounterThreshold: ");
        if (this.pduCounterThresholdESet) {
            result.append(this.pduCounterThreshold);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

