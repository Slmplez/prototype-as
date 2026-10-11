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
import com.etas.amd620.core.ComponentSpecification.ReturnPortType1;
import com.etas.amd620.core.ComponentSpecification.SelectorPortType;
import com.etas.amd620.core.ComponentSpecification.impl.PortTImpl;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ReturnPortType1Impl
extends PortTImpl
implements ReturnPortType1 {
    protected SelectorPortType selectorPort;
    protected static final BigInteger INDEX_EDEFAULT = null;
    protected BigInteger index = INDEX_EDEFAULT;
    protected static final String LABEL_EDEFAULT = null;
    protected String label = LABEL_EDEFAULT;

    protected ReturnPortType1Impl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getReturnPortType1();
    }

    @Override
    public SelectorPortType getSelectorPort() {
        return this.selectorPort;
    }

    public NotificationChain basicSetSelectorPort(SelectorPortType newSelectorPort, NotificationChain msgs) {
        SelectorPortType oldSelectorPort = this.selectorPort;
        this.selectorPort = newSelectorPort;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldSelectorPort, (Object)newSelectorPort);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSelectorPort(SelectorPortType newSelectorPort) {
        if (newSelectorPort != this.selectorPort) {
            NotificationChain msgs = null;
            if (this.selectorPort != null) {
                msgs = ((InternalEObject)this.selectorPort).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newSelectorPort != null) {
                msgs = ((InternalEObject)newSelectorPort).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetSelectorPort(newSelectorPort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newSelectorPort, (Object)newSelectorPort));
        }
    }

    @Override
    public BigInteger getIndex() {
        return this.index;
    }

    @Override
    public void setIndex(BigInteger newIndex) {
        BigInteger oldIndex = this.index;
        this.index = newIndex;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldIndex, (Object)this.index));
        }
    }

    @Override
    public String getLabel() {
        return this.label;
    }

    @Override
    public void setLabel(String newLabel) {
        String oldLabel = this.label;
        this.label = newLabel;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldLabel, (Object)this.label));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 2: {
                return this.basicSetSelectorPort(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 2: {
                return this.getSelectorPort();
            }
            case 3: {
                return this.getIndex();
            }
            case 4: {
                return this.getLabel();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 2: {
                this.setSelectorPort((SelectorPortType)newValue);
                return;
            }
            case 3: {
                this.setIndex((BigInteger)newValue);
                return;
            }
            case 4: {
                this.setLabel((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 2: {
                this.setSelectorPort(null);
                return;
            }
            case 3: {
                this.setIndex(INDEX_EDEFAULT);
                return;
            }
            case 4: {
                this.setLabel(LABEL_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 2: {
                return this.selectorPort != null;
            }
            case 3: {
                return INDEX_EDEFAULT == null ? this.index != null : !INDEX_EDEFAULT.equals(this.index);
            }
            case 4: {
                return LABEL_EDEFAULT == null ? this.label != null : !LABEL_EDEFAULT.equals(this.label);
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (index: ");
        result.append(this.index);
        result.append(", label: ");
        result.append(this.label);
        result.append(')');
        return result.toString();
    }
}

