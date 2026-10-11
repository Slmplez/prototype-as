/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.commonstructure.serviceneeds.impl;

import autosar3x.commonstructure.serviceneeds.ObdMonitorServiceNeeds;
import autosar3x.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar3x.commonstructure.serviceneeds.impl.ServiceNeedsImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ObdMonitorServiceNeedsImpl
extends ServiceNeedsImpl
implements ObdMonitorServiceNeeds {
    protected static final Integer ON_BOARD_MONITOR_ID_EDEFAULT = new Integer(0);
    protected Integer onBoardMonitorId = ON_BOARD_MONITOR_ID_EDEFAULT;
    protected boolean onBoardMonitorIdESet;
    protected static final Integer TEST_ID_EDEFAULT = new Integer(0);
    protected Integer testId = TEST_ID_EDEFAULT;
    protected boolean testIdESet;
    protected static final Integer UNIT_AND_SCALING_ID_EDEFAULT = new Integer(0);
    protected Integer unitAndScalingId = UNIT_AND_SCALING_ID_EDEFAULT;
    protected boolean unitAndScalingIdESet;

    protected ObdMonitorServiceNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.OBD_MONITOR_SERVICE_NEEDS;
    }

    public Integer getOnBoardMonitorId() {
        return this.onBoardMonitorId;
    }

    public void setOnBoardMonitorId(Integer newOnBoardMonitorId) {
        Integer oldOnBoardMonitorId = this.onBoardMonitorId;
        this.onBoardMonitorId = newOnBoardMonitorId;
        boolean oldOnBoardMonitorIdESet = this.onBoardMonitorIdESet;
        this.onBoardMonitorIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldOnBoardMonitorId, (Object)this.onBoardMonitorId, !oldOnBoardMonitorIdESet));
        }
    }

    public void unsetOnBoardMonitorId() {
        Integer oldOnBoardMonitorId = this.onBoardMonitorId;
        boolean oldOnBoardMonitorIdESet = this.onBoardMonitorIdESet;
        this.onBoardMonitorId = ON_BOARD_MONITOR_ID_EDEFAULT;
        this.onBoardMonitorIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldOnBoardMonitorId, (Object)ON_BOARD_MONITOR_ID_EDEFAULT, oldOnBoardMonitorIdESet));
        }
    }

    public boolean isSetOnBoardMonitorId() {
        return this.onBoardMonitorIdESet;
    }

    public Integer getTestId() {
        return this.testId;
    }

    public void setTestId(Integer newTestId) {
        Integer oldTestId = this.testId;
        this.testId = newTestId;
        boolean oldTestIdESet = this.testIdESet;
        this.testIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldTestId, (Object)this.testId, !oldTestIdESet));
        }
    }

    public void unsetTestId() {
        Integer oldTestId = this.testId;
        boolean oldTestIdESet = this.testIdESet;
        this.testId = TEST_ID_EDEFAULT;
        this.testIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldTestId, (Object)TEST_ID_EDEFAULT, oldTestIdESet));
        }
    }

    public boolean isSetTestId() {
        return this.testIdESet;
    }

    public Integer getUnitAndScalingId() {
        return this.unitAndScalingId;
    }

    public void setUnitAndScalingId(Integer newUnitAndScalingId) {
        Integer oldUnitAndScalingId = this.unitAndScalingId;
        this.unitAndScalingId = newUnitAndScalingId;
        boolean oldUnitAndScalingIdESet = this.unitAndScalingIdESet;
        this.unitAndScalingIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldUnitAndScalingId, (Object)this.unitAndScalingId, !oldUnitAndScalingIdESet));
        }
    }

    public void unsetUnitAndScalingId() {
        Integer oldUnitAndScalingId = this.unitAndScalingId;
        boolean oldUnitAndScalingIdESet = this.unitAndScalingIdESet;
        this.unitAndScalingId = UNIT_AND_SCALING_ID_EDEFAULT;
        this.unitAndScalingIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldUnitAndScalingId, (Object)UNIT_AND_SCALING_ID_EDEFAULT, oldUnitAndScalingIdESet));
        }
    }

    public boolean isSetUnitAndScalingId() {
        return this.unitAndScalingIdESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getOnBoardMonitorId();
            }
            case 18: {
                return this.getTestId();
            }
            case 19: {
                return this.getUnitAndScalingId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setOnBoardMonitorId((Integer)newValue);
                return;
            }
            case 18: {
                this.setTestId((Integer)newValue);
                return;
            }
            case 19: {
                this.setUnitAndScalingId((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.unsetOnBoardMonitorId();
                return;
            }
            case 18: {
                this.unsetTestId();
                return;
            }
            case 19: {
                this.unsetUnitAndScalingId();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.isSetOnBoardMonitorId();
            }
            case 18: {
                return this.isSetTestId();
            }
            case 19: {
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

