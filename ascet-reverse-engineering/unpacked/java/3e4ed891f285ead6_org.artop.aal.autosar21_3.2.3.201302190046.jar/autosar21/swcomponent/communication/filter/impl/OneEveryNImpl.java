/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.communication.filter.impl;

import autosar21.swcomponent.communication.filter.FilterPackage;
import autosar21.swcomponent.communication.filter.OneEveryN;
import autosar21.swcomponent.communication.filter.impl.DataFilterImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class OneEveryNImpl
extends DataFilterImpl
implements OneEveryN {
    protected static final Integer OCCURRENCE_EDEFAULT = new Integer(0);
    protected Integer occurrence = OCCURRENCE_EDEFAULT;
    protected boolean occurrenceESet;
    protected static final Integer OFFSET_EDEFAULT = new Integer(0);
    protected Integer offset = OFFSET_EDEFAULT;
    protected boolean offsetESet;
    protected static final Integer PERIOD_EDEFAULT = new Integer(0);
    protected Integer period = PERIOD_EDEFAULT;
    protected boolean periodESet;

    protected OneEveryNImpl() {
    }

    protected EClass eStaticClass() {
        return FilterPackage.Literals.ONE_EVERY_N;
    }

    public Integer getOccurrence() {
        return this.occurrence;
    }

    public void setOccurrence(Integer newOccurrence) {
        Integer oldOccurrence = this.occurrence;
        this.occurrence = newOccurrence;
        boolean oldOccurrenceESet = this.occurrenceESet;
        this.occurrenceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldOccurrence, (Object)this.occurrence, !oldOccurrenceESet));
        }
    }

    public void unsetOccurrence() {
        Integer oldOccurrence = this.occurrence;
        boolean oldOccurrenceESet = this.occurrenceESet;
        this.occurrence = OCCURRENCE_EDEFAULT;
        this.occurrenceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldOccurrence, (Object)OCCURRENCE_EDEFAULT, oldOccurrenceESet));
        }
    }

    public boolean isSetOccurrence() {
        return this.occurrenceESet;
    }

    public Integer getOffset() {
        return this.offset;
    }

    public void setOffset(Integer newOffset) {
        Integer oldOffset = this.offset;
        this.offset = newOffset;
        boolean oldOffsetESet = this.offsetESet;
        this.offsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldOffset, (Object)this.offset, !oldOffsetESet));
        }
    }

    public void unsetOffset() {
        Integer oldOffset = this.offset;
        boolean oldOffsetESet = this.offsetESet;
        this.offset = OFFSET_EDEFAULT;
        this.offsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldOffset, (Object)OFFSET_EDEFAULT, oldOffsetESet));
        }
    }

    public boolean isSetOffset() {
        return this.offsetESet;
    }

    public Integer getPeriod() {
        return this.period;
    }

    public void setPeriod(Integer newPeriod) {
        Integer oldPeriod = this.period;
        this.period = newPeriod;
        boolean oldPeriodESet = this.periodESet;
        this.periodESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldPeriod, (Object)this.period, !oldPeriodESet));
        }
    }

    public void unsetPeriod() {
        Integer oldPeriod = this.period;
        boolean oldPeriodESet = this.periodESet;
        this.period = PERIOD_EDEFAULT;
        this.periodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldPeriod, (Object)PERIOD_EDEFAULT, oldPeriodESet));
        }
    }

    public boolean isSetPeriod() {
        return this.periodESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getOccurrence();
            }
            case 6: {
                return this.getOffset();
            }
            case 7: {
                return this.getPeriod();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setOccurrence((Integer)newValue);
                return;
            }
            case 6: {
                this.setOffset((Integer)newValue);
                return;
            }
            case 7: {
                this.setPeriod((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetOccurrence();
                return;
            }
            case 6: {
                this.unsetOffset();
                return;
            }
            case 7: {
                this.unsetPeriod();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetOccurrence();
            }
            case 6: {
                return this.isSetOffset();
            }
            case 7: {
                return this.isSetPeriod();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (occurrence: ");
        if (this.occurrenceESet) {
            result.append(this.occurrence);
        } else {
            result.append("<unset>");
        }
        result.append(", offset: ");
        if (this.offsetESet) {
            result.append(this.offset);
        } else {
            result.append("<unset>");
        }
        result.append(", period: ");
        if (this.periodESet) {
            result.append(this.period);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

