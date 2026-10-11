/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.transportprotocols.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar40.system.transportprotocols.J1939TpConfig;
import autosar40.system.transportprotocols.J1939TpNode;
import autosar40.system.transportprotocols.TpAddress;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class J1939TpNodeImpl
extends IdentifiableImpl
implements J1939TpNode,
IReferringClass {
    protected CommunicationConnector connector;
    protected TpAddress tpAddress;
    protected VariationPoint variationPoint;

    protected J1939TpNodeImpl() {
    }

    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.J1939_TP_NODE;
    }

    public J1939TpConfig getJ1939TpConfig() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (J1939TpConfig)this.eContainer();
    }

    public NotificationChain basicSetJ1939TpConfig(J1939TpConfig newJ1939TpConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newJ1939TpConfig, 18, msgs);
        return msgs;
    }

    public void setJ1939TpConfig(J1939TpConfig newJ1939TpConfig) {
        if (newJ1939TpConfig != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newJ1939TpConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newJ1939TpConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newJ1939TpConfig != null) {
                msgs = ((InternalEObject)newJ1939TpConfig).eInverseAdd((InternalEObject)this, 24, J1939TpConfig.class, msgs);
            }
            if ((msgs = this.basicSetJ1939TpConfig(newJ1939TpConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newJ1939TpConfig, (Object)newJ1939TpConfig));
        }
    }

    public CommunicationConnector getConnector() {
        if (this.connector != null && this.connector.eIsProxy()) {
            InternalEObject oldConnector = (InternalEObject)this.connector;
            this.connector = (CommunicationConnector)this.eResolveProxy(oldConnector);
            if (this.connector != oldConnector && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldConnector, (Object)this.connector));
            }
        }
        return this.connector;
    }

    public CommunicationConnector basicGetConnector() {
        return this.connector;
    }

    public void setConnector(CommunicationConnector newConnector) {
        CommunicationConnector oldConnector = this.connector;
        this.connector = newConnector;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldConnector, (Object)this.connector));
        }
    }

    public TpAddress getTpAddress() {
        if (this.tpAddress != null && this.tpAddress.eIsProxy()) {
            InternalEObject oldTpAddress = (InternalEObject)this.tpAddress;
            this.tpAddress = (TpAddress)this.eResolveProxy(oldTpAddress);
            if (this.tpAddress != oldTpAddress && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldTpAddress, (Object)this.tpAddress));
            }
        }
        return this.tpAddress;
    }

    public TpAddress basicGetTpAddress() {
        return this.tpAddress;
    }

    public void setTpAddress(TpAddress newTpAddress) {
        TpAddress oldTpAddress = this.tpAddress;
        this.tpAddress = newTpAddress;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldTpAddress, (Object)this.tpAddress));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
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
            case 18: {
                return this.basicSetJ1939TpConfig(null, msgs);
            }
            case 21: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, J1939TpConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getJ1939TpConfig();
            }
            case 19: {
                if (resolve) {
                    return this.getConnector();
                }
                return this.basicGetConnector();
            }
            case 20: {
                if (resolve) {
                    return this.getTpAddress();
                }
                return this.basicGetTpAddress();
            }
            case 21: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setJ1939TpConfig((J1939TpConfig)newValue);
                return;
            }
            case 19: {
                this.setConnector((CommunicationConnector)newValue);
                return;
            }
            case 20: {
                this.setTpAddress((TpAddress)newValue);
                return;
            }
            case 21: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setJ1939TpConfig(null);
                return;
            }
            case 19: {
                this.setConnector(null);
                return;
            }
            case 20: {
                this.setTpAddress(null);
                return;
            }
            case 21: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getJ1939TpConfig() != null;
            }
            case 19: {
                return this.connector != null;
            }
            case 20: {
                return this.tpAddress != null;
            }
            case 21: {
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
}

