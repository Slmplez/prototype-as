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
package autosar3x.system.fibex.fibex4lin.lincommunication.impl;

import autosar3x.system.fibex.fibex4lin.lincommunication.DataTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.FreeFormat;
import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar3x.system.fibex.fibex4lin.lincommunication.impl.RelativelyScheduledTimingImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class DataTimingImpl
extends RelativelyScheduledTimingImpl
implements DataTiming {
    protected FreeFormat freeFormat;

    protected DataTimingImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.DATA_TIMING;
    }

    public FreeFormat getFreeFormat() {
        return this.freeFormat;
    }

    public NotificationChain basicSetFreeFormat(FreeFormat newFreeFormat, NotificationChain msgs) {
        FreeFormat oldFreeFormat = this.freeFormat;
        this.freeFormat = newFreeFormat;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldFreeFormat, (Object)newFreeFormat);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setFreeFormat(FreeFormat newFreeFormat) {
        if (newFreeFormat != this.freeFormat) {
            NotificationChain msgs = null;
            if (this.freeFormat != null) {
                msgs = ((InternalEObject)this.freeFormat).eInverseRemove((InternalEObject)this, 4, FreeFormat.class, msgs);
            }
            if (newFreeFormat != null) {
                msgs = ((InternalEObject)newFreeFormat).eInverseAdd((InternalEObject)this, 4, FreeFormat.class, msgs);
            }
            if ((msgs = this.basicSetFreeFormat(newFreeFormat, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newFreeFormat, (Object)newFreeFormat));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                if (this.freeFormat != null) {
                    msgs = ((InternalEObject)this.freeFormat).eInverseRemove((InternalEObject)this, -9, null, msgs);
                }
                return this.basicSetFreeFormat((FreeFormat)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return this.basicSetFreeFormat(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getFreeFormat();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setFreeFormat((FreeFormat)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.setFreeFormat(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.freeFormat != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

