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
import autosar40.system.transportprotocols.CanTpAddress;
import autosar40.system.transportprotocols.CanTpConfig;
import autosar40.system.transportprotocols.CanTpNode;
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

public class CanTpNodeImpl
extends IdentifiableImpl
implements CanTpNode,
IReferringClass {
    protected CommunicationConnector connector;
    protected static final IntegerDatatype MAX_FC_WAIT_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype maxFcWait = MAX_FC_WAIT_EDEFAULT.clone();
    protected boolean maxFcWaitESet;
    protected static final Double ST_MIN_EDEFAULT = new Double(0.0);
    protected Double stMin = ST_MIN_EDEFAULT;
    protected boolean stMinESet;
    protected static final Double TIMEOUT_AR_EDEFAULT = new Double(0.0);
    protected Double timeoutAr = TIMEOUT_AR_EDEFAULT;
    protected boolean timeoutArESet;
    protected static final Double TIMEOUT_AS_EDEFAULT = new Double(0.0);
    protected Double timeoutAs = TIMEOUT_AS_EDEFAULT;
    protected boolean timeoutAsESet;
    protected CanTpAddress tpAddress;
    protected VariationPoint variationPoint;

    protected CanTpNodeImpl() {
    }

    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.CAN_TP_NODE;
    }

    public CanTpConfig getCanTpConfig() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (CanTpConfig)this.eContainer();
    }

    public NotificationChain basicSetCanTpConfig(CanTpConfig newCanTpConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCanTpConfig, 18, msgs);
        return msgs;
    }

    public void setCanTpConfig(CanTpConfig newCanTpConfig) {
        if (newCanTpConfig != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newCanTpConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCanTpConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCanTpConfig != null) {
                msgs = ((InternalEObject)newCanTpConfig).eInverseAdd((InternalEObject)this, 26, CanTpConfig.class, msgs);
            }
            if ((msgs = this.basicSetCanTpConfig(newCanTpConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newCanTpConfig, (Object)newCanTpConfig));
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

    public Integer getMaxFcWait() {
        return (Integer)this.maxFcWait.basicGetValue();
    }

    public void setMaxFcWait(Integer newMaxFcWait) {
        Integer oldMaxFcWait = (Integer)this.maxFcWait.basicGetValue();
        this.maxFcWait.basicSetValue((Object)newMaxFcWait);
        boolean oldMaxFcWaitESet = this.maxFcWaitESet;
        this.maxFcWaitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldMaxFcWait, (Object)newMaxFcWait, !oldMaxFcWaitESet));
        }
    }

    public void unsetMaxFcWait() {
        Integer oldMaxFcWait = (Integer)this.maxFcWait.basicGetValue();
        boolean oldMaxFcWaitESet = this.maxFcWaitESet;
        this.maxFcWait = MAX_FC_WAIT_EDEFAULT.clone();
        this.maxFcWaitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldMaxFcWait, (Object)MAX_FC_WAIT_EDEFAULT, oldMaxFcWaitESet));
        }
    }

    public boolean isSetMaxFcWait() {
        return this.maxFcWaitESet;
    }

    public Double getStMin() {
        return this.stMin;
    }

    public void setStMin(Double newStMin) {
        Double oldStMin = this.stMin;
        this.stMin = newStMin;
        boolean oldStMinESet = this.stMinESet;
        this.stMinESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldStMin, (Object)this.stMin, !oldStMinESet));
        }
    }

    public void unsetStMin() {
        Double oldStMin = this.stMin;
        boolean oldStMinESet = this.stMinESet;
        this.stMin = ST_MIN_EDEFAULT;
        this.stMinESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldStMin, (Object)ST_MIN_EDEFAULT, oldStMinESet));
        }
    }

    public boolean isSetStMin() {
        return this.stMinESet;
    }

    public Double getTimeoutAr() {
        return this.timeoutAr;
    }

    public void setTimeoutAr(Double newTimeoutAr) {
        Double oldTimeoutAr = this.timeoutAr;
        this.timeoutAr = newTimeoutAr;
        boolean oldTimeoutArESet = this.timeoutArESet;
        this.timeoutArESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldTimeoutAr, (Object)this.timeoutAr, !oldTimeoutArESet));
        }
    }

    public void unsetTimeoutAr() {
        Double oldTimeoutAr = this.timeoutAr;
        boolean oldTimeoutArESet = this.timeoutArESet;
        this.timeoutAr = TIMEOUT_AR_EDEFAULT;
        this.timeoutArESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldTimeoutAr, (Object)TIMEOUT_AR_EDEFAULT, oldTimeoutArESet));
        }
    }

    public boolean isSetTimeoutAr() {
        return this.timeoutArESet;
    }

    public Double getTimeoutAs() {
        return this.timeoutAs;
    }

    public void setTimeoutAs(Double newTimeoutAs) {
        Double oldTimeoutAs = this.timeoutAs;
        this.timeoutAs = newTimeoutAs;
        boolean oldTimeoutAsESet = this.timeoutAsESet;
        this.timeoutAsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldTimeoutAs, (Object)this.timeoutAs, !oldTimeoutAsESet));
        }
    }

    public void unsetTimeoutAs() {
        Double oldTimeoutAs = this.timeoutAs;
        boolean oldTimeoutAsESet = this.timeoutAsESet;
        this.timeoutAs = TIMEOUT_AS_EDEFAULT;
        this.timeoutAsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldTimeoutAs, (Object)TIMEOUT_AS_EDEFAULT, oldTimeoutAsESet));
        }
    }

    public boolean isSetTimeoutAs() {
        return this.timeoutAsESet;
    }

    public CanTpAddress getTpAddress() {
        if (this.tpAddress != null && this.tpAddress.eIsProxy()) {
            InternalEObject oldTpAddress = (InternalEObject)this.tpAddress;
            this.tpAddress = (CanTpAddress)this.eResolveProxy(oldTpAddress);
            if (this.tpAddress != oldTpAddress && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldTpAddress, (Object)this.tpAddress));
            }
        }
        return this.tpAddress;
    }

    public CanTpAddress basicGetTpAddress() {
        return this.tpAddress;
    }

    public void setTpAddress(CanTpAddress newTpAddress) {
        CanTpAddress oldTpAddress = this.tpAddress;
        this.tpAddress = newTpAddress;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldTpAddress, (Object)this.tpAddress));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -26, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -26, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public IntegerDatatype getMaxFcWaitData() {
        return this.maxFcWait.clone();
    }

    public void setMaxFcWaitData(IntegerDatatype newMaxFcWait) {
        this.maxFcWait.setRadix((int)newMaxFcWait.getRadix());
        this.maxFcWait.setNoOfDigits((int)newMaxFcWait.getNoOfDigits());
        this.setMaxFcWait(newMaxFcWait.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCanTpConfig((CanTpConfig)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetCanTpConfig(null, msgs);
            }
            case 25: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 26, CanTpConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getCanTpConfig();
            }
            case 19: {
                if (resolve) {
                    return this.getConnector();
                }
                return this.basicGetConnector();
            }
            case 20: {
                return this.getMaxFcWait();
            }
            case 21: {
                return this.getStMin();
            }
            case 22: {
                return this.getTimeoutAr();
            }
            case 23: {
                return this.getTimeoutAs();
            }
            case 24: {
                if (resolve) {
                    return this.getTpAddress();
                }
                return this.basicGetTpAddress();
            }
            case 25: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setCanTpConfig((CanTpConfig)newValue);
                return;
            }
            case 19: {
                this.setConnector((CommunicationConnector)newValue);
                return;
            }
            case 20: {
                this.setMaxFcWait((Integer)newValue);
                return;
            }
            case 21: {
                this.setStMin((Double)newValue);
                return;
            }
            case 22: {
                this.setTimeoutAr((Double)newValue);
                return;
            }
            case 23: {
                this.setTimeoutAs((Double)newValue);
                return;
            }
            case 24: {
                this.setTpAddress((CanTpAddress)newValue);
                return;
            }
            case 25: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setCanTpConfig(null);
                return;
            }
            case 19: {
                this.setConnector(null);
                return;
            }
            case 20: {
                this.unsetMaxFcWait();
                return;
            }
            case 21: {
                this.unsetStMin();
                return;
            }
            case 22: {
                this.unsetTimeoutAr();
                return;
            }
            case 23: {
                this.unsetTimeoutAs();
                return;
            }
            case 24: {
                this.setTpAddress(null);
                return;
            }
            case 25: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getCanTpConfig() != null;
            }
            case 19: {
                return this.connector != null;
            }
            case 20: {
                return this.isSetMaxFcWait();
            }
            case 21: {
                return this.isSetStMin();
            }
            case 22: {
                return this.isSetTimeoutAr();
            }
            case 23: {
                return this.isSetTimeoutAs();
            }
            case 24: {
                return this.tpAddress != null;
            }
            case 25: {
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
        result.append(" (maxFcWait: ");
        if (this.maxFcWaitESet) {
            result.append(this.maxFcWait);
        } else {
            result.append("<unset>");
        }
        result.append(", stMin: ");
        if (this.stMinESet) {
            result.append(this.stMin);
        } else {
            result.append("<unset>");
        }
        result.append(", timeoutAr: ");
        if (this.timeoutArESet) {
            result.append(this.timeoutAr);
        } else {
            result.append("<unset>");
        }
        result.append(", timeoutAs: ");
        if (this.timeoutAsESet) {
            result.append(this.timeoutAs);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

