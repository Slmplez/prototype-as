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
package autosar40.swcomponent.applicationattributes.impl;

import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import autosar40.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar40.swcomponent.applicationattributes.ReceiverAnnotation;
import autosar40.swcomponent.applicationattributes.impl.SenderReceiverAnnotationImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ReceiverAnnotationImpl
extends SenderReceiverAnnotationImpl
implements ReceiverAnnotation {
    protected MultidimensionalTime signalAge;

    protected ReceiverAnnotationImpl() {
    }

    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.RECEIVER_ANNOTATION;
    }

    public MultidimensionalTime getSignalAge() {
        return this.signalAge;
    }

    public NotificationChain basicSetSignalAge(MultidimensionalTime newSignalAge, NotificationChain msgs) {
        MultidimensionalTime oldSignalAge = this.signalAge;
        this.signalAge = newSignalAge;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldSignalAge, (Object)newSignalAge);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSignalAge(MultidimensionalTime newSignalAge) {
        if (newSignalAge != this.signalAge) {
            NotificationChain msgs = null;
            if (this.signalAge != null) {
                msgs = ((InternalEObject)this.signalAge).eInverseRemove((InternalEObject)this, -15, null, msgs);
            }
            if (newSignalAge != null) {
                msgs = ((InternalEObject)newSignalAge).eInverseAdd((InternalEObject)this, -15, null, msgs);
            }
            if ((msgs = this.basicSetSignalAge(newSignalAge, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)newSignalAge, (Object)newSignalAge));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 14: {
                return this.basicSetSignalAge(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
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
                this.setSignalAge((MultidimensionalTime)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 14: {
                this.setSignalAge(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 14: {
                return this.signalAge != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

