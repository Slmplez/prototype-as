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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.swmapping.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.implementation.Implementation;
import autosar21.system.SystemMapping;
import autosar21.system.swmapping.SwCompToImplMapping;
import autosar21.system.swmapping.SwmappingPackage;
import autosar21.system.swmapping.instanceref.SwCompToImplMappingComponent;
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
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwCompToImplMappingImpl
extends IdentifiableImpl
implements SwCompToImplMapping,
IReferringClass {
    protected Implementation componentImplementation;
    protected EList<SwCompToImplMappingComponent> components;

    protected SwCompToImplMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SwmappingPackage.Literals.SW_COMP_TO_IMPL_MAPPING;
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
                msgs = ((InternalEObject)newSystemMapping).eInverseAdd((InternalEObject)this, 21, SystemMapping.class, msgs);
            }
            if ((msgs = this.basicSetSystemMapping(newSystemMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newSystemMapping, (Object)newSystemMapping));
        }
    }

    @Override
    public Implementation getComponentImplementation() {
        if (this.componentImplementation != null && this.componentImplementation.eIsProxy()) {
            InternalEObject oldComponentImplementation = (InternalEObject)this.componentImplementation;
            this.componentImplementation = (Implementation)this.eResolveProxy(oldComponentImplementation);
            if (this.componentImplementation != oldComponentImplementation && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 17, (Object)oldComponentImplementation, (Object)this.componentImplementation));
            }
        }
        return this.componentImplementation;
    }

    public Implementation basicGetComponentImplementation() {
        return this.componentImplementation;
    }

    @Override
    public void setComponentImplementation(Implementation newComponentImplementation) {
        Implementation oldComponentImplementation = this.componentImplementation;
        this.componentImplementation = newComponentImplementation;
        AutosarObjectUtil.setDest((EObject)this, (int)17, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldComponentImplementation, (Object)this.componentImplementation));
        }
    }

    @Override
    public EList<SwCompToImplMappingComponent> getComponents() {
        if (this.components == null) {
            this.components = new EObjectContainmentWithInverseEList(SwCompToImplMappingComponent.class, (InternalEObject)this, 18, 4);
        }
        return this.components;
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
            case 18: {
                return ((InternalEList)this.getComponents()).basicAdd((Object)otherEnd, msgs);
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
            case 18: {
                return ((InternalEList)this.getComponents()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, SystemMapping.class, msgs);
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
                if (resolve) {
                    return this.getComponentImplementation();
                }
                return this.basicGetComponentImplementation();
            }
            case 18: {
                return this.getComponents();
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
                this.setComponentImplementation((Implementation)newValue);
                return;
            }
            case 18: {
                this.getComponents().clear();
                this.getComponents().addAll((Collection)newValue);
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
                this.setComponentImplementation(null);
                return;
            }
            case 18: {
                this.getComponents().clear();
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
                return this.componentImplementation != null;
            }
            case 18: {
                return this.components != null && !this.components.isEmpty();
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

