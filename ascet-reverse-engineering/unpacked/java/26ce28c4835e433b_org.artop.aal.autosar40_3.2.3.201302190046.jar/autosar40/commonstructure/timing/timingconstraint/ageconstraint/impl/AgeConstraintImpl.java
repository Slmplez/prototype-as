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
package autosar40.commonstructure.timing.timingconstraint.ageconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.ageconstraint.AgeConstraint;
import autosar40.commonstructure.timing.timingconstraint.ageconstraint.AgeconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.impl.TimingConstraintImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVariableDataPrototype;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class AgeConstraintImpl
extends TimingConstraintImpl
implements AgeConstraint,
IReferringClass {
    protected MultidimensionalTime maximum;
    protected MultidimensionalTime minimum;
    protected TDEventVariableDataPrototype scope;

    protected AgeConstraintImpl() {
    }

    protected EClass eStaticClass() {
        return AgeconstraintPackage.Literals.AGE_CONSTRAINT;
    }

    public MultidimensionalTime getMaximum() {
        return this.maximum;
    }

    public NotificationChain basicSetMaximum(MultidimensionalTime newMaximum, NotificationChain msgs) {
        MultidimensionalTime oldMaximum = this.maximum;
        this.maximum = newMaximum;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldMaximum, (Object)newMaximum);
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
                msgs = ((InternalEObject)this.maximum).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newMaximum != null) {
                msgs = ((InternalEObject)newMaximum).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetMaximum(newMaximum, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newMaximum, (Object)newMaximum));
        }
    }

    public MultidimensionalTime getMinimum() {
        return this.minimum;
    }

    public NotificationChain basicSetMinimum(MultidimensionalTime newMinimum, NotificationChain msgs) {
        MultidimensionalTime oldMinimum = this.minimum;
        this.minimum = newMinimum;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldMinimum, (Object)newMinimum);
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
                msgs = ((InternalEObject)this.minimum).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newMinimum != null) {
                msgs = ((InternalEObject)newMinimum).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetMinimum(newMinimum, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newMinimum, (Object)newMinimum));
        }
    }

    public TDEventVariableDataPrototype getScope() {
        if (this.scope != null && this.scope.eIsProxy()) {
            InternalEObject oldScope = (InternalEObject)this.scope;
            this.scope = (TDEventVariableDataPrototype)this.eResolveProxy(oldScope);
            if (this.scope != oldScope && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldScope, (Object)this.scope));
            }
        }
        return this.scope;
    }

    public TDEventVariableDataPrototype basicGetScope() {
        return this.scope;
    }

    public void setScope(TDEventVariableDataPrototype newScope) {
        TDEventVariableDataPrototype oldScope = this.scope;
        this.scope = newScope;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldScope, (Object)this.scope));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return this.basicSetMaximum(null, msgs);
            }
            case 21: {
                return this.basicSetMinimum(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getMaximum();
            }
            case 21: {
                return this.getMinimum();
            }
            case 22: {
                if (resolve) {
                    return this.getScope();
                }
                return this.basicGetScope();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setMaximum((MultidimensionalTime)newValue);
                return;
            }
            case 21: {
                this.setMinimum((MultidimensionalTime)newValue);
                return;
            }
            case 22: {
                this.setScope((TDEventVariableDataPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.setMaximum(null);
                return;
            }
            case 21: {
                this.setMinimum(null);
                return;
            }
            case 22: {
                this.setScope(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.maximum != null;
            }
            case 21: {
                return this.minimum != null;
            }
            case 22: {
                return this.scope != null;
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

