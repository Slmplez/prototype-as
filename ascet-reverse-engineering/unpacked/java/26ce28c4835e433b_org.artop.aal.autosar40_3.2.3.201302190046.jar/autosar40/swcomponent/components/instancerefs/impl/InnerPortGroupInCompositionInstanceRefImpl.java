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
package autosar40.swcomponent.components.instancerefs.impl;

import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import autosar40.swcomponent.components.PortGroup;
import autosar40.swcomponent.components.instancerefs.InnerPortGroupInCompositionInstanceRef;
import autosar40.swcomponent.components.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.composition.CompositionSwComponentType;
import autosar40.swcomponent.composition.SwComponentPrototype;
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
public class InnerPortGroupInCompositionInstanceRefImpl
extends AtpInstanceRefImpl
implements InnerPortGroupInCompositionInstanceRef,
IReferringClass {
    protected EList<SwComponentPrototype> contexts;
    protected PortGroup target;

    protected InnerPortGroupInCompositionInstanceRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.INNER_PORT_GROUP_IN_COMPOSITION_INSTANCE_REF;
    }

    @Override
    public PortGroup getPortGroup() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (PortGroup)this.eContainer();
    }

    public NotificationChain basicSetPortGroup(PortGroup newPortGroup, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPortGroup, 4, msgs);
        return msgs;
    }

    @Override
    public void setPortGroup(PortGroup newPortGroup) {
        if (newPortGroup != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newPortGroup != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPortGroup)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPortGroup != null) {
                msgs = ((InternalEObject)newPortGroup).eInverseAdd((InternalEObject)this, 20, PortGroup.class, msgs);
            }
            if ((msgs = this.basicSetPortGroup(newPortGroup, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPortGroup, (Object)newPortGroup));
        }
    }

    @Override
    public CompositionSwComponentType getBase() {
        EList<SwComponentPrototype> contexts = this.getContexts();
        SwComponentPrototype context = null;
        if (!contexts.isEmpty()) {
            context = (SwComponentPrototype)contexts.get(0);
        }
        if (context != null) {
            return context.getCompositionSwComponentType();
        }
        return null;
    }

    @Override
    public EList<SwComponentPrototype> getContexts() {
        if (this.contexts == null) {
            this.contexts = new EObjectResolvingReferringEList(SwComponentPrototype.class, (InternalEObject)this, 6);
        }
        return this.contexts;
    }

    @Override
    public PortGroup getTarget() {
        if (this.target != null && this.target.eIsProxy()) {
            InternalEObject oldTarget = (InternalEObject)this.target;
            this.target = (PortGroup)this.eResolveProxy(oldTarget);
            if (this.target != oldTarget && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldTarget, (Object)this.target));
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
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldTarget, (Object)this.target));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPortGroup((PortGroup)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPortGroup(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, PortGroup.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPortGroup();
            }
            case 5: {
                return this.getBase();
            }
            case 6: {
                return this.getContexts();
            }
            case 7: {
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
                this.setPortGroup((PortGroup)newValue);
                return;
            }
            case 6: {
                this.getContexts().clear();
                this.getContexts().addAll((Collection)newValue);
                return;
            }
            case 7: {
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
                this.setPortGroup(null);
                return;
            }
            case 6: {
                this.getContexts().clear();
                return;
            }
            case 7: {
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
                return this.getPortGroup() != null;
            }
            case 5: {
                return this.getBase() != null;
            }
            case 6: {
                return this.contexts != null && !this.contexts.isEmpty();
            }
            case 7: {
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

