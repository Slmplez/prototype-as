/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.RealizedRunnableT;
import com.etas.amd620.core.ComponentMain.impl.RealizedMethodTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class RealizedRunnableTImpl
extends RealizedMethodTImpl
implements RealizedRunnableT {
    protected static final boolean CAN_BE_INVOKED_CONCURRENTLY_EDEFAULT = false;
    protected boolean canBeInvokedConcurrently = false;
    protected boolean canBeInvokedConcurrentlyESet;
    protected static final double MINIMUM_START_TIME_EDEFAULT = 0.0;
    protected double minimumStartTime = 0.0;
    protected boolean minimumStartTimeESet;

    protected RealizedRunnableTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.REALIZED_RUNNABLE_T;
    }

    @Override
    public boolean isCanBeInvokedConcurrently() {
        return this.canBeInvokedConcurrently;
    }

    @Override
    public void setCanBeInvokedConcurrently(boolean newCanBeInvokedConcurrently) {
        boolean oldCanBeInvokedConcurrently = this.canBeInvokedConcurrently;
        this.canBeInvokedConcurrently = newCanBeInvokedConcurrently;
        boolean oldCanBeInvokedConcurrentlyESet = this.canBeInvokedConcurrentlyESet;
        this.canBeInvokedConcurrentlyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, oldCanBeInvokedConcurrently, this.canBeInvokedConcurrently, !oldCanBeInvokedConcurrentlyESet));
        }
    }

    @Override
    public void unsetCanBeInvokedConcurrently() {
        boolean oldCanBeInvokedConcurrently = this.canBeInvokedConcurrently;
        boolean oldCanBeInvokedConcurrentlyESet = this.canBeInvokedConcurrentlyESet;
        this.canBeInvokedConcurrently = false;
        this.canBeInvokedConcurrentlyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, oldCanBeInvokedConcurrently, false, oldCanBeInvokedConcurrentlyESet));
        }
    }

    @Override
    public boolean isSetCanBeInvokedConcurrently() {
        return this.canBeInvokedConcurrentlyESet;
    }

    @Override
    public double getMinimumStartTime() {
        return this.minimumStartTime;
    }

    @Override
    public void setMinimumStartTime(double newMinimumStartTime) {
        double oldMinimumStartTime = this.minimumStartTime;
        this.minimumStartTime = newMinimumStartTime;
        boolean oldMinimumStartTimeESet = this.minimumStartTimeESet;
        this.minimumStartTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, oldMinimumStartTime, this.minimumStartTime, !oldMinimumStartTimeESet));
        }
    }

    @Override
    public void unsetMinimumStartTime() {
        double oldMinimumStartTime = this.minimumStartTime;
        boolean oldMinimumStartTimeESet = this.minimumStartTimeESet;
        this.minimumStartTime = 0.0;
        this.minimumStartTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, oldMinimumStartTime, 0.0, oldMinimumStartTimeESet));
        }
    }

    @Override
    public boolean isSetMinimumStartTime() {
        return this.minimumStartTimeESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.isCanBeInvokedConcurrently();
            }
            case 18: {
                return this.getMinimumStartTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setCanBeInvokedConcurrently((Boolean)newValue);
                return;
            }
            case 18: {
                this.setMinimumStartTime((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.unsetCanBeInvokedConcurrently();
                return;
            }
            case 18: {
                this.unsetMinimumStartTime();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.isSetCanBeInvokedConcurrently();
            }
            case 18: {
                return this.isSetMinimumStartTime();
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
        result.append(" (canBeInvokedConcurrently: ");
        if (this.canBeInvokedConcurrentlyESet) {
            result.append(this.canBeInvokedConcurrently);
        } else {
            result.append("<unset>");
        }
        result.append(", minimumStartTime: ");
        if (this.minimumStartTimeESet) {
            result.append(this.minimumStartTime);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

