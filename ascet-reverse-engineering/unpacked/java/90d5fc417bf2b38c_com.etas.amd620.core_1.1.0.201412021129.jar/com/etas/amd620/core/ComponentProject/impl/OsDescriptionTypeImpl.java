/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.OperationModesType;
import com.etas.amd620.core.ComponentProject.OsDescriptionType;
import com.etas.amd620.core.ComponentProject.OsSettingsType;
import com.etas.amd620.core.ComponentProject.TasksType;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class OsDescriptionTypeImpl
extends MinimalEObjectImpl.Container
implements OsDescriptionType {
    protected OperationModesType operationModes;
    protected TasksType tasks;
    protected OsSettingsType osSettings;
    protected static final BigInteger COOP_LEVELS_EDEFAULT = null;
    protected BigInteger coopLevels = COOP_LEVELS_EDEFAULT;
    protected static final boolean ENABLE_MONITORING_EDEFAULT = false;
    protected boolean enableMonitoring = false;
    protected boolean enableMonitoringESet;
    protected static final boolean ENABLE_TICK_DURATION_EDEFAULT = false;
    protected boolean enableTickDuration = false;
    protected boolean enableTickDurationESet;
    protected static final BigInteger EVENT_LEVELS_EDEFAULT = null;
    protected BigInteger eventLevels = EVENT_LEVELS_EDEFAULT;
    protected static final String OID_EDEFAULT = null;
    protected String oID = OID_EDEFAULT;
    protected static final BigInteger PREEMP_LEVELS_EDEFAULT = null;
    protected BigInteger preempLevels = PREEMP_LEVELS_EDEFAULT;
    protected static final BigInteger TICK_DURATION_EDEFAULT = null;
    protected BigInteger tickDuration = TICK_DURATION_EDEFAULT;

    protected OsDescriptionTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.OS_DESCRIPTION_TYPE;
    }

    @Override
    public OperationModesType getOperationModes() {
        return this.operationModes;
    }

    public NotificationChain basicSetOperationModes(OperationModesType newOperationModes, NotificationChain msgs) {
        OperationModesType oldOperationModes = this.operationModes;
        this.operationModes = newOperationModes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldOperationModes, (Object)newOperationModes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setOperationModes(OperationModesType newOperationModes) {
        if (newOperationModes != this.operationModes) {
            NotificationChain msgs = null;
            if (this.operationModes != null) {
                msgs = ((InternalEObject)this.operationModes).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newOperationModes != null) {
                msgs = ((InternalEObject)newOperationModes).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetOperationModes(newOperationModes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newOperationModes, (Object)newOperationModes));
        }
    }

    @Override
    public TasksType getTasks() {
        return this.tasks;
    }

    public NotificationChain basicSetTasks(TasksType newTasks, NotificationChain msgs) {
        TasksType oldTasks = this.tasks;
        this.tasks = newTasks;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldTasks, (Object)newTasks);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTasks(TasksType newTasks) {
        if (newTasks != this.tasks) {
            NotificationChain msgs = null;
            if (this.tasks != null) {
                msgs = ((InternalEObject)this.tasks).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newTasks != null) {
                msgs = ((InternalEObject)newTasks).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetTasks(newTasks, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newTasks, (Object)newTasks));
        }
    }

    @Override
    public OsSettingsType getOsSettings() {
        return this.osSettings;
    }

    public NotificationChain basicSetOsSettings(OsSettingsType newOsSettings, NotificationChain msgs) {
        OsSettingsType oldOsSettings = this.osSettings;
        this.osSettings = newOsSettings;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldOsSettings, (Object)newOsSettings);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setOsSettings(OsSettingsType newOsSettings) {
        if (newOsSettings != this.osSettings) {
            NotificationChain msgs = null;
            if (this.osSettings != null) {
                msgs = ((InternalEObject)this.osSettings).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newOsSettings != null) {
                msgs = ((InternalEObject)newOsSettings).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetOsSettings(newOsSettings, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newOsSettings, (Object)newOsSettings));
        }
    }

    @Override
    public BigInteger getCoopLevels() {
        return this.coopLevels;
    }

    @Override
    public void setCoopLevels(BigInteger newCoopLevels) {
        BigInteger oldCoopLevels = this.coopLevels;
        this.coopLevels = newCoopLevels;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldCoopLevels, (Object)this.coopLevels));
        }
    }

    @Override
    public boolean isEnableMonitoring() {
        return this.enableMonitoring;
    }

    @Override
    public void setEnableMonitoring(boolean newEnableMonitoring) {
        boolean oldEnableMonitoring = this.enableMonitoring;
        this.enableMonitoring = newEnableMonitoring;
        boolean oldEnableMonitoringESet = this.enableMonitoringESet;
        this.enableMonitoringESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, oldEnableMonitoring, this.enableMonitoring, !oldEnableMonitoringESet));
        }
    }

    @Override
    public void unsetEnableMonitoring() {
        boolean oldEnableMonitoring = this.enableMonitoring;
        boolean oldEnableMonitoringESet = this.enableMonitoringESet;
        this.enableMonitoring = false;
        this.enableMonitoringESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, oldEnableMonitoring, false, oldEnableMonitoringESet));
        }
    }

    @Override
    public boolean isSetEnableMonitoring() {
        return this.enableMonitoringESet;
    }

    @Override
    public boolean isEnableTickDuration() {
        return this.enableTickDuration;
    }

    @Override
    public void setEnableTickDuration(boolean newEnableTickDuration) {
        boolean oldEnableTickDuration = this.enableTickDuration;
        this.enableTickDuration = newEnableTickDuration;
        boolean oldEnableTickDurationESet = this.enableTickDurationESet;
        this.enableTickDurationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, oldEnableTickDuration, this.enableTickDuration, !oldEnableTickDurationESet));
        }
    }

    @Override
    public void unsetEnableTickDuration() {
        boolean oldEnableTickDuration = this.enableTickDuration;
        boolean oldEnableTickDurationESet = this.enableTickDurationESet;
        this.enableTickDuration = false;
        this.enableTickDurationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, oldEnableTickDuration, false, oldEnableTickDurationESet));
        }
    }

    @Override
    public boolean isSetEnableTickDuration() {
        return this.enableTickDurationESet;
    }

    @Override
    public BigInteger getEventLevels() {
        return this.eventLevels;
    }

    @Override
    public void setEventLevels(BigInteger newEventLevels) {
        BigInteger oldEventLevels = this.eventLevels;
        this.eventLevels = newEventLevels;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldEventLevels, (Object)this.eventLevels));
        }
    }

    @Override
    public String getOID() {
        return this.oID;
    }

    @Override
    public void setOID(String newOID) {
        String oldOID = this.oID;
        this.oID = newOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldOID, (Object)this.oID));
        }
    }

    @Override
    public BigInteger getPreempLevels() {
        return this.preempLevels;
    }

    @Override
    public void setPreempLevels(BigInteger newPreempLevels) {
        BigInteger oldPreempLevels = this.preempLevels;
        this.preempLevels = newPreempLevels;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldPreempLevels, (Object)this.preempLevels));
        }
    }

    @Override
    public BigInteger getTickDuration() {
        return this.tickDuration;
    }

    @Override
    public void setTickDuration(BigInteger newTickDuration) {
        BigInteger oldTickDuration = this.tickDuration;
        this.tickDuration = newTickDuration;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldTickDuration, (Object)this.tickDuration));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetOperationModes(null, msgs);
            }
            case 1: {
                return this.basicSetTasks(null, msgs);
            }
            case 2: {
                return this.basicSetOsSettings(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getOperationModes();
            }
            case 1: {
                return this.getTasks();
            }
            case 2: {
                return this.getOsSettings();
            }
            case 3: {
                return this.getCoopLevels();
            }
            case 4: {
                return this.isEnableMonitoring();
            }
            case 5: {
                return this.isEnableTickDuration();
            }
            case 6: {
                return this.getEventLevels();
            }
            case 7: {
                return this.getOID();
            }
            case 8: {
                return this.getPreempLevels();
            }
            case 9: {
                return this.getTickDuration();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setOperationModes((OperationModesType)newValue);
                return;
            }
            case 1: {
                this.setTasks((TasksType)newValue);
                return;
            }
            case 2: {
                this.setOsSettings((OsSettingsType)newValue);
                return;
            }
            case 3: {
                this.setCoopLevels((BigInteger)newValue);
                return;
            }
            case 4: {
                this.setEnableMonitoring((Boolean)newValue);
                return;
            }
            case 5: {
                this.setEnableTickDuration((Boolean)newValue);
                return;
            }
            case 6: {
                this.setEventLevels((BigInteger)newValue);
                return;
            }
            case 7: {
                this.setOID((String)newValue);
                return;
            }
            case 8: {
                this.setPreempLevels((BigInteger)newValue);
                return;
            }
            case 9: {
                this.setTickDuration((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setOperationModes(null);
                return;
            }
            case 1: {
                this.setTasks(null);
                return;
            }
            case 2: {
                this.setOsSettings(null);
                return;
            }
            case 3: {
                this.setCoopLevels(COOP_LEVELS_EDEFAULT);
                return;
            }
            case 4: {
                this.unsetEnableMonitoring();
                return;
            }
            case 5: {
                this.unsetEnableTickDuration();
                return;
            }
            case 6: {
                this.setEventLevels(EVENT_LEVELS_EDEFAULT);
                return;
            }
            case 7: {
                this.setOID(OID_EDEFAULT);
                return;
            }
            case 8: {
                this.setPreempLevels(PREEMP_LEVELS_EDEFAULT);
                return;
            }
            case 9: {
                this.setTickDuration(TICK_DURATION_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.operationModes != null;
            }
            case 1: {
                return this.tasks != null;
            }
            case 2: {
                return this.osSettings != null;
            }
            case 3: {
                return COOP_LEVELS_EDEFAULT == null ? this.coopLevels != null : !COOP_LEVELS_EDEFAULT.equals(this.coopLevels);
            }
            case 4: {
                return this.isSetEnableMonitoring();
            }
            case 5: {
                return this.isSetEnableTickDuration();
            }
            case 6: {
                return EVENT_LEVELS_EDEFAULT == null ? this.eventLevels != null : !EVENT_LEVELS_EDEFAULT.equals(this.eventLevels);
            }
            case 7: {
                return OID_EDEFAULT == null ? this.oID != null : !OID_EDEFAULT.equals(this.oID);
            }
            case 8: {
                return PREEMP_LEVELS_EDEFAULT == null ? this.preempLevels != null : !PREEMP_LEVELS_EDEFAULT.equals(this.preempLevels);
            }
            case 9: {
                return TICK_DURATION_EDEFAULT == null ? this.tickDuration != null : !TICK_DURATION_EDEFAULT.equals(this.tickDuration);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (coopLevels: ");
        result.append(this.coopLevels);
        result.append(", enableMonitoring: ");
        if (this.enableMonitoringESet) {
            result.append(this.enableMonitoring);
        } else {
            result.append("<unset>");
        }
        result.append(", enableTickDuration: ");
        if (this.enableTickDurationESet) {
            result.append(this.enableTickDuration);
        } else {
            result.append("<unset>");
        }
        result.append(", eventLevels: ");
        result.append(this.eventLevels);
        result.append(", oID: ");
        result.append(this.oID);
        result.append(", preempLevels: ");
        result.append(this.preempLevels);
        result.append(", tickDuration: ");
        result.append(this.tickDuration);
        result.append(')');
        return result.toString();
    }
}

