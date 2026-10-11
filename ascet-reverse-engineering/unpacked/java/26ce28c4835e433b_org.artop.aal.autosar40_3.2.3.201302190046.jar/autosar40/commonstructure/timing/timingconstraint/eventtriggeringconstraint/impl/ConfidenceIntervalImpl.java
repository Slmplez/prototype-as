/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ArbitraryEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ConfidenceInterval;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventtriggeringconstraintPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ConfidenceIntervalImpl
extends ARObjectImpl
implements ConfidenceInterval {
    protected MultidimensionalTime lowerBound;
    protected static final Double PROPABILITY_EDEFAULT = new Double(0.0);
    protected Double propability = PROPABILITY_EDEFAULT;
    protected boolean propabilityESet;
    protected MultidimensionalTime upperBound;

    protected ConfidenceIntervalImpl() {
    }

    protected EClass eStaticClass() {
        return EventtriggeringconstraintPackage.Literals.CONFIDENCE_INTERVAL;
    }

    public ArbitraryEventTriggering getArbitraryEventTriggering() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ArbitraryEventTriggering)this.eContainer();
    }

    public NotificationChain basicSetArbitraryEventTriggering(ArbitraryEventTriggering newArbitraryEventTriggering, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newArbitraryEventTriggering, 4, msgs);
        return msgs;
    }

    public void setArbitraryEventTriggering(ArbitraryEventTriggering newArbitraryEventTriggering) {
        if (newArbitraryEventTriggering != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newArbitraryEventTriggering != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newArbitraryEventTriggering)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newArbitraryEventTriggering != null) {
                msgs = ((InternalEObject)newArbitraryEventTriggering).eInverseAdd((InternalEObject)this, 23, ArbitraryEventTriggering.class, msgs);
            }
            if ((msgs = this.basicSetArbitraryEventTriggering(newArbitraryEventTriggering, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newArbitraryEventTriggering, (Object)newArbitraryEventTriggering));
        }
    }

    public MultidimensionalTime getLowerBound() {
        return this.lowerBound;
    }

    public NotificationChain basicSetLowerBound(MultidimensionalTime newLowerBound, NotificationChain msgs) {
        MultidimensionalTime oldLowerBound = this.lowerBound;
        this.lowerBound = newLowerBound;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldLowerBound, (Object)newLowerBound);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setLowerBound(MultidimensionalTime newLowerBound) {
        if (newLowerBound != this.lowerBound) {
            NotificationChain msgs = null;
            if (this.lowerBound != null) {
                msgs = ((InternalEObject)this.lowerBound).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newLowerBound != null) {
                msgs = ((InternalEObject)newLowerBound).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetLowerBound(newLowerBound, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newLowerBound, (Object)newLowerBound));
        }
    }

    public Double getPropability() {
        return this.propability;
    }

    public void setPropability(Double newPropability) {
        Double oldPropability = this.propability;
        this.propability = newPropability;
        boolean oldPropabilityESet = this.propabilityESet;
        this.propabilityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPropability, (Object)this.propability, !oldPropabilityESet));
        }
    }

    public void unsetPropability() {
        Double oldPropability = this.propability;
        boolean oldPropabilityESet = this.propabilityESet;
        this.propability = PROPABILITY_EDEFAULT;
        this.propabilityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldPropability, (Object)PROPABILITY_EDEFAULT, oldPropabilityESet));
        }
    }

    public boolean isSetPropability() {
        return this.propabilityESet;
    }

    public MultidimensionalTime getUpperBound() {
        return this.upperBound;
    }

    public NotificationChain basicSetUpperBound(MultidimensionalTime newUpperBound, NotificationChain msgs) {
        MultidimensionalTime oldUpperBound = this.upperBound;
        this.upperBound = newUpperBound;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldUpperBound, (Object)newUpperBound);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setUpperBound(MultidimensionalTime newUpperBound) {
        if (newUpperBound != this.upperBound) {
            NotificationChain msgs = null;
            if (this.upperBound != null) {
                msgs = ((InternalEObject)this.upperBound).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newUpperBound != null) {
                msgs = ((InternalEObject)newUpperBound).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetUpperBound(newUpperBound, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newUpperBound, (Object)newUpperBound));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetArbitraryEventTriggering((ArbitraryEventTriggering)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetArbitraryEventTriggering(null, msgs);
            }
            case 5: {
                return this.basicSetLowerBound(null, msgs);
            }
            case 7: {
                return this.basicSetUpperBound(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, ArbitraryEventTriggering.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getArbitraryEventTriggering();
            }
            case 5: {
                return this.getLowerBound();
            }
            case 6: {
                return this.getPropability();
            }
            case 7: {
                return this.getUpperBound();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setArbitraryEventTriggering((ArbitraryEventTriggering)newValue);
                return;
            }
            case 5: {
                this.setLowerBound((MultidimensionalTime)newValue);
                return;
            }
            case 6: {
                this.setPropability((Double)newValue);
                return;
            }
            case 7: {
                this.setUpperBound((MultidimensionalTime)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setArbitraryEventTriggering(null);
                return;
            }
            case 5: {
                this.setLowerBound(null);
                return;
            }
            case 6: {
                this.unsetPropability();
                return;
            }
            case 7: {
                this.setUpperBound(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getArbitraryEventTriggering() != null;
            }
            case 5: {
                return this.lowerBound != null;
            }
            case 6: {
                return this.isSetPropability();
            }
            case 7: {
                return this.upperBound != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (propability: ");
        if (this.propabilityESet) {
            result.append(this.propability);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

