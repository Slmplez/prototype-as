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

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationConnector;
import autosar40.system.transportprotocols.FlexrayArTpConfig;
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
public class FlexrayArTpNodeImpl
extends IdentifiableImpl
implements FlexrayArTpNode,
IReferringClass {
    protected EList<FlexrayCommunicationConnector> connectors;
    protected TpAddress tpAddress;
    protected VariationPoint variationPoint;

    protected FlexrayArTpNodeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.FLEXRAY_AR_TP_NODE;
    }

    @Override
    public FlexrayArTpConfig getFlexrayArTpConfig() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (FlexrayArTpConfig)this.eContainer();
    }

    public NotificationChain basicSetFlexrayArTpConfig(FlexrayArTpConfig newFlexrayArTpConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFlexrayArTpConfig, 18, msgs);
        return msgs;
    }

    @Override
    public void setFlexrayArTpConfig(FlexrayArTpConfig newFlexrayArTpConfig) {
        if (newFlexrayArTpConfig != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newFlexrayArTpConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFlexrayArTpConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFlexrayArTpConfig != null) {
                msgs = ((InternalEObject)newFlexrayArTpConfig).eInverseAdd((InternalEObject)this, 24, FlexrayArTpConfig.class, msgs);
            }
            if ((msgs = this.basicSetFlexrayArTpConfig(newFlexrayArTpConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newFlexrayArTpConfig, (Object)newFlexrayArTpConfig));
        }
    }

    @Override
    public EList<FlexrayCommunicationConnector> getConnectors() {
        if (this.connectors == null) {
            this.connectors = new EObjectResolvingReferringEList(FlexrayCommunicationConnector.class, (InternalEObject)this, 19);
        }
        return this.connectors;
    }

    @Override
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

    @Override
    public void setTpAddress(TpAddress newTpAddress) {
        TpAddress oldTpAddress = this.tpAddress;
        this.tpAddress = newTpAddress;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldTpAddress, (Object)this.tpAddress));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                return this.basicSetFlexrayArTpConfig((FlexrayArTpConfig)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetFlexrayArTpConfig(null, msgs);
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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, FlexrayArTpConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getFlexrayArTpConfig();
            }
            case 19: {
                return this.getConnectors();
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

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setFlexrayArTpConfig((FlexrayArTpConfig)newValue);
                return;
            }
            case 19: {
                this.getConnectors().clear();
                this.getConnectors().addAll((Collection)newValue);
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

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setFlexrayArTpConfig(null);
                return;
            }
            case 19: {
                this.getConnectors().clear();
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

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getFlexrayArTpConfig() != null;
            }
            case 19: {
                return this.connectors != null && !this.connectors.isEmpty();
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

