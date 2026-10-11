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
import autosar40.system.fibex.fibexcore.corecommunication.IPdu;
import autosar40.system.fibex.fibexcore.corecommunication.NPdu;
import autosar40.system.transportprotocols.FlexrayArTpChannel;
import autosar40.system.transportprotocols.FlexrayArTpConnection;
import autosar40.system.transportprotocols.FlexrayArTpNode;
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
public class FlexrayArTpConnectionImpl
extends ARObjectImpl
implements FlexrayArTpConnection,
IReferringClass {
    protected IPdu directTpSdu;
    protected NPdu flowControlPdu;
    protected TpAddress multicast;
    protected IPdu reversedTpSdu;
    protected FlexrayArTpNode source;
    protected EList<FlexrayArTpNode> targets;
    protected EList<NPdu> transmitPdus;

    protected FlexrayArTpConnectionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.FLEXRAY_AR_TP_CONNECTION;
    }

    @Override
    public FlexrayArTpChannel getFlexrayArTpChannel() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (FlexrayArTpChannel)this.eContainer();
    }

    public NotificationChain basicSetFlexrayArTpChannel(FlexrayArTpChannel newFlexrayArTpChannel, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFlexrayArTpChannel, 4, msgs);
        return msgs;
    }

    @Override
    public void setFlexrayArTpChannel(FlexrayArTpChannel newFlexrayArTpChannel) {
        if (newFlexrayArTpChannel != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newFlexrayArTpChannel != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFlexrayArTpChannel)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFlexrayArTpChannel != null) {
                msgs = ((InternalEObject)newFlexrayArTpChannel).eInverseAdd((InternalEObject)this, 26, FlexrayArTpChannel.class, msgs);
            }
            if ((msgs = this.basicSetFlexrayArTpChannel(newFlexrayArTpChannel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newFlexrayArTpChannel, (Object)newFlexrayArTpChannel));
        }
    }

    @Override
    public IPdu getDirectTpSdu() {
        if (this.directTpSdu != null && this.directTpSdu.eIsProxy()) {
            InternalEObject oldDirectTpSdu = (InternalEObject)this.directTpSdu;
            this.directTpSdu = (IPdu)this.eResolveProxy(oldDirectTpSdu);
            if (this.directTpSdu != oldDirectTpSdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldDirectTpSdu, (Object)this.directTpSdu));
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
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDirectTpSdu, (Object)this.directTpSdu));
        }
    }

    @Override
    public NPdu getFlowControlPdu() {
        if (this.flowControlPdu != null && this.flowControlPdu.eIsProxy()) {
            InternalEObject oldFlowControlPdu = (InternalEObject)this.flowControlPdu;
            this.flowControlPdu = (NPdu)this.eResolveProxy(oldFlowControlPdu);
            if (this.flowControlPdu != oldFlowControlPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldFlowControlPdu, (Object)this.flowControlPdu));
            }
        }
        return this.flowControlPdu;
    }

    public NPdu basicGetFlowControlPdu() {
        return this.flowControlPdu;
    }

    @Override
    public void setFlowControlPdu(NPdu newFlowControlPdu) {
        NPdu oldFlowControlPdu = this.flowControlPdu;
        this.flowControlPdu = newFlowControlPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldFlowControlPdu, (Object)this.flowControlPdu));
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
    public IPdu getReversedTpSdu() {
        if (this.reversedTpSdu != null && this.reversedTpSdu.eIsProxy()) {
            InternalEObject oldReversedTpSdu = (InternalEObject)this.reversedTpSdu;
            this.reversedTpSdu = (IPdu)this.eResolveProxy(oldReversedTpSdu);
            if (this.reversedTpSdu != oldReversedTpSdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldReversedTpSdu, (Object)this.reversedTpSdu));
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
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldReversedTpSdu, (Object)this.reversedTpSdu));
        }
    }

    @Override
    public FlexrayArTpNode getSource() {
        if (this.source != null && this.source.eIsProxy()) {
            InternalEObject oldSource = (InternalEObject)this.source;
            this.source = (FlexrayArTpNode)this.eResolveProxy(oldSource);
            if (this.source != oldSource && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldSource, (Object)this.source));
            }
        }
        return this.source;
    }

    public FlexrayArTpNode basicGetSource() {
        return this.source;
    }

    @Override
    public void setSource(FlexrayArTpNode newSource) {
        FlexrayArTpNode oldSource = this.source;
        this.source = newSource;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldSource, (Object)this.source));
        }
    }

    @Override
    public EList<FlexrayArTpNode> getTargets() {
        if (this.targets == null) {
            this.targets = new EObjectResolvingReferringEList(FlexrayArTpNode.class, (InternalEObject)this, 10);
        }
        return this.targets;
    }

    @Override
    public EList<NPdu> getTransmitPdus() {
        if (this.transmitPdus == null) {
            this.transmitPdus = new EObjectResolvingReferringEList(NPdu.class, (InternalEObject)this, 11);
        }
        return this.transmitPdus;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
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
            case 4: {
                return this.basicSetFlexrayArTpChannel(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 26, FlexrayArTpChannel.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getFlexrayArTpChannel();
            }
            case 5: {
                if (resolve) {
                    return this.getDirectTpSdu();
                }
                return this.basicGetDirectTpSdu();
            }
            case 6: {
                if (resolve) {
                    return this.getFlowControlPdu();
                }
                return this.basicGetFlowControlPdu();
            }
            case 7: {
                if (resolve) {
                    return this.getMulticast();
                }
                return this.basicGetMulticast();
            }
            case 8: {
                if (resolve) {
                    return this.getReversedTpSdu();
                }
                return this.basicGetReversedTpSdu();
            }
            case 9: {
                if (resolve) {
                    return this.getSource();
                }
                return this.basicGetSource();
            }
            case 10: {
                return this.getTargets();
            }
            case 11: {
                return this.getTransmitPdus();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setFlexrayArTpChannel((FlexrayArTpChannel)newValue);
                return;
            }
            case 5: {
                this.setDirectTpSdu((IPdu)newValue);
                return;
            }
            case 6: {
                this.setFlowControlPdu((NPdu)newValue);
                return;
            }
            case 7: {
                this.setMulticast((TpAddress)newValue);
                return;
            }
            case 8: {
                this.setReversedTpSdu((IPdu)newValue);
                return;
            }
            case 9: {
                this.setSource((FlexrayArTpNode)newValue);
                return;
            }
            case 10: {
                this.getTargets().clear();
                this.getTargets().addAll((Collection)newValue);
                return;
            }
            case 11: {
                this.getTransmitPdus().clear();
                this.getTransmitPdus().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setFlexrayArTpChannel(null);
                return;
            }
            case 5: {
                this.setDirectTpSdu(null);
                return;
            }
            case 6: {
                this.setFlowControlPdu(null);
                return;
            }
            case 7: {
                this.setMulticast(null);
                return;
            }
            case 8: {
                this.setReversedTpSdu(null);
                return;
            }
            case 9: {
                this.setSource(null);
                return;
            }
            case 10: {
                this.getTargets().clear();
                return;
            }
            case 11: {
                this.getTransmitPdus().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getFlexrayArTpChannel() != null;
            }
            case 5: {
                return this.directTpSdu != null;
            }
            case 6: {
                return this.flowControlPdu != null;
            }
            case 7: {
                return this.multicast != null;
            }
            case 8: {
                return this.reversedTpSdu != null;
            }
            case 9: {
                return this.source != null;
            }
            case 10: {
                return this.targets != null && !this.targets.isEmpty();
            }
            case 11: {
                return this.transmitPdus != null && !this.transmitPdus.isEmpty();
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
}

