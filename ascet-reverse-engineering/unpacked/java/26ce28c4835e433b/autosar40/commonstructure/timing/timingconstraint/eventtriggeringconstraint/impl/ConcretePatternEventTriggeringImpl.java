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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ConcretePatternEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventtriggeringconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl.EventTriggeringConstraintImpl;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ConcretePatternEventTriggeringImpl
extends EventTriggeringConstraintImpl
implements ConcretePatternEventTriggering {
    protected EList<MultidimensionalTime> offsets;
    protected MultidimensionalTime patternLength;

    protected ConcretePatternEventTriggeringImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EventtriggeringconstraintPackage.Literals.CONCRETE_PATTERN_EVENT_TRIGGERING;
    }

    @Override
    public EList<MultidimensionalTime> getOffsets() {
        if (this.offsets == null) {
            this.offsets = new EObjectContainmentEList(MultidimensionalTime.class, (InternalEObject)this, 21);
        }
        return this.offsets;
    }

    @Override
    public MultidimensionalTime getPatternLength() {
        return this.patternLength;
    }

    public NotificationChain basicSetPatternLength(MultidimensionalTime newPatternLength, NotificationChain msgs) {
        MultidimensionalTime oldPatternLength = this.patternLength;
        this.patternLength = newPatternLength;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldPatternLength, (Object)newPatternLength);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setPatternLength(MultidimensionalTime newPatternLength) {
        if (newPatternLength != this.patternLength) {
            NotificationChain msgs = null;
            if (this.patternLength != null) {
                msgs = ((InternalEObject)this.patternLength).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newPatternLength != null) {
                msgs = ((InternalEObject)newPatternLength).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetPatternLength(newPatternLength, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newPatternLength, (Object)newPatternLength));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getOffsets()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return this.basicSetPatternLength(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getOffsets();
            }
            case 22: {
                return this.getPatternLength();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.getOffsets().clear();
                this.getOffsets().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setPatternLength((MultidimensionalTime)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.getOffsets().clear();
                return;
            }
            case 22: {
                this.setPatternLength(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.offsets != null && !this.offsets.isEmpty();
            }
            case 22: {
                return this.patternLength != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

