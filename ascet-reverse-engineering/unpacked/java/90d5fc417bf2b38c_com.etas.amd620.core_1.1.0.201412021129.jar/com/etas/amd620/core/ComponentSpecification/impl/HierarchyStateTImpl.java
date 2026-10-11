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
import com.etas.amd620.core.ComponentSpecification.ContentsComplexType;
import com.etas.amd620.core.ComponentSpecification.HierarchyStateT;
import com.etas.amd620.core.ComponentSpecification.PortsType;
import com.etas.amd620.core.ComponentSpecification.impl.StateTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class HierarchyStateTImpl
extends StateTImpl
implements HierarchyStateT {
    protected PortsType ports;
    protected ContentsComplexType contents;

    protected HierarchyStateTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getHierarchyStateT();
    }

    @Override
    public PortsType getPorts() {
        return this.ports;
    }

    public NotificationChain basicSetPorts(PortsType newPorts, NotificationChain msgs) {
        PortsType oldPorts = this.ports;
        this.ports = newPorts;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldPorts, (Object)newPorts);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setPorts(PortsType newPorts) {
        if (newPorts != this.ports) {
            NotificationChain msgs = null;
            if (this.ports != null) {
                msgs = ((InternalEObject)this.ports).eInverseRemove((InternalEObject)this, -13, null, msgs);
            }
            if (newPorts != null) {
                msgs = ((InternalEObject)newPorts).eInverseAdd((InternalEObject)this, -13, null, msgs);
            }
            if ((msgs = this.basicSetPorts(newPorts, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newPorts, (Object)newPorts));
        }
    }

    @Override
    public ContentsComplexType getContents() {
        return this.contents;
    }

    public NotificationChain basicSetContents(ContentsComplexType newContents, NotificationChain msgs) {
        ContentsComplexType oldContents = this.contents;
        this.contents = newContents;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldContents, (Object)newContents);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setContents(ContentsComplexType newContents) {
        if (newContents != this.contents) {
            NotificationChain msgs = null;
            if (this.contents != null) {
                msgs = ((InternalEObject)this.contents).eInverseRemove((InternalEObject)this, -14, null, msgs);
            }
            if (newContents != null) {
                msgs = ((InternalEObject)newContents).eInverseAdd((InternalEObject)this, -14, null, msgs);
            }
            if ((msgs = this.basicSetContents(newContents, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)newContents, (Object)newContents));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 12: {
                return this.basicSetPorts(null, msgs);
            }
            case 13: {
                return this.basicSetContents(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 12: {
                return this.getPorts();
            }
            case 13: {
                return this.getContents();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 12: {
                this.setPorts((PortsType)newValue);
                return;
            }
            case 13: {
                this.setContents((ContentsComplexType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 12: {
                this.setPorts(null);
                return;
            }
            case 13: {
                this.setContents(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 12: {
                return this.ports != null;
            }
            case 13: {
                return this.contents != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

