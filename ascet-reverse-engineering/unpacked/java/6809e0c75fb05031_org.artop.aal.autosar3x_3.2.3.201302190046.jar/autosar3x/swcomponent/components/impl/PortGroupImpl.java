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
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.swcomponent.components.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.swcomponent.components.ComponentType;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.components.PortGroup;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.components.instanceref.PortGroupInnerGroup;
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
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PortGroupImpl
extends IdentifiableImpl
implements PortGroup,
IReferringClass {
    protected EList<PortGroupInnerGroup> innerGroups;
    protected EList<PortPrototype> outerPorts;

    protected PortGroupImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.PORT_GROUP;
    }

    @Override
    public ComponentType getComponentType() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (ComponentType)this.eContainer();
    }

    public NotificationChain basicSetComponentType(ComponentType newComponentType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newComponentType, 17, msgs);
        return msgs;
    }

    @Override
    public void setComponentType(ComponentType newComponentType) {
        if (newComponentType != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newComponentType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newComponentType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newComponentType != null) {
                msgs = ((InternalEObject)newComponentType).eInverseAdd((InternalEObject)this, 21, ComponentType.class, msgs);
            }
            if ((msgs = this.basicSetComponentType(newComponentType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newComponentType, (Object)newComponentType));
        }
    }

    @Override
    public EList<PortGroupInnerGroup> getInnerGroups() {
        if (this.innerGroups == null) {
            this.innerGroups = new EObjectContainmentEList(PortGroupInnerGroup.class, (InternalEObject)this, 18);
        }
        return this.innerGroups;
    }

    @Override
    public EList<PortPrototype> getOuterPorts() {
        if (this.outerPorts == null) {
            this.outerPorts = new EObjectResolvingReferringEList(PortPrototype.class, (InternalEObject)this, 19);
        }
        return this.outerPorts;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetComponentType((ComponentType)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetComponentType(null, msgs);
            }
            case 18: {
                return ((InternalEList)this.getInnerGroups()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, ComponentType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getComponentType();
            }
            case 18: {
                return this.getInnerGroups();
            }
            case 19: {
                return this.getOuterPorts();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setComponentType((ComponentType)newValue);
                return;
            }
            case 18: {
                this.getInnerGroups().clear();
                this.getInnerGroups().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.getOuterPorts().clear();
                this.getOuterPorts().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setComponentType(null);
                return;
            }
            case 18: {
                this.getInnerGroups().clear();
                return;
            }
            case 19: {
                this.getOuterPorts().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getComponentType() != null;
            }
            case 18: {
                return this.innerGroups != null && !this.innerGroups.isEmpty();
            }
            case 19: {
                return this.outerPorts != null && !this.outerPorts.isEmpty();
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

