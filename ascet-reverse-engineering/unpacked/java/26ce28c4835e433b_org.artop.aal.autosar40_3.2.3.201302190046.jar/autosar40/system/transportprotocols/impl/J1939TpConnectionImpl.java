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
import autosar40.system.fibex.fibexcore.corecommunication.NPdu;
import autosar40.system.transportprotocols.J1939TpConfig;
import autosar40.system.transportprotocols.J1939TpConnection;
import autosar40.system.transportprotocols.J1939TpNode;
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
public class J1939TpConnectionImpl
extends ARObjectImpl
implements J1939TpConnection,
IReferringClass {
    protected static final Boolean BROADCAST_EDEFAULT = Boolean.FALSE;
    protected Boolean broadcast = BROADCAST_EDEFAULT;
    protected boolean broadcastESet;
    protected NPdu dataPdu;
    protected NPdu directPdu;
    protected EList<NPdu> flowControlPdus;
    protected EList<J1939TpNode> receivers;
    protected EList<IPdu> tpSdus;
    protected J1939TpNode transmitter;
    protected VariationPoint variationPoint;

    protected J1939TpConnectionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.J1939_TP_CONNECTION;
    }

    @Override
    public J1939TpConfig getJ1939TpConfig() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (J1939TpConfig)this.eContainer();
    }

    public NotificationChain basicSetJ1939TpConfig(J1939TpConfig newJ1939TpConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newJ1939TpConfig, 4, msgs);
        return msgs;
    }

    @Override
    public void setJ1939TpConfig(J1939TpConfig newJ1939TpConfig) {
        if (newJ1939TpConfig != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newJ1939TpConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newJ1939TpConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newJ1939TpConfig != null) {
                msgs = ((InternalEObject)newJ1939TpConfig).eInverseAdd((InternalEObject)this, 23, J1939TpConfig.class, msgs);
            }
            if ((msgs = this.basicSetJ1939TpConfig(newJ1939TpConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newJ1939TpConfig, (Object)newJ1939TpConfig));
        }
    }

    @Override
    public Boolean getBroadcast() {
        return this.broadcast;
    }

    @Override
    public void setBroadcast(Boolean newBroadcast) {
        Boolean oldBroadcast = this.broadcast;
        this.broadcast = newBroadcast;
        boolean oldBroadcastESet = this.broadcastESet;
        this.broadcastESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldBroadcast, (Object)this.broadcast, !oldBroadcastESet));
        }
    }

    @Override
    public void unsetBroadcast() {
        Boolean oldBroadcast = this.broadcast;
        boolean oldBroadcastESet = this.broadcastESet;
        this.broadcast = BROADCAST_EDEFAULT;
        this.broadcastESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldBroadcast, (Object)BROADCAST_EDEFAULT, oldBroadcastESet));
        }
    }

    @Override
    public boolean isSetBroadcast() {
        return this.broadcastESet;
    }

    @Override
    public NPdu getDataPdu() {
        if (this.dataPdu != null && this.dataPdu.eIsProxy()) {
            InternalEObject oldDataPdu = (InternalEObject)this.dataPdu;
            this.dataPdu = (NPdu)this.eResolveProxy(oldDataPdu);
            if (this.dataPdu != oldDataPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldDataPdu, (Object)this.dataPdu));
            }
        }
        return this.dataPdu;
    }

    public NPdu basicGetDataPdu() {
        return this.dataPdu;
    }

    @Override
    public void setDataPdu(NPdu newDataPdu) {
        NPdu oldDataPdu = this.dataPdu;
        this.dataPdu = newDataPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDataPdu, (Object)this.dataPdu));
        }
    }

    @Override
    public NPdu getDirectPdu() {
        if (this.directPdu != null && this.directPdu.eIsProxy()) {
            InternalEObject oldDirectPdu = (InternalEObject)this.directPdu;
            this.directPdu = (NPdu)this.eResolveProxy(oldDirectPdu);
            if (this.directPdu != oldDirectPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldDirectPdu, (Object)this.directPdu));
            }
        }
        return this.directPdu;
    }

    public NPdu basicGetDirectPdu() {
        return this.directPdu;
    }

    @Override
    public void setDirectPdu(NPdu newDirectPdu) {
        NPdu oldDirectPdu = this.directPdu;
        this.directPdu = newDirectPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldDirectPdu, (Object)this.directPdu));
        }
    }

    @Override
    public EList<NPdu> getFlowControlPdus() {
        if (this.flowControlPdus == null) {
            this.flowControlPdus = new EObjectResolvingReferringEList(NPdu.class, (InternalEObject)this, 8);
        }
        return this.flowControlPdus;
    }

    @Override
    public EList<J1939TpNode> getReceivers() {
        if (this.receivers == null) {
            this.receivers = new EObjectResolvingReferringEList(J1939TpNode.class, (InternalEObject)this, 9);
        }
        return this.receivers;
    }

    @Override
    public EList<IPdu> getTpSdus() {
        if (this.tpSdus == null) {
            this.tpSdus = new EObjectResolvingReferringEList(IPdu.class, (InternalEObject)this, 10);
        }
        return this.tpSdus;
    }

    @Override
    public J1939TpNode getTransmitter() {
        if (this.transmitter != null && this.transmitter.eIsProxy()) {
            InternalEObject oldTransmitter = (InternalEObject)this.transmitter;
            this.transmitter = (J1939TpNode)this.eResolveProxy(oldTransmitter);
            if (this.transmitter != oldTransmitter && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 11, (Object)oldTransmitter, (Object)this.transmitter));
            }
        }
        return this.transmitter;
    }

    public J1939TpNode basicGetTransmitter() {
        return this.transmitter;
    }

    @Override
    public void setTransmitter(J1939TpNode newTransmitter) {
        J1939TpNode oldTransmitter = this.transmitter;
        this.transmitter = newTransmitter;
        AutosarObjectUtil.setDest((EObject)this, (int)11, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldTransmitter, (Object)this.transmitter));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -13, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -13, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetJ1939TpConfig((J1939TpConfig)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetJ1939TpConfig(null, msgs);
            }
            case 12: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, J1939TpConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getJ1939TpConfig();
            }
            case 5: {
                return this.getBroadcast();
            }
            case 6: {
                if (resolve) {
                    return this.getDataPdu();
                }
                return this.basicGetDataPdu();
            }
            case 7: {
                if (resolve) {
                    return this.getDirectPdu();
                }
                return this.basicGetDirectPdu();
            }
            case 8: {
                return this.getFlowControlPdus();
            }
            case 9: {
                return this.getReceivers();
            }
            case 10: {
                return this.getTpSdus();
            }
            case 11: {
                if (resolve) {
                    return this.getTransmitter();
                }
                return this.basicGetTransmitter();
            }
            case 12: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setJ1939TpConfig((J1939TpConfig)newValue);
                return;
            }
            case 5: {
                this.setBroadcast((Boolean)newValue);
                return;
            }
            case 6: {
                this.setDataPdu((NPdu)newValue);
                return;
            }
            case 7: {
                this.setDirectPdu((NPdu)newValue);
                return;
            }
            case 8: {
                this.getFlowControlPdus().clear();
                this.getFlowControlPdus().addAll((Collection)newValue);
                return;
            }
            case 9: {
                this.getReceivers().clear();
                this.getReceivers().addAll((Collection)newValue);
                return;
            }
            case 10: {
                this.getTpSdus().clear();
                this.getTpSdus().addAll((Collection)newValue);
                return;
            }
            case 11: {
                this.setTransmitter((J1939TpNode)newValue);
                return;
            }
            case 12: {
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
                this.setJ1939TpConfig(null);
                return;
            }
            case 5: {
                this.unsetBroadcast();
                return;
            }
            case 6: {
                this.setDataPdu(null);
                return;
            }
            case 7: {
                this.setDirectPdu(null);
                return;
            }
            case 8: {
                this.getFlowControlPdus().clear();
                return;
            }
            case 9: {
                this.getReceivers().clear();
                return;
            }
            case 10: {
                this.getTpSdus().clear();
                return;
            }
            case 11: {
                this.setTransmitter(null);
                return;
            }
            case 12: {
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
                return this.getJ1939TpConfig() != null;
            }
            case 5: {
                return this.isSetBroadcast();
            }
            case 6: {
                return this.dataPdu != null;
            }
            case 7: {
                return this.directPdu != null;
            }
            case 8: {
                return this.flowControlPdus != null && !this.flowControlPdus.isEmpty();
            }
            case 9: {
                return this.receivers != null && !this.receivers.isEmpty();
            }
            case 10: {
                return this.tpSdus != null && !this.tpSdus.isEmpty();
            }
            case 11: {
                return this.transmitter != null;
            }
            case 12: {
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
        result.append(" (broadcast: ");
        if (this.broadcastESet) {
            result.append(this.broadcast);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

