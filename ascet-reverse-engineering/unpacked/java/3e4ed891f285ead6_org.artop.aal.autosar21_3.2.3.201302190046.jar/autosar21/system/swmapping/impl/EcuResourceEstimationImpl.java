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
package autosar21.system.swmapping.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.SystemMapping;
import autosar21.system.swmapping.BSWResourceEstimation;
import autosar21.system.swmapping.EcuResourceEstimation;
import autosar21.system.swmapping.RTERessourceEstimation;
import autosar21.system.swmapping.SwCompToEcuMapping;
import autosar21.system.swmapping.SwmappingPackage;
import autosar21.system.swmapping.instanceref.EcuResourceEstimationEcuInstance;
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
    protected BSWResourceEstimation bswResourceEstimation;
    protected EcuResourceEstimationEcuInstance ecuInstance;
    protected RTERessourceEstimation rteRessourceEstimation;
    protected EList<SwCompToEcuMapping> swCompToEcuMappings;

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
                msgs = ((InternalEObject)newSystemMapping).eInverseAdd((InternalEObject)this, 19, SystemMapping.class, msgs);
            }
            if ((msgs = this.basicSetSystemMapping(newSystemMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSystemMapping, (Object)newSystemMapping));
        }
    }

    @Override
    public BSWResourceEstimation getBswResourceEstimation() {
        return this.bswResourceEstimation;
    }

    public NotificationChain basicSetBswResourceEstimation(BSWResourceEstimation newBswResourceEstimation, NotificationChain msgs) {
        BSWResourceEstimation oldBswResourceEstimation = this.bswResourceEstimation;
        this.bswResourceEstimation = newBswResourceEstimation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldBswResourceEstimation, (Object)newBswResourceEstimation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setBswResourceEstimation(BSWResourceEstimation newBswResourceEstimation) {
        if (newBswResourceEstimation != this.bswResourceEstimation) {
            NotificationChain msgs = null;
            if (this.bswResourceEstimation != null) {
                msgs = ((InternalEObject)this.bswResourceEstimation).eInverseRemove((InternalEObject)this, 6, BSWResourceEstimation.class, msgs);
            }
            if (newBswResourceEstimation != null) {
                msgs = ((InternalEObject)newBswResourceEstimation).eInverseAdd((InternalEObject)this, 6, BSWResourceEstimation.class, msgs);
            }
            if ((msgs = this.basicSetBswResourceEstimation(newBswResourceEstimation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newBswResourceEstimation, (Object)newBswResourceEstimation));
        }
    }

    @Override
    public EcuResourceEstimationEcuInstance getEcuInstance() {
        return this.ecuInstance;
    }

    public NotificationChain basicSetEcuInstance(EcuResourceEstimationEcuInstance newEcuInstance, NotificationChain msgs) {
        EcuResourceEstimationEcuInstance oldEcuInstance = this.ecuInstance;
        this.ecuInstance = newEcuInstance;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldEcuInstance, (Object)newEcuInstance);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEcuInstance(EcuResourceEstimationEcuInstance newEcuInstance) {
        if (newEcuInstance != this.ecuInstance) {
            NotificationChain msgs = null;
            if (this.ecuInstance != null) {
                msgs = ((InternalEObject)this.ecuInstance).eInverseRemove((InternalEObject)this, 4, EcuResourceEstimationEcuInstance.class, msgs);
            }
            if (newEcuInstance != null) {
                msgs = ((InternalEObject)newEcuInstance).eInverseAdd((InternalEObject)this, 4, EcuResourceEstimationEcuInstance.class, msgs);
            }
            if ((msgs = this.basicSetEcuInstance(newEcuInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newEcuInstance, (Object)newEcuInstance));
        }
    }

    @Override
    public RTERessourceEstimation getRteRessourceEstimation() {
        return this.rteRessourceEstimation;
    }

    public NotificationChain basicSetRteRessourceEstimation(RTERessourceEstimation newRteRessourceEstimation, NotificationChain msgs) {
        RTERessourceEstimation oldRteRessourceEstimation = this.rteRessourceEstimation;
        this.rteRessourceEstimation = newRteRessourceEstimation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldRteRessourceEstimation, (Object)newRteRessourceEstimation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setRteRessourceEstimation(RTERessourceEstimation newRteRessourceEstimation) {
        if (newRteRessourceEstimation != this.rteRessourceEstimation) {
            NotificationChain msgs = null;
            if (this.rteRessourceEstimation != null) {
                msgs = ((InternalEObject)this.rteRessourceEstimation).eInverseRemove((InternalEObject)this, 6, RTERessourceEstimation.class, msgs);
            }
            if (newRteRessourceEstimation != null) {
                msgs = ((InternalEObject)newRteRessourceEstimation).eInverseAdd((InternalEObject)this, 6, RTERessourceEstimation.class, msgs);
            }
            if ((msgs = this.basicSetRteRessourceEstimation(newRteRessourceEstimation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newRteRessourceEstimation, (Object)newRteRessourceEstimation));
        }
    }

    @Override
    public EList<SwCompToEcuMapping> getSwCompToEcuMappings() {
        if (this.swCompToEcuMappings == null) {
            this.swCompToEcuMappings = new EObjectResolvingReferringEList(SwCompToEcuMapping.class, (InternalEObject)this, 8);
        }
        return this.swCompToEcuMappings;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSystemMapping((SystemMapping)otherEnd, msgs);
            }
            case 5: {
                if (this.bswResourceEstimation != null) {
                    msgs = ((InternalEObject)this.bswResourceEstimation).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetBswResourceEstimation((BSWResourceEstimation)otherEnd, msgs);
            }
            case 6: {
                if (this.ecuInstance != null) {
                    msgs = ((InternalEObject)this.ecuInstance).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetEcuInstance((EcuResourceEstimationEcuInstance)otherEnd, msgs);
            }
            case 7: {
                if (this.rteRessourceEstimation != null) {
                    msgs = ((InternalEObject)this.rteRessourceEstimation).eInverseRemove((InternalEObject)this, -8, null, msgs);
                }
                return this.basicSetRteRessourceEstimation((RTERessourceEstimation)otherEnd, msgs);
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
                return this.basicSetBswResourceEstimation(null, msgs);
            }
            case 6: {
                return this.basicSetEcuInstance(null, msgs);
            }
            case 7: {
                return this.basicSetRteRessourceEstimation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, SystemMapping.class, msgs);
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
                return this.getBswResourceEstimation();
            }
            case 6: {
                return this.getEcuInstance();
            }
            case 7: {
                return this.getRteRessourceEstimation();
            }
            case 8: {
                return this.getSwCompToEcuMappings();
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
                this.setBswResourceEstimation((BSWResourceEstimation)newValue);
                return;
            }
            case 6: {
                this.setEcuInstance((EcuResourceEstimationEcuInstance)newValue);
                return;
            }
            case 7: {
                this.setRteRessourceEstimation((RTERessourceEstimation)newValue);
                return;
            }
            case 8: {
                this.getSwCompToEcuMappings().clear();
                this.getSwCompToEcuMappings().addAll((Collection)newValue);
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
                this.setBswResourceEstimation(null);
                return;
            }
            case 6: {
                this.setEcuInstance(null);
                return;
            }
            case 7: {
                this.setRteRessourceEstimation(null);
                return;
            }
            case 8: {
                this.getSwCompToEcuMappings().clear();
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
                return this.bswResourceEstimation != null;
            }
            case 6: {
                return this.ecuInstance != null;
            }
            case 7: {
                return this.rteRessourceEstimation != null;
            }
            case 8: {
                return this.swCompToEcuMappings != null && !this.swCompToEcuMappings.isEmpty();
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

