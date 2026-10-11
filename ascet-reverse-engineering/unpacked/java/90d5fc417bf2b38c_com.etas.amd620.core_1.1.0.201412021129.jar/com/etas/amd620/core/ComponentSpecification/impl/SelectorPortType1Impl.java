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
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.SelectorPortType1;
import com.etas.amd620.core.ComponentSpecification.SequenceCallT;
import com.etas.amd620.core.ComponentSpecification.impl.PortTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SelectorPortType1Impl
extends PortTImpl
implements SelectorPortType1 {
    protected SequenceCallT sequenceCall;

    protected SelectorPortType1Impl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getSelectorPortType1();
    }

    @Override
    public SequenceCallT getSequenceCall() {
        return this.sequenceCall;
    }

    public NotificationChain basicSetSequenceCall(SequenceCallT newSequenceCall, NotificationChain msgs) {
        SequenceCallT oldSequenceCall = this.sequenceCall;
        this.sequenceCall = newSequenceCall;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldSequenceCall, (Object)newSequenceCall);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSequenceCall(SequenceCallT newSequenceCall) {
        if (newSequenceCall != this.sequenceCall) {
            NotificationChain msgs = null;
            if (this.sequenceCall != null) {
                msgs = ((InternalEObject)this.sequenceCall).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newSequenceCall != null) {
                msgs = ((InternalEObject)newSequenceCall).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetSequenceCall(newSequenceCall, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newSequenceCall, (Object)newSequenceCall));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 2: {
                return this.basicSetSequenceCall(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 2: {
                return this.getSequenceCall();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 2: {
                this.setSequenceCall((SequenceCallT)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 2: {
                this.setSequenceCall(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 2: {
                return this.sequenceCall != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

