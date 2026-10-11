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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.measurementcalibrationsupport.impl;

import autosar40.commonstructure.implementation.Implementation;
import autosar40.commonstructure.measurementcalibrationsupport.McDataInstance;
import autosar40.commonstructure.measurementcalibrationsupport.McSupportData;
import autosar40.commonstructure.measurementcalibrationsupport.McSwEmulationMethodSupport;
import autosar40.commonstructure.measurementcalibrationsupport.MeasurementcalibrationsupportPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.SwSystemconstantValueSet;
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
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class McSupportDataImpl
extends ARObjectImpl
implements McSupportData,
IReferringClass {
    protected EList<McSwEmulationMethodSupport> emulationSupports;
    protected EList<McDataInstance> mcParameterInstances;
    protected EList<McDataInstance> mcVariableInstances;
    protected EList<SwSystemconstantValueSet> measurableSystemConstantValues;

    protected McSupportDataImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return MeasurementcalibrationsupportPackage.Literals.MC_SUPPORT_DATA;
    }

    @Override
    public Implementation getImplementation() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Implementation)this.eContainer();
    }

    public NotificationChain basicSetImplementation(Implementation newImplementation, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newImplementation, 4, msgs);
        return msgs;
    }

    @Override
    public void setImplementation(Implementation newImplementation) {
        if (newImplementation != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newImplementation != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newImplementation)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newImplementation != null) {
                msgs = ((InternalEObject)newImplementation).eInverseAdd((InternalEObject)this, 28, Implementation.class, msgs);
            }
            if ((msgs = this.basicSetImplementation(newImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newImplementation, (Object)newImplementation));
        }
    }

    @Override
    public EList<McSwEmulationMethodSupport> getEmulationSupports() {
        if (this.emulationSupports == null) {
            this.emulationSupports = new EObjectContainmentWithInverseEList(McSwEmulationMethodSupport.class, (InternalEObject)this, 5, 4);
        }
        return this.emulationSupports;
    }

    @Override
    public EList<McDataInstance> getMcParameterInstances() {
        if (this.mcParameterInstances == null) {
            this.mcParameterInstances = new EObjectContainmentEList(McDataInstance.class, (InternalEObject)this, 6);
        }
        return this.mcParameterInstances;
    }

    @Override
    public EList<McDataInstance> getMcVariableInstances() {
        if (this.mcVariableInstances == null) {
            this.mcVariableInstances = new EObjectContainmentEList(McDataInstance.class, (InternalEObject)this, 7);
        }
        return this.mcVariableInstances;
    }

    @Override
    public EList<SwSystemconstantValueSet> getMeasurableSystemConstantValues() {
        if (this.measurableSystemConstantValues == null) {
            this.measurableSystemConstantValues = new EObjectResolvingReferringEList(SwSystemconstantValueSet.class, (InternalEObject)this, 8);
        }
        return this.measurableSystemConstantValues;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetImplementation((Implementation)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getEmulationSupports()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetImplementation(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getEmulationSupports()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getMcParameterInstances()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getMcVariableInstances()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 28, Implementation.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getImplementation();
            }
            case 5: {
                return this.getEmulationSupports();
            }
            case 6: {
                return this.getMcParameterInstances();
            }
            case 7: {
                return this.getMcVariableInstances();
            }
            case 8: {
                return this.getMeasurableSystemConstantValues();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setImplementation((Implementation)newValue);
                return;
            }
            case 5: {
                this.getEmulationSupports().clear();
                this.getEmulationSupports().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getMcParameterInstances().clear();
                this.getMcParameterInstances().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getMcVariableInstances().clear();
                this.getMcVariableInstances().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.getMeasurableSystemConstantValues().clear();
                this.getMeasurableSystemConstantValues().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setImplementation(null);
                return;
            }
            case 5: {
                this.getEmulationSupports().clear();
                return;
            }
            case 6: {
                this.getMcParameterInstances().clear();
                return;
            }
            case 7: {
                this.getMcVariableInstances().clear();
                return;
            }
            case 8: {
                this.getMeasurableSystemConstantValues().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getImplementation() != null;
            }
            case 5: {
                return this.emulationSupports != null && !this.emulationSupports.isEmpty();
            }
            case 6: {
                return this.mcParameterInstances != null && !this.mcParameterInstances.isEmpty();
            }
            case 7: {
                return this.mcVariableInstances != null && !this.mcVariableInstances.isEmpty();
            }
            case 8: {
                return this.measurableSystemConstantValues != null && !this.measurableSystemConstantValues.isEmpty();
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

