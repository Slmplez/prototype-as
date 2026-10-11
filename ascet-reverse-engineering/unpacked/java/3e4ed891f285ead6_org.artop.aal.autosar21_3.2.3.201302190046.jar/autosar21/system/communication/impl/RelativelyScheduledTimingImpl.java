/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.system.communication.impl;

import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.RelativelyScheduledTiming;
import autosar21.system.communication.impl.TimingImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class RelativelyScheduledTimingImpl
extends TimingImpl
implements RelativelyScheduledTiming {
    protected static final Integer DELAY_EDEFAULT = new Integer(0);
    protected Integer delay = DELAY_EDEFAULT;
    protected boolean delayESet;
    protected static final Integer POSITION_IN_TABLE_EDEFAULT = new Integer(0);
    protected Integer positionInTable = POSITION_IN_TABLE_EDEFAULT;
    protected boolean positionInTableESet;
    protected static final String SCHEDULE_TABLE_NAME_EDEFAULT = "";
    protected String scheduleTableName = "";
    protected boolean scheduleTableNameESet;

    protected RelativelyScheduledTimingImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.RELATIVELY_SCHEDULED_TIMING;
    }

    public Integer getDelay() {
        return this.delay;
    }

    public void setDelay(Integer newDelay) {
        Integer oldDelay = this.delay;
        this.delay = newDelay;
        boolean oldDelayESet = this.delayESet;
        this.delayESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDelay, (Object)this.delay, !oldDelayESet));
        }
    }

    public void unsetDelay() {
        Integer oldDelay = this.delay;
        boolean oldDelayESet = this.delayESet;
        this.delay = DELAY_EDEFAULT;
        this.delayESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldDelay, (Object)DELAY_EDEFAULT, oldDelayESet));
        }
    }

    public boolean isSetDelay() {
        return this.delayESet;
    }

    public Integer getPositionInTable() {
        return this.positionInTable;
    }

    public void setPositionInTable(Integer newPositionInTable) {
        Integer oldPositionInTable = this.positionInTable;
        this.positionInTable = newPositionInTable;
        boolean oldPositionInTableESet = this.positionInTableESet;
        this.positionInTableESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPositionInTable, (Object)this.positionInTable, !oldPositionInTableESet));
        }
    }

    public void unsetPositionInTable() {
        Integer oldPositionInTable = this.positionInTable;
        boolean oldPositionInTableESet = this.positionInTableESet;
        this.positionInTable = POSITION_IN_TABLE_EDEFAULT;
        this.positionInTableESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldPositionInTable, (Object)POSITION_IN_TABLE_EDEFAULT, oldPositionInTableESet));
        }
    }

    public boolean isSetPositionInTable() {
        return this.positionInTableESet;
    }

    public String getScheduleTableName() {
        return this.scheduleTableName;
    }

    public void setScheduleTableName(String newScheduleTableName) {
        String oldScheduleTableName = this.scheduleTableName;
        this.scheduleTableName = newScheduleTableName;
        boolean oldScheduleTableNameESet = this.scheduleTableNameESet;
        this.scheduleTableNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldScheduleTableName, (Object)this.scheduleTableName, !oldScheduleTableNameESet));
        }
    }

    public void unsetScheduleTableName() {
        String oldScheduleTableName = this.scheduleTableName;
        boolean oldScheduleTableNameESet = this.scheduleTableNameESet;
        this.scheduleTableName = SCHEDULE_TABLE_NAME_EDEFAULT;
        this.scheduleTableNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldScheduleTableName, (Object)SCHEDULE_TABLE_NAME_EDEFAULT, oldScheduleTableNameESet));
        }
    }

    public boolean isSetScheduleTableName() {
        return this.scheduleTableNameESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getDelay();
            }
            case 6: {
                return this.getPositionInTable();
            }
            case 7: {
                return this.getScheduleTableName();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setDelay((Integer)newValue);
                return;
            }
            case 6: {
                this.setPositionInTable((Integer)newValue);
                return;
            }
            case 7: {
                this.setScheduleTableName((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetDelay();
                return;
            }
            case 6: {
                this.unsetPositionInTable();
                return;
            }
            case 7: {
                this.unsetScheduleTableName();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetDelay();
            }
            case 6: {
                return this.isSetPositionInTable();
            }
            case 7: {
                return this.isSetScheduleTableName();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (delay: ");
        if (this.delayESet) {
            result.append(this.delay);
        } else {
            result.append("<unset>");
        }
        result.append(", positionInTable: ");
        if (this.positionInTableESet) {
            result.append(this.positionInTable);
        } else {
            result.append("<unset>");
        }
        result.append(", scheduleTableName: ");
        if (this.scheduleTableNameESet) {
            result.append(this.scheduleTableName);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

