/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
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
import autosar40.system.transportprotocols.LinTpConfig;
import autosar40.system.transportprotocols.LinTpNode;
import autosar40.system.transportprotocols.TpAddress;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class LinTpNodeImpl
extends IdentifiableImpl
implements LinTpNode,
IReferringClass {
    protected CommunicationConnector connector;
    protected static final IntegerDatatype MAX_NUMBER_OF_RESP_PENDING_FRAMES_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype maxNumberOfRespPendingFrames = MAX_NUMBER_OF_RESP_PENDING_FRAMES_EDEFAULT.clone();
    protected boolean maxNumberOfRespPendingFramesESet;
    protected static final Double P2_MAX_EDEFAULT = new Double(0.0);
    protected Double p2Max = P2_MAX_EDEFAULT;
    protected boolean p2MaxESet;
    protected static final Double P2_TIMING_EDEFAULT = new Double(0.0);
    protected Double p2Timing = P2_TIMING_EDEFAULT;
    protected boolean p2TimingESet;
    protected TpAddress tpAddress;
    protected VariationPoint variationPoint;

    protected LinTpNodeImpl() {
    }

    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.LIN_TP_NODE;
    }

    public LinTpConfig getLinTpConfig() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (LinTpConfig)this.eContainer();
    }

    public NotificationChain basicSetLinTpConfig(LinTpConfig newLinTpConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newLinTpConfig, 18, msgs);
        return msgs;
    }

    public void setLinTpConfig(LinTpConfig newLinTpConfig) {
        if (newLinTpConfig != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newLinTpConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newLinTpConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newLinTpConfig != null) {
                msgs = ((InternalEObject)newLinTpConfig).eInverseAdd((InternalEObject)this, 24, LinTpConfig.class, msgs);
            }
            if ((msgs = this.basicSetLinTpConfig(newLinTpConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newLinTpConfig, (Object)newLinTpConfig));
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

    public Integer getMaxNumberOfRespPendingFrames() {
        return (Integer)this.maxNumberOfRespPendingFrames.basicGetValue();
    }

    public void setMaxNumberOfRespPendingFrames(Integer newMaxNumberOfRespPendingFrames) {
        Integer oldMaxNumberOfRespPendingFrames = (Integer)this.maxNumberOfRespPendingFrames.basicGetValue();
        this.maxNumberOfRespPendingFrames.basicSetValue((Object)newMaxNumberOfRespPendingFrames);
        boolean oldMaxNumberOfRespPendingFramesESet = this.maxNumberOfRespPendingFramesESet;
        this.maxNumberOfRespPendingFramesESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldMaxNumberOfRespPendingFrames, (Object)newMaxNumberOfRespPendingFrames, !oldMaxNumberOfRespPendingFramesESet));
        }
    }

    public void unsetMaxNumberOfRespPendingFrames() {
        Integer oldMaxNumberOfRespPendingFrames = (Integer)this.maxNumberOfRespPendingFrames.basicGetValue();
        boolean oldMaxNumberOfRespPendingFramesESet = this.maxNumberOfRespPendingFramesESet;
        this.maxNumberOfRespPendingFrames = MAX_NUMBER_OF_RESP_PENDING_FRAMES_EDEFAULT.clone();
        this.maxNumberOfRespPendingFramesESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldMaxNumberOfRespPendingFrames, (Object)MAX_NUMBER_OF_RESP_PENDING_FRAMES_EDEFAULT, oldMaxNumberOfRespPendingFramesESet));
        }
    }

    public boolean isSetMaxNumberOfRespPendingFrames() {
        return this.maxNumberOfRespPendingFramesESet;
    }

    public Double getP2Max() {
        return this.p2Max;
    }

    public void setP2Max(Double newP2Max) {
        Double oldP2Max = this.p2Max;
        this.p2Max = newP2Max;
        boolean oldP2MaxESet = this.p2MaxESet;
        this.p2MaxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldP2Max, (Object)this.p2Max, !oldP2MaxESet));
        }
    }

    public void unsetP2Max() {
        Double oldP2Max = this.p2Max;
        boolean oldP2MaxESet = this.p2MaxESet;
        this.p2Max = P2_MAX_EDEFAULT;
        this.p2MaxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldP2Max, (Object)P2_MAX_EDEFAULT, oldP2MaxESet));
        }
    }

    public boolean isSetP2Max() {
        return this.p2MaxESet;
    }

    public Double getP2Timing() {
        return this.p2Timing;
    }

    public void setP2Timing(Double newP2Timing) {
        Double oldP2Timing = this.p2Timing;
        this.p2Timing = newP2Timing;
        boolean oldP2TimingESet = this.p2TimingESet;
        this.p2TimingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldP2Timing, (Object)this.p2Timing, !oldP2TimingESet));
        }
    }

    public void unsetP2Timing() {
        Double oldP2Timing = this.p2Timing;
        boolean oldP2TimingESet = this.p2TimingESet;
        this.p2Timing = P2_TIMING_EDEFAULT;
        this.p2TimingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldP2Timing, (Object)P2_TIMING_EDEFAULT, oldP2TimingESet));
        }
    }

    public boolean isSetP2Timing() {
        return this.p2TimingESet;
    }

    public TpAddress getTpAddress() {
        if (this.tpAddress != null && this.tpAddress.eIsProxy()) {
            InternalEObject oldTpAddress = (InternalEObject)this.tpAddress;
            this.tpAddress = (TpAddress)this.eResolveProxy(oldTpAddress);
            if (this.tpAddress != oldTpAddress && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 23, (Object)oldTpAddress, (Object)this.tpAddress));
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
        AutosarObjectUtil.setDest((EObject)this, (int)23, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldTpAddress, (Object)this.tpAddress));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public IntegerDatatype getMaxNumberOfRespPendingFramesData() {
        return this.maxNumberOfRespPendingFrames.clone();
    }

    public void setMaxNumberOfRespPendingFramesData(IntegerDatatype newMaxNumberOfRespPendingFrames) {
        this.maxNumberOfRespPendingFrames.setRadix((int)newMaxNumberOfRespPendingFrames.getRadix());
        this.maxNumberOfRespPendingFrames.setNoOfDigits((int)newMaxNumberOfRespPendingFrames.getNoOfDigits());
        this.setMaxNumberOfRespPendingFrames(newMaxNumberOfRespPendingFrames.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
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
            case 18: {
                return this.basicSetLinTpConfig(null, msgs);
            }
            case 24: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, LinTpConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getLinTpConfig();
            }
            case 19: {
                if (resolve) {
                    return this.getConnector();
                }
                return this.basicGetConnector();
            }
            case 20: {
                return this.getMaxNumberOfRespPendingFrames();
            }
            case 21: {
                return this.getP2Max();
            }
            case 22: {
                return this.getP2Timing();
            }
            case 23: {
                if (resolve) {
                    return this.getTpAddress();
                }
                return this.basicGetTpAddress();
            }
            case 24: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setLinTpConfig((LinTpConfig)newValue);
                return;
            }
            case 19: {
                this.setConnector((CommunicationConnector)newValue);
                return;
            }
            case 20: {
                this.setMaxNumberOfRespPendingFrames((Integer)newValue);
                return;
            }
            case 21: {
                this.setP2Max((Double)newValue);
                return;
            }
            case 22: {
                this.setP2Timing((Double)newValue);
                return;
            }
            case 23: {
                this.setTpAddress((TpAddress)newValue);
                return;
            }
            case 24: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setLinTpConfig(null);
                return;
            }
            case 19: {
                this.setConnector(null);
                return;
            }
            case 20: {
                this.unsetMaxNumberOfRespPendingFrames();
                return;
            }
            case 21: {
                this.unsetP2Max();
                return;
            }
            case 22: {
                this.unsetP2Timing();
                return;
            }
            case 23: {
                this.setTpAddress(null);
                return;
            }
            case 24: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getLinTpConfig() != null;
            }
            case 19: {
                return this.connector != null;
            }
            case 20: {
                return this.isSetMaxNumberOfRespPendingFrames();
            }
            case 21: {
                return this.isSetP2Max();
            }
            case 22: {
                return this.isSetP2Timing();
            }
            case 23: {
                return this.tpAddress != null;
            }
            case 24: {
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
        result.append(" (maxNumberOfRespPendingFrames: ");
        if (this.maxNumberOfRespPendingFramesESet) {
            result.append(this.maxNumberOfRespPendingFrames);
        } else {
            result.append("<unset>");
        }
        result.append(", p2Max: ");
        if (this.p2MaxESet) {
            result.append(this.p2Max);
        } else {
            result.append("<unset>");
        }
        result.append(", p2Timing: ");
        if (this.p2TimingESet) {
            result.append(this.p2Timing);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

