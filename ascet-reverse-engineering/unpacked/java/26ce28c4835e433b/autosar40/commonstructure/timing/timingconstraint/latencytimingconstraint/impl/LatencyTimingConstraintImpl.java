/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.impl.TimingConstraintImpl;
import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.LatencyConstraintTypeEnum;
import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.LatencyTimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.LatencytimingconstraintPackage;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEventChain;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class LatencyTimingConstraintImpl
extends TimingConstraintImpl
implements LatencyTimingConstraint,
IReferringClass {
    protected static final LatencyConstraintTypeEnum LATENCY_CONSTRAINT_TYPE_EDEFAULT = LatencyConstraintTypeEnum.REACTION;
    protected LatencyConstraintTypeEnum latencyConstraintType = LATENCY_CONSTRAINT_TYPE_EDEFAULT;
    protected boolean latencyConstraintTypeESet;
    protected TimingDescriptionEventChain scope;
    protected MultidimensionalTime minimum;
    protected MultidimensionalTime maximum;
    protected MultidimensionalTime nominal;

    protected LatencyTimingConstraintImpl() {
    }

    protected EClass eStaticClass() {
        return LatencytimingconstraintPackage.Literals.LATENCY_TIMING_CONSTRAINT;
    }

    public LatencyConstraintTypeEnum getLatencyConstraintType() {
        return this.latencyConstraintType;
    }

    public void setLatencyConstraintType(LatencyConstraintTypeEnum newLatencyConstraintType) {
        LatencyConstraintTypeEnum oldLatencyConstraintType = this.latencyConstraintType;
        this.latencyConstraintType = newLatencyConstraintType == null ? LATENCY_CONSTRAINT_TYPE_EDEFAULT : newLatencyConstraintType;
        boolean oldLatencyConstraintTypeESet = this.latencyConstraintTypeESet;
        this.latencyConstraintTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldLatencyConstraintType, (Object)this.latencyConstraintType, !oldLatencyConstraintTypeESet));
        }
    }

    public void unsetLatencyConstraintType() {
        LatencyConstraintTypeEnum oldLatencyConstraintType = this.latencyConstraintType;
        boolean oldLatencyConstraintTypeESet = this.latencyConstraintTypeESet;
        this.latencyConstraintType = LATENCY_CONSTRAINT_TYPE_EDEFAULT;
        this.latencyConstraintTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldLatencyConstraintType, (Object)LATENCY_CONSTRAINT_TYPE_EDEFAULT, oldLatencyConstraintTypeESet));
        }
    }

    public boolean isSetLatencyConstraintType() {
        return this.latencyConstraintTypeESet;
    }

    public TimingDescriptionEventChain getScope() {
        if (this.scope != null && this.scope.eIsProxy()) {
            InternalEObject oldScope = (InternalEObject)this.scope;
            this.scope = (TimingDescriptionEventChain)this.eResolveProxy(oldScope);
            if (this.scope != oldScope && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldScope, (Object)this.scope));
            }
        }
        return this.scope;
    }

    public TimingDescriptionEventChain basicGetScope() {
        return this.scope;
    }

    public void setScope(TimingDescriptionEventChain newScope) {
        TimingDescriptionEventChain oldScope = this.scope;
        this.scope = newScope;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldScope, (Object)this.scope));
        }
    }

    public MultidimensionalTime getMinimum() {
        return this.minimum;
    }

    public NotificationChain basicSetMinimum(MultidimensionalTime newMinimum, NotificationChain msgs) {
        MultidimensionalTime oldMinimum = this.minimum;
        this.minimum = newMinimum;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldMinimum, (Object)newMinimum);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMinimum(MultidimensionalTime newMinimum) {
        if (newMinimum != this.minimum) {
            NotificationChain msgs = null;
            if (this.minimum != null) {
                msgs = ((InternalEObject)this.minimum).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newMinimum != null) {
                msgs = ((InternalEObject)newMinimum).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetMinimum(newMinimum, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newMinimum, (Object)newMinimum));
        }
    }

    public MultidimensionalTime getMaximum() {
        return this.maximum;
    }

    public NotificationChain basicSetMaximum(MultidimensionalTime newMaximum, NotificationChain msgs) {
        MultidimensionalTime oldMaximum = this.maximum;
        this.maximum = newMaximum;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldMaximum, (Object)newMaximum);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMaximum(MultidimensionalTime newMaximum) {
        if (newMaximum != this.maximum) {
            NotificationChain msgs = null;
            if (this.maximum != null) {
                msgs = ((InternalEObject)this.maximum).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newMaximum != null) {
                msgs = ((InternalEObject)newMaximum).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetMaximum(newMaximum, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newMaximum, (Object)newMaximum));
        }
    }

    public MultidimensionalTime getNominal() {
        return this.nominal;
    }

    public NotificationChain basicSetNominal(MultidimensionalTime newNominal, NotificationChain msgs) {
        MultidimensionalTime oldNominal = this.nominal;
        this.nominal = newNominal;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldNominal, (Object)newNominal);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setNominal(MultidimensionalTime newNominal) {
        if (newNominal != this.nominal) {
            NotificationChain msgs = null;
            if (this.nominal != null) {
                msgs = ((InternalEObject)this.nominal).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newNominal != null) {
                msgs = ((InternalEObject)newNominal).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetNominal(newNominal, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newNominal, (Object)newNominal));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetMinimum(null, msgs);
            }
            case 23: {
                return this.basicSetMaximum(null, msgs);
            }
            case 24: {
                return this.basicSetNominal(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getLatencyConstraintType();
            }
            case 21: {
                if (resolve) {
                    return this.getScope();
                }
                return this.basicGetScope();
            }
            case 22: {
                return this.getMinimum();
            }
            case 23: {
                return this.getMaximum();
            }
            case 24: {
                return this.getNominal();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setLatencyConstraintType((LatencyConstraintTypeEnum)((Object)newValue));
                return;
            }
            case 21: {
                this.setScope((TimingDescriptionEventChain)newValue);
                return;
            }
            case 22: {
                this.setMinimum((MultidimensionalTime)newValue);
                return;
            }
            case 23: {
                this.setMaximum((MultidimensionalTime)newValue);
                return;
            }
            case 24: {
                this.setNominal((MultidimensionalTime)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.unsetLatencyConstraintType();
                return;
            }
            case 21: {
                this.setScope(null);
                return;
            }
            case 22: {
                this.setMinimum(null);
                return;
            }
            case 23: {
                this.setMaximum(null);
                return;
            }
            case 24: {
                this.setNominal(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.isSetLatencyConstraintType();
            }
            case 21: {
                return this.scope != null;
            }
            case 22: {
                return this.minimum != null;
            }
            case 23: {
                return this.maximum != null;
            }
            case 24: {
                return this.nominal != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (latencyConstraintType: ");
        if (this.latencyConstraintTypeESet) {
            result.append((Object)this.latencyConstraintType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

