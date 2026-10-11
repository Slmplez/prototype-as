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

import autosar3x.commonstructure.axis.SwAxisIndividual;
import autosar3x.commonstructure.calibrationparameter.CalibrationparameterPackage;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisIndividualAxis;
import autosar3x.commonstructure.calibrationparameter.impl.SwCalprmAxisTypePropsImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwCalprmAxisIndividualAxisImpl
extends SwCalprmAxisTypePropsImpl
implements SwCalprmAxisIndividualAxis {
    protected SwAxisIndividual swAxisIndividual;

    protected SwCalprmAxisIndividualAxisImpl() {
    }

    protected EClass eStaticClass() {
        return CalibrationparameterPackage.Literals.SW_CALPRM_AXIS_INDIVIDUAL_AXIS;
    }

    public SwAxisIndividual getSwAxisIndividual() {
        return this.swAxisIndividual;
    }

    public NotificationChain basicSetSwAxisIndividual(SwAxisIndividual newSwAxisIndividual, NotificationChain msgs) {
        SwAxisIndividual oldSwAxisIndividual = this.swAxisIndividual;
        this.swAxisIndividual = newSwAxisIndividual;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwAxisIndividual, (Object)newSwAxisIndividual);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwAxisIndividual(SwAxisIndividual newSwAxisIndividual) {
        if (newSwAxisIndividual != this.swAxisIndividual) {
            NotificationChain msgs = null;
            if (this.swAxisIndividual != null) {
                msgs = ((InternalEObject)this.swAxisIndividual).eInverseRemove((InternalEObject)this, 4, SwAxisIndividual.class, msgs);
            }
            if (newSwAxisIndividual != null) {
                msgs = ((InternalEObject)newSwAxisIndividual).eInverseAdd((InternalEObject)this, 4, SwAxisIndividual.class, msgs);
            }
            if ((msgs = this.basicSetSwAxisIndividual(newSwAxisIndividual, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newSwAxisIndividual, (Object)newSwAxisIndividual));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.swAxisIndividual != null) {
                    msgs = ((InternalEObject)this.swAxisIndividual).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetSwAxisIndividual((SwAxisIndividual)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetSwAxisIndividual(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getSwAxisIndividual();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setSwAxisIndividual((SwAxisIndividual)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setSwAxisIndividual(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.swAxisIndividual != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

