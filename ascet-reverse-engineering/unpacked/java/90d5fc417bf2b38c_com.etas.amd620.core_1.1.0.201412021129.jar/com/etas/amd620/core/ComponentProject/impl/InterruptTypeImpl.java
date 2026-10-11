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
import com.etas.amd620.core.ComponentProject.InterruptType;
import com.etas.amd620.core.ComponentProject.impl.TaskBaseTImpl;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class InterruptTypeImpl
extends TaskBaseTImpl
implements InterruptType {
    protected static final BigInteger EVENT_ID_EDEFAULT = null;
    protected BigInteger eventId = EVENT_ID_EDEFAULT;
    protected static final String ISR_SOURCE_EDEFAULT = null;
    protected String isrSource = ISR_SOURCE_EDEFAULT;
    protected static final BigInteger MAX_PRIO_EDEFAULT = null;
    protected BigInteger maxPrio = MAX_PRIO_EDEFAULT;
    protected static final boolean MINIMUM_PERIOD_EDEFAULT = false;
    protected boolean minimumPeriod = false;
    protected boolean minimumPeriodESet;
    protected static final double MINIMUM_PERIOD_VALUE_EDEFAULT = 0.0;
    protected double minimumPeriodValue = 0.0;
    protected boolean minimumPeriodValueESet;
    protected static final BigInteger MIN_PRIO_EDEFAULT = null;
    protected BigInteger minPrio = MIN_PRIO_EDEFAULT;

    protected InterruptTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.INTERRUPT_TYPE;
    }

    @Override
    public BigInteger getEventId() {
        return this.eventId;
    }

    @Override
    public void setEventId(BigInteger newEventId) {
        BigInteger oldEventId = this.eventId;
        this.eventId = newEventId;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldEventId, (Object)this.eventId));
        }
    }

    @Override
    public String getIsrSource() {
        return this.isrSource;
    }

    @Override
    public void setIsrSource(String newIsrSource) {
        String oldIsrSource = this.isrSource;
        this.isrSource = newIsrSource;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldIsrSource, (Object)this.isrSource));
        }
    }

    @Override
    public BigInteger getMaxPrio() {
        return this.maxPrio;
    }

    @Override
    public void setMaxPrio(BigInteger newMaxPrio) {
        BigInteger oldMaxPrio = this.maxPrio;
        this.maxPrio = newMaxPrio;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMaxPrio, (Object)this.maxPrio));
        }
    }

    @Override
    public boolean isMinimumPeriod() {
        return this.minimumPeriod;
    }

    @Override
    public void setMinimumPeriod(boolean newMinimumPeriod) {
        boolean oldMinimumPeriod = this.minimumPeriod;
        this.minimumPeriod = newMinimumPeriod;
        boolean oldMinimumPeriodESet = this.minimumPeriodESet;
        this.minimumPeriodESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, oldMinimumPeriod, this.minimumPeriod, !oldMinimumPeriodESet));
        }
    }

    @Override
    public void unsetMinimumPeriod() {
        boolean oldMinimumPeriod = this.minimumPeriod;
        boolean oldMinimumPeriodESet = this.minimumPeriodESet;
        this.minimumPeriod = false;
        this.minimumPeriodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, oldMinimumPeriod, false, oldMinimumPeriodESet));
        }
    }

    @Override
    public boolean isSetMinimumPeriod() {
        return this.minimumPeriodESet;
    }

    @Override
    public double getMinimumPeriodValue() {
        return this.minimumPeriodValue;
    }

    @Override
    public void setMinimumPeriodValue(double newMinimumPeriodValue) {
        double oldMinimumPeriodValue = this.minimumPeriodValue;
        this.minimumPeriodValue = newMinimumPeriodValue;
        boolean oldMinimumPeriodValueESet = this.minimumPeriodValueESet;
        this.minimumPeriodValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, oldMinimumPeriodValue, this.minimumPeriodValue, !oldMinimumPeriodValueESet));
        }
    }

    @Override
    public void unsetMinimumPeriodValue() {
        double oldMinimumPeriodValue = this.minimumPeriodValue;
        boolean oldMinimumPeriodValueESet = this.minimumPeriodValueESet;
        this.minimumPeriodValue = 0.0;
        this.minimumPeriodValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, oldMinimumPeriodValue, 0.0, oldMinimumPeriodValueESet));
        }
    }

    @Override
    public boolean isSetMinimumPeriodValue() {
        return this.minimumPeriodValueESet;
    }

    @Override
    public BigInteger getMinPrio() {
        return this.minPrio;
    }

    @Override
    public void setMinPrio(BigInteger newMinPrio) {
        BigInteger oldMinPrio = this.minPrio;
        this.minPrio = newMinPrio;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldMinPrio, (Object)this.minPrio));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 2: {
                return this.getEventId();
            }
            case 3: {
                return this.getIsrSource();
            }
            case 4: {
                return this.getMaxPrio();
            }
            case 5: {
                return this.isMinimumPeriod();
            }
            case 6: {
                return this.getMinimumPeriodValue();
            }
            case 7: {
                return this.getMinPrio();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 2: {
                this.setEventId((BigInteger)newValue);
                return;
            }
            case 3: {
                this.setIsrSource((String)newValue);
                return;
            }
            case 4: {
                this.setMaxPrio((BigInteger)newValue);
                return;
            }
            case 5: {
                this.setMinimumPeriod((Boolean)newValue);
                return;
            }
            case 6: {
                this.setMinimumPeriodValue((Double)newValue);
                return;
            }
            case 7: {
                this.setMinPrio((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 2: {
                this.setEventId(EVENT_ID_EDEFAULT);
                return;
            }
            case 3: {
                this.setIsrSource(ISR_SOURCE_EDEFAULT);
                return;
            }
            case 4: {
                this.setMaxPrio(MAX_PRIO_EDEFAULT);
                return;
            }
            case 5: {
                this.unsetMinimumPeriod();
                return;
            }
            case 6: {
                this.unsetMinimumPeriodValue();
                return;
            }
            case 7: {
                this.setMinPrio(MIN_PRIO_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 2: {
                return EVENT_ID_EDEFAULT == null ? this.eventId != null : !EVENT_ID_EDEFAULT.equals(this.eventId);
            }
            case 3: {
                return ISR_SOURCE_EDEFAULT == null ? this.isrSource != null : !ISR_SOURCE_EDEFAULT.equals(this.isrSource);
            }
            case 4: {
                return MAX_PRIO_EDEFAULT == null ? this.maxPrio != null : !MAX_PRIO_EDEFAULT.equals(this.maxPrio);
            }
            case 5: {
                return this.isSetMinimumPeriod();
            }
            case 6: {
                return this.isSetMinimumPeriodValue();
            }
            case 7: {
                return MIN_PRIO_EDEFAULT == null ? this.minPrio != null : !MIN_PRIO_EDEFAULT.equals(this.minPrio);
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
        result.append(" (eventId: ");
        result.append(this.eventId);
        result.append(", isrSource: ");
        result.append(this.isrSource);
        result.append(", maxPrio: ");
        result.append(this.maxPrio);
        result.append(", minimumPeriod: ");
        if (this.minimumPeriodESet) {
            result.append(this.minimumPeriod);
        } else {
            result.append("<unset>");
        }
        result.append(", minimumPeriodValue: ");
        if (this.minimumPeriodValueESet) {
            result.append(this.minimumPeriodValue);
        } else {
            result.append("<unset>");
        }
        result.append(", minPrio: ");
        result.append(this.minPrio);
        result.append(')');
        return result.toString();
    }
}

