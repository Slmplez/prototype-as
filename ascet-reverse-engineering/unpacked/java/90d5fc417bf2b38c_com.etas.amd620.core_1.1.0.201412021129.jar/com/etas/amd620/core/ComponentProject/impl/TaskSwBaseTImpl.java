/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.SchedulingType;
import com.etas.amd620.core.ComponentProject.TaskSwBaseT;
import com.etas.amd620.core.ComponentProject.impl.TaskBaseTImpl;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TaskSwBaseTImpl
extends TaskBaseTImpl
implements TaskSwBaseT {
    protected static final boolean DEADLINE_EDEFAULT = false;
    protected boolean deadline = false;
    protected boolean deadlineESet;
    protected static final BigInteger DEADLINE_VALUE_EDEFAULT = null;
    protected BigInteger deadlineValue = DEADLINE_VALUE_EDEFAULT;
    protected static final BigInteger MAX_NO_ACTIVATIONS_EDEFAULT = null;
    protected BigInteger maxNoActivations = MAX_NO_ACTIVATIONS_EDEFAULT;
    protected static final SchedulingType SCHEDULING_EDEFAULT = SchedulingType.COOPERATIVE;
    protected SchedulingType scheduling = SCHEDULING_EDEFAULT;
    protected boolean schedulingESet;

    protected TaskSwBaseTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.TASK_SW_BASE_T;
    }

    @Override
    public boolean isDeadline() {
        return this.deadline;
    }

    @Override
    public void setDeadline(boolean newDeadline) {
        boolean oldDeadline = this.deadline;
        this.deadline = newDeadline;
        boolean oldDeadlineESet = this.deadlineESet;
        this.deadlineESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, oldDeadline, this.deadline, !oldDeadlineESet));
        }
    }

    @Override
    public void unsetDeadline() {
        boolean oldDeadline = this.deadline;
        boolean oldDeadlineESet = this.deadlineESet;
        this.deadline = false;
        this.deadlineESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 2, oldDeadline, false, oldDeadlineESet));
        }
    }

    @Override
    public boolean isSetDeadline() {
        return this.deadlineESet;
    }

    @Override
    public BigInteger getDeadlineValue() {
        return this.deadlineValue;
    }

    @Override
    public void setDeadlineValue(BigInteger newDeadlineValue) {
        BigInteger oldDeadlineValue = this.deadlineValue;
        this.deadlineValue = newDeadlineValue;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldDeadlineValue, (Object)this.deadlineValue));
        }
    }

    @Override
    public BigInteger getMaxNoActivations() {
        return this.maxNoActivations;
    }

    @Override
    public void setMaxNoActivations(BigInteger newMaxNoActivations) {
        BigInteger oldMaxNoActivations = this.maxNoActivations;
        this.maxNoActivations = newMaxNoActivations;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMaxNoActivations, (Object)this.maxNoActivations));
        }
    }

    @Override
    public SchedulingType getScheduling() {
        return this.scheduling;
    }

    @Override
    public void setScheduling(SchedulingType newScheduling) {
        SchedulingType oldScheduling = this.scheduling;
        this.scheduling = newScheduling == null ? SCHEDULING_EDEFAULT : newScheduling;
        boolean oldSchedulingESet = this.schedulingESet;
        this.schedulingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldScheduling, (Object)this.scheduling, !oldSchedulingESet));
        }
    }

    @Override
    public void unsetScheduling() {
        SchedulingType oldScheduling = this.scheduling;
        boolean oldSchedulingESet = this.schedulingESet;
        this.scheduling = SCHEDULING_EDEFAULT;
        this.schedulingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldScheduling, (Object)SCHEDULING_EDEFAULT, oldSchedulingESet));
        }
    }

    @Override
    public boolean isSetScheduling() {
        return this.schedulingESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 2: {
                return this.isDeadline();
            }
            case 3: {
                return this.getDeadlineValue();
            }
            case 4: {
                return this.getMaxNoActivations();
            }
            case 5: {
                return this.getScheduling();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 2: {
                this.setDeadline((Boolean)newValue);
                return;
            }
            case 3: {
                this.setDeadlineValue((BigInteger)newValue);
                return;
            }
            case 4: {
                this.setMaxNoActivations((BigInteger)newValue);
                return;
            }
            case 5: {
                this.setScheduling((SchedulingType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 2: {
                this.unsetDeadline();
                return;
            }
            case 3: {
                this.setDeadlineValue(DEADLINE_VALUE_EDEFAULT);
                return;
            }
            case 4: {
                this.setMaxNoActivations(MAX_NO_ACTIVATIONS_EDEFAULT);
                return;
            }
            case 5: {
                this.unsetScheduling();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 2: {
                return this.isSetDeadline();
            }
            case 3: {
                return DEADLINE_VALUE_EDEFAULT == null ? this.deadlineValue != null : !DEADLINE_VALUE_EDEFAULT.equals(this.deadlineValue);
            }
            case 4: {
                return MAX_NO_ACTIVATIONS_EDEFAULT == null ? this.maxNoActivations != null : !MAX_NO_ACTIVATIONS_EDEFAULT.equals(this.maxNoActivations);
            }
            case 5: {
                return this.isSetScheduling();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (deadline: ");
        if (this.deadlineESet) {
            result.append(this.deadline);
        } else {
            result.append("<unset>");
        }
        result.append(", deadlineValue: ");
        result.append(this.deadlineValue);
        result.append(", maxNoActivations: ");
        result.append(this.maxNoActivations);
        result.append(", scheduling: ");
        if (this.schedulingESet) {
            result.append((Object)this.scheduling);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

