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

import autosar40.commonstructure.resourceconsumption.executiontime.AnalyzedExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar40.commonstructure.resourceconsumption.executiontime.impl.ExecutionTimeImpl;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class AnalyzedExecutionTimeImpl
extends ExecutionTimeImpl
implements AnalyzedExecutionTime {
    protected MultidimensionalTime bestCaseExecutionTime;
    protected MultidimensionalTime worstCaseExecutionTime;

    protected AnalyzedExecutionTimeImpl() {
    }

    protected EClass eStaticClass() {
        return ExecutiontimePackage.Literals.ANALYZED_EXECUTION_TIME;
    }

    public MultidimensionalTime getBestCaseExecutionTime() {
        return this.bestCaseExecutionTime;
    }

    public NotificationChain basicSetBestCaseExecutionTime(MultidimensionalTime newBestCaseExecutionTime, NotificationChain msgs) {
        MultidimensionalTime oldBestCaseExecutionTime = this.bestCaseExecutionTime;
        this.bestCaseExecutionTime = newBestCaseExecutionTime;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldBestCaseExecutionTime, (Object)newBestCaseExecutionTime);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setBestCaseExecutionTime(MultidimensionalTime newBestCaseExecutionTime) {
        if (newBestCaseExecutionTime != this.bestCaseExecutionTime) {
            NotificationChain msgs = null;
            if (this.bestCaseExecutionTime != null) {
                msgs = ((InternalEObject)this.bestCaseExecutionTime).eInverseRemove((InternalEObject)this, -28, null, msgs);
            }
            if (newBestCaseExecutionTime != null) {
                msgs = ((InternalEObject)newBestCaseExecutionTime).eInverseAdd((InternalEObject)this, -28, null, msgs);
            }
            if ((msgs = this.basicSetBestCaseExecutionTime(newBestCaseExecutionTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)newBestCaseExecutionTime, (Object)newBestCaseExecutionTime));
        }
    }

    public MultidimensionalTime getWorstCaseExecutionTime() {
        return this.worstCaseExecutionTime;
    }

    public NotificationChain basicSetWorstCaseExecutionTime(MultidimensionalTime newWorstCaseExecutionTime, NotificationChain msgs) {
        MultidimensionalTime oldWorstCaseExecutionTime = this.worstCaseExecutionTime;
        this.worstCaseExecutionTime = newWorstCaseExecutionTime;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldWorstCaseExecutionTime, (Object)newWorstCaseExecutionTime);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setWorstCaseExecutionTime(MultidimensionalTime newWorstCaseExecutionTime) {
        if (newWorstCaseExecutionTime != this.worstCaseExecutionTime) {
            NotificationChain msgs = null;
            if (this.worstCaseExecutionTime != null) {
                msgs = ((InternalEObject)this.worstCaseExecutionTime).eInverseRemove((InternalEObject)this, -29, null, msgs);
            }
            if (newWorstCaseExecutionTime != null) {
                msgs = ((InternalEObject)newWorstCaseExecutionTime).eInverseAdd((InternalEObject)this, -29, null, msgs);
            }
            if ((msgs = this.basicSetWorstCaseExecutionTime(newWorstCaseExecutionTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)newWorstCaseExecutionTime, (Object)newWorstCaseExecutionTime));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 27: {
                return this.basicSetBestCaseExecutionTime(null, msgs);
            }
            case 28: {
                return this.basicSetWorstCaseExecutionTime(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 27: {
                return this.getBestCaseExecutionTime();
            }
            case 28: {
                return this.getWorstCaseExecutionTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 27: {
                this.setBestCaseExecutionTime((MultidimensionalTime)newValue);
                return;
            }
            case 28: {
                this.setWorstCaseExecutionTime((MultidimensionalTime)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 27: {
                this.setBestCaseExecutionTime(null);
                return;
            }
            case 28: {
                this.setWorstCaseExecutionTime(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 27: {
                return this.bestCaseExecutionTime != null;
            }
            case 28: {
                return this.worstCaseExecutionTime != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

