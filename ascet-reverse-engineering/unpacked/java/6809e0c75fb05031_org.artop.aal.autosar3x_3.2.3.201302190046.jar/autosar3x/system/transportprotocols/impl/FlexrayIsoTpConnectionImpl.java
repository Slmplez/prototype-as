/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.transportprotocols.impl;

import autosar3x.system.fibex.fibexcore.corecommunication.IPdu;
import autosar3x.system.transportprotocols.FlexrayIsoTpConnection;
import autosar3x.system.transportprotocols.FlexrayIsoTpConnectionControl;
import autosar3x.system.transportprotocols.FlexrayIsoTpNode;
import autosar3x.system.transportprotocols.FlexrayIsoTpPduPool;
import autosar3x.system.transportprotocols.TpAddress;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
import autosar3x.system.transportprotocols.impl.TpChannelImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FlexrayIsoTpConnectionImpl
extends TpChannelImpl
implements FlexrayIsoTpConnection,
IReferringClass {
    protected static final Boolean BANDWIDTH_LIMITATION_EDEFAULT = Boolean.FALSE;
    protected Boolean bandwidthLimitation = BANDWIDTH_LIMITATION_EDEFAULT;
    protected boolean bandwidthLimitationESet;
    protected IPdu directTpSdu;
    protected TpAddress multicast;
    protected EList<FlexrayIsoTpNode> receivers;
    protected IPdu reversedTpSdu;
    protected FlexrayIsoTpPduPool rxPduPool;
    protected FlexrayIsoTpConnectionControl tpConnectionControl;
    protected FlexrayIsoTpNode transmitter;
    protected FlexrayIsoTpPduPool txPduPool;

    protected FlexrayIsoTpConnectionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.FLEXRAY_ISO_TP_CONNECTION;
    }

    @Override
    public Boolean getBandwidthLimitation() {
        return this.bandwidthLimitation;
    }

    @Override
    public void setBandwidthLimitation(Boolean newBandwidthLimitation) {
        Boolean oldBandwidthLimitation = this.bandwidthLimitation;
        this.bandwidthLimitation = newBandwidthLimitation;
        boolean oldBandwidthLimitationESet = this.bandwidthLimitationESet;
        this.bandwidthLimitationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldBandwidthLimitation, (Object)this.bandwidthLimitation, !oldBandwidthLimitationESet));
        }
    }

    @Override
    public void unsetBandwidthLimitation() {
        Boolean oldBandwidthLimitation = this.bandwidthLimitation;
        boolean oldBandwidthLimitationESet = this.bandwidthLimitationESet;
        this.bandwidthLimitation = BANDWIDTH_LIMITATION_EDEFAULT;
        this.bandwidthLimitationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldBandwidthLimitation, (Object)BANDWIDTH_LIMITATION_EDEFAULT, oldBandwidthLimitationESet));
        }
    }

    @Override
    public boolean isSetBandwidthLimitation() {
        return this.bandwidthLimitationESet;
    }

    @Override
    public IPdu getDirectTpSdu() {
        if (this.directTpSdu != null && this.directTpSdu.eIsProxy()) {
            InternalEObject oldDirectTpSdu = (InternalEObject)this.directTpSdu;
            this.directTpSdu = (IPdu)this.eResolveProxy(oldDirectTpSdu);
            if (this.directTpSdu != oldDirectTpSdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldDirectTpSdu, (Object)this.directTpSdu));
            }
        }
        return this.directTpSdu;
    }

    public IPdu basicGetDirectTpSdu() {
        return this.directTpSdu;
    }

    @Override
    public void setDirectTpSdu(IPdu newDirectTpSdu) {
        IPdu oldDirectTpSdu = this.directTpSdu;
        this.directTpSdu = newDirectTpSdu;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDirectTpSdu, (Object)this.directTpSdu));
        }
    }

    @Override
    public TpAddress getMulticast() {
        if (this.multicast != null && this.multicast.eIsProxy()) {
            InternalEObject oldMulticast = (InternalEObject)this.multicast;
            this.multicast = (TpAddress)this.eResolveProxy(oldMulticast);
            if (this.multicast != oldMulticast && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldMulticast, (Object)this.multicast));
            }
        }
        return this.multicast;
    }

    public TpAddress basicGetMulticast() {
        return this.multicast;
    }

    @Override
    public void setMulticast(TpAddress newMulticast) {
        TpAddress oldMulticast = this.multicast;
        this.multicast = newMulticast;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldMulticast, (Object)this.multicast));
        }
    }

    @Override
    public EList<FlexrayIsoTpNode> getReceivers() {
        if (this.receivers == null) {
            this.receivers = new EObjectResolvingReferringEList(FlexrayIsoTpNode.class, (InternalEObject)this, 8);
        }
        return this.receivers;
    }

    @Override
    public IPdu getReversedTpSdu() {
        if (this.reversedTpSdu != null && this.reversedTpSdu.eIsProxy()) {
            InternalEObject oldReversedTpSdu = (InternalEObject)this.reversedTpSdu;
            this.reversedTpSdu = (IPdu)this.eResolveProxy(oldReversedTpSdu);
            if (this.reversedTpSdu != oldReversedTpSdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldReversedTpSdu, (Object)this.reversedTpSdu));
            }
        }
        return this.reversedTpSdu;
    }

    public IPdu basicGetReversedTpSdu() {
        return this.reversedTpSdu;
    }

    @Override
    public void setReversedTpSdu(IPdu newReversedTpSdu) {
        IPdu oldReversedTpSdu = this.reversedTpSdu;
        this.reversedTpSdu = newReversedTpSdu;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldReversedTpSdu, (Object)this.reversedTpSdu));
        }
    }

    @Override
    public FlexrayIsoTpPduPool getRxPduPool() {
        if (this.rxPduPool != null && this.rxPduPool.eIsProxy()) {
            InternalEObject oldRxPduPool = (InternalEObject)this.rxPduPool;
            this.rxPduPool = (FlexrayIsoTpPduPool)this.eResolveProxy(oldRxPduPool);
            if (this.rxPduPool != oldRxPduPool && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 10, (Object)oldRxPduPool, (Object)this.rxPduPool));
            }
        }
        return this.rxPduPool;
    }

    public FlexrayIsoTpPduPool basicGetRxPduPool() {
        return this.rxPduPool;
    }

    @Override
    public void setRxPduPool(FlexrayIsoTpPduPool newRxPduPool) {
        FlexrayIsoTpPduPool oldRxPduPool = this.rxPduPool;
        this.rxPduPool = newRxPduPool;
        AutosarObjectUtil.setDest((EObject)this, (int)10, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldRxPduPool, (Object)this.rxPduPool));
        }
    }

    @Override
    public FlexrayIsoTpConnectionControl getTpConnectionControl() {
        if (this.tpConnectionControl != null && this.tpConnectionControl.eIsProxy()) {
            InternalEObject oldTpConnectionControl = (InternalEObject)this.tpConnectionControl;
            this.tpConnectionControl = (FlexrayIsoTpConnectionControl)this.eResolveProxy(oldTpConnectionControl);
            if (this.tpConnectionControl != oldTpConnectionControl && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 11, (Object)oldTpConnectionControl, (Object)this.tpConnectionControl));
            }
        }
        return this.tpConnectionControl;
    }

    public FlexrayIsoTpConnectionControl basicGetTpConnectionControl() {
        return this.tpConnectionControl;
    }

    @Override
    public void setTpConnectionControl(FlexrayIsoTpConnectionControl newTpConnectionControl) {
        FlexrayIsoTpConnectionControl oldTpConnectionControl = this.tpConnectionControl;
        this.tpConnectionControl = newTpConnectionControl;
        AutosarObjectUtil.setDest((EObject)this, (int)11, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldTpConnectionControl, (Object)this.tpConnectionControl));
        }
    }

    @Override
    public FlexrayIsoTpNode getTransmitter() {
        if (this.transmitter != null && this.transmitter.eIsProxy()) {
            InternalEObject oldTransmitter = (InternalEObject)this.transmitter;
            this.transmitter = (FlexrayIsoTpNode)this.eResolveProxy(oldTransmitter);
            if (this.transmitter != oldTransmitter && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 12, (Object)oldTransmitter, (Object)this.transmitter));
            }
        }
        return this.transmitter;
    }

    public FlexrayIsoTpNode basicGetTransmitter() {
        return this.transmitter;
    }

    @Override
    public void setTransmitter(FlexrayIsoTpNode newTransmitter) {
        FlexrayIsoTpNode oldTransmitter = this.transmitter;
        this.transmitter = newTransmitter;
        AutosarObjectUtil.setDest((EObject)this, (int)12, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldTransmitter, (Object)this.transmitter));
        }
    }

    @Override
    public FlexrayIsoTpPduPool getTxPduPool() {
        if (this.txPduPool != null && this.txPduPool.eIsProxy()) {
            InternalEObject oldTxPduPool = (InternalEObject)this.txPduPool;
            this.txPduPool = (FlexrayIsoTpPduPool)this.eResolveProxy(oldTxPduPool);
            if (this.txPduPool != oldTxPduPool && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 13, (Object)oldTxPduPool, (Object)this.txPduPool));
            }
        }
        return this.txPduPool;
    }

    public FlexrayIsoTpPduPool basicGetTxPduPool() {
        return this.txPduPool;
    }

    @Override
    public void setTxPduPool(FlexrayIsoTpPduPool newTxPduPool) {
        FlexrayIsoTpPduPool oldTxPduPool = this.txPduPool;
        this.txPduPool = newTxPduPool;
        AutosarObjectUtil.setDest((EObject)this, (int)13, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldTxPduPool, (Object)this.txPduPool));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getBandwidthLimitation();
            }
            case 6: {
                if (resolve) {
                    return this.getDirectTpSdu();
                }
                return this.basicGetDirectTpSdu();
            }
            case 7: {
                if (resolve) {
                    return this.getMulticast();
                }
                return this.basicGetMulticast();
            }
            case 8: {
                return this.getReceivers();
            }
            case 9: {
                if (resolve) {
                    return this.getReversedTpSdu();
                }
                return this.basicGetReversedTpSdu();
            }
            case 10: {
                if (resolve) {
                    return this.getRxPduPool();
                }
                return this.basicGetRxPduPool();
            }
            case 11: {
                if (resolve) {
                    return this.getTpConnectionControl();
                }
                return this.basicGetTpConnectionControl();
            }
            case 12: {
                if (resolve) {
                    return this.getTransmitter();
                }
                return this.basicGetTransmitter();
            }
            case 13: {
                if (resolve) {
                    return this.getTxPduPool();
                }
                return this.basicGetTxPduPool();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setBandwidthLimitation((Boolean)newValue);
                return;
            }
            case 6: {
                this.setDirectTpSdu((IPdu)newValue);
                return;
            }
            case 7: {
                this.setMulticast((TpAddress)newValue);
                return;
            }
            case 8: {
                this.getReceivers().clear();
                this.getReceivers().addAll((Collection)newValue);
                return;
            }
            case 9: {
                this.setReversedTpSdu((IPdu)newValue);
                return;
            }
            case 10: {
                this.setRxPduPool((FlexrayIsoTpPduPool)newValue);
                return;
            }
            case 11: {
                this.setTpConnectionControl((FlexrayIsoTpConnectionControl)newValue);
                return;
            }
            case 12: {
                this.setTransmitter((FlexrayIsoTpNode)newValue);
                return;
            }
            case 13: {
                this.setTxPduPool((FlexrayIsoTpPduPool)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetBandwidthLimitation();
                return;
            }
            case 6: {
                this.setDirectTpSdu(null);
                return;
            }
            case 7: {
                this.setMulticast(null);
                return;
            }
            case 8: {
                this.getReceivers().clear();
                return;
            }
            case 9: {
                this.setReversedTpSdu(null);
                return;
            }
            case 10: {
                this.setRxPduPool(null);
                return;
            }
            case 11: {
                this.setTpConnectionControl(null);
                return;
            }
            case 12: {
                this.setTransmitter(null);
                return;
            }
            case 13: {
                this.setTxPduPool(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetBandwidthLimitation();
            }
            case 6: {
                return this.directTpSdu != null;
            }
            case 7: {
                return this.multicast != null;
            }
            case 8: {
                return this.receivers != null && !this.receivers.isEmpty();
            }
            case 9: {
                return this.reversedTpSdu != null;
            }
            case 10: {
                return this.rxPduPool != null;
            }
            case 11: {
                return this.tpConnectionControl != null;
            }
            case 12: {
                return this.transmitter != null;
            }
            case 13: {
                return this.txPduPool != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (bandwidthLimitation: ");
        if (this.bandwidthLimitationESet) {
            result.append(this.bandwidthLimitation);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

