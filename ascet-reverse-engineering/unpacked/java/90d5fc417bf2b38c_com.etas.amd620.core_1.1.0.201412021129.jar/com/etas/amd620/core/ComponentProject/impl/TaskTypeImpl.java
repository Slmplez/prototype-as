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
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.AssignedOperationModesType;
import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.ProcessType;
import com.etas.amd620.core.ComponentProject.TaskType;
import com.etas.amd620.core.ComponentProject.TaskTypeType;
import java.math.BigInteger;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

public class TaskTypeImpl
extends MinimalEObjectImpl.Container
implements TaskType {
    protected EList<ProcessType> process;
    protected AssignedOperationModesType assignedOperationModes;
    protected TaskTypeType taskType;
    protected static final BigInteger ID_EDEFAULT = null;
    protected BigInteger id = ID_EDEFAULT;
    protected static final boolean IS_CONTINUOUS_TIME_EDEFAULT = false;
    protected boolean isContinuousTime = false;
    protected boolean isContinuousTimeESet;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;

    protected TaskTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.TASK_TYPE;
    }

    @Override
    public EList<ProcessType> getProcess() {
        if (this.process == null) {
            this.process = new EObjectContainmentEList(ProcessType.class, (InternalEObject)this, 0);
        }
        return this.process;
    }

    @Override
    public AssignedOperationModesType getAssignedOperationModes() {
        return this.assignedOperationModes;
    }

    public NotificationChain basicSetAssignedOperationModes(AssignedOperationModesType newAssignedOperationModes, NotificationChain msgs) {
        AssignedOperationModesType oldAssignedOperationModes = this.assignedOperationModes;
        this.assignedOperationModes = newAssignedOperationModes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldAssignedOperationModes, (Object)newAssignedOperationModes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setAssignedOperationModes(AssignedOperationModesType newAssignedOperationModes) {
        if (newAssignedOperationModes != this.assignedOperationModes) {
            NotificationChain msgs = null;
            if (this.assignedOperationModes != null) {
                msgs = ((InternalEObject)this.assignedOperationModes).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newAssignedOperationModes != null) {
                msgs = ((InternalEObject)newAssignedOperationModes).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetAssignedOperationModes(newAssignedOperationModes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newAssignedOperationModes, (Object)newAssignedOperationModes));
        }
    }

    @Override
    public TaskTypeType getTaskType() {
        return this.taskType;
    }

    public NotificationChain basicSetTaskType(TaskTypeType newTaskType, NotificationChain msgs) {
        TaskTypeType oldTaskType = this.taskType;
        this.taskType = newTaskType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldTaskType, (Object)newTaskType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTaskType(TaskTypeType newTaskType) {
        if (newTaskType != this.taskType) {
            NotificationChain msgs = null;
            if (this.taskType != null) {
                msgs = ((InternalEObject)this.taskType).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newTaskType != null) {
                msgs = ((InternalEObject)newTaskType).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetTaskType(newTaskType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newTaskType, (Object)newTaskType));
        }
    }

    @Override
    public BigInteger getId() {
        return this.id;
    }

    @Override
    public void setId(BigInteger newId) {
        BigInteger oldId = this.id;
        this.id = newId;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldId, (Object)this.id));
        }
    }

    @Override
    public boolean isIsContinuousTime() {
        return this.isContinuousTime;
    }

    @Override
    public void setIsContinuousTime(boolean newIsContinuousTime) {
        boolean oldIsContinuousTime = this.isContinuousTime;
        this.isContinuousTime = newIsContinuousTime;
        boolean oldIsContinuousTimeESet = this.isContinuousTimeESet;
        this.isContinuousTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, oldIsContinuousTime, this.isContinuousTime, !oldIsContinuousTimeESet));
        }
    }

    @Override
    public void unsetIsContinuousTime() {
        boolean oldIsContinuousTime = this.isContinuousTime;
        boolean oldIsContinuousTimeESet = this.isContinuousTimeESet;
        this.isContinuousTime = false;
        this.isContinuousTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, oldIsContinuousTime, false, oldIsContinuousTimeESet));
        }
    }

    @Override
    public boolean isSetIsContinuousTime() {
        return this.isContinuousTimeESet;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String newName) {
        String oldName = this.name;
        this.name = newName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldName, (Object)this.name));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getProcess()).basicRemove((Object)otherEnd, msgs);
            }
            case 1: {
                return this.basicSetAssignedOperationModes(null, msgs);
            }
            case 2: {
                return this.basicSetTaskType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getProcess();
            }
            case 1: {
                return this.getAssignedOperationModes();
            }
            case 2: {
                return this.getTaskType();
            }
            case 3: {
                return this.getId();
            }
            case 4: {
                return this.isIsContinuousTime();
            }
            case 5: {
                return this.getName();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getProcess().clear();
                this.getProcess().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setAssignedOperationModes((AssignedOperationModesType)newValue);
                return;
            }
            case 2: {
                this.setTaskType((TaskTypeType)newValue);
                return;
            }
            case 3: {
                this.setId((BigInteger)newValue);
                return;
            }
            case 4: {
                this.setIsContinuousTime((Boolean)newValue);
                return;
            }
            case 5: {
                this.setName((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getProcess().clear();
                return;
            }
            case 1: {
                this.setAssignedOperationModes(null);
                return;
            }
            case 2: {
                this.setTaskType(null);
                return;
            }
            case 3: {
                this.setId(ID_EDEFAULT);
                return;
            }
            case 4: {
                this.unsetIsContinuousTime();
                return;
            }
            case 5: {
                this.setName(NAME_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.process != null && !this.process.isEmpty();
            }
            case 1: {
                return this.assignedOperationModes != null;
            }
            case 2: {
                return this.taskType != null;
            }
            case 3: {
                return ID_EDEFAULT == null ? this.id != null : !ID_EDEFAULT.equals(this.id);
            }
            case 4: {
                return this.isSetIsContinuousTime();
            }
            case 5: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (id: ");
        result.append(this.id);
        result.append(", isContinuousTime: ");
        if (this.isContinuousTimeESet) {
            result.append(this.isContinuousTime);
        } else {
            result.append("<unset>");
        }
        result.append(", name: ");
        result.append(this.name);
        result.append(')');
        return result.toString();
    }
}

