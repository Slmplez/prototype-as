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
package autosar21.swcomponent.measurementandcalibration.characteristic.impl;

import autosar21.swcomponent.measurementandcalibration.characteristic.ArCalprmRef;
import autosar21.swcomponent.measurementandcalibration.characteristic.CharacteristicPackage;
import autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.ArCalprmRefCalprmElementPrototype;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.impl.SwCalprmRefProxyImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ArCalprmRefImpl
extends SwCalprmRefProxyImpl
implements ArCalprmRef {
    protected ArCalprmRefCalprmElementPrototype arCalprm;

    protected ArCalprmRefImpl() {
    }

    protected EClass eStaticClass() {
        return CharacteristicPackage.Literals.AR_CALPRM_REF;
    }

    public ArCalprmRefCalprmElementPrototype getArCalprm() {
        return this.arCalprm;
    }

    public NotificationChain basicSetArCalprm(ArCalprmRefCalprmElementPrototype newArCalprm, NotificationChain msgs) {
        ArCalprmRefCalprmElementPrototype oldArCalprm = this.arCalprm;
        this.arCalprm = newArCalprm;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldArCalprm, (Object)newArCalprm);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setArCalprm(ArCalprmRefCalprmElementPrototype newArCalprm) {
        if (newArCalprm != this.arCalprm) {
            NotificationChain msgs = null;
            if (this.arCalprm != null) {
                msgs = ((InternalEObject)this.arCalprm).eInverseRemove((InternalEObject)this, 4, ArCalprmRefCalprmElementPrototype.class, msgs);
            }
            if (newArCalprm != null) {
                msgs = ((InternalEObject)newArCalprm).eInverseAdd((InternalEObject)this, 4, ArCalprmRefCalprmElementPrototype.class, msgs);
            }
            if ((msgs = this.basicSetArCalprm(newArCalprm, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newArCalprm, (Object)newArCalprm));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.arCalprm != null) {
                    msgs = ((InternalEObject)this.arCalprm).eInverseRemove((InternalEObject)this, -5, null, msgs);
                }
                return this.basicSetArCalprm((ArCalprmRefCalprmElementPrototype)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetArCalprm(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getArCalprm();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setArCalprm((ArCalprmRefCalprmElementPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setArCalprm(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.arCalprm != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

