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
import autosar40.system.transportprotocols.LinTpConfig;
import autosar40.system.transportprotocols.LinTpConnection;
import autosar40.system.transportprotocols.LinTpNode;
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
public class LinTpConnectionImpl
extends ARObjectImpl
implements LinTpConnection,
IReferringClass {
    protected NPdu dataPdu;
    protected static final Boolean DROP_NOT_REQUESTED_NAD_EDEFAULT = Boolean.FALSE;
    protected Boolean dropNotRequestedNad = DROP_NOT_REQUESTED_NAD_EDEFAULT;
    protected boolean dropNotRequestedNadESet;
    protected NPdu flowControl;
    protected IPdu linTpNSdu;
    protected TpAddress multicast;
    protected EList<LinTpNode> receivers;
    protected static final Double TIMEOUT_AS_EDEFAULT = new Double(0.0);
    protected Double timeoutAs = TIMEOUT_AS_EDEFAULT;
    protected boolean timeoutAsESet;
    protected static final Double TIMEOUT_CR_EDEFAULT = new Double(0.0);
    protected Double timeoutCr = TIMEOUT_CR_EDEFAULT;
    protected boolean timeoutCrESet;
    protected static final Double TIMEOUT_CS_EDEFAULT = new Double(0.0);
    protected Double timeoutCs = TIMEOUT_CS_EDEFAULT;
    protected boolean timeoutCsESet;
    protected LinTpNode transmitter;
    protected VariationPoint variationPoint;

    protected LinTpConnectionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.LIN_TP_CONNECTION;
    }

    @Override
    public LinTpConfig getLinTpConfig() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (LinTpConfig)this.eContainer();
    }

    public NotificationChain basicSetLinTpConfig(LinTpConfig newLinTpConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newLinTpConfig, 4, msgs);
        return msgs;
    }

    @Override
    public void setLinTpConfig(LinTpConfig newLinTpConfig) {
        if (newLinTpConfig != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newLinTpConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newLinTpConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newLinTpConfig != null) {
                msgs = ((InternalEObject)newLinTpConfig).eInverseAdd((InternalEObject)this, 23, LinTpConfig.class, msgs);
            }
            if ((msgs = this.basicSetLinTpConfig(newLinTpConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newLinTpConfig, (Object)newLinTpConfig));
        }
    }

    @Override
    public NPdu getDataPdu() {
        if (this.dataPdu != null && this.dataPdu.eIsProxy()) {
            InternalEObject oldDataPdu = (InternalEObject)this.dataPdu;
            this.dataPdu = (NPdu)this.eResolveProxy(oldDataPdu);
            if (this.dataPdu != oldDataPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldDataPdu, (Object)this.dataPdu));
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
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDataPdu, (Object)this.dataPdu));
        }
    }

    @Override
    public Boolean getDropNotRequestedNad() {
        return this.dropNotRequestedNad;
    }

    @Override
    public void setDropNotRequestedNad(Boolean newDropNotRequestedNad) {
        Boolean oldDropNotRequestedNad = this.dropNotRequestedNad;
        this.dropNotRequestedNad = newDropNotRequestedNad;
        boolean oldDropNotRequestedNadESet = this.dropNotRequestedNadESet;
        this.dropNotRequestedNadESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDropNotRequestedNad, (Object)this.dropNotRequestedNad, !oldDropNotRequestedNadESet));
        }
    }

    @Override
    public void unsetDropNotRequestedNad() {
        Boolean oldDropNotRequestedNad = this.dropNotRequestedNad;
        boolean oldDropNotRequestedNadESet = this.dropNotRequestedNadESet;
        this.dropNotRequestedNad = DROP_NOT_REQUESTED_NAD_EDEFAULT;
        this.dropNotRequestedNadESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldDropNotRequestedNad, (Object)DROP_NOT_REQUESTED_NAD_EDEFAULT, oldDropNotRequestedNadESet));
        }
    }

    @Override
    public boolean isSetDropNotRequestedNad() {
        return this.dropNotRequestedNadESet;
    }

    @Override
    public NPdu getFlowControl() {
        if (this.flowControl != null && this.flowControl.eIsProxy()) {
            InternalEObject oldFlowControl = (InternalEObject)this.flowControl;
            this.flowControl = (NPdu)this.eResolveProxy(oldFlowControl);
            if (this.flowControl != oldFlowControl && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldFlowControl, (Object)this.flowControl));
            }
        }
        return this.flowControl;
    }

    public NPdu basicGetFlowControl() {
        return this.flowControl;
    }

    @Override
    public void setFlowControl(NPdu newFlowControl) {
        NPdu oldFlowControl = this.flowControl;
        this.flowControl = newFlowControl;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldFlowControl, (Object)this.flowControl));
        }
    }

    @Override
    public IPdu getLinTpNSdu() {
        if (this.linTpNSdu != null && this.linTpNSdu.eIsProxy()) {
            InternalEObject oldLinTpNSdu = (InternalEObject)this.linTpNSdu;
            this.linTpNSdu = (IPdu)this.eResolveProxy(oldLinTpNSdu);
            if (this.linTpNSdu != oldLinTpNSdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldLinTpNSdu, (Object)this.linTpNSdu));
            }
        }
        return this.linTpNSdu;
    }

    public IPdu basicGetLinTpNSdu() {
        return this.linTpNSdu;
    }

    @Override
    public void setLinTpNSdu(IPdu newLinTpNSdu) {
        IPdu oldLinTpNSdu = this.linTpNSdu;
        this.linTpNSdu = newLinTpNSdu;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldLinTpNSdu, (Object)this.linTpNSdu));
        }
    }

    @Override
    public TpAddress getMulticast() {
        if (this.multicast != null && this.multicast.eIsProxy()) {
            InternalEObject oldMulticast = (InternalEObject)this.multicast;
            this.multicast = (TpAddress)this.eResolveProxy(oldMulticast);
            if (this.multicast != oldMulticast && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldMulticast, (Object)this.multicast));
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
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldMulticast, (Object)this.multicast));
        }
    }

    @Override
    public EList<LinTpNode> getReceivers() {
        if (this.receivers == null) {
            this.receivers = new EObjectResolvingReferringEList(LinTpNode.class, (InternalEObject)this, 10);
        }
        return this.receivers;
    }

    @Override
    public Double getTimeoutAs() {
        return this.timeoutAs;
    }

    @Override
    public void setTimeoutAs(Double newTimeoutAs) {
        Double oldTimeoutAs = this.timeoutAs;
        this.timeoutAs = newTimeoutAs;
        boolean oldTimeoutAsESet = this.timeoutAsESet;
        this.timeoutAsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldTimeoutAs, (Object)this.timeoutAs, !oldTimeoutAsESet));
        }
    }

    @Override
    public void unsetTimeoutAs() {
        Double oldTimeoutAs = this.timeoutAs;
        boolean oldTimeoutAsESet = this.timeoutAsESet;
        this.timeoutAs = TIMEOUT_AS_EDEFAULT;
        this.timeoutAsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldTimeoutAs, (Object)TIMEOUT_AS_EDEFAULT, oldTimeoutAsESet));
        }
    }

    @Override
    public boolean isSetTimeoutAs() {
        return this.timeoutAsESet;
    }

    @Override
    public Double getTimeoutCr() {
        return this.timeoutCr;
    }

    @Override
    public void setTimeoutCr(Double newTimeoutCr) {
        Double oldTimeoutCr = this.timeoutCr;
        this.timeoutCr = newTimeoutCr;
        boolean oldTimeoutCrESet = this.timeoutCrESet;
        this.timeoutCrESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldTimeoutCr, (Object)this.timeoutCr, !oldTimeoutCrESet));
        }
    }

    @Override
    public void unsetTimeoutCr() {
        Double oldTimeoutCr = this.timeoutCr;
        boolean oldTimeoutCrESet = this.timeoutCrESet;
        this.timeoutCr = TIMEOUT_CR_EDEFAULT;
        this.timeoutCrESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldTimeoutCr, (Object)TIMEOUT_CR_EDEFAULT, oldTimeoutCrESet));
        }
    }

    @Override
    public boolean isSetTimeoutCr() {
        return this.timeoutCrESet;
    }

    @Override
    public Double getTimeoutCs() {
        return this.timeoutCs;
    }

    @Override
    public void setTimeoutCs(Double newTimeoutCs) {
        Double oldTimeoutCs = this.timeoutCs;
        this.timeoutCs = newTimeoutCs;
        boolean oldTimeoutCsESet = this.timeoutCsESet;
        this.timeoutCsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldTimeoutCs, (Object)this.timeoutCs, !oldTimeoutCsESet));
        }
    }

    @Override
    public void unsetTimeoutCs() {
        Double oldTimeoutCs = this.timeoutCs;
        boolean oldTimeoutCsESet = this.timeoutCsESet;
        this.timeoutCs = TIMEOUT_CS_EDEFAULT;
        this.timeoutCsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldTimeoutCs, (Object)TIMEOUT_CS_EDEFAULT, oldTimeoutCsESet));
        }
    }

    @Override
    public boolean isSetTimeoutCs() {
        return this.timeoutCsESet;
    }

    @Override
    public LinTpNode getTransmitter() {
        if (this.transmitter != null && this.transmitter.eIsProxy()) {
            InternalEObject oldTransmitter = (InternalEObject)this.transmitter;
            this.transmitter = (LinTpNode)this.eResolveProxy(oldTransmitter);
            if (this.transmitter != oldTransmitter && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 14, (Object)oldTransmitter, (Object)this.transmitter));
            }
        }
        return this.transmitter;
    }

    public LinTpNode basicGetTransmitter() {
        return this.transmitter;
    }

    @Override
    public void setTransmitter(LinTpNode newTransmitter) {
        LinTpNode oldTransmitter = this.transmitter;
        this.transmitter = newTransmitter;
        AutosarObjectUtil.setDest((EObject)this, (int)14, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldTransmitter, (Object)this.transmitter));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -16, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -16, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetLinTpConfig((LinTpConfig)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetLinTpConfig(null, msgs);
            }
            case 15: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, LinTpConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getLinTpConfig();
            }
            case 5: {
                if (resolve) {
                    return this.getDataPdu();
                }
                return this.basicGetDataPdu();
            }
            case 6: {
                return this.getDropNotRequestedNad();
            }
            case 7: {
                if (resolve) {
                    return this.getFlowControl();
                }
                return this.basicGetFlowControl();
            }
            case 8: {
                if (resolve) {
                    return this.getLinTpNSdu();
                }
                return this.basicGetLinTpNSdu();
            }
            case 9: {
                if (resolve) {
                    return this.getMulticast();
                }
                return this.basicGetMulticast();
            }
            case 10: {
                return this.getReceivers();
            }
            case 11: {
                return this.getTimeoutAs();
            }
            case 12: {
                return this.getTimeoutCr();
            }
            case 13: {
                return this.getTimeoutCs();
            }
            case 14: {
                if (resolve) {
                    return this.getTransmitter();
                }
                return this.basicGetTransmitter();
            }
            case 15: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setLinTpConfig((LinTpConfig)newValue);
                return;
            }
            case 5: {
                this.setDataPdu((NPdu)newValue);
                return;
            }
            case 6: {
                this.setDropNotRequestedNad((Boolean)newValue);
                return;
            }
            case 7: {
                this.setFlowControl((NPdu)newValue);
                return;
            }
            case 8: {
                this.setLinTpNSdu((IPdu)newValue);
                return;
            }
            case 9: {
                this.setMulticast((TpAddress)newValue);
                return;
            }
            case 10: {
                this.getReceivers().clear();
                this.getReceivers().addAll((Collection)newValue);
                return;
            }
            case 11: {
                this.setTimeoutAs((Double)newValue);
                return;
            }
            case 12: {
                this.setTimeoutCr((Double)newValue);
                return;
            }
            case 13: {
                this.setTimeoutCs((Double)newValue);
                return;
            }
            case 14: {
                this.setTransmitter((LinTpNode)newValue);
                return;
            }
            case 15: {
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
                this.setLinTpConfig(null);
                return;
            }
            case 5: {
                this.setDataPdu(null);
                return;
            }
            case 6: {
                this.unsetDropNotRequestedNad();
                return;
            }
            case 7: {
                this.setFlowControl(null);
                return;
            }
            case 8: {
                this.setLinTpNSdu(null);
                return;
            }
            case 9: {
                this.setMulticast(null);
                return;
            }
            case 10: {
                this.getReceivers().clear();
                return;
            }
            case 11: {
                this.unsetTimeoutAs();
                return;
            }
            case 12: {
                this.unsetTimeoutCr();
                return;
            }
            case 13: {
                this.unsetTimeoutCs();
                return;
            }
            case 14: {
                this.setTransmitter(null);
                return;
            }
            case 15: {
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
                return this.getLinTpConfig() != null;
            }
            case 5: {
                return this.dataPdu != null;
            }
            case 6: {
                return this.isSetDropNotRequestedNad();
            }
            case 7: {
                return this.flowControl != null;
            }
            case 8: {
                return this.linTpNSdu != null;
            }
            case 9: {
                return this.multicast != null;
            }
            case 10: {
                return this.receivers != null && !this.receivers.isEmpty();
            }
            case 11: {
                return this.isSetTimeoutAs();
            }
            case 12: {
                return this.isSetTimeoutCr();
            }
            case 13: {
                return this.isSetTimeoutCs();
            }
            case 14: {
                return this.transmitter != null;
            }
            case 15: {
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
        result.append(" (dropNotRequestedNad: ");
        if (this.dropNotRequestedNadESet) {
            result.append(this.dropNotRequestedNad);
        } else {
            result.append("<unset>");
        }
        result.append(", timeoutAs: ");
        if (this.timeoutAsESet) {
            result.append(this.timeoutAs);
        } else {
            result.append("<unset>");
        }
        result.append(", timeoutCr: ");
        if (this.timeoutCrESet) {
            result.append(this.timeoutCr);
        } else {
            result.append("<unset>");
        }
        result.append(", timeoutCs: ");
        if (this.timeoutCsESet) {
            result.append(this.timeoutCs);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

