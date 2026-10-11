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
package autosar40.swcomponent.composition.impl;

import autosar40.genericstructure.abstractstructure.impl.AtpStructureElementImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.composition.CompositionPackage;
import autosar40.swcomponent.composition.CompositionSwComponentType;
import autosar40.swcomponent.composition.SwConnector;
import autosar40.swcomponent.portinterface.PortInterfaceMapping;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class SwConnectorImpl
extends AtpStructureElementImpl
implements SwConnector,
IReferringClass {
    protected PortInterfaceMapping mapping;
    protected VariationPoint variationPoint;

    protected SwConnectorImpl() {
    }

    protected EClass eStaticClass() {
        return CompositionPackage.Literals.SW_CONNECTOR;
    }

    public CompositionSwComponentType getCompositionSwComponentType() {
        if (this.eContainerFeatureID() != 19) {
            return null;
        }
        return (CompositionSwComponentType)this.eContainer();
    }

    public NotificationChain basicSetCompositionSwComponentType(CompositionSwComponentType newCompositionSwComponentType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCompositionSwComponentType, 19, msgs);
        return msgs;
    }

    public void setCompositionSwComponentType(CompositionSwComponentType newCompositionSwComponentType) {
        if (newCompositionSwComponentType != this.eInternalContainer() || this.eContainerFeatureID() != 19 && newCompositionSwComponentType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCompositionSwComponentType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCompositionSwComponentType != null) {
                msgs = ((InternalEObject)newCompositionSwComponentType).eInverseAdd((InternalEObject)this, 28, CompositionSwComponentType.class, msgs);
            }
            if ((msgs = this.basicSetCompositionSwComponentType(newCompositionSwComponentType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newCompositionSwComponentType, (Object)newCompositionSwComponentType));
        }
    }

    public PortInterfaceMapping getMapping() {
        if (this.mapping != null && this.mapping.eIsProxy()) {
            InternalEObject oldMapping = (InternalEObject)this.mapping;
            this.mapping = (PortInterfaceMapping)this.eResolveProxy(oldMapping);
            if (this.mapping != oldMapping && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldMapping, (Object)this.mapping));
            }
        }
        return this.mapping;
    }

    public PortInterfaceMapping basicGetMapping() {
        return this.mapping;
    }

    public void setMapping(PortInterfaceMapping newMapping) {
        PortInterfaceMapping oldMapping = this.mapping;
        this.mapping = newMapping;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldMapping, (Object)this.mapping));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCompositionSwComponentType((CompositionSwComponentType)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetCompositionSwComponentType(null, msgs);
            }
            case 21: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 19: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 28, CompositionSwComponentType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getCompositionSwComponentType();
            }
            case 20: {
                if (resolve) {
                    return this.getMapping();
                }
                return this.basicGetMapping();
            }
            case 21: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setCompositionSwComponentType((CompositionSwComponentType)newValue);
                return;
            }
            case 20: {
                this.setMapping((PortInterfaceMapping)newValue);
                return;
            }
            case 21: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.setCompositionSwComponentType(null);
                return;
            }
            case 20: {
                this.setMapping(null);
                return;
            }
            case 21: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.getCompositionSwComponentType() != null;
            }
            case 20: {
                return this.mapping != null;
            }
            case 21: {
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

