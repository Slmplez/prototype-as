/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.ObdMonitorServiceNeeds;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.DiagnosticCapabilityElementImpl;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ObdMonitorServiceNeedsImpl
extends DiagnosticCapabilityElementImpl
implements ObdMonitorServiceNeeds {
    protected static final PositiveIntegerDatatype ON_BOARD_MONITOR_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype onBoardMonitorId = ON_BOARD_MONITOR_ID_EDEFAULT.clone();
    protected boolean onBoardMonitorIdESet;
    protected static final PositiveIntegerDatatype TEST_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype testId = TEST_ID_EDEFAULT.clone();
    protected boolean testIdESet;
    protected static final PositiveIntegerDatatype UNIT_AND_SCALING_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype unitAndScalingId = UNIT_AND_SCALING_ID_EDEFAULT.clone();
    protected boolean unitAndScalingIdESet;

    protected ObdMonitorServiceNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.OBD_MONITOR_SERVICE_NEEDS;
    }

    public Long getOnBoardMonitorId() {
        return (Long)this.onBoardMonitorId.basicGetValue();
    }

    public void setOnBoardMonitorId(Long newOnBoardMonitorId) {
        Long oldOnBoardMonitorId = (Long)this.onBoardMonitorId.basicGetValue();
        this.onBoardMonitorId.basicSetValue((Object)newOnBoardMonitorId);
        boolean oldOnBoardMonitorIdESet = this.onBoardMonitorIdESet;
        this.onBoardMonitorIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldOnBoardMonitorId, (Object)newOnBoardMonitorId, !oldOnBoardMonitorIdESet));
        }
    }

    public void unsetOnBoardMonitorId() {
        Long oldOnBoardMonitorId = (Long)this.onBoardMonitorId.basicGetValue();
        boolean oldOnBoardMonitorIdESet = this.onBoardMonitorIdESet;
        this.onBoardMonitorId = ON_BOARD_MONITOR_ID_EDEFAULT.clone();
        this.onBoardMonitorIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldOnBoardMonitorId, (Object)ON_BOARD_MONITOR_ID_EDEFAULT, oldOnBoardMonitorIdESet));
        }
    }

    public boolean isSetOnBoardMonitorId() {
        return this.onBoardMonitorIdESet;
    }

    public Long getTestId() {
        return (Long)this.testId.basicGetValue();
    }

    public void setTestId(Long newTestId) {
        Long oldTestId = (Long)this.testId.basicGetValue();
        this.testId.basicSetValue((Object)newTestId);
        boolean oldTestIdESet = this.testIdESet;
        this.testIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldTestId, (Object)newTestId, !oldTestIdESet));
        }
    }

    public void unsetTestId() {
        Long oldTestId = (Long)this.testId.basicGetValue();
        boolean oldTestIdESet = this.testIdESet;
        this.testId = TEST_ID_EDEFAULT.clone();
        this.testIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldTestId, (Object)TEST_ID_EDEFAULT, oldTestIdESet));
        }
    }

    public boolean isSetTestId() {
        return this.testIdESet;
    }

    public Long getUnitAndScalingId() {
        return (Long)this.unitAndScalingId.basicGetValue();
    }

    public void setUnitAndScalingId(Long newUnitAndScalingId) {
        Long oldUnitAndScalingId = (Long)this.unitAndScalingId.basicGetValue();
        this.unitAndScalingId.basicSetValue((Object)newUnitAndScalingId);
        boolean oldUnitAndScalingIdESet = this.unitAndScalingIdESet;
        this.unitAndScalingIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldUnitAndScalingId, (Object)newUnitAndScalingId, !oldUnitAndScalingIdESet));
        }
    }

    public void unsetUnitAndScalingId() {
        Long oldUnitAndScalingId = (Long)this.unitAndScalingId.basicGetValue();
        boolean oldUnitAndScalingIdESet = this.unitAndScalingIdESet;
        this.unitAndScalingId = UNIT_AND_SCALING_ID_EDEFAULT.clone();
        this.unitAndScalingIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldUnitAndScalingId, (Object)UNIT_AND_SCALING_ID_EDEFAULT, oldUnitAndScalingIdESet));
        }
    }

    public boolean isSetUnitAndScalingId() {
        return this.unitAndScalingIdESet;
    }

    public PositiveIntegerDatatype getOnBoardMonitorIdData() {
        return this.onBoardMonitorId.clone();
    }

    public void setOnBoardMonitorIdData(PositiveIntegerDatatype newOnBoardMonitorId) {
        this.onBoardMonitorId.setRadix((int)newOnBoardMonitorId.getRadix());
        this.onBoardMonitorId.setNoOfDigits((int)newOnBoardMonitorId.getNoOfDigits());
        this.setOnBoardMonitorId(newOnBoardMonitorId.getValue());
    }

    public PositiveIntegerDatatype getTestIdData() {
        return this.testId.clone();
    }

    public void setTestIdData(PositiveIntegerDatatype newTestId) {
        this.testId.setRadix((int)newTestId.getRadix());
        this.testId.setNoOfDigits((int)newTestId.getNoOfDigits());
        this.setTestId(newTestId.getValue());
    }

    public PositiveIntegerDatatype getUnitAndScalingIdData() {
        return this.unitAndScalingId.clone();
    }

    public void setUnitAndScalingIdData(PositiveIntegerDatatype newUnitAndScalingId) {
        this.unitAndScalingId.setRadix((int)newUnitAndScalingId.getRadix());
        this.unitAndScalingId.setNoOfDigits((int)newUnitAndScalingId.getNoOfDigits());
        this.setUnitAndScalingId(newUnitAndScalingId.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getOnBoardMonitorId();
            }
            case 22: {
                return this.getTestId();
            }
            case 23: {
                return this.getUnitAndScalingId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setOnBoardMonitorId((Long)newValue);
                return;
            }
            case 22: {
                this.setTestId((Long)newValue);
                return;
            }
            case 23: {
                this.setUnitAndScalingId((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetOnBoardMonitorId();
                return;
            }
            case 22: {
                this.unsetTestId();
                return;
            }
            case 23: {
                this.unsetUnitAndScalingId();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetOnBoardMonitorId();
            }
            case 22: {
                return this.isSetTestId();
            }
            case 23: {
                return this.isSetUnitAndScalingId();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (onBoardMonitorId: ");
        if (this.onBoardMonitorIdESet) {
            result.append(this.onBoardMonitorId);
        } else {
            result.append("<unset>");
        }
        result.append(", testId: ");
        if (this.testIdESet) {
            result.append(this.testId);
        } else {
            result.append("<unset>");
        }
        result.append(", unitAndScalingId: ");
        if (this.unitAndScalingIdESet) {
            result.append(this.unitAndScalingId);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

