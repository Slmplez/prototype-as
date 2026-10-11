/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.instancerefs.impl;

import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.system.RootSwCompositionPrototype;
import autosar40.system.System;
import autosar40.system.instancerefs.ComponentInSystemInstanceRef;
import autosar40.system.instancerefs.InstancerefsPackage;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ComponentInSystemInstanceRefImpl
extends AtpInstanceRefImpl
implements ComponentInSystemInstanceRef,
IReferringClass {
    protected RootSwCompositionPrototype contextComposition;
    protected EList<SwComponentPrototype> contextComponents;
    protected SwComponentPrototype targetComponent;

    protected ComponentInSystemInstanceRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.COMPONENT_IN_SYSTEM_INSTANCE_REF;
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
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldContextComposition, (Object)this.contextComposition));
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
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldContextComposition, (Object)this.contextComposition));
        }
    }

    @Override
    public EList<SwComponentPrototype> getContextComponents() {
        if (this.contextComponents == null) {
            this.contextComponents = new EObjectResolvingReferringEList(SwComponentPrototype.class, (InternalEObject)this, 6);
        }
        return this.contextComponents;
    }

    @Override
    public SwComponentPrototype getTargetComponent() {
        if (this.targetComponent != null && this.targetComponent.eIsProxy()) {
            InternalEObject oldTargetComponent = (InternalEObject)this.targetComponent;
            this.targetComponent = (SwComponentPrototype)this.eResolveProxy(oldTargetComponent);
            if (this.targetComponent != oldTargetComponent && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldTargetComponent, (Object)this.targetComponent));
            }
        }
        return this.targetComponent;
    }

    public SwComponentPrototype basicGetTargetComponent() {
        return this.targetComponent;
    }

    @Override
    public void setTargetComponent(SwComponentPrototype newTargetComponent) {
        SwComponentPrototype oldTargetComponent = this.targetComponent;
        this.targetComponent = newTargetComponent;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldTargetComponent, (Object)this.targetComponent));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getBase();
            }
            case 5: {
                if (resolve) {
                    return this.getContextComposition();
                }
                return this.basicGetContextComposition();
            }
            case 6: {
                return this.getContextComponents();
            }
            case 7: {
                if (resolve) {
                    return this.getTargetComponent();
                }
                return this.basicGetTargetComponent();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setContextComposition((RootSwCompositionPrototype)newValue);
                return;
            }
            case 6: {
                this.getContextComponents().clear();
                this.getContextComponents().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.setTargetComponent((SwComponentPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setContextComposition(null);
                return;
            }
            case 6: {
                this.getContextComponents().clear();
                return;
            }
            case 7: {
                this.setTargetComponent(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getBase() != null;
            }
            case 5: {
                return this.contextComposition != null;
            }
            case 6: {
                return this.contextComponents != null && !this.contextComponents.isEmpty();
            }
            case 7: {
                return this.targetComponent != null;
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

