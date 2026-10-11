/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.InputPortType;
import com.etas.amd620.core.ComponentSpecification.ReturnPortType2;
import com.etas.amd620.core.ComponentSpecification.SelectorPortType2;
import com.etas.amd620.core.ComponentSpecification.impl.PortTImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

public class ReturnPortType2Impl
extends PortTImpl
implements ReturnPortType2 {
    protected EList<SelectorPortType2> selectorPort;
    protected EList<InputPortType> inputPort;

    protected ReturnPortType2Impl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getReturnPortType2();
    }

    @Override
    public EList<SelectorPortType2> getSelectorPort() {
        if (this.selectorPort == null) {
            this.selectorPort = new EObjectContainmentEList(SelectorPortType2.class, (InternalEObject)this, 2);
        }
        return this.selectorPort;
    }

    @Override
    public EList<InputPortType> getInputPort() {
        if (this.inputPort == null) {
            this.inputPort = new EObjectContainmentEList(InputPortType.class, (InternalEObject)this, 3);
        }
        return this.inputPort;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 2: {
                return ((InternalEList)this.getSelectorPort()).basicRemove((Object)otherEnd, msgs);
            }
            case 3: {
                return ((InternalEList)this.getInputPort()).basicRemove((Object)otherEnd, msgs);
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
                return this.getInputPort();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 2: {
                this.getSelectorPort().clear();
                this.getSelectorPort().addAll((Collection)newValue);
                return;
            }
            case 3: {
                this.getInputPort().clear();
                this.getInputPort().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 2: {
                this.getSelectorPort().clear();
                return;
            }
            case 3: {
                this.getInputPort().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 2: {
                return this.selectorPort != null && !this.selectorPort.isEmpty();
            }
            case 3: {
                return this.inputPort != null && !this.inputPort.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

