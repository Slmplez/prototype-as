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

import com.etas.amd620.core.ComponentProject.AlarmType;
import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.InitType;
import com.etas.amd620.core.ComponentProject.InterruptType;
import com.etas.amd620.core.ComponentProject.SoftwareType;
import com.etas.amd620.core.ComponentProject.TaskTypeType;
import com.etas.amd620.core.ComponentProject.TimetableType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class TaskTypeTypeImpl
extends MinimalEObjectImpl.Container
implements TaskTypeType {
    protected InterruptType interrupt;
    protected AlarmType alarm;
    protected TimetableType timetable;
    protected SoftwareType software;
    protected InitType init;

    protected TaskTypeTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.TASK_TYPE_TYPE;
    }

    @Override
    public InterruptType getInterrupt() {
        return this.interrupt;
    }

    public NotificationChain basicSetInterrupt(InterruptType newInterrupt, NotificationChain msgs) {
        InterruptType oldInterrupt = this.interrupt;
        this.interrupt = newInterrupt;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldInterrupt, (Object)newInterrupt);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInterrupt(InterruptType newInterrupt) {
        if (newInterrupt != this.interrupt) {
            NotificationChain msgs = null;
            if (this.interrupt != null) {
                msgs = ((InternalEObject)this.interrupt).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newInterrupt != null) {
                msgs = ((InternalEObject)newInterrupt).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetInterrupt(newInterrupt, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newInterrupt, (Object)newInterrupt));
        }
    }

    @Override
    public AlarmType getAlarm() {
        return this.alarm;
    }

    public NotificationChain basicSetAlarm(AlarmType newAlarm, NotificationChain msgs) {
        AlarmType oldAlarm = this.alarm;
        this.alarm = newAlarm;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldAlarm, (Object)newAlarm);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setAlarm(AlarmType newAlarm) {
        if (newAlarm != this.alarm) {
            NotificationChain msgs = null;
            if (this.alarm != null) {
                msgs = ((InternalEObject)this.alarm).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newAlarm != null) {
                msgs = ((InternalEObject)newAlarm).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetAlarm(newAlarm, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newAlarm, (Object)newAlarm));
        }
    }

    @Override
    public TimetableType getTimetable() {
        return this.timetable;
    }

    public NotificationChain basicSetTimetable(TimetableType newTimetable, NotificationChain msgs) {
        TimetableType oldTimetable = this.timetable;
        this.timetable = newTimetable;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldTimetable, (Object)newTimetable);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTimetable(TimetableType newTimetable) {
        if (newTimetable != this.timetable) {
            NotificationChain msgs = null;
            if (this.timetable != null) {
                msgs = ((InternalEObject)this.timetable).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newTimetable != null) {
                msgs = ((InternalEObject)newTimetable).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetTimetable(newTimetable, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newTimetable, (Object)newTimetable));
        }
    }

    @Override
    public SoftwareType getSoftware() {
        return this.software;
    }

    public NotificationChain basicSetSoftware(SoftwareType newSoftware, NotificationChain msgs) {
        SoftwareType oldSoftware = this.software;
        this.software = newSoftware;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldSoftware, (Object)newSoftware);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSoftware(SoftwareType newSoftware) {
        if (newSoftware != this.software) {
            NotificationChain msgs = null;
            if (this.software != null) {
                msgs = ((InternalEObject)this.software).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newSoftware != null) {
                msgs = ((InternalEObject)newSoftware).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetSoftware(newSoftware, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newSoftware, (Object)newSoftware));
        }
    }

    @Override
    public InitType getInit() {
        return this.init;
    }

    public NotificationChain basicSetInit(InitType newInit, NotificationChain msgs) {
        InitType oldInit = this.init;
        this.init = newInit;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldInit, (Object)newInit);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInit(InitType newInit) {
        if (newInit != this.init) {
            NotificationChain msgs = null;
            if (this.init != null) {
                msgs = ((InternalEObject)this.init).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newInit != null) {
                msgs = ((InternalEObject)newInit).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetInit(newInit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newInit, (Object)newInit));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetInterrupt(null, msgs);
            }
            case 1: {
                return this.basicSetAlarm(null, msgs);
            }
            case 2: {
                return this.basicSetTimetable(null, msgs);
            }
            case 3: {
                return this.basicSetSoftware(null, msgs);
            }
            case 4: {
                return this.basicSetInit(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getInterrupt();
            }
            case 1: {
                return this.getAlarm();
            }
            case 2: {
                return this.getTimetable();
            }
            case 3: {
                return this.getSoftware();
            }
            case 4: {
                return this.getInit();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setInterrupt((InterruptType)newValue);
                return;
            }
            case 1: {
                this.setAlarm((AlarmType)newValue);
                return;
            }
            case 2: {
                this.setTimetable((TimetableType)newValue);
                return;
            }
            case 3: {
                this.setSoftware((SoftwareType)newValue);
                return;
            }
            case 4: {
                this.setInit((InitType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setInterrupt(null);
                return;
            }
            case 1: {
                this.setAlarm(null);
                return;
            }
            case 2: {
                this.setTimetable(null);
                return;
            }
            case 3: {
                this.setSoftware(null);
                return;
            }
            case 4: {
                this.setInit(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.interrupt != null;
            }
            case 1: {
                return this.alarm != null;
            }
            case 2: {
                return this.timetable != null;
            }
            case 3: {
                return this.software != null;
            }
            case 4: {
                return this.init != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

