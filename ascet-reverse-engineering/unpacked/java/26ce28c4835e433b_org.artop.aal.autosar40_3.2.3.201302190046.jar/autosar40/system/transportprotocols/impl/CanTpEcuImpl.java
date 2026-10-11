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

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.transportprotocols.CanTpConfig;
import autosar40.system.transportprotocols.CanTpEcu;
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

public class CanTpEcuImpl
extends ARObjectImpl
implements CanTpEcu,
IReferringClass {
    protected static final Double CYCLE_TIME_MAIN_FUNCTION_EDEFAULT = new Double(0.0);
    protected Double cycleTimeMainFunction = CYCLE_TIME_MAIN_FUNCTION_EDEFAULT;
    protected boolean cycleTimeMainFunctionESet;
    protected EcuInstance ecuInstance;
    protected VariationPoint variationPoint;

    protected CanTpEcuImpl() {
    }

    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.CAN_TP_ECU;
    }

    public CanTpConfig getCanTpConfig() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CanTpConfig)this.eContainer();
    }

    public NotificationChain basicSetCanTpConfig(CanTpConfig newCanTpConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCanTpConfig, 4, msgs);
        return msgs;
    }

    public void setCanTpConfig(CanTpConfig newCanTpConfig) {
        if (newCanTpConfig != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCanTpConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCanTpConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCanTpConfig != null) {
                msgs = ((InternalEObject)newCanTpConfig).eInverseAdd((InternalEObject)this, 25, CanTpConfig.class, msgs);
            }
            if ((msgs = this.basicSetCanTpConfig(newCanTpConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCanTpConfig, (Object)newCanTpConfig));
        }
    }

    public Double getCycleTimeMainFunction() {
        return this.cycleTimeMainFunction;
    }

    public void setCycleTimeMainFunction(Double newCycleTimeMainFunction) {
        Double oldCycleTimeMainFunction = this.cycleTimeMainFunction;
        this.cycleTimeMainFunction = newCycleTimeMainFunction;
        boolean oldCycleTimeMainFunctionESet = this.cycleTimeMainFunctionESet;
        this.cycleTimeMainFunctionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCycleTimeMainFunction, (Object)this.cycleTimeMainFunction, !oldCycleTimeMainFunctionESet));
        }
    }

    public void unsetCycleTimeMainFunction() {
        Double oldCycleTimeMainFunction = this.cycleTimeMainFunction;
        boolean oldCycleTimeMainFunctionESet = this.cycleTimeMainFunctionESet;
        this.cycleTimeMainFunction = CYCLE_TIME_MAIN_FUNCTION_EDEFAULT;
        this.cycleTimeMainFunctionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldCycleTimeMainFunction, (Object)CYCLE_TIME_MAIN_FUNCTION_EDEFAULT, oldCycleTimeMainFunctionESet));
        }
    }

    public boolean isSetCycleTimeMainFunction() {
        return this.cycleTimeMainFunctionESet;
    }

    public EcuInstance getEcuInstance() {
        if (this.ecuInstance != null && this.ecuInstance.eIsProxy()) {
            InternalEObject oldEcuInstance = (InternalEObject)this.ecuInstance;
            this.ecuInstance = (EcuInstance)this.eResolveProxy(oldEcuInstance);
            if (this.ecuInstance != oldEcuInstance && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldEcuInstance, (Object)this.ecuInstance));
            }
        }
        return this.ecuInstance;
    }

    public EcuInstance basicGetEcuInstance() {
        return this.ecuInstance;
    }

    public void setEcuInstance(EcuInstance newEcuInstance) {
        EcuInstance oldEcuInstance = this.ecuInstance;
        this.ecuInstance = newEcuInstance;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldEcuInstance, (Object)this.ecuInstance));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
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
            case 4: {
                return this.basicSetCanTpConfig(null, msgs);
            }
            case 7: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, CanTpConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCanTpConfig();
            }
            case 5: {
                return this.getCycleTimeMainFunction();
            }
            case 6: {
                if (resolve) {
                    return this.getEcuInstance();
                }
                return this.basicGetEcuInstance();
            }
            case 7: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCanTpConfig((CanTpConfig)newValue);
                return;
            }
            case 5: {
                this.setCycleTimeMainFunction((Double)newValue);
                return;
            }
            case 6: {
                this.setEcuInstance((EcuInstance)newValue);
                return;
            }
            case 7: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCanTpConfig(null);
                return;
            }
            case 5: {
                this.unsetCycleTimeMainFunction();
                return;
            }
            case 6: {
                this.setEcuInstance(null);
                return;
            }
            case 7: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCanTpConfig() != null;
            }
            case 5: {
                return this.isSetCycleTimeMainFunction();
            }
            case 6: {
                return this.ecuInstance != null;
            }
            case 7: {
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
        result.append(" (cycleTimeMainFunction: ");
        if (this.cycleTimeMainFunctionESet) {
            result.append(this.cycleTimeMainFunction);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

