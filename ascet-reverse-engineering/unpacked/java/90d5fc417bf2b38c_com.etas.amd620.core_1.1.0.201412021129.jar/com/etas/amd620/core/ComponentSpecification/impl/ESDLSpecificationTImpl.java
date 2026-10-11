/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ESDLCodeT;
import com.etas.amd620.core.ComponentSpecification.ESDLSpecificationT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ESDLSpecificationTImpl
extends MinimalEObjectImpl.Container
implements ESDLSpecificationT {
    protected ESDLCodeT eSDLCode;

    protected ESDLSpecificationTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getESDLSpecificationT();
    }

    @Override
    public ESDLCodeT getESDLCode() {
        return this.eSDLCode;
    }

    public NotificationChain basicSetESDLCode(ESDLCodeT newESDLCode, NotificationChain msgs) {
        ESDLCodeT oldESDLCode = this.eSDLCode;
        this.eSDLCode = newESDLCode;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldESDLCode, (Object)newESDLCode);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setESDLCode(ESDLCodeT newESDLCode) {
        if (newESDLCode != this.eSDLCode) {
            NotificationChain msgs = null;
            if (this.eSDLCode != null) {
                msgs = ((InternalEObject)this.eSDLCode).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newESDLCode != null) {
                msgs = ((InternalEObject)newESDLCode).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetESDLCode(newESDLCode, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newESDLCode, (Object)newESDLCode));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetESDLCode(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getESDLCode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setESDLCode((ESDLCodeT)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setESDLCode(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.eSDLCode != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

