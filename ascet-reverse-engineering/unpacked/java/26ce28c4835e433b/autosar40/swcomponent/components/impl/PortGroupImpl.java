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
package autosar40.swcomponent.components.impl;

import autosar40.genericstructure.abstractstructure.impl.AtpStructureElementImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.ComponentsPackage;
import autosar40.swcomponent.components.PortGroup;
import autosar40.swcomponent.components.PortPrototypeRefConditional;
import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.components.instancerefs.InnerPortGroupInCompositionInstanceRef;
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
public class PortGroupImpl
extends AtpStructureElementImpl
implements PortGroup {
    protected EList<InnerPortGroupInCompositionInstanceRef> innerGroups;
    protected EList<PortPrototypeRefConditional> outerPorts;
    protected VariationPoint variationPoint;

    protected PortGroupImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.PORT_GROUP;
    }

    @Override
    public SwComponentType getSwComponentType() {
        if (this.eContainerFeatureID() != 19) {
            return null;
        }
        return (SwComponentType)this.eContainer();
    }

    public NotificationChain basicSetSwComponentType(SwComponentType newSwComponentType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwComponentType, 19, msgs);
        return msgs;
    }

    @Override
    public void setSwComponentType(SwComponentType newSwComponentType) {
        if (newSwComponentType != this.eInternalContainer() || this.eContainerFeatureID() != 19 && newSwComponentType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwComponentType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwComponentType != null) {
                msgs = ((InternalEObject)newSwComponentType).eInverseAdd((InternalEObject)this, 25, SwComponentType.class, msgs);
            }
            if ((msgs = this.basicSetSwComponentType(newSwComponentType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newSwComponentType, (Object)newSwComponentType));
        }
    }

    @Override
    public EList<InnerPortGroupInCompositionInstanceRef> getInnerGroups() {
        if (this.innerGroups == null) {
            this.innerGroups = new EObjectContainmentWithInverseEList(InnerPortGroupInCompositionInstanceRef.class, (InternalEObject)this, 20, 4);
        }
        return this.innerGroups;
    }

    @Override
    public EList<PortPrototypeRefConditional> getOuterPorts() {
        if (this.outerPorts == null) {
            this.outerPorts = new EObjectContainmentWithInverseEList(PortPrototypeRefConditional.class, (InternalEObject)this, 21, 4);
        }
        return this.outerPorts;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwComponentType((SwComponentType)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getInnerGroups()).basicAdd((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getOuterPorts()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetSwComponentType(null, msgs);
            }
            case 20: {
                return ((InternalEList)this.getInnerGroups()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getOuterPorts()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 19: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, SwComponentType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getSwComponentType();
            }
            case 20: {
                return this.getInnerGroups();
            }
            case 21: {
                return this.getOuterPorts();
            }
            case 22: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setSwComponentType((SwComponentType)newValue);
                return;
            }
            case 20: {
                this.getInnerGroups().clear();
                this.getInnerGroups().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getOuterPorts().clear();
                this.getOuterPorts().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.setSwComponentType(null);
                return;
            }
            case 20: {
                this.getInnerGroups().clear();
                return;
            }
            case 21: {
                this.getOuterPorts().clear();
                return;
            }
            case 22: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.getSwComponentType() != null;
            }
            case 20: {
                return this.innerGroups != null && !this.innerGroups.isEmpty();
            }
            case 21: {
                return this.outerPorts != null && !this.outerPorts.isEmpty();
            }
            case 22: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

