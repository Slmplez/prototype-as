/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GRPortPrototype
 *  gautosar.gswcomponents.gcomposition.GSwComponentPrototype
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
package autosar40.swcomponent.composition.instancerefs.impl;

import autosar40.swcomponent.components.RPortPrototype;
import autosar40.swcomponent.composition.AssemblySwConnector;
import autosar40.swcomponent.composition.CompositionSwComponentType;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.swcomponent.composition.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.composition.instancerefs.RPortInCompositionInstanceRef;
import autosar40.swcomponent.composition.instancerefs.impl.PortInCompositionTypeInstanceRefImpl;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomposition.GSwComponentPrototype;
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
public class RPortInCompositionInstanceRefImpl
extends PortInCompositionTypeInstanceRefImpl
implements RPortInCompositionInstanceRef,
IReferringClass {
    protected SwComponentPrototype contextComponent;
    protected RPortPrototype targetRPort;

    protected RPortInCompositionInstanceRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.RPORT_IN_COMPOSITION_INSTANCE_REF;
    }

    public GRPortPrototype gGetTargetRPort() {
        return this.getTargetRPort();
    }

    public void gSetTargetRPort(GRPortPrototype newGTargetRPort) {
        this.setTargetRPort((RPortPrototype)newGTargetRPort);
    }

    public GSwComponentPrototype gGetContextComponent() {
        return this.getContextComponent();
    }

    public void gSetContextComponent(GSwComponentPrototype newGContextComponent) {
        this.setContextComponent((SwComponentPrototype)newGContextComponent);
    }

    @Override
    public AssemblySwConnector getAssemblySwConnector() {
        if (this.eContainerFeatureID() != 7) {
            return null;
        }
        return (AssemblySwConnector)this.eContainer();
    }

    public NotificationChain basicSetAssemblySwConnector(AssemblySwConnector newAssemblySwConnector, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newAssemblySwConnector, 7, msgs);
        return msgs;
    }

    @Override
    public void setAssemblySwConnector(AssemblySwConnector newAssemblySwConnector) {
        if (newAssemblySwConnector != this.eInternalContainer() || this.eContainerFeatureID() != 7 && newAssemblySwConnector != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newAssemblySwConnector)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newAssemblySwConnector != null) {
                msgs = ((InternalEObject)newAssemblySwConnector).eInverseAdd((InternalEObject)this, 25, AssemblySwConnector.class, msgs);
            }
            if ((msgs = this.basicSetAssemblySwConnector(newAssemblySwConnector, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newAssemblySwConnector, (Object)newAssemblySwConnector));
        }
    }

    @Override
    public SwComponentPrototype getContextComponent() {
        if (this.contextComponent != null && this.contextComponent.eIsProxy()) {
            InternalEObject oldContextComponent = (InternalEObject)this.contextComponent;
            this.contextComponent = (SwComponentPrototype)this.eResolveProxy(oldContextComponent);
            if (this.contextComponent != oldContextComponent && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldContextComponent, (Object)this.contextComponent));
            }
        }
        return this.contextComponent;
    }

    public SwComponentPrototype basicGetContextComponent() {
        return this.contextComponent;
    }

    @Override
    public void setContextComponent(SwComponentPrototype newContextComponent) {
        SwComponentPrototype oldContextComponent = this.contextComponent;
        this.contextComponent = newContextComponent;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldContextComponent, (Object)this.contextComponent));
        }
    }

    @Override
    public RPortPrototype getTargetRPort() {
        if (this.targetRPort != null && this.targetRPort.eIsProxy()) {
            InternalEObject oldTargetRPort = (InternalEObject)this.targetRPort;
            this.targetRPort = (RPortPrototype)this.eResolveProxy(oldTargetRPort);
            if (this.targetRPort != oldTargetRPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldTargetRPort, (Object)this.targetRPort));
            }
        }
        return this.targetRPort;
    }

    public RPortPrototype basicGetTargetRPort() {
        return this.targetRPort;
    }

    @Override
    public void setTargetRPort(RPortPrototype newTargetRPort) {
        RPortPrototype oldTargetRPort = this.targetRPort;
        this.targetRPort = newTargetRPort;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldTargetRPort, (Object)this.targetRPort));
        }
    }

    @Override
    public CompositionSwComponentType getBase() {
        SwComponentPrototype contextComponent = this.getContextComponent();
        if (contextComponent != null) {
            return contextComponent.getCompositionSwComponentType();
        }
        return null;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetAssemblySwConnector((AssemblySwConnector)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return this.basicSetAssemblySwConnector(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 7: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, AssemblySwConnector.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetTargetRPort();
            }
            case 6: {
                return this.gGetContextComponent();
            }
            case 7: {
                return this.getAssemblySwConnector();
            }
            case 8: {
                if (resolve) {
                    return this.getContextComponent();
                }
                return this.basicGetContextComponent();
            }
            case 9: {
                if (resolve) {
                    return this.getTargetRPort();
                }
                return this.basicGetTargetRPort();
            }
            case 10: {
                return this.getBase();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.gSetTargetRPort((GRPortPrototype)newValue);
                return;
            }
            case 6: {
                this.gSetContextComponent((GSwComponentPrototype)newValue);
                return;
            }
            case 7: {
                this.setAssemblySwConnector((AssemblySwConnector)newValue);
                return;
            }
            case 8: {
                this.setContextComponent((SwComponentPrototype)newValue);
                return;
            }
            case 9: {
                this.setTargetRPort((RPortPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.gSetTargetRPort(null);
                return;
            }
            case 6: {
                this.gSetContextComponent(null);
                return;
            }
            case 7: {
                this.setAssemblySwConnector(null);
                return;
            }
            case 8: {
                this.setContextComponent(null);
                return;
            }
            case 9: {
                this.setTargetRPort(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.gGetTargetRPort() != null;
            }
            case 6: {
                return this.gGetContextComponent() != null;
            }
            case 7: {
                return this.getAssemblySwConnector() != null;
            }
            case 8: {
                return this.contextComponent != null;
            }
            case 9: {
                return this.targetRPort != null;
            }
            case 10: {
                return this.getBase() != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GRPortInCompositionIRef.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 2;
                }
                case 6: {
                    return 3;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GRPortInCompositionIRef.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 5;
                }
                case 3: {
                    return 6;
                }
            }
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

