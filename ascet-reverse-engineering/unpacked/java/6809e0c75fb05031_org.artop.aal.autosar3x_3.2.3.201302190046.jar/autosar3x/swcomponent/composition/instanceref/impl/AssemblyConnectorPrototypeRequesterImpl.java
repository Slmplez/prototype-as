/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GRPortPrototype
 *  gautosar.gswcomponents.gcomposition.GSwComponentPrototype
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeRequesterIRef
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef
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
package autosar3x.swcomponent.composition.instanceref.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.components.RPortPrototype;
import autosar3x.swcomponent.composition.AssemblyConnectorPrototype;
import autosar3x.swcomponent.composition.ComponentPrototype;
import autosar3x.swcomponent.composition.instanceref.AssemblyConnectorPrototypeRequester;
import autosar3x.swcomponent.composition.instanceref.InstancerefPackage;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomposition.GSwComponentPrototype;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeRequesterIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AssemblyConnectorPrototypeRequesterImpl
extends ARObjectImpl
implements AssemblyConnectorPrototypeRequester,
IReferringClass {
    protected ComponentPrototype componentPrototype;
    protected RPortPrototype rPortPrototype;

    protected AssemblyConnectorPrototypeRequesterImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.ASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER;
    }

    public GRPortPrototype gGetTargetRPort() {
        return this.getRPortPrototype();
    }

    public void gSetTargetRPort(GRPortPrototype newGTargetRPort) {
        this.setRPortPrototype((RPortPrototype)newGTargetRPort);
    }

    public GSwComponentPrototype gGetContextComponent() {
        return this.getComponentPrototype();
    }

    public void gSetContextComponent(GSwComponentPrototype newGContextComponent) {
        this.setComponentPrototype((ComponentPrototype)newGContextComponent);
    }

    @Override
    public AssemblyConnectorPrototype getAssemblyConnectorPrototype() {
        if (this.eContainerFeatureID() != 6) {
            return null;
        }
        return (AssemblyConnectorPrototype)this.eContainer();
    }

    public NotificationChain basicSetAssemblyConnectorPrototype(AssemblyConnectorPrototype newAssemblyConnectorPrototype, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newAssemblyConnectorPrototype, 6, msgs);
        return msgs;
    }

    @Override
    public void setAssemblyConnectorPrototype(AssemblyConnectorPrototype newAssemblyConnectorPrototype) {
        if (newAssemblyConnectorPrototype != this.eInternalContainer() || this.eContainerFeatureID() != 6 && newAssemblyConnectorPrototype != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newAssemblyConnectorPrototype)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newAssemblyConnectorPrototype != null) {
                msgs = ((InternalEObject)newAssemblyConnectorPrototype).eInverseAdd((InternalEObject)this, 21, AssemblyConnectorPrototype.class, msgs);
            }
            if ((msgs = this.basicSetAssemblyConnectorPrototype(newAssemblyConnectorPrototype, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newAssemblyConnectorPrototype, (Object)newAssemblyConnectorPrototype));
        }
    }

    @Override
    public ComponentPrototype getComponentPrototype() {
        if (this.componentPrototype != null && this.componentPrototype.eIsProxy()) {
            InternalEObject oldComponentPrototype = (InternalEObject)this.componentPrototype;
            this.componentPrototype = (ComponentPrototype)this.eResolveProxy(oldComponentPrototype);
            if (this.componentPrototype != oldComponentPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldComponentPrototype, (Object)this.componentPrototype));
            }
        }
        return this.componentPrototype;
    }

    public ComponentPrototype basicGetComponentPrototype() {
        return this.componentPrototype;
    }

    @Override
    public void setComponentPrototype(ComponentPrototype newComponentPrototype) {
        ComponentPrototype oldComponentPrototype = this.componentPrototype;
        this.componentPrototype = newComponentPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldComponentPrototype, (Object)this.componentPrototype));
        }
    }

    @Override
    public RPortPrototype getRPortPrototype() {
        if (this.rPortPrototype != null && this.rPortPrototype.eIsProxy()) {
            InternalEObject oldRPortPrototype = (InternalEObject)this.rPortPrototype;
            this.rPortPrototype = (RPortPrototype)this.eResolveProxy(oldRPortPrototype);
            if (this.rPortPrototype != oldRPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldRPortPrototype, (Object)this.rPortPrototype));
            }
        }
        return this.rPortPrototype;
    }

    public RPortPrototype basicGetRPortPrototype() {
        return this.rPortPrototype;
    }

    @Override
    public void setRPortPrototype(RPortPrototype newRPortPrototype) {
        RPortPrototype oldRPortPrototype = this.rPortPrototype;
        this.rPortPrototype = newRPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldRPortPrototype, (Object)this.rPortPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetAssemblyConnectorPrototype((AssemblyConnectorPrototype)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetAssemblyConnectorPrototype(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 6: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, AssemblyConnectorPrototype.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetTargetRPort();
            }
            case 5: {
                return this.gGetContextComponent();
            }
            case 6: {
                return this.getAssemblyConnectorPrototype();
            }
            case 7: {
                if (resolve) {
                    return this.getComponentPrototype();
                }
                return this.basicGetComponentPrototype();
            }
            case 8: {
                if (resolve) {
                    return this.getRPortPrototype();
                }
                return this.basicGetRPortPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gSetTargetRPort((GRPortPrototype)newValue);
                return;
            }
            case 5: {
                this.gSetContextComponent((GSwComponentPrototype)newValue);
                return;
            }
            case 6: {
                this.setAssemblyConnectorPrototype((AssemblyConnectorPrototype)newValue);
                return;
            }
            case 7: {
                this.setComponentPrototype((ComponentPrototype)newValue);
                return;
            }
            case 8: {
                this.setRPortPrototype((RPortPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gSetTargetRPort(null);
                return;
            }
            case 5: {
                this.gSetContextComponent(null);
                return;
            }
            case 6: {
                this.setAssemblyConnectorPrototype(null);
                return;
            }
            case 7: {
                this.setComponentPrototype(null);
                return;
            }
            case 8: {
                this.setRPortPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.gGetTargetRPort() != null;
            }
            case 5: {
                return this.gGetContextComponent() != null;
            }
            case 6: {
                return this.getAssemblyConnectorPrototype() != null;
            }
            case 7: {
                return this.componentPrototype != null;
            }
            case 8: {
                return this.rPortPrototype != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GRPortInCompositionIRef.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
                case 5: {
                    return 3;
                }
            }
            return -1;
        }
        if (baseClass == GAssemblyConnectorPrototypeRequesterIRef.class) {
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GRPortInCompositionIRef.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
                case 3: {
                    return 5;
                }
            }
            return -1;
        }
        if (baseClass == GAssemblyConnectorPrototypeRequesterIRef.class) {
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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

