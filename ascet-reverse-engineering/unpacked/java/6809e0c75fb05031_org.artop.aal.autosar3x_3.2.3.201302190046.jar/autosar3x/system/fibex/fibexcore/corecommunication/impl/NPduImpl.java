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
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.NPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.IPduImpl;
import autosar3x.system.transportprotocols.FlexrayTpChannel;
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

    public FlexrayTpChannel getFlexrayTpChannel() {
        if (this.eContainerFeatureID() != 21) {
            return null;
        }
        return (FlexrayTpChannel)this.eContainer();
    }

    public NotificationChain basicSetFlexrayTpChannel(FlexrayTpChannel newFlexrayTpChannel, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFlexrayTpChannel, 21, msgs);
        return msgs;
    }

    public void setFlexrayTpChannel(FlexrayTpChannel newFlexrayTpChannel) {
        if (newFlexrayTpChannel != this.eInternalContainer() || this.eContainerFeatureID() != 21 && newFlexrayTpChannel != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFlexrayTpChannel)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFlexrayTpChannel != null) {
                msgs = ((InternalEObject)newFlexrayTpChannel).eInverseAdd((InternalEObject)this, 17, FlexrayTpChannel.class, msgs);
            }
            if ((msgs = this.basicSetFlexrayTpChannel(newFlexrayTpChannel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newFlexrayTpChannel, (Object)newFlexrayTpChannel));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFlexrayTpChannel((FlexrayTpChannel)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return this.basicSetFlexrayTpChannel(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 21: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 17, FlexrayTpChannel.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getFlexrayTpChannel();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setFlexrayTpChannel((FlexrayTpChannel)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setFlexrayTpChannel(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.getFlexrayTpChannel() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

