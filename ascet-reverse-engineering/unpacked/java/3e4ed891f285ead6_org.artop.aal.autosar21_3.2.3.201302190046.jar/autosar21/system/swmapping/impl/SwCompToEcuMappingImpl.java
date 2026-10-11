/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.swmapping.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.SystemMapping;
import autosar21.system.swmapping.SwCompToEcuMapping;
import autosar21.system.swmapping.SwmappingPackage;
import autosar21.system.swmapping.instanceref.SwCompToEcuMappingComponent;
import autosar21.system.swmapping.instanceref.SwCompToEcuMappingEcuInstance;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwCompToEcuMappingImpl
extends IdentifiableImpl
implements SwCompToEcuMapping {
    protected EList<SwCompToEcuMappingComponent> components;
    protected SwCompToEcuMappingEcuInstance ecuInstance;

    protected SwCompToEcuMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SwmappingPackage.Literals.SW_COMP_TO_ECU_MAPPING;
    }

    @Override
    public SystemMapping getSystemMapping() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (SystemMapping)this.eContainer();
    }

    public NotificationChain basicSetSystemMapping(SystemMapping newSystemMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSystemMapping, 16, msgs);
        return msgs;
    }

    @Override
    public void setSystemMapping(SystemMapping newSystemMapping) {
        if (newSystemMapping != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newSystemMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSystemMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSystemMapping != null) {
                msgs = ((InternalEObject)newSystemMapping).eInverseAdd((InternalEObject)this, 22, SystemMapping.class, msgs);
            }
            if ((msgs = this.basicSetSystemMapping(newSystemMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newSystemMapping, (Object)newSystemMapping));
        }
    }

    @Override
    public EList<SwCompToEcuMappingComponent> getComponents() {
        if (this.components == null) {
            this.components = new EObjectContainmentWithInverseEList(SwCompToEcuMappingComponent.class, (InternalEObject)this, 17, 4);
        }
        return this.components;
    }

    @Override
    public SwCompToEcuMappingEcuInstance getEcuInstance() {
        return this.ecuInstance;
    }

    public NotificationChain basicSetEcuInstance(SwCompToEcuMappingEcuInstance newEcuInstance, NotificationChain msgs) {
        SwCompToEcuMappingEcuInstance oldEcuInstance = this.ecuInstance;
        this.ecuInstance = newEcuInstance;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldEcuInstance, (Object)newEcuInstance);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEcuInstance(SwCompToEcuMappingEcuInstance newEcuInstance) {
        if (newEcuInstance != this.ecuInstance) {
            NotificationChain msgs = null;
            if (this.ecuInstance != null) {
                msgs = ((InternalEObject)this.ecuInstance).eInverseRemove((InternalEObject)this, 4, SwCompToEcuMappingEcuInstance.class, msgs);
            }
            if (newEcuInstance != null) {
                msgs = ((InternalEObject)newEcuInstance).eInverseAdd((InternalEObject)this, 4, SwCompToEcuMappingEcuInstance.class, msgs);
            }
            if ((msgs = this.basicSetEcuInstance(newEcuInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newEcuInstance, (Object)newEcuInstance));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSystemMapping((SystemMapping)otherEnd, msgs);
            }
            case 17: {
                return ((InternalEList)this.getComponents()).basicAdd((Object)otherEnd, msgs);
            }
            case 18: {
                if (this.ecuInstance != null) {
                    msgs = ((InternalEObject)this.ecuInstance).eInverseRemove((InternalEObject)this, -19, null, msgs);
                }
                return this.basicSetEcuInstance((SwCompToEcuMappingEcuInstance)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetSystemMapping(null, msgs);
            }
            case 17: {
                return ((InternalEList)this.getComponents()).basicRemove((Object)otherEnd, msgs);
            }
            case 18: {
                return this.basicSetEcuInstance(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, SystemMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getSystemMapping();
            }
            case 17: {
                return this.getComponents();
            }
            case 18: {
                return this.getEcuInstance();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setSystemMapping((SystemMapping)newValue);
                return;
            }
            case 17: {
                this.getComponents().clear();
                this.getComponents().addAll((Collection)newValue);
                return;
            }
            case 18: {
                this.setEcuInstance((SwCompToEcuMappingEcuInstance)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setSystemMapping(null);
                return;
            }
            case 17: {
                this.getComponents().clear();
                return;
            }
            case 18: {
                this.setEcuInstance(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getSystemMapping() != null;
            }
            case 17: {
                return this.components != null && !this.components.isEmpty();
            }
            case 18: {
                return this.ecuInstance != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

