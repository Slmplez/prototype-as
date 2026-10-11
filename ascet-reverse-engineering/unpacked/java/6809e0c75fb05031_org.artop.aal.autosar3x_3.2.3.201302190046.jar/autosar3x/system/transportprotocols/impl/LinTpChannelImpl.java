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
import autosar3x.system.fibex.fibexcore.corecommunication.NPdu;
import autosar3x.system.transportprotocols.LinTpChannel;
import autosar3x.system.transportprotocols.LinTpNode;
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
public class LinTpChannelImpl
extends TpChannelImpl
implements LinTpChannel,
IReferringClass {
    protected NPdu dataPdu;
    protected static final Boolean DROP_NOT_REQUESTED_NAD_EDEFAULT = Boolean.FALSE;
    protected Boolean dropNotRequestedNad = DROP_NOT_REQUESTED_NAD_EDEFAULT;
    protected boolean dropNotRequestedNadESet;
    protected NPdu flowControl;
    protected IPdu linTpNSdu;
    protected TpAddress multicast;
    protected LinTpNode source;
    protected EList<LinTpNode> targets;

    protected LinTpChannelImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.LIN_TP_CHANNEL;
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
    public LinTpNode getSource() {
        if (this.source != null && this.source.eIsProxy()) {
            InternalEObject oldSource = (InternalEObject)this.source;
            this.source = (LinTpNode)this.eResolveProxy(oldSource);
            if (this.source != oldSource && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 10, (Object)oldSource, (Object)this.source));
            }
        }
        return this.source;
    }

    public LinTpNode basicGetSource() {
        return this.source;
    }

    @Override
    public void setSource(LinTpNode newSource) {
        LinTpNode oldSource = this.source;
        this.source = newSource;
        AutosarObjectUtil.setDest((EObject)this, (int)10, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldSource, (Object)this.source));
        }
    }

    @Override
    public EList<LinTpNode> getTargets() {
        if (this.targets == null) {
            this.targets = new EObjectResolvingReferringEList(LinTpNode.class, (InternalEObject)this, 11);
        }
        return this.targets;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
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
                if (resolve) {
                    return this.getSource();
                }
                return this.basicGetSource();
            }
            case 11: {
                return this.getTargets();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
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
                this.setSource((LinTpNode)newValue);
                return;
            }
            case 11: {
                this.getTargets().clear();
                this.getTargets().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
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
                this.setSource(null);
                return;
            }
            case 11: {
                this.getTargets().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
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
                return this.source != null;
            }
            case 11: {
                return this.targets != null && !this.targets.isEmpty();
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
        result.append(')');
        return result.toString();
    }
}

