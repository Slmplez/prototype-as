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
package autosar40.commonstructure.timing.timingconstraint.offsetconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.impl.TimingConstraintImpl;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.OffsetTimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.OffsetconstraintPackage;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class OffsetTimingConstraintImpl
extends TimingConstraintImpl
implements OffsetTimingConstraint,
IReferringClass {
    protected TimingDescriptionEvent source;
    protected TimingDescriptionEvent target;
    protected MultidimensionalTime minimum;
    protected MultidimensionalTime maximum;

    protected OffsetTimingConstraintImpl() {
    }

    protected EClass eStaticClass() {
        return OffsetconstraintPackage.Literals.OFFSET_TIMING_CONSTRAINT;
    }

    public TimingDescriptionEvent getSource() {
        if (this.source != null && this.source.eIsProxy()) {
            InternalEObject oldSource = (InternalEObject)this.source;
            this.source = (TimingDescriptionEvent)this.eResolveProxy(oldSource);
            if (this.source != oldSource && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldSource, (Object)this.source));
            }
        }
        return this.source;
    }

    public TimingDescriptionEvent basicGetSource() {
        return this.source;
    }

    public void setSource(TimingDescriptionEvent newSource) {
        TimingDescriptionEvent oldSource = this.source;
        this.source = newSource;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldSource, (Object)this.source));
        }
    }

    public TimingDescriptionEvent getTarget() {
        if (this.target != null && this.target.eIsProxy()) {
            InternalEObject oldTarget = (InternalEObject)this.target;
            this.target = (TimingDescriptionEvent)this.eResolveProxy(oldTarget);
            if (this.target != oldTarget && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldTarget, (Object)this.target));
            }
        }
        return this.target;
    }

    public TimingDescriptionEvent basicGetTarget() {
        return this.target;
    }

    public void setTarget(TimingDescriptionEvent newTarget) {
        TimingDescriptionEvent oldTarget = this.target;
        this.target = newTarget;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldTarget, (Object)this.target));
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

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetMinimum(null, msgs);
            }
            case 23: {
                return this.basicSetMaximum(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                if (resolve) {
                    return this.getSource();
                }
                return this.basicGetSource();
            }
            case 21: {
                if (resolve) {
                    return this.getTarget();
                }
                return this.basicGetTarget();
            }
            case 22: {
                return this.getMinimum();
            }
            case 23: {
                return this.getMaximum();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setSource((TimingDescriptionEvent)newValue);
                return;
            }
            case 21: {
                this.setTarget((TimingDescriptionEvent)newValue);
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
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.setSource(null);
                return;
            }
            case 21: {
                this.setTarget(null);
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
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.source != null;
            }
            case 21: {
                return this.target != null;
            }
            case 22: {
                return this.minimum != null;
            }
            case 23: {
                return this.maximum != null;
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
}

