/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.swmapping.impl;

import autosar40.ecuresource.HwElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.SystemMapping;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.instancerefs.ComponentInSystemInstanceRef;
import autosar40.system.swmapping.EcuPartition;
import autosar40.system.swmapping.SwcToEcuMapping;
import autosar40.system.swmapping.SwmappingPackage;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwcToEcuMappingImpl
extends IdentifiableImpl
implements SwcToEcuMapping,
IReferringClass {
    protected EList<ComponentInSystemInstanceRef> components;
    protected HwElement controlledHwElement;
    protected EcuInstance ecuInstance;
    protected EcuPartition partition;
    protected HwElement processingUnit;
    protected VariationPoint variationPoint;

    protected SwcToEcuMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SwmappingPackage.Literals.SWC_TO_ECU_MAPPING;
    }

    @Override
    public SystemMapping getSystemMapping() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (SystemMapping)this.eContainer();
    }

    public NotificationChain basicSetSystemMapping(SystemMapping newSystemMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSystemMapping, 18, msgs);
        return msgs;
    }

    @Override
    public void setSystemMapping(SystemMapping newSystemMapping) {
        if (newSystemMapping != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newSystemMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSystemMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSystemMapping != null) {
                msgs = ((InternalEObject)newSystemMapping).eInverseAdd((InternalEObject)this, 26, SystemMapping.class, msgs);
            }
            if ((msgs = this.basicSetSystemMapping(newSystemMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newSystemMapping, (Object)newSystemMapping));
        }
    }

    @Override
    public EList<ComponentInSystemInstanceRef> getComponents() {
        if (this.components == null) {
            this.components = new EObjectContainmentEList(ComponentInSystemInstanceRef.class, (InternalEObject)this, 19);
        }
        return this.components;
    }

    @Override
    public HwElement getControlledHwElement() {
        if (this.controlledHwElement != null && this.controlledHwElement.eIsProxy()) {
            InternalEObject oldControlledHwElement = (InternalEObject)this.controlledHwElement;
            this.controlledHwElement = (HwElement)this.eResolveProxy(oldControlledHwElement);
            if (this.controlledHwElement != oldControlledHwElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldControlledHwElement, (Object)this.controlledHwElement));
            }
        }
        return this.controlledHwElement;
    }

    public HwElement basicGetControlledHwElement() {
        return this.controlledHwElement;
    }

    @Override
    public void setControlledHwElement(HwElement newControlledHwElement) {
        HwElement oldControlledHwElement = this.controlledHwElement;
        this.controlledHwElement = newControlledHwElement;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldControlledHwElement, (Object)this.controlledHwElement));
        }
    }

    @Override
    public EcuInstance getEcuInstance() {
        if (this.ecuInstance != null && this.ecuInstance.eIsProxy()) {
            InternalEObject oldEcuInstance = (InternalEObject)this.ecuInstance;
            this.ecuInstance = (EcuInstance)this.eResolveProxy(oldEcuInstance);
            if (this.ecuInstance != oldEcuInstance && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldEcuInstance, (Object)this.ecuInstance));
            }
        }
        return this.ecuInstance;
    }

    public EcuInstance basicGetEcuInstance() {
        return this.ecuInstance;
    }

    @Override
    public void setEcuInstance(EcuInstance newEcuInstance) {
        EcuInstance oldEcuInstance = this.ecuInstance;
        this.ecuInstance = newEcuInstance;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldEcuInstance, (Object)this.ecuInstance));
        }
    }

    @Override
    public EcuPartition getPartition() {
        if (this.partition != null && this.partition.eIsProxy()) {
            InternalEObject oldPartition = (InternalEObject)this.partition;
            this.partition = (EcuPartition)this.eResolveProxy(oldPartition);
            if (this.partition != oldPartition && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldPartition, (Object)this.partition));
            }
        }
        return this.partition;
    }

    public EcuPartition basicGetPartition() {
        return this.partition;
    }

    @Override
    public void setPartition(EcuPartition newPartition) {
        EcuPartition oldPartition = this.partition;
        this.partition = newPartition;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldPartition, (Object)this.partition));
        }
    }

    @Override
    public HwElement getProcessingUnit() {
        if (this.processingUnit != null && this.processingUnit.eIsProxy()) {
            InternalEObject oldProcessingUnit = (InternalEObject)this.processingUnit;
            this.processingUnit = (HwElement)this.eResolveProxy(oldProcessingUnit);
            if (this.processingUnit != oldProcessingUnit && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 23, (Object)oldProcessingUnit, (Object)this.processingUnit));
            }
        }
        return this.processingUnit;
    }

    public HwElement basicGetProcessingUnit() {
        return this.processingUnit;
    }

    @Override
    public void setProcessingUnit(HwElement newProcessingUnit) {
        HwElement oldProcessingUnit = this.processingUnit;
        this.processingUnit = newProcessingUnit;
        AutosarObjectUtil.setDest((EObject)this, (int)23, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldProcessingUnit, (Object)this.processingUnit));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldVariationPoint, (Object)newVariationPoint);
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

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSystemMapping((SystemMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetSystemMapping(null, msgs);
            }
            case 19: {
                return ((InternalEList)this.getComponents()).basicRemove((Object)otherEnd, msgs);
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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 26, SystemMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getSystemMapping();
            }
            case 19: {
                return this.getComponents();
            }
            case 20: {
                if (resolve) {
                    return this.getControlledHwElement();
                }
                return this.basicGetControlledHwElement();
            }
            case 21: {
                if (resolve) {
                    return this.getEcuInstance();
                }
                return this.basicGetEcuInstance();
            }
            case 22: {
                if (resolve) {
                    return this.getPartition();
                }
                return this.basicGetPartition();
            }
            case 23: {
                if (resolve) {
                    return this.getProcessingUnit();
                }
                return this.basicGetProcessingUnit();
            }
            case 24: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setSystemMapping((SystemMapping)newValue);
                return;
            }
            case 19: {
                this.getComponents().clear();
                this.getComponents().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.setControlledHwElement((HwElement)newValue);
                return;
            }
            case 21: {
                this.setEcuInstance((EcuInstance)newValue);
                return;
            }
            case 22: {
                this.setPartition((EcuPartition)newValue);
                return;
            }
            case 23: {
                this.setProcessingUnit((HwElement)newValue);
                return;
            }
            case 24: {
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
                this.setSystemMapping(null);
                return;
            }
            case 19: {
                this.getComponents().clear();
                return;
            }
            case 20: {
                this.setControlledHwElement(null);
                return;
            }
            case 21: {
                this.setEcuInstance(null);
                return;
            }
            case 22: {
                this.setPartition(null);
                return;
            }
            case 23: {
                this.setProcessingUnit(null);
                return;
            }
            case 24: {
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
                return this.getSystemMapping() != null;
            }
            case 19: {
                return this.components != null && !this.components.isEmpty();
            }
            case 20: {
                return this.controlledHwElement != null;
            }
            case 21: {
                return this.ecuInstance != null;
            }
            case 22: {
                return this.partition != null;
            }
            case 23: {
                return this.processingUnit != null;
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
}

