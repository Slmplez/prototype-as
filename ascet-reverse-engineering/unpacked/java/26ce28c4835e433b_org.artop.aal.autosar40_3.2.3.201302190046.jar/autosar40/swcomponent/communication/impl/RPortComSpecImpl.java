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
package autosar40.swcomponent.communication.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.communication.CommunicationPackage;
import autosar40.swcomponent.communication.RPortComSpec;
import autosar40.swcomponent.components.RPortPrototype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class RPortComSpecImpl
extends ARObjectImpl
implements RPortComSpec {
    protected RPortComSpecImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.RPORT_COM_SPEC;
    }

    public RPortPrototype getRPortPrototype() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (RPortPrototype)this.eContainer();
    }

    public NotificationChain basicSetRPortPrototype(RPortPrototype newRPortPrototype, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newRPortPrototype, 4, msgs);
        return msgs;
    }

    public void setRPortPrototype(RPortPrototype newRPortPrototype) {
        if (newRPortPrototype != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newRPortPrototype != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newRPortPrototype)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newRPortPrototype != null) {
                msgs = ((InternalEObject)newRPortPrototype).eInverseAdd((InternalEObject)this, 30, RPortPrototype.class, msgs);
            }
            if ((msgs = this.basicSetRPortPrototype(newRPortPrototype, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newRPortPrototype, (Object)newRPortPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetRPortPrototype((RPortPrototype)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetRPortPrototype(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 30, RPortPrototype.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getRPortPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setRPortPrototype((RPortPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setRPortPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getRPortPrototype() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

