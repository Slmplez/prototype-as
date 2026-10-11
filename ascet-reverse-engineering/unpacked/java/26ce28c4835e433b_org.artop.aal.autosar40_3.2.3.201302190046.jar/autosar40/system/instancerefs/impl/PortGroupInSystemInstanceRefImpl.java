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
package autosar40.system.instancerefs.impl;

import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import autosar40.swcomponent.components.PortGroup;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.system.RootSwCompositionPrototype;
import autosar40.system.System;
import autosar40.system.instancerefs.InstancerefsPackage;
import autosar40.system.instancerefs.PortGroupInSystemInstanceRef;
import autosar40.system.pncmapping.PncMapping;
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
public class PortGroupInSystemInstanceRefImpl
extends AtpInstanceRefImpl
implements PortGroupInSystemInstanceRef,
IReferringClass {
    protected RootSwCompositionPrototype contextComposition;
    protected EList<SwComponentPrototype> contextComponents;
    protected PortGroup target;

    protected PortGroupInSystemInstanceRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.PORT_GROUP_IN_SYSTEM_INSTANCE_REF;
    }

    @Override
    public PncMapping getPncMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (PncMapping)this.eContainer();
    }

    public NotificationChain basicSetPncMapping(PncMapping newPncMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPncMapping, 4, msgs);
        return msgs;
    }

    @Override
    public void setPncMapping(PncMapping newPncMapping) {
        if (newPncMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newPncMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPncMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPncMapping != null) {
                msgs = ((InternalEObject)newPncMapping).eInverseAdd((InternalEObject)this, 7, PncMapping.class, msgs);
            }
            if ((msgs = this.basicSetPncMapping(newPncMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPncMapping, (Object)newPncMapping));
        }
    }

    @Override
    public System getBase() {
        RootSwCompositionPrototype contextComposition = this.getContextComposition();
        if (contextComposition != null) {
            return contextComposition.getSystem();
        }
        return null;
    }

    @Override
    public RootSwCompositionPrototype getContextComposition() {
        if (this.contextComposition != null && this.contextComposition.eIsProxy()) {
            InternalEObject oldContextComposition = (InternalEObject)this.contextComposition;
            this.contextComposition = (RootSwCompositionPrototype)this.eResolveProxy(oldContextComposition);
            if (this.contextComposition != oldContextComposition && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldContextComposition, (Object)this.contextComposition));
            }
        }
        return this.contextComposition;
    }

    public RootSwCompositionPrototype basicGetContextComposition() {
        return this.contextComposition;
    }

    @Override
    public void setContextComposition(RootSwCompositionPrototype newContextComposition) {
        RootSwCompositionPrototype oldContextComposition = this.contextComposition;
        this.contextComposition = newContextComposition;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldContextComposition, (Object)this.contextComposition));
        }
    }

    @Override
    public EList<SwComponentPrototype> getContextComponents() {
        if (this.contextComponents == null) {
            this.contextComponents = new EObjectResolvingReferringEList(SwComponentPrototype.class, (InternalEObject)this, 7);
        }
        return this.contextComponents;
    }

    @Override
    public PortGroup getTarget() {
        if (this.target != null && this.target.eIsProxy()) {
            InternalEObject oldTarget = (InternalEObject)this.target;
            this.target = (PortGroup)this.eResolveProxy(oldTarget);
            if (this.target != oldTarget && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldTarget, (Object)this.target));
            }
        }
        return this.target;
    }

    public PortGroup basicGetTarget() {
        return this.target;
    }

    @Override
    public void setTarget(PortGroup newTarget) {
        PortGroup oldTarget = this.target;
        this.target = newTarget;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldTarget, (Object)this.target));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPncMapping((PncMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPncMapping(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, PncMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPncMapping();
            }
            case 5: {
                return this.getBase();
            }
            case 6: {
                if (resolve) {
                    return this.getContextComposition();
                }
                return this.basicGetContextComposition();
            }
            case 7: {
                return this.getContextComponents();
            }
            case 8: {
                if (resolve) {
                    return this.getTarget();
                }
                return this.basicGetTarget();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setPncMapping((PncMapping)newValue);
                return;
            }
            case 6: {
                this.setContextComposition((RootSwCompositionPrototype)newValue);
                return;
            }
            case 7: {
                this.getContextComponents().clear();
                this.getContextComponents().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.setTarget((PortGroup)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPncMapping(null);
                return;
            }
            case 6: {
                this.setContextComposition(null);
                return;
            }
            case 7: {
                this.getContextComponents().clear();
                return;
            }
            case 8: {
                this.setTarget(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getPncMapping() != null;
            }
            case 5: {
                return this.getBase() != null;
            }
            case 6: {
                return this.contextComposition != null;
            }
            case 7: {
                return this.contextComponents != null && !this.contextComponents.isEmpty();
            }
            case 8: {
                return this.target != null;
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

