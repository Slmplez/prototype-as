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
package autosar40.swcomponent.composition.instancerefs.impl;

import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import autosar40.swcomponent.composition.DelegationSwConnector;
import autosar40.swcomponent.composition.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.composition.instancerefs.PortInCompositionTypeInstanceRef;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class PortInCompositionTypeInstanceRefImpl
extends AtpInstanceRefImpl
implements PortInCompositionTypeInstanceRef {
    protected PortInCompositionTypeInstanceRefImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.PORT_IN_COMPOSITION_TYPE_INSTANCE_REF;
    }

    public DelegationSwConnector getDelegationSwConnector() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (DelegationSwConnector)this.eContainer();
    }

    public NotificationChain basicSetDelegationSwConnector(DelegationSwConnector newDelegationSwConnector, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDelegationSwConnector, 4, msgs);
        return msgs;
    }

    public void setDelegationSwConnector(DelegationSwConnector newDelegationSwConnector) {
        if (newDelegationSwConnector != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newDelegationSwConnector != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDelegationSwConnector)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDelegationSwConnector != null) {
                msgs = ((InternalEObject)newDelegationSwConnector).eInverseAdd((InternalEObject)this, 22, DelegationSwConnector.class, msgs);
            }
            if ((msgs = this.basicSetDelegationSwConnector(newDelegationSwConnector, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newDelegationSwConnector, (Object)newDelegationSwConnector));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetDelegationSwConnector((DelegationSwConnector)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetDelegationSwConnector(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, DelegationSwConnector.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDelegationSwConnector();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setDelegationSwConnector((DelegationSwConnector)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setDelegationSwConnector(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getDelegationSwConnector() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

