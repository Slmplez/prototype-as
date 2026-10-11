/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibex4ttcan.ttcantopology.impl;

import autosar40.system.fibex.fibex4can.cantopology.impl.AbstractCanClusterContentImpl;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanClusterContent;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcantopologyPackage;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class TtcanClusterContentImpl
extends AbstractCanClusterContentImpl
implements TtcanClusterContent {
    protected static final IntegerDatatype BASIC_CYCLE_LENGTH_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype basicCycleLength = BASIC_CYCLE_LENGTH_EDEFAULT.clone();
    protected boolean basicCycleLengthESet;
    protected static final Double NTU_EDEFAULT = new Double(0.0);
    protected Double ntu = NTU_EDEFAULT;
    protected boolean ntuESet;
    protected static final Boolean OPERATION_MODE_EDEFAULT = Boolean.FALSE;
    protected Boolean operationMode = OPERATION_MODE_EDEFAULT;
    protected boolean operationModeESet;

    protected TtcanClusterContentImpl() {
    }

    protected EClass eStaticClass() {
        return TtcantopologyPackage.Literals.TTCAN_CLUSTER_CONTENT;
    }

    public Integer getBasicCycleLength() {
        return (Integer)this.basicCycleLength.basicGetValue();
    }

    public void setBasicCycleLength(Integer newBasicCycleLength) {
        Integer oldBasicCycleLength = (Integer)this.basicCycleLength.basicGetValue();
        this.basicCycleLength.basicSetValue((Object)newBasicCycleLength);
        boolean oldBasicCycleLengthESet = this.basicCycleLengthESet;
        this.basicCycleLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldBasicCycleLength, (Object)newBasicCycleLength, !oldBasicCycleLengthESet));
        }
    }

    public void unsetBasicCycleLength() {
        Integer oldBasicCycleLength = (Integer)this.basicCycleLength.basicGetValue();
        boolean oldBasicCycleLengthESet = this.basicCycleLengthESet;
        this.basicCycleLength = BASIC_CYCLE_LENGTH_EDEFAULT.clone();
        this.basicCycleLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldBasicCycleLength, (Object)BASIC_CYCLE_LENGTH_EDEFAULT, oldBasicCycleLengthESet));
        }
    }

    public boolean isSetBasicCycleLength() {
        return this.basicCycleLengthESet;
    }

    public Double getNtu() {
        return this.ntu;
    }

    public void setNtu(Double newNtu) {
        Double oldNtu = this.ntu;
        this.ntu = newNtu;
        boolean oldNtuESet = this.ntuESet;
        this.ntuESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldNtu, (Object)this.ntu, !oldNtuESet));
        }
    }

    public void unsetNtu() {
        Double oldNtu = this.ntu;
        boolean oldNtuESet = this.ntuESet;
        this.ntu = NTU_EDEFAULT;
        this.ntuESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldNtu, (Object)NTU_EDEFAULT, oldNtuESet));
        }
    }

    public boolean isSetNtu() {
        return this.ntuESet;
    }

    public Boolean getOperationMode() {
        return this.operationMode;
    }

    public void setOperationMode(Boolean newOperationMode) {
        Boolean oldOperationMode = this.operationMode;
        this.operationMode = newOperationMode;
        boolean oldOperationModeESet = this.operationModeESet;
        this.operationModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldOperationMode, (Object)this.operationMode, !oldOperationModeESet));
        }
    }

    public void unsetOperationMode() {
        Boolean oldOperationMode = this.operationMode;
        boolean oldOperationModeESet = this.operationModeESet;
        this.operationMode = OPERATION_MODE_EDEFAULT;
        this.operationModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldOperationMode, (Object)OPERATION_MODE_EDEFAULT, oldOperationModeESet));
        }
    }

    public boolean isSetOperationMode() {
        return this.operationModeESet;
    }

    public IntegerDatatype getBasicCycleLengthData() {
        return this.basicCycleLength.clone();
    }

    public void setBasicCycleLengthData(IntegerDatatype newBasicCycleLength) {
        this.basicCycleLength.setRadix((int)newBasicCycleLength.getRadix());
        this.basicCycleLength.setNoOfDigits((int)newBasicCycleLength.getNoOfDigits());
        this.setBasicCycleLength(newBasicCycleLength.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getBasicCycleLength();
            }
            case 9: {
                return this.getNtu();
            }
            case 10: {
                return this.getOperationMode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setBasicCycleLength((Integer)newValue);
                return;
            }
            case 9: {
                this.setNtu((Double)newValue);
                return;
            }
            case 10: {
                this.setOperationMode((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.unsetBasicCycleLength();
                return;
            }
            case 9: {
                this.unsetNtu();
                return;
            }
            case 10: {
                this.unsetOperationMode();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.isSetBasicCycleLength();
            }
            case 9: {
                return this.isSetNtu();
            }
            case 10: {
                return this.isSetOperationMode();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (basicCycleLength: ");
        if (this.basicCycleLengthESet) {
            result.append(this.basicCycleLength);
        } else {
            result.append("<unset>");
        }
        result.append(", ntu: ");
        if (this.ntuESet) {
            result.append(this.ntu);
        } else {
            result.append("<unset>");
        }
        result.append(", operationMode: ");
        if (this.operationModeESet) {
            result.append(this.operationMode);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

