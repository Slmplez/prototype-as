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
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.NPdu;
import autosar40.system.fibex.fibexcore.corecommunication.impl.IPduImpl;
import autosar40.system.transportprotocols.FlexrayArTpChannel;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class NPduImpl
extends IPduImpl
implements NPdu {
    protected NPduImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.NPDU;
    }

    public FlexrayArTpChannel getFlexrayArTpChannel() {
        if (this.eContainerFeatureID() != 22) {
            return null;
        }
        return (FlexrayArTpChannel)this.eContainer();
    }

    public NotificationChain basicSetFlexrayArTpChannel(FlexrayArTpChannel newFlexrayArTpChannel, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFlexrayArTpChannel, 22, msgs);
        return msgs;
    }

    public void setFlexrayArTpChannel(FlexrayArTpChannel newFlexrayArTpChannel) {
        if (newFlexrayArTpChannel != this.eInternalContainer() || this.eContainerFeatureID() != 22 && newFlexrayArTpChannel != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFlexrayArTpChannel)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFlexrayArTpChannel != null) {
                msgs = ((InternalEObject)newFlexrayArTpChannel).eInverseAdd((InternalEObject)this, 17, FlexrayArTpChannel.class, msgs);
            }
            if ((msgs = this.basicSetFlexrayArTpChannel(newFlexrayArTpChannel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newFlexrayArTpChannel, (Object)newFlexrayArTpChannel));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFlexrayArTpChannel((FlexrayArTpChannel)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetFlexrayArTpChannel(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 22: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 17, FlexrayArTpChannel.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getFlexrayArTpChannel();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setFlexrayArTpChannel((FlexrayArTpChannel)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.setFlexrayArTpChannel(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.getFlexrayArTpChannel() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

