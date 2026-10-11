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
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.DiagEventDebounceCounterBased;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.DiagEventDebounceAlgorithmImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class DiagEventDebounceCounterBasedImpl
extends DiagEventDebounceAlgorithmImpl
implements DiagEventDebounceCounterBased {
    protected static final IntegerDatatype COUNTER_DECREMENT_STEP_SIZE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype counterDecrementStepSize = COUNTER_DECREMENT_STEP_SIZE_EDEFAULT.clone();
    protected boolean counterDecrementStepSizeESet;
    protected static final IntegerDatatype COUNTER_FAILED_THRESHOLD_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype counterFailedThreshold = COUNTER_FAILED_THRESHOLD_EDEFAULT.clone();
    protected boolean counterFailedThresholdESet;
    protected static final IntegerDatatype COUNTER_INCREMENT_STEP_SIZE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype counterIncrementStepSize = COUNTER_INCREMENT_STEP_SIZE_EDEFAULT.clone();
    protected boolean counterIncrementStepSizeESet;
    protected static final Boolean COUNTER_JUMP_DOWN_EDEFAULT = Boolean.FALSE;
    protected Boolean counterJumpDown = COUNTER_JUMP_DOWN_EDEFAULT;
    protected boolean counterJumpDownESet;
    protected static final IntegerDatatype COUNTER_JUMP_DOWN_VALUE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype counterJumpDownValue = COUNTER_JUMP_DOWN_VALUE_EDEFAULT.clone();
    protected boolean counterJumpDownValueESet;
    protected static final Boolean COUNTER_JUMP_UP_EDEFAULT = Boolean.FALSE;
    protected Boolean counterJumpUp = COUNTER_JUMP_UP_EDEFAULT;
    protected boolean counterJumpUpESet;
    protected static final IntegerDatatype COUNTER_JUMP_UP_VALUE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype counterJumpUpValue = COUNTER_JUMP_UP_VALUE_EDEFAULT.clone();
    protected boolean counterJumpUpValueESet;
    protected static final IntegerDatatype COUNTER_PASSED_THRESHOLD_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype counterPassedThreshold = COUNTER_PASSED_THRESHOLD_EDEFAULT.clone();
    protected boolean counterPassedThresholdESet;

    protected DiagEventDebounceCounterBasedImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.DIAG_EVENT_DEBOUNCE_COUNTER_BASED;
    }

    public Integer getCounterDecrementStepSize() {
        return (Integer)this.counterDecrementStepSize.basicGetValue();
    }

    public void setCounterDecrementStepSize(Integer newCounterDecrementStepSize) {
        Integer oldCounterDecrementStepSize = (Integer)this.counterDecrementStepSize.basicGetValue();
        this.counterDecrementStepSize.basicSetValue((Object)newCounterDecrementStepSize);
        boolean oldCounterDecrementStepSizeESet = this.counterDecrementStepSizeESet;
        this.counterDecrementStepSizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldCounterDecrementStepSize, (Object)newCounterDecrementStepSize, !oldCounterDecrementStepSizeESet));
        }
    }

    public void unsetCounterDecrementStepSize() {
        Integer oldCounterDecrementStepSize = (Integer)this.counterDecrementStepSize.basicGetValue();
        boolean oldCounterDecrementStepSizeESet = this.counterDecrementStepSizeESet;
        this.counterDecrementStepSize = COUNTER_DECREMENT_STEP_SIZE_EDEFAULT.clone();
        this.counterDecrementStepSizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldCounterDecrementStepSize, (Object)COUNTER_DECREMENT_STEP_SIZE_EDEFAULT, oldCounterDecrementStepSizeESet));
        }
    }

    public boolean isSetCounterDecrementStepSize() {
        return this.counterDecrementStepSizeESet;
    }

    public Integer getCounterFailedThreshold() {
        return (Integer)this.counterFailedThreshold.basicGetValue();
    }

    public void setCounterFailedThreshold(Integer newCounterFailedThreshold) {
        Integer oldCounterFailedThreshold = (Integer)this.counterFailedThreshold.basicGetValue();
        this.counterFailedThreshold.basicSetValue((Object)newCounterFailedThreshold);
        boolean oldCounterFailedThresholdESet = this.counterFailedThresholdESet;
        this.counterFailedThresholdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldCounterFailedThreshold, (Object)newCounterFailedThreshold, !oldCounterFailedThresholdESet));
        }
    }

    public void unsetCounterFailedThreshold() {
        Integer oldCounterFailedThreshold = (Integer)this.counterFailedThreshold.basicGetValue();
        boolean oldCounterFailedThresholdESet = this.counterFailedThresholdESet;
        this.counterFailedThreshold = COUNTER_FAILED_THRESHOLD_EDEFAULT.clone();
        this.counterFailedThresholdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldCounterFailedThreshold, (Object)COUNTER_FAILED_THRESHOLD_EDEFAULT, oldCounterFailedThresholdESet));
        }
    }

    public boolean isSetCounterFailedThreshold() {
        return this.counterFailedThresholdESet;
    }

    public Integer getCounterIncrementStepSize() {
        return (Integer)this.counterIncrementStepSize.basicGetValue();
    }

    public void setCounterIncrementStepSize(Integer newCounterIncrementStepSize) {
        Integer oldCounterIncrementStepSize = (Integer)this.counterIncrementStepSize.basicGetValue();
        this.counterIncrementStepSize.basicSetValue((Object)newCounterIncrementStepSize);
        boolean oldCounterIncrementStepSizeESet = this.counterIncrementStepSizeESet;
        this.counterIncrementStepSizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldCounterIncrementStepSize, (Object)newCounterIncrementStepSize, !oldCounterIncrementStepSizeESet));
        }
    }

    public void unsetCounterIncrementStepSize() {
        Integer oldCounterIncrementStepSize = (Integer)this.counterIncrementStepSize.basicGetValue();
        boolean oldCounterIncrementStepSizeESet = this.counterIncrementStepSizeESet;
        this.counterIncrementStepSize = COUNTER_INCREMENT_STEP_SIZE_EDEFAULT.clone();
        this.counterIncrementStepSizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldCounterIncrementStepSize, (Object)COUNTER_INCREMENT_STEP_SIZE_EDEFAULT, oldCounterIncrementStepSizeESet));
        }
    }

    public boolean isSetCounterIncrementStepSize() {
        return this.counterIncrementStepSizeESet;
    }

    public Boolean getCounterJumpDown() {
        return this.counterJumpDown;
    }

    public void setCounterJumpDown(Boolean newCounterJumpDown) {
        Boolean oldCounterJumpDown = this.counterJumpDown;
        this.counterJumpDown = newCounterJumpDown;
        boolean oldCounterJumpDownESet = this.counterJumpDownESet;
        this.counterJumpDownESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldCounterJumpDown, (Object)this.counterJumpDown, !oldCounterJumpDownESet));
        }
    }

    public void unsetCounterJumpDown() {
        Boolean oldCounterJumpDown = this.counterJumpDown;
        boolean oldCounterJumpDownESet = this.counterJumpDownESet;
        this.counterJumpDown = COUNTER_JUMP_DOWN_EDEFAULT;
        this.counterJumpDownESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldCounterJumpDown, (Object)COUNTER_JUMP_DOWN_EDEFAULT, oldCounterJumpDownESet));
        }
    }

    public boolean isSetCounterJumpDown() {
        return this.counterJumpDownESet;
    }

    public Integer getCounterJumpDownValue() {
        return (Integer)this.counterJumpDownValue.basicGetValue();
    }

    public void setCounterJumpDownValue(Integer newCounterJumpDownValue) {
        Integer oldCounterJumpDownValue = (Integer)this.counterJumpDownValue.basicGetValue();
        this.counterJumpDownValue.basicSetValue((Object)newCounterJumpDownValue);
        boolean oldCounterJumpDownValueESet = this.counterJumpDownValueESet;
        this.counterJumpDownValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldCounterJumpDownValue, (Object)newCounterJumpDownValue, !oldCounterJumpDownValueESet));
        }
    }

    public void unsetCounterJumpDownValue() {
        Integer oldCounterJumpDownValue = (Integer)this.counterJumpDownValue.basicGetValue();
        boolean oldCounterJumpDownValueESet = this.counterJumpDownValueESet;
        this.counterJumpDownValue = COUNTER_JUMP_DOWN_VALUE_EDEFAULT.clone();
        this.counterJumpDownValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldCounterJumpDownValue, (Object)COUNTER_JUMP_DOWN_VALUE_EDEFAULT, oldCounterJumpDownValueESet));
        }
    }

    public boolean isSetCounterJumpDownValue() {
        return this.counterJumpDownValueESet;
    }

    public Boolean getCounterJumpUp() {
        return this.counterJumpUp;
    }

    public void setCounterJumpUp(Boolean newCounterJumpUp) {
        Boolean oldCounterJumpUp = this.counterJumpUp;
        this.counterJumpUp = newCounterJumpUp;
        boolean oldCounterJumpUpESet = this.counterJumpUpESet;
        this.counterJumpUpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldCounterJumpUp, (Object)this.counterJumpUp, !oldCounterJumpUpESet));
        }
    }

    public void unsetCounterJumpUp() {
        Boolean oldCounterJumpUp = this.counterJumpUp;
        boolean oldCounterJumpUpESet = this.counterJumpUpESet;
        this.counterJumpUp = COUNTER_JUMP_UP_EDEFAULT;
        this.counterJumpUpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldCounterJumpUp, (Object)COUNTER_JUMP_UP_EDEFAULT, oldCounterJumpUpESet));
        }
    }

    public boolean isSetCounterJumpUp() {
        return this.counterJumpUpESet;
    }

    public Integer getCounterJumpUpValue() {
        return (Integer)this.counterJumpUpValue.basicGetValue();
    }

    public void setCounterJumpUpValue(Integer newCounterJumpUpValue) {
        Integer oldCounterJumpUpValue = (Integer)this.counterJumpUpValue.basicGetValue();
        this.counterJumpUpValue.basicSetValue((Object)newCounterJumpUpValue);
        boolean oldCounterJumpUpValueESet = this.counterJumpUpValueESet;
        this.counterJumpUpValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldCounterJumpUpValue, (Object)newCounterJumpUpValue, !oldCounterJumpUpValueESet));
        }
    }

    public void unsetCounterJumpUpValue() {
        Integer oldCounterJumpUpValue = (Integer)this.counterJumpUpValue.basicGetValue();
        boolean oldCounterJumpUpValueESet = this.counterJumpUpValueESet;
        this.counterJumpUpValue = COUNTER_JUMP_UP_VALUE_EDEFAULT.clone();
        this.counterJumpUpValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldCounterJumpUpValue, (Object)COUNTER_JUMP_UP_VALUE_EDEFAULT, oldCounterJumpUpValueESet));
        }
    }

    public boolean isSetCounterJumpUpValue() {
        return this.counterJumpUpValueESet;
    }

    public Integer getCounterPassedThreshold() {
        return (Integer)this.counterPassedThreshold.basicGetValue();
    }

    public void setCounterPassedThreshold(Integer newCounterPassedThreshold) {
        Integer oldCounterPassedThreshold = (Integer)this.counterPassedThreshold.basicGetValue();
        this.counterPassedThreshold.basicSetValue((Object)newCounterPassedThreshold);
        boolean oldCounterPassedThresholdESet = this.counterPassedThresholdESet;
        this.counterPassedThresholdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldCounterPassedThreshold, (Object)newCounterPassedThreshold, !oldCounterPassedThresholdESet));
        }
    }

    public void unsetCounterPassedThreshold() {
        Integer oldCounterPassedThreshold = (Integer)this.counterPassedThreshold.basicGetValue();
        boolean oldCounterPassedThresholdESet = this.counterPassedThresholdESet;
        this.counterPassedThreshold = COUNTER_PASSED_THRESHOLD_EDEFAULT.clone();
        this.counterPassedThresholdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldCounterPassedThreshold, (Object)COUNTER_PASSED_THRESHOLD_EDEFAULT, oldCounterPassedThresholdESet));
        }
    }

    public boolean isSetCounterPassedThreshold() {
        return this.counterPassedThresholdESet;
    }

    public IntegerDatatype getCounterDecrementStepSizeData() {
        return this.counterDecrementStepSize.clone();
    }

    public void setCounterDecrementStepSizeData(IntegerDatatype newCounterDecrementStepSize) {
        this.counterDecrementStepSize.setRadix((int)newCounterDecrementStepSize.getRadix());
        this.counterDecrementStepSize.setNoOfDigits((int)newCounterDecrementStepSize.getNoOfDigits());
        this.setCounterDecrementStepSize(newCounterDecrementStepSize.getValue());
    }

    public IntegerDatatype getCounterFailedThresholdData() {
        return this.counterFailedThreshold.clone();
    }

    public void setCounterFailedThresholdData(IntegerDatatype newCounterFailedThreshold) {
        this.counterFailedThreshold.setRadix((int)newCounterFailedThreshold.getRadix());
        this.counterFailedThreshold.setNoOfDigits((int)newCounterFailedThreshold.getNoOfDigits());
        this.setCounterFailedThreshold(newCounterFailedThreshold.getValue());
    }

    public IntegerDatatype getCounterIncrementStepSizeData() {
        return this.counterIncrementStepSize.clone();
    }

    public void setCounterIncrementStepSizeData(IntegerDatatype newCounterIncrementStepSize) {
        this.counterIncrementStepSize.setRadix((int)newCounterIncrementStepSize.getRadix());
        this.counterIncrementStepSize.setNoOfDigits((int)newCounterIncrementStepSize.getNoOfDigits());
        this.setCounterIncrementStepSize(newCounterIncrementStepSize.getValue());
    }

    public IntegerDatatype getCounterJumpDownValueData() {
        return this.counterJumpDownValue.clone();
    }

    public void setCounterJumpDownValueData(IntegerDatatype newCounterJumpDownValue) {
        this.counterJumpDownValue.setRadix((int)newCounterJumpDownValue.getRadix());
        this.counterJumpDownValue.setNoOfDigits((int)newCounterJumpDownValue.getNoOfDigits());
        this.setCounterJumpDownValue(newCounterJumpDownValue.getValue());
    }

    public IntegerDatatype getCounterJumpUpValueData() {
        return this.counterJumpUpValue.clone();
    }

    public void setCounterJumpUpValueData(IntegerDatatype newCounterJumpUpValue) {
        this.counterJumpUpValue.setRadix((int)newCounterJumpUpValue.getRadix());
        this.counterJumpUpValue.setNoOfDigits((int)newCounterJumpUpValue.getNoOfDigits());
        this.setCounterJumpUpValue(newCounterJumpUpValue.getValue());
    }

    public IntegerDatatype getCounterPassedThresholdData() {
        return this.counterPassedThreshold.clone();
    }

    public void setCounterPassedThresholdData(IntegerDatatype newCounterPassedThreshold) {
        this.counterPassedThreshold.setRadix((int)newCounterPassedThreshold.getRadix());
        this.counterPassedThreshold.setNoOfDigits((int)newCounterPassedThreshold.getNoOfDigits());
        this.setCounterPassedThreshold(newCounterPassedThreshold.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getCounterDecrementStepSize();
            }
            case 20: {
                return this.getCounterFailedThreshold();
            }
            case 21: {
                return this.getCounterIncrementStepSize();
            }
            case 22: {
                return this.getCounterJumpDown();
            }
            case 23: {
                return this.getCounterJumpDownValue();
            }
            case 24: {
                return this.getCounterJumpUp();
            }
            case 25: {
                return this.getCounterJumpUpValue();
            }
            case 26: {
                return this.getCounterPassedThreshold();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setCounterDecrementStepSize((Integer)newValue);
                return;
            }
            case 20: {
                this.setCounterFailedThreshold((Integer)newValue);
                return;
            }
            case 21: {
                this.setCounterIncrementStepSize((Integer)newValue);
                return;
            }
            case 22: {
                this.setCounterJumpDown((Boolean)newValue);
                return;
            }
            case 23: {
                this.setCounterJumpDownValue((Integer)newValue);
                return;
            }
            case 24: {
                this.setCounterJumpUp((Boolean)newValue);
                return;
            }
            case 25: {
                this.setCounterJumpUpValue((Integer)newValue);
                return;
            }
            case 26: {
                this.setCounterPassedThreshold((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.unsetCounterDecrementStepSize();
                return;
            }
            case 20: {
                this.unsetCounterFailedThreshold();
                return;
            }
            case 21: {
                this.unsetCounterIncrementStepSize();
                return;
            }
            case 22: {
                this.unsetCounterJumpDown();
                return;
            }
            case 23: {
                this.unsetCounterJumpDownValue();
                return;
            }
            case 24: {
                this.unsetCounterJumpUp();
                return;
            }
            case 25: {
                this.unsetCounterJumpUpValue();
                return;
            }
            case 26: {
                this.unsetCounterPassedThreshold();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.isSetCounterDecrementStepSize();
            }
            case 20: {
                return this.isSetCounterFailedThreshold();
            }
            case 21: {
                return this.isSetCounterIncrementStepSize();
            }
            case 22: {
                return this.isSetCounterJumpDown();
            }
            case 23: {
                return this.isSetCounterJumpDownValue();
            }
            case 24: {
                return this.isSetCounterJumpUp();
            }
            case 25: {
                return this.isSetCounterJumpUpValue();
            }
            case 26: {
                return this.isSetCounterPassedThreshold();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (counterDecrementStepSize: ");
        if (this.counterDecrementStepSizeESet) {
            result.append(this.counterDecrementStepSize);
        } else {
            result.append("<unset>");
        }
        result.append(", counterFailedThreshold: ");
        if (this.counterFailedThresholdESet) {
            result.append(this.counterFailedThreshold);
        } else {
            result.append("<unset>");
        }
        result.append(", counterIncrementStepSize: ");
        if (this.counterIncrementStepSizeESet) {
            result.append(this.counterIncrementStepSize);
        } else {
            result.append("<unset>");
        }
        result.append(", counterJumpDown: ");
        if (this.counterJumpDownESet) {
            result.append(this.counterJumpDown);
        } else {
            result.append("<unset>");
        }
        result.append(", counterJumpDownValue: ");
        if (this.counterJumpDownValueESet) {
            result.append(this.counterJumpDownValue);
        } else {
            result.append("<unset>");
        }
        result.append(", counterJumpUp: ");
        if (this.counterJumpUpESet) {
            result.append(this.counterJumpUp);
        } else {
            result.append("<unset>");
        }
        result.append(", counterJumpUpValue: ");
        if (this.counterJumpUpValueESet) {
            result.append(this.counterJumpUpValue);
        } else {
            result.append("<unset>");
        }
        result.append(", counterPassedThreshold: ");
        if (this.counterPassedThresholdESet) {
            result.append(this.counterPassedThreshold);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

