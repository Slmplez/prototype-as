/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.system.fibex.fibex4flexray.flexraytopology.impl;

import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayChannelName;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.impl.PhysicalChannelImpl;
import autosar3x.system.transportprotocols.FlexrayIsoTpConnectionControl;
import autosar3x.system.transportprotocols.FlexrayIsoTpEcu;
import autosar3x.system.transportprotocols.FlexrayIsoTpPduPool;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FlexrayPhysicalChannelImpl
extends PhysicalChannelImpl
implements FlexrayPhysicalChannel {
    protected static final FlexrayChannelName CHANNEL_NAME_EDEFAULT = FlexrayChannelName.CHANNEL_A;
    protected FlexrayChannelName channelName = CHANNEL_NAME_EDEFAULT;
    protected boolean channelNameESet;
    protected EList<FlexrayIsoTpPduPool> pduPools;
    protected EList<FlexrayIsoTpConnectionControl> tpConnectionControls;
    protected EList<FlexrayIsoTpEcu> tpEcus;

    protected FlexrayPhysicalChannelImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return FlexraytopologyPackage.Literals.FLEXRAY_PHYSICAL_CHANNEL;
    }

    @Override
    public FlexrayChannelName getChannelName() {
        return this.channelName;
    }

    @Override
    public void setChannelName(FlexrayChannelName newChannelName) {
        FlexrayChannelName oldChannelName = this.channelName;
        this.channelName = newChannelName == null ? CHANNEL_NAME_EDEFAULT : newChannelName;
        boolean oldChannelNameESet = this.channelNameESet;
        this.channelNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldChannelName, (Object)this.channelName, !oldChannelNameESet));
        }
    }

    @Override
    public void unsetChannelName() {
        FlexrayChannelName oldChannelName = this.channelName;
        boolean oldChannelNameESet = this.channelNameESet;
        this.channelName = CHANNEL_NAME_EDEFAULT;
        this.channelNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldChannelName, (Object)CHANNEL_NAME_EDEFAULT, oldChannelNameESet));
        }
    }

    @Override
    public boolean isSetChannelName() {
        return this.channelNameESet;
    }

    @Override
    public EList<FlexrayIsoTpPduPool> getPduPools() {
        if (this.pduPools == null) {
            this.pduPools = new EObjectContainmentWithInverseEList(FlexrayIsoTpPduPool.class, (InternalEObject)this, 25, 17);
        }
        return this.pduPools;
    }

    @Override
    public EList<FlexrayIsoTpConnectionControl> getTpConnectionControls() {
        if (this.tpConnectionControls == null) {
            this.tpConnectionControls = new EObjectContainmentWithInverseEList(FlexrayIsoTpConnectionControl.class, (InternalEObject)this, 26, 17);
        }
        return this.tpConnectionControls;
    }

    @Override
    public EList<FlexrayIsoTpEcu> getTpEcus() {
        if (this.tpEcus == null) {
            this.tpEcus = new EObjectContainmentWithInverseEList(FlexrayIsoTpEcu.class, (InternalEObject)this, 27, 4);
        }
        return this.tpEcus;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                return ((InternalEList)this.getPduPools()).basicAdd((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getTpConnectionControls()).basicAdd((Object)otherEnd, msgs);
            }
            case 27: {
                return ((InternalEList)this.getTpEcus()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                return ((InternalEList)this.getPduPools()).basicRemove((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getTpConnectionControls()).basicRemove((Object)otherEnd, msgs);
            }
            case 27: {
                return ((InternalEList)this.getTpEcus()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 24: {
                return this.getChannelName();
            }
            case 25: {
                return this.getPduPools();
            }
            case 26: {
                return this.getTpConnectionControls();
            }
            case 27: {
                return this.getTpEcus();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 24: {
                this.setChannelName((FlexrayChannelName)((Object)newValue));
                return;
            }
            case 25: {
                this.getPduPools().clear();
                this.getPduPools().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getTpConnectionControls().clear();
                this.getTpConnectionControls().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.getTpEcus().clear();
                this.getTpEcus().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 24: {
                this.unsetChannelName();
                return;
            }
            case 25: {
                this.getPduPools().clear();
                return;
            }
            case 26: {
                this.getTpConnectionControls().clear();
                return;
            }
            case 27: {
                this.getTpEcus().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 24: {
                return this.isSetChannelName();
            }
            case 25: {
                return this.pduPools != null && !this.pduPools.isEmpty();
            }
            case 26: {
                return this.tpConnectionControls != null && !this.tpConnectionControls.isEmpty();
            }
            case 27: {
                return this.tpEcus != null && !this.tpEcus.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
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

