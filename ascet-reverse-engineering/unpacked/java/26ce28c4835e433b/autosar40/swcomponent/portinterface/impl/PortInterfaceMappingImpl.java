/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.swcomponent.portinterface.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.swcomponent.portinterface.PortInterfaceMapping;
import autosar40.swcomponent.portinterface.PortInterfaceMappingSet;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class PortInterfaceMappingImpl
extends IdentifiableImpl
implements PortInterfaceMapping {
    protected PortInterfaceMappingImpl() {
    }

    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.PORT_INTERFACE_MAPPING;
    }

    public PortInterfaceMappingSet getPortInterfaceMappingSet() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (PortInterfaceMappingSet)this.eContainer();
    }

    public NotificationChain basicSetPortInterfaceMappingSet(PortInterfaceMappingSet newPortInterfaceMappingSet, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPortInterfaceMappingSet, 18, msgs);
        return msgs;
    }

    public void setPortInterfaceMappingSet(PortInterfaceMappingSet newPortInterfaceMappingSet) {
        if (newPortInterfaceMappingSet != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newPortInterfaceMappingSet != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPortInterfaceMappingSet)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPortInterfaceMappingSet != null) {
                msgs = ((InternalEObject)newPortInterfaceMappingSet).eInverseAdd((InternalEObject)this, 21, PortInterfaceMappingSet.class, msgs);
            }
            if ((msgs = this.basicSetPortInterfaceMappingSet(newPortInterfaceMappingSet, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newPortInterfaceMappingSet, (Object)newPortInterfaceMappingSet));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPortInterfaceMappingSet((PortInterfaceMappingSet)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetPortInterfaceMappingSet(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, PortInterfaceMappingSet.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getPortInterfaceMappingSet();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setPortInterfaceMappingSet((PortInterfaceMappingSet)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setPortInterfaceMappingSet(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getPortInterfaceMappingSet() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

