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
package autosar21.swcomponent.portinterface.impl;

import autosar21.swcomponent.datatype.datatypes.impl.DataPrototypeImpl;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import autosar21.swcomponent.portinterface.PortinterfacePackage;
import autosar21.swcomponent.portinterface.SenderReceiverInterface;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class DataElementPrototypeImpl
extends DataPrototypeImpl
implements DataElementPrototype {
    protected static final Boolean IS_QUEUED_EDEFAULT = Boolean.FALSE;
    protected Boolean isQueued = IS_QUEUED_EDEFAULT;
    protected boolean isQueuedESet;

    protected DataElementPrototypeImpl() {
    }

    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.DATA_ELEMENT_PROTOTYPE;
    }

    public SenderReceiverInterface getSenderReceiverInterface() {
        if (this.eContainerFeatureID() != 20) {
            return null;
        }
        return (SenderReceiverInterface)this.eContainer();
    }

    public NotificationChain basicSetSenderReceiverInterface(SenderReceiverInterface newSenderReceiverInterface, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSenderReceiverInterface, 20, msgs);
        return msgs;
    }

    public void setSenderReceiverInterface(SenderReceiverInterface newSenderReceiverInterface) {
        if (newSenderReceiverInterface != this.eInternalContainer() || this.eContainerFeatureID() != 20 && newSenderReceiverInterface != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSenderReceiverInterface)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSenderReceiverInterface != null) {
                msgs = ((InternalEObject)newSenderReceiverInterface).eInverseAdd((InternalEObject)this, 22, SenderReceiverInterface.class, msgs);
            }
            if ((msgs = this.basicSetSenderReceiverInterface(newSenderReceiverInterface, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newSenderReceiverInterface, (Object)newSenderReceiverInterface));
        }
    }

    public Boolean getIsQueued() {
        return this.isQueued;
    }

    public void setIsQueued(Boolean newIsQueued) {
        Boolean oldIsQueued = this.isQueued;
        this.isQueued = newIsQueued;
        boolean oldIsQueuedESet = this.isQueuedESet;
        this.isQueuedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldIsQueued, (Object)this.isQueued, !oldIsQueuedESet));
        }
    }

    public void unsetIsQueued() {
        Boolean oldIsQueued = this.isQueued;
        boolean oldIsQueuedESet = this.isQueuedESet;
        this.isQueued = IS_QUEUED_EDEFAULT;
        this.isQueuedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldIsQueued, (Object)IS_QUEUED_EDEFAULT, oldIsQueuedESet));
        }
    }

    public boolean isSetIsQueued() {
        return this.isQueuedESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSenderReceiverInterface((SenderReceiverInterface)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return this.basicSetSenderReceiverInterface(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 20: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, SenderReceiverInterface.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getSenderReceiverInterface();
            }
            case 21: {
                return this.getIsQueued();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setSenderReceiverInterface((SenderReceiverInterface)newValue);
                return;
            }
            case 21: {
                this.setIsQueued((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.setSenderReceiverInterface(null);
                return;
            }
            case 21: {
                this.unsetIsQueued();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.getSenderReceiverInterface() != null;
            }
            case 21: {
                return this.isSetIsQueued();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (isQueued: ");
        if (this.isQueuedESet) {
            result.append(this.isQueued);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

