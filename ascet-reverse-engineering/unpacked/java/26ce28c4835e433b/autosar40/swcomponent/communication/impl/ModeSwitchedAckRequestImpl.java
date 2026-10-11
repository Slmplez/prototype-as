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
import autosar40.swcomponent.communication.ModeSwitchSenderComSpec;
import autosar40.swcomponent.communication.ModeSwitchedAckRequest;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ModeSwitchedAckRequestImpl
extends ARObjectImpl
implements ModeSwitchedAckRequest {
    protected static final Double TIMEOUT_EDEFAULT = new Double(0.0);
    protected Double timeout = TIMEOUT_EDEFAULT;
    protected boolean timeoutESet;

    protected ModeSwitchedAckRequestImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.MODE_SWITCHED_ACK_REQUEST;
    }

    public ModeSwitchSenderComSpec getModeSwitchSenderComSpec() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ModeSwitchSenderComSpec)this.eContainer();
    }

    public NotificationChain basicSetModeSwitchSenderComSpec(ModeSwitchSenderComSpec newModeSwitchSenderComSpec, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newModeSwitchSenderComSpec, 4, msgs);
        return msgs;
    }

    public void setModeSwitchSenderComSpec(ModeSwitchSenderComSpec newModeSwitchSenderComSpec) {
        if (newModeSwitchSenderComSpec != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newModeSwitchSenderComSpec != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newModeSwitchSenderComSpec)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newModeSwitchSenderComSpec != null) {
                msgs = ((InternalEObject)newModeSwitchSenderComSpec).eInverseAdd((InternalEObject)this, 7, ModeSwitchSenderComSpec.class, msgs);
            }
            if ((msgs = this.basicSetModeSwitchSenderComSpec(newModeSwitchSenderComSpec, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newModeSwitchSenderComSpec, (Object)newModeSwitchSenderComSpec));
        }
    }

    public Double getTimeout() {
        return this.timeout;
    }

    public void setTimeout(Double newTimeout) {
        Double oldTimeout = this.timeout;
        this.timeout = newTimeout;
        boolean oldTimeoutESet = this.timeoutESet;
        this.timeoutESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldTimeout, (Object)this.timeout, !oldTimeoutESet));
        }
    }

    public void unsetTimeout() {
        Double oldTimeout = this.timeout;
        boolean oldTimeoutESet = this.timeoutESet;
        this.timeout = TIMEOUT_EDEFAULT;
        this.timeoutESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldTimeout, (Object)TIMEOUT_EDEFAULT, oldTimeoutESet));
        }
    }

    public boolean isSetTimeout() {
        return this.timeoutESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetModeSwitchSenderComSpec((ModeSwitchSenderComSpec)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetModeSwitchSenderComSpec(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, ModeSwitchSenderComSpec.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getModeSwitchSenderComSpec();
            }
            case 5: {
                return this.getTimeout();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setModeSwitchSenderComSpec((ModeSwitchSenderComSpec)newValue);
                return;
            }
            case 5: {
                this.setTimeout((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setModeSwitchSenderComSpec(null);
                return;
            }
            case 5: {
                this.unsetTimeout();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getModeSwitchSenderComSpec() != null;
            }
            case 5: {
                return this.isSetTimeout();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (timeout: ");
        if (this.timeoutESet) {
            result.append(this.timeout);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

