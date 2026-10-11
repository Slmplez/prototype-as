/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.fibex.fibex4flexray.flexraytopology.impl;

import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexRayCommunicationConnector;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.impl.CommunicationConnectorImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class FlexRayCommunicationConnectorImpl
extends CommunicationConnectorImpl
implements FlexRayCommunicationConnector {
    protected static final Boolean WAKE_UP_CHANNEL_EDEFAULT = Boolean.FALSE;
    protected Boolean wakeUpChannel = WAKE_UP_CHANNEL_EDEFAULT;
    protected boolean wakeUpChannelESet;

    protected FlexRayCommunicationConnectorImpl() {
    }

    protected EClass eStaticClass() {
        return FlexraytopologyPackage.Literals.FLEX_RAY_COMMUNICATION_CONNECTOR;
    }

    public Boolean getWakeUpChannel() {
        return this.wakeUpChannel;
    }

    public void setWakeUpChannel(Boolean newWakeUpChannel) {
        Boolean oldWakeUpChannel = this.wakeUpChannel;
        this.wakeUpChannel = newWakeUpChannel;
        boolean oldWakeUpChannelESet = this.wakeUpChannelESet;
        this.wakeUpChannelESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldWakeUpChannel, (Object)this.wakeUpChannel, !oldWakeUpChannelESet));
        }
    }

    public void unsetWakeUpChannel() {
        Boolean oldWakeUpChannel = this.wakeUpChannel;
        boolean oldWakeUpChannelESet = this.wakeUpChannelESet;
        this.wakeUpChannel = WAKE_UP_CHANNEL_EDEFAULT;
        this.wakeUpChannelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldWakeUpChannel, (Object)WAKE_UP_CHANNEL_EDEFAULT, oldWakeUpChannelESet));
        }
    }

    public boolean isSetWakeUpChannel() {
        return this.wakeUpChannelESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 23: {
                return this.getWakeUpChannel();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 23: {
                this.setWakeUpChannel((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 23: {
                this.unsetWakeUpChannel();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 23: {
                return this.isSetWakeUpChannel();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (wakeUpChannel: ");
        if (this.wakeUpChannelESet) {
            result.append(this.wakeUpChannel);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

