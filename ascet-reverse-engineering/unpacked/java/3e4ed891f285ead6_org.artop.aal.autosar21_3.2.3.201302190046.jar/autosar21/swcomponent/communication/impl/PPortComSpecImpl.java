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
import autosar21.swcomponent.communication.PPortComSpec;
import autosar21.swcomponent.components.PPortPrototype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class PPortComSpecImpl
extends ARObjectImpl
implements PPortComSpec {
    protected PPortComSpecImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.PPORT_COM_SPEC;
    }

    public PPortPrototype getPPortPrototype() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (PPortPrototype)this.eContainer();
    }

    public NotificationChain basicSetPPortPrototype(PPortPrototype newPPortPrototype, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPPortPrototype, 4, msgs);
        return msgs;
    }

    public void setPPortPrototype(PPortPrototype newPPortPrototype) {
        if (newPPortPrototype != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newPPortPrototype != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPPortPrototype)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPPortPrototype != null) {
                msgs = ((InternalEObject)newPPortPrototype).eInverseAdd((InternalEObject)this, 19, PPortPrototype.class, msgs);
            }
            if ((msgs = this.basicSetPPortPrototype(newPPortPrototype, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPPortPrototype, (Object)newPPortPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPPortPrototype((PPortPrototype)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPPortPrototype(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, PPortPrototype.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPPortPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setPPortPrototype((PPortPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPPortPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getPPortPrototype() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

