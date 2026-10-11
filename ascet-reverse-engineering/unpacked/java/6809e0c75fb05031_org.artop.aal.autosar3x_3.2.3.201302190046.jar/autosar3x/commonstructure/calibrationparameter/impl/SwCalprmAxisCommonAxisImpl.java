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
package autosar3x.commonstructure.calibrationparameter.impl;

import autosar3x.commonstructure.axis.SwAxisGrouped;
import autosar3x.commonstructure.calibrationparameter.CalibrationparameterPackage;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisCommonAxis;
import autosar3x.commonstructure.calibrationparameter.impl.SwCalprmAxisTypePropsImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwCalprmAxisCommonAxisImpl
extends SwCalprmAxisTypePropsImpl
implements SwCalprmAxisCommonAxis {
    protected SwAxisGrouped swAxisGrouped;

    protected SwCalprmAxisCommonAxisImpl() {
    }

    protected EClass eStaticClass() {
        return CalibrationparameterPackage.Literals.SW_CALPRM_AXIS_COMMON_AXIS;
    }

    public SwAxisGrouped getSwAxisGrouped() {
        return this.swAxisGrouped;
    }

    public NotificationChain basicSetSwAxisGrouped(SwAxisGrouped newSwAxisGrouped, NotificationChain msgs) {
        SwAxisGrouped oldSwAxisGrouped = this.swAxisGrouped;
        this.swAxisGrouped = newSwAxisGrouped;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwAxisGrouped, (Object)newSwAxisGrouped);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwAxisGrouped(SwAxisGrouped newSwAxisGrouped) {
        if (newSwAxisGrouped != this.swAxisGrouped) {
            NotificationChain msgs = null;
            if (this.swAxisGrouped != null) {
                msgs = ((InternalEObject)this.swAxisGrouped).eInverseRemove((InternalEObject)this, 4, SwAxisGrouped.class, msgs);
            }
            if (newSwAxisGrouped != null) {
                msgs = ((InternalEObject)newSwAxisGrouped).eInverseAdd((InternalEObject)this, 4, SwAxisGrouped.class, msgs);
            }
            if ((msgs = this.basicSetSwAxisGrouped(newSwAxisGrouped, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newSwAxisGrouped, (Object)newSwAxisGrouped));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.swAxisGrouped != null) {
                    msgs = ((InternalEObject)this.swAxisGrouped).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetSwAxisGrouped((SwAxisGrouped)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetSwAxisGrouped(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getSwAxisGrouped();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setSwAxisGrouped((SwAxisGrouped)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setSwAxisGrouped(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.swAxisGrouped != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

