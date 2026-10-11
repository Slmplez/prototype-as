/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.transportprotocols.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.IPdu;
import autosar40.system.transportprotocols.FlexrayTpConfig;
import autosar40.system.transportprotocols.FlexrayTpConnection;
import autosar40.system.transportprotocols.FlexrayTpConnectionControl;
import autosar40.system.transportprotocols.FlexrayTpNode;
import autosar40.system.transportprotocols.FlexrayTpPduPool;
import autosar40.system.transportprotocols.TpAddress;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FlexrayTpConnectionImpl
extends ARObjectImpl
implements FlexrayTpConnection,
IReferringClass {
    protected static final Boolean BANDWIDTH_LIMITATION_EDEFAULT = Boolean.FALSE;
    protected Boolean bandwidthLimitation = BANDWIDTH_LIMITATION_EDEFAULT;
    protected boolean bandwidthLimitationESet;
    protected IPdu directTpSdu;
    protected TpAddress multicast;
    protected EList<FlexrayTpNode> receivers;
    protected IPdu reversedTpSdu;
    protected FlexrayTpPduPool rxPduPool;
    protected FlexrayTpConnectionControl tpConnectionControl;
    protected FlexrayTpNode transmitter;
    protected FlexrayTpPduPool txPduPool;
    protected VariationPoint variationPoint;

    protected FlexrayTpConnectionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.FLEXRAY_TP_CONNECTION;
    }

    @Override
    public FlexrayTpConfig getFlexrayTpConfig() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (FlexrayTpConfig)this.eContainer();
    }

    public NotificationChain basicSetFlexrayTpConfig(FlexrayTpConfig newFlexrayTpConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFlexrayTpConfig, 4, msgs);
        return msgs;
    }

    @Override
    public void setFlexrayTpConfig(FlexrayTpConfig newFlexrayTpConfig) {
        if (newFlexrayTpConfig != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newFlexrayTpConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFlexrayTpConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFlexrayTpConfig != null) {
                msgs = ((InternalEObject)newFlexrayTpConfig).eInverseAdd((InternalEObject)this, 24, FlexrayTpConfig.class, msgs);
            }
            if ((msgs = this.basicSetFlexrayTpConfig(newFlexrayTpConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newFlexrayTpConfig, (Object)newFlexrayTpConfig));
        }
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
    public EList<FlexrayTpNode> getReceivers() {
        if (this.receivers == null) {
            this.receivers = new EObjectResolvingReferringEList(FlexrayTpNode.class, (InternalEObject)this, 8);
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
    public FlexrayTpPduPool getRxPduPool() {
        if (this.rxPduPool != null && this.rxPduPool.eIsProxy()) {
            InternalEObject oldRxPduPool = (InternalEObject)this.rxPduPool;
            this.rxPduPool = (FlexrayTpPduPool)this.eResolveProxy(oldRxPduPool);
            if (this.rxPduPool != oldRxPduPool && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 10, (Object)oldRxPduPool, (Object)this.rxPduPool));
            }
        }
        return this.rxPduPool;
    }

    public FlexrayTpPduPool basicGetRxPduPool() {
        return this.rxPduPool;
    }

    @Override
    public void setRxPduPool(FlexrayTpPduPool newRxPduPool) {
        FlexrayTpPduPool oldRxPduPool = this.rxPduPool;
        this.rxPduPool = newRxPduPool;
        AutosarObjectUtil.setDest((EObject)this, (int)10, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldRxPduPool, (Object)this.rxPduPool));
        }
    }

    @Override
    public FlexrayTpConnectionControl getTpConnectionControl() {
        if (this.tpConnectionControl != null && this.tpConnectionControl.eIsProxy()) {
            InternalEObject oldTpConnectionControl = (InternalEObject)this.tpConnectionControl;
            this.tpConnectionControl = (FlexrayTpConnectionControl)this.eResolveProxy(oldTpConnectionControl);
            if (this.tpConnectionControl != oldTpConnectionControl && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 11, (Object)oldTpConnectionControl, (Object)this.tpConnectionControl));
            }
        }
        return this.tpConnectionControl;
    }

    public FlexrayTpConnectionControl basicGetTpConnectionControl() {
        return this.tpConnectionControl;
    }

    @Override
    public void setTpConnectionControl(FlexrayTpConnectionControl newTpConnectionControl) {
        FlexrayTpConnectionControl oldTpConnectionControl = this.tpConnectionControl;
        this.tpConnectionControl = newTpConnectionControl;
        AutosarObjectUtil.setDest((EObject)this, (int)11, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldTpConnectionControl, (Object)this.tpConnectionControl));
        }
    }

    @Override
    public FlexrayTpNode getTransmitter() {
        if (this.transmitter != null && this.transmitter.eIsProxy()) {
            InternalEObject oldTransmitter = (InternalEObject)this.transmitter;
            this.transmitter = (FlexrayTpNode)this.eResolveProxy(oldTransmitter);
            if (this.transmitter != oldTransmitter && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 12, (Object)oldTransmitter, (Object)this.transmitter));
            }
        }
        return this.transmitter;
    }

    public FlexrayTpNode basicGetTransmitter() {
        return this.transmitter;
    }

    @Override
    public void setTransmitter(FlexrayTpNode newTransmitter) {
        FlexrayTpNode oldTransmitter = this.transmitter;
        this.transmitter = newTransmitter;
        AutosarObjectUtil.setDest((EObject)this, (int)12, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldTransmitter, (Object)this.transmitter));
        }
    }

    @Override
    public FlexrayTpPduPool getTxPduPool() {
        if (this.txPduPool != null && this.txPduPool.eIsProxy()) {
            InternalEObject oldTxPduPool = (InternalEObject)this.txPduPool;
            this.txPduPool = (FlexrayTpPduPool)this.eResolveProxy(oldTxPduPool);
            if (this.txPduPool != oldTxPduPool && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 13, (Object)oldTxPduPool, (Object)this.txPduPool));
            }
        }
        return this.txPduPool;
    }

    public FlexrayTpPduPool basicGetTxPduPool() {
        return this.txPduPool;
    }

    @Override
    public void setTxPduPool(FlexrayTpPduPool newTxPduPool) {
        FlexrayTpPduPool oldTxPduPool = this.txPduPool;
        this.txPduPool = newTxPduPool;
        AutosarObjectUtil.setDest((EObject)this, (int)13, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldTxPduPool, (Object)this.txPduPool));
        }
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -15, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -15, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFlexrayTpConfig((FlexrayTpConfig)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetFlexrayTpConfig(null, msgs);
            }
            case 14: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, FlexrayTpConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getFlexrayTpConfig();
            }
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
            case 14: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setFlexrayTpConfig((FlexrayTpConfig)newValue);
                return;
            }
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
                this.setRxPduPool((FlexrayTpPduPool)newValue);
                return;
            }
            case 11: {
                this.setTpConnectionControl((FlexrayTpConnectionControl)newValue);
                return;
            }
            case 12: {
                this.setTransmitter((FlexrayTpNode)newValue);
                return;
            }
            case 13: {
                this.setTxPduPool((FlexrayTpPduPool)newValue);
                return;
            }
            case 14: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setFlexrayTpConfig(null);
                return;
            }
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
            case 14: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getFlexrayTpConfig() != null;
            }
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
            case 14: {
                return this.variationPoint != null;
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

