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
package autosar3x.commonstructure.datadefproperties.impl;

import autosar3x.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar3x.commonstructure.datadefproperties.SwSemaphore;
import autosar3x.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwSemaphoreImpl
extends ARObjectImpl
implements SwSemaphore {
    protected SwVariableRefProxy swVariableRef;

    protected SwSemaphoreImpl() {
    }

    protected EClass eStaticClass() {
        return DatadefpropertiesPackage.Literals.SW_SEMAPHORE;
    }

    public SwVariableRefProxy getSwVariableRef() {
        return this.swVariableRef;
    }

    public NotificationChain basicSetSwVariableRef(SwVariableRefProxy newSwVariableRef, NotificationChain msgs) {
        SwVariableRefProxy oldSwVariableRef = this.swVariableRef;
        this.swVariableRef = newSwVariableRef;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldSwVariableRef, (Object)newSwVariableRef);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwVariableRef(SwVariableRefProxy newSwVariableRef) {
        if (newSwVariableRef != this.swVariableRef) {
            NotificationChain msgs = null;
            if (this.swVariableRef != null) {
                msgs = ((InternalEObject)this.swVariableRef).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newSwVariableRef != null) {
                msgs = ((InternalEObject)newSwVariableRef).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetSwVariableRef(newSwVariableRef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwVariableRef, (Object)newSwVariableRef));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwVariableRef(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwVariableRef();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwVariableRef((SwVariableRefProxy)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwVariableRef(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.swVariableRef != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

