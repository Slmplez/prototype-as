/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibex4flexray.flexraytopology.impl;

import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayChannelName;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.PhysicalChannelImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class FlexrayPhysicalChannelImpl
extends PhysicalChannelImpl
implements FlexrayPhysicalChannel {
    protected static final FlexrayChannelName CHANNEL_NAME_EDEFAULT = FlexrayChannelName.CHANNEL_A;
    protected FlexrayChannelName channelName = CHANNEL_NAME_EDEFAULT;
    protected boolean channelNameESet;

    protected FlexrayPhysicalChannelImpl() {
    }

    protected EClass eStaticClass() {
        return FlexraytopologyPackage.Literals.FLEXRAY_PHYSICAL_CHANNEL;
    }

    public FlexrayChannelName getChannelName() {
        return this.channelName;
    }

    public void setChannelName(FlexrayChannelName newChannelName) {
        FlexrayChannelName oldChannelName = this.channelName;
        this.channelName = newChannelName == null ? CHANNEL_NAME_EDEFAULT : newChannelName;
        boolean oldChannelNameESet = this.channelNameESet;
        this.channelNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldChannelName, (Object)this.channelName, !oldChannelNameESet));
        }
    }

    public void unsetChannelName() {
        FlexrayChannelName oldChannelName = this.channelName;
        boolean oldChannelNameESet = this.channelNameESet;
        this.channelName = CHANNEL_NAME_EDEFAULT;
        this.channelNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldChannelName, (Object)CHANNEL_NAME_EDEFAULT, oldChannelNameESet));
        }
    }

    public boolean isSetChannelName() {
        return this.channelNameESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 24: {
                return this.getChannelName();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 24: {
                this.setChannelName((FlexrayChannelName)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 24: {
                this.unsetChannelName();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 24: {
                return this.isSetChannelName();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (channelName: ");
        if (this.channelNameESet) {
            result.append((Object)this.channelName);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

