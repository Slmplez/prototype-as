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
package autosar21.swcomponent.communication.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.communication.CommunicationPackage;
import autosar21.swcomponent.communication.ConnectorComSpec;
import autosar21.swcomponent.composition.AssemblyConnectorPrototype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class ConnectorComSpecImpl
extends ARObjectImpl
implements ConnectorComSpec {
    protected ConnectorComSpecImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.CONNECTOR_COM_SPEC;
    }

    public AssemblyConnectorPrototype getAssemblyConnectorPrototype() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (AssemblyConnectorPrototype)this.eContainer();
    }

    public NotificationChain basicSetAssemblyConnectorPrototype(AssemblyConnectorPrototype newAssemblyConnectorPrototype, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newAssemblyConnectorPrototype, 4, msgs);
        return msgs;
    }

    public void setAssemblyConnectorPrototype(AssemblyConnectorPrototype newAssemblyConnectorPrototype) {
        if (newAssemblyConnectorPrototype != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newAssemblyConnectorPrototype != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newAssemblyConnectorPrototype)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newAssemblyConnectorPrototype != null) {
                msgs = ((InternalEObject)newAssemblyConnectorPrototype).eInverseAdd((InternalEObject)this, 20, AssemblyConnectorPrototype.class, msgs);
            }
            if ((msgs = this.basicSetAssemblyConnectorPrototype(newAssemblyConnectorPrototype, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newAssemblyConnectorPrototype, (Object)newAssemblyConnectorPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetAssemblyConnectorPrototype((AssemblyConnectorPrototype)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetAssemblyConnectorPrototype(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, AssemblyConnectorPrototype.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getAssemblyConnectorPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setAssemblyConnectorPrototype((AssemblyConnectorPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setAssemblyConnectorPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getAssemblyConnectorPrototype() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

