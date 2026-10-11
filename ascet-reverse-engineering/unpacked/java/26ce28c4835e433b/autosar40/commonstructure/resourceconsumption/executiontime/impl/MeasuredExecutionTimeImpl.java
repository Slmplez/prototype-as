/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.resourceconsumption.executiontime.impl;

import autosar40.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar40.commonstructure.resourceconsumption.executiontime.MeasuredExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.impl.ExecutionTimeImpl;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class MeasuredExecutionTimeImpl
extends ExecutionTimeImpl
implements MeasuredExecutionTime {
    protected MultidimensionalTime maximumExecutionTime;
    protected MultidimensionalTime minimumExecutionTime;
    protected MultidimensionalTime nominalExecutionTime;

    protected MeasuredExecutionTimeImpl() {
    }

    protected EClass eStaticClass() {
        return ExecutiontimePackage.Literals.MEASURED_EXECUTION_TIME;
    }

    public MultidimensionalTime getMaximumExecutionTime() {
        return this.maximumExecutionTime;
    }

    public NotificationChain basicSetMaximumExecutionTime(MultidimensionalTime newMaximumExecutionTime, NotificationChain msgs) {
        MultidimensionalTime oldMaximumExecutionTime = this.maximumExecutionTime;
        this.maximumExecutionTime = newMaximumExecutionTime;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldMaximumExecutionTime, (Object)newMaximumExecutionTime);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMaximumExecutionTime(MultidimensionalTime newMaximumExecutionTime) {
        if (newMaximumExecutionTime != this.maximumExecutionTime) {
            NotificationChain msgs = null;
            if (this.maximumExecutionTime != null) {
                msgs = ((InternalEObject)this.maximumExecutionTime).eInverseRemove((InternalEObject)this, -28, null, msgs);
            }
            if (newMaximumExecutionTime != null) {
                msgs = ((InternalEObject)newMaximumExecutionTime).eInverseAdd((InternalEObject)this, -28, null, msgs);
            }
            if ((msgs = this.basicSetMaximumExecutionTime(newMaximumExecutionTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)newMaximumExecutionTime, (Object)newMaximumExecutionTime));
        }
    }

    public MultidimensionalTime getMinimumExecutionTime() {
        return this.minimumExecutionTime;
    }

    public NotificationChain basicSetMinimumExecutionTime(MultidimensionalTime newMinimumExecutionTime, NotificationChain msgs) {
        MultidimensionalTime oldMinimumExecutionTime = this.minimumExecutionTime;
        this.minimumExecutionTime = newMinimumExecutionTime;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldMinimumExecutionTime, (Object)newMinimumExecutionTime);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMinimumExecutionTime(MultidimensionalTime newMinimumExecutionTime) {
        if (newMinimumExecutionTime != this.minimumExecutionTime) {
            NotificationChain msgs = null;
            if (this.minimumExecutionTime != null) {
                msgs = ((InternalEObject)this.minimumExecutionTime).eInverseRemove((InternalEObject)this, -29, null, msgs);
            }
            if (newMinimumExecutionTime != null) {
                msgs = ((InternalEObject)newMinimumExecutionTime).eInverseAdd((InternalEObject)this, -29, null, msgs);
            }
            if ((msgs = this.basicSetMinimumExecutionTime(newMinimumExecutionTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)newMinimumExecutionTime, (Object)newMinimumExecutionTime));
        }
    }

    public MultidimensionalTime getNominalExecutionTime() {
        return this.nominalExecutionTime;
    }

    public NotificationChain basicSetNominalExecutionTime(MultidimensionalTime newNominalExecutionTime, NotificationChain msgs) {
        MultidimensionalTime oldNominalExecutionTime = this.nominalExecutionTime;
        this.nominalExecutionTime = newNominalExecutionTime;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldNominalExecutionTime, (Object)newNominalExecutionTime);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setNominalExecutionTime(MultidimensionalTime newNominalExecutionTime) {
        if (newNominalExecutionTime != this.nominalExecutionTime) {
            NotificationChain msgs = null;
            if (this.nominalExecutionTime != null) {
                msgs = ((InternalEObject)this.nominalExecutionTime).eInverseRemove((InternalEObject)this, -30, null, msgs);
            }
            if (newNominalExecutionTime != null) {
                msgs = ((InternalEObject)newNominalExecutionTime).eInverseAdd((InternalEObject)this, -30, null, msgs);
            }
            if ((msgs = this.basicSetNominalExecutionTime(newNominalExecutionTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)newNominalExecutionTime, (Object)newNominalExecutionTime));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 27: {
                return this.basicSetMaximumExecutionTime(null, msgs);
            }
            case 28: {
                return this.basicSetMinimumExecutionTime(null, msgs);
            }
            case 29: {
                return this.basicSetNominalExecutionTime(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 27: {
                return this.getMaximumExecutionTime();
            }
            case 28: {
                return this.getMinimumExecutionTime();
            }
            case 29: {
                return this.getNominalExecutionTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 27: {
                this.setMaximumExecutionTime((MultidimensionalTime)newValue);
                return;
            }
            case 28: {
                this.setMinimumExecutionTime((MultidimensionalTime)newValue);
                return;
            }
            case 29: {
                this.setNominalExecutionTime((MultidimensionalTime)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 27: {
                this.setMaximumExecutionTime(null);
                return;
            }
            case 28: {
                this.setMinimumExecutionTime(null);
                return;
            }
            case 29: {
                this.setNominalExecutionTime(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 27: {
                return this.maximumExecutionTime != null;
            }
            case 28: {
                return this.minimumExecutionTime != null;
            }
            case 29: {
                return this.nominalExecutionTime != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

