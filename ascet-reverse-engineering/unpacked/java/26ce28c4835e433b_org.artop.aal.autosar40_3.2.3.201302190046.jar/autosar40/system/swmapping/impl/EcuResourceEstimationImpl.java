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
package autosar40.system.swmapping.impl;

import autosar40.commonstructure.resourceconsumption.ResourceConsumption;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.SystemMapping;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.swmapping.EcuResourceEstimation;
import autosar40.system.swmapping.SwcToEcuMapping;
import autosar40.system.swmapping.SwmappingPackage;
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
public class EcuResourceEstimationImpl
extends ARObjectImpl
implements EcuResourceEstimation,
IReferringClass {
    protected DocumentationBlock introduction;
    protected ResourceConsumption bswResourceEstimation;
    protected EcuInstance ecuInstance;
    protected ResourceConsumption rteResourceEstimation;
    protected EList<SwcToEcuMapping> swCompToEcuMappings;
    protected VariationPoint variationPoint;

    protected EcuResourceEstimationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SwmappingPackage.Literals.ECU_RESOURCE_ESTIMATION;
    }

    @Override
    public SystemMapping getSystemMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SystemMapping)this.eContainer();
    }

    public NotificationChain basicSetSystemMapping(SystemMapping newSystemMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSystemMapping, 4, msgs);
        return msgs;
    }

    @Override
    public void setSystemMapping(SystemMapping newSystemMapping) {
        if (newSystemMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSystemMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSystemMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSystemMapping != null) {
                msgs = ((InternalEObject)newSystemMapping).eInverseAdd((InternalEObject)this, 23, SystemMapping.class, msgs);
            }
            if ((msgs = this.basicSetSystemMapping(newSystemMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSystemMapping, (Object)newSystemMapping));
        }
    }

    @Override
    public DocumentationBlock getIntroduction() {
        return this.introduction;
    }

    public NotificationChain basicSetIntroduction(DocumentationBlock newIntroduction, NotificationChain msgs) {
        DocumentationBlock oldIntroduction = this.introduction;
        this.introduction = newIntroduction;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldIntroduction, (Object)newIntroduction);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setIntroduction(DocumentationBlock newIntroduction) {
        if (newIntroduction != this.introduction) {
            NotificationChain msgs = null;
            if (this.introduction != null) {
                msgs = ((InternalEObject)this.introduction).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newIntroduction != null) {
                msgs = ((InternalEObject)newIntroduction).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetIntroduction(newIntroduction, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newIntroduction, (Object)newIntroduction));
        }
    }

    @Override
    public ResourceConsumption getBswResourceEstimation() {
        return this.bswResourceEstimation;
    }

    public NotificationChain basicSetBswResourceEstimation(ResourceConsumption newBswResourceEstimation, NotificationChain msgs) {
        ResourceConsumption oldBswResourceEstimation = this.bswResourceEstimation;
        this.bswResourceEstimation = newBswResourceEstimation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldBswResourceEstimation, (Object)newBswResourceEstimation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setBswResourceEstimation(ResourceConsumption newBswResourceEstimation) {
        if (newBswResourceEstimation != this.bswResourceEstimation) {
            NotificationChain msgs = null;
            if (this.bswResourceEstimation != null) {
                msgs = ((InternalEObject)this.bswResourceEstimation).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newBswResourceEstimation != null) {
                msgs = ((InternalEObject)newBswResourceEstimation).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetBswResourceEstimation(newBswResourceEstimation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newBswResourceEstimation, (Object)newBswResourceEstimation));
        }
    }

    @Override
    public EcuInstance getEcuInstance() {
        if (this.ecuInstance != null && this.ecuInstance.eIsProxy()) {
            InternalEObject oldEcuInstance = (InternalEObject)this.ecuInstance;
            this.ecuInstance = (EcuInstance)this.eResolveProxy(oldEcuInstance);
            if (this.ecuInstance != oldEcuInstance && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldEcuInstance, (Object)this.ecuInstance));
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
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldEcuInstance, (Object)this.ecuInstance));
        }
    }

    @Override
    public ResourceConsumption getRteResourceEstimation() {
        return this.rteResourceEstimation;
    }

    public NotificationChain basicSetRteResourceEstimation(ResourceConsumption newRteResourceEstimation, NotificationChain msgs) {
        ResourceConsumption oldRteResourceEstimation = this.rteResourceEstimation;
        this.rteResourceEstimation = newRteResourceEstimation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldRteResourceEstimation, (Object)newRteResourceEstimation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setRteResourceEstimation(ResourceConsumption newRteResourceEstimation) {
        if (newRteResourceEstimation != this.rteResourceEstimation) {
            NotificationChain msgs = null;
            if (this.rteResourceEstimation != null) {
                msgs = ((InternalEObject)this.rteResourceEstimation).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newRteResourceEstimation != null) {
                msgs = ((InternalEObject)newRteResourceEstimation).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetRteResourceEstimation(newRteResourceEstimation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newRteResourceEstimation, (Object)newRteResourceEstimation));
        }
    }

    @Override
    public EList<SwcToEcuMapping> getSwCompToEcuMappings() {
        if (this.swCompToEcuMappings == null) {
            this.swCompToEcuMappings = new EObjectResolvingReferringEList(SwcToEcuMapping.class, (InternalEObject)this, 9);
        }
        return this.swCompToEcuMappings;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSystemMapping((SystemMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSystemMapping(null, msgs);
            }
            case 5: {
                return this.basicSetIntroduction(null, msgs);
            }
            case 6: {
                return this.basicSetBswResourceEstimation(null, msgs);
            }
            case 8: {
                return this.basicSetRteResourceEstimation(null, msgs);
            }
            case 10: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, SystemMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSystemMapping();
            }
            case 5: {
                return this.getIntroduction();
            }
            case 6: {
                return this.getBswResourceEstimation();
            }
            case 7: {
                if (resolve) {
                    return this.getEcuInstance();
                }
                return this.basicGetEcuInstance();
            }
            case 8: {
                return this.getRteResourceEstimation();
            }
            case 9: {
                return this.getSwCompToEcuMappings();
            }
            case 10: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSystemMapping((SystemMapping)newValue);
                return;
            }
            case 5: {
                this.setIntroduction((DocumentationBlock)newValue);
                return;
            }
            case 6: {
                this.setBswResourceEstimation((ResourceConsumption)newValue);
                return;
            }
            case 7: {
                this.setEcuInstance((EcuInstance)newValue);
                return;
            }
            case 8: {
                this.setRteResourceEstimation((ResourceConsumption)newValue);
                return;
            }
            case 9: {
                this.getSwCompToEcuMappings().clear();
                this.getSwCompToEcuMappings().addAll((Collection)newValue);
                return;
            }
            case 10: {
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
                this.setSystemMapping(null);
                return;
            }
            case 5: {
                this.setIntroduction(null);
                return;
            }
            case 6: {
                this.setBswResourceEstimation(null);
                return;
            }
            case 7: {
                this.setEcuInstance(null);
                return;
            }
            case 8: {
                this.setRteResourceEstimation(null);
                return;
            }
            case 9: {
                this.getSwCompToEcuMappings().clear();
                return;
            }
            case 10: {
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
                return this.getSystemMapping() != null;
            }
            case 5: {
                return this.introduction != null;
            }
            case 6: {
                return this.bswResourceEstimation != null;
            }
            case 7: {
                return this.ecuInstance != null;
            }
            case 8: {
                return this.rteResourceEstimation != null;
            }
            case 9: {
                return this.swCompToEcuMappings != null && !this.swCompToEcuMappings.isEmpty();
            }
            case 10: {
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

