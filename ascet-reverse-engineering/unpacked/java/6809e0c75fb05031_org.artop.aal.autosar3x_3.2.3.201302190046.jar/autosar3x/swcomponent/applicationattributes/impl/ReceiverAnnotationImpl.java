/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.swcomponent.applicationattributes.impl;

import autosar3x.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar3x.swcomponent.applicationattributes.ReceiverAnnotation;
import autosar3x.swcomponent.applicationattributes.impl.SenderReceiverAnnotationImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ReceiverAnnotationImpl
extends SenderReceiverAnnotationImpl
implements ReceiverAnnotation {
    protected static final Double SIGNAL_AGE_EDEFAULT = new Double(0.0);
    protected Double signalAge = SIGNAL_AGE_EDEFAULT;
    protected boolean signalAgeESet;

    protected ReceiverAnnotationImpl() {
    }

    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.RECEIVER_ANNOTATION;
    }

    public Double getSignalAge() {
        return this.signalAge;
    }

    public void setSignalAge(Double newSignalAge) {
        Double oldSignalAge = this.signalAge;
        this.signalAge = newSignalAge;
        boolean oldSignalAgeESet = this.signalAgeESet;
        this.signalAgeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldSignalAge, (Object)this.signalAge, !oldSignalAgeESet));
        }
    }

    public void unsetSignalAge() {
        Double oldSignalAge = this.signalAge;
        boolean oldSignalAgeESet = this.signalAgeESet;
        this.signalAge = SIGNAL_AGE_EDEFAULT;
        this.signalAgeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldSignalAge, (Object)SIGNAL_AGE_EDEFAULT, oldSignalAgeESet));
        }
    }

    public boolean isSetSignalAge() {
        return this.signalAgeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 14: {
                return this.getSignalAge();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 14: {
                this.setSignalAge((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 14: {
                this.unsetSignalAge();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 14: {
                return this.isSetSignalAge();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (signalAge: ");
        if (this.signalAgeESet) {
            result.append(this.signalAge);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

