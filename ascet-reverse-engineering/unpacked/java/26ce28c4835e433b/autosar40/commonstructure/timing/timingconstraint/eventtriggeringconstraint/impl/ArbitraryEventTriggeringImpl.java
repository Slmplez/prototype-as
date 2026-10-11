/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ArbitraryEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ConfidenceInterval;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventtriggeringconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl.EventTriggeringConstraintImpl;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ArbitraryEventTriggeringImpl
extends EventTriggeringConstraintImpl
implements ArbitraryEventTriggering {
    protected EList<MultidimensionalTime> minimumDistances;
    protected EList<MultidimensionalTime> maximumDistances;
    protected EList<ConfidenceInterval> confidenceIntervals;

    protected ArbitraryEventTriggeringImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EventtriggeringconstraintPackage.Literals.ARBITRARY_EVENT_TRIGGERING;
    }

    @Override
    public EList<MultidimensionalTime> getMinimumDistances() {
        if (this.minimumDistances == null) {
            this.minimumDistances = new EObjectContainmentEList(MultidimensionalTime.class, (InternalEObject)this, 21);
        }
        return this.minimumDistances;
    }

    @Override
    public EList<MultidimensionalTime> getMaximumDistances() {
        if (this.maximumDistances == null) {
            this.maximumDistances = new EObjectContainmentEList(MultidimensionalTime.class, (InternalEObject)this, 22);
        }
        return this.maximumDistances;
    }

    @Override
    public EList<ConfidenceInterval> getConfidenceIntervals() {
        if (this.confidenceIntervals == null) {
            this.confidenceIntervals = new EObjectContainmentWithInverseEList(ConfidenceInterval.class, (InternalEObject)this, 23, 4);
        }
        return this.confidenceIntervals;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getConfidenceIntervals()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getMinimumDistances()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getMaximumDistances()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getConfidenceIntervals()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getMinimumDistances();
            }
            case 22: {
                return this.getMaximumDistances();
            }
            case 23: {
                return this.getConfidenceIntervals();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.getMinimumDistances().clear();
                this.getMinimumDistances().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.getMaximumDistances().clear();
                this.getMaximumDistances().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getConfidenceIntervals().clear();
                this.getConfidenceIntervals().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.getMinimumDistances().clear();
                return;
            }
            case 22: {
                this.getMaximumDistances().clear();
                return;
            }
            case 23: {
                this.getConfidenceIntervals().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.minimumDistances != null && !this.minimumDistances.isEmpty();
            }
            case 22: {
                return this.maximumDistances != null && !this.maximumDistances.isEmpty();
            }
            case 23: {
                return this.confidenceIntervals != null && !this.confidenceIntervals.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

