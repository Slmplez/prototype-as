/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GPortPrototype
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
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
package autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.impl;

import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationCompositeElementDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarParameterRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.InstancerefsusagePackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.ParameterInAtomicSWCTypeInstanceRef;
import gautosar.gswcomponents.gcomponents.GPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
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
public class ParameterInAtomicSWCTypeInstanceRefImpl
extends AtpInstanceRefImpl
implements ParameterInAtomicSWCTypeInstanceRef,
IReferringClass {
    protected PortPrototype portPrototype;
    protected DataPrototype rootParameterDataPrototype;
    protected EList<ApplicationCompositeElementDataPrototype> contextDataPrototypes;
    protected DataPrototype targetDataPrototype;

    protected ParameterInAtomicSWCTypeInstanceRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefsusagePackage.Literals.PARAMETER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF;
    }

    public GPortPrototype gGetContextPort() {
        return this.getPortPrototype();
    }

    public void gSetContextPort(GPortPrototype newGContextPort) {
        this.setPortPrototype((PortPrototype)newGContextPort);
    }

    public GDataPrototype gGetTargetParameter() {
        return this.getTargetDataPrototype();
    }

    public void gSetTargetParameter(GDataPrototype newGTargetParameter) {
        this.setTargetDataPrototype((DataPrototype)newGTargetParameter);
    }

    @Override
    public AutosarParameterRef getAutosarParameterRef() {
        if (this.eContainerFeatureID() != 6) {
            return null;
        }
        return (AutosarParameterRef)this.eContainer();
    }

    public NotificationChain basicSetAutosarParameterRef(AutosarParameterRef newAutosarParameterRef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newAutosarParameterRef, 6, msgs);
        return msgs;
    }

    @Override
    public void setAutosarParameterRef(AutosarParameterRef newAutosarParameterRef) {
        if (newAutosarParameterRef != this.eInternalContainer() || this.eContainerFeatureID() != 6 && newAutosarParameterRef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newAutosarParameterRef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newAutosarParameterRef != null) {
                msgs = ((InternalEObject)newAutosarParameterRef).eInverseAdd((InternalEObject)this, 4, AutosarParameterRef.class, msgs);
            }
            if ((msgs = this.basicSetAutosarParameterRef(newAutosarParameterRef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newAutosarParameterRef, (Object)newAutosarParameterRef));
        }
    }

    @Override
    public AtomicSwComponentType getBase() {
        PortPrototype portPrototype = this.getPortPrototype();
        if (portPrototype != null) {
            return (AtomicSwComponentType)portPrototype.getSwComponentType();
        }
        return null;
    }

    @Override
    public PortPrototype getPortPrototype() {
        if (this.portPrototype != null && this.portPrototype.eIsProxy()) {
            InternalEObject oldPortPrototype = (InternalEObject)this.portPrototype;
            this.portPrototype = (PortPrototype)this.eResolveProxy(oldPortPrototype);
            if (this.portPrototype != oldPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldPortPrototype, (Object)this.portPrototype));
            }
        }
        return this.portPrototype;
    }

    public PortPrototype basicGetPortPrototype() {
        return this.portPrototype;
    }

    @Override
    public void setPortPrototype(PortPrototype newPortPrototype) {
        PortPrototype oldPortPrototype = this.portPrototype;
        this.portPrototype = newPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldPortPrototype, (Object)this.portPrototype));
        }
    }

    @Override
    public DataPrototype getRootParameterDataPrototype() {
        if (this.rootParameterDataPrototype != null && this.rootParameterDataPrototype.eIsProxy()) {
            InternalEObject oldRootParameterDataPrototype = (InternalEObject)this.rootParameterDataPrototype;
            this.rootParameterDataPrototype = (DataPrototype)this.eResolveProxy(oldRootParameterDataPrototype);
            if (this.rootParameterDataPrototype != oldRootParameterDataPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldRootParameterDataPrototype, (Object)this.rootParameterDataPrototype));
            }
        }
        return this.rootParameterDataPrototype;
    }

    public DataPrototype basicGetRootParameterDataPrototype() {
        return this.rootParameterDataPrototype;
    }

    @Override
    public void setRootParameterDataPrototype(DataPrototype newRootParameterDataPrototype) {
        DataPrototype oldRootParameterDataPrototype = this.rootParameterDataPrototype;
        this.rootParameterDataPrototype = newRootParameterDataPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldRootParameterDataPrototype, (Object)this.rootParameterDataPrototype));
        }
    }

    @Override
    public EList<ApplicationCompositeElementDataPrototype> getContextDataPrototypes() {
        if (this.contextDataPrototypes == null) {
            this.contextDataPrototypes = new EObjectResolvingReferringEList(ApplicationCompositeElementDataPrototype.class, (InternalEObject)this, 10);
        }
        return this.contextDataPrototypes;
    }

    @Override
    public DataPrototype getTargetDataPrototype() {
        if (this.targetDataPrototype != null && this.targetDataPrototype.eIsProxy()) {
            InternalEObject oldTargetDataPrototype = (InternalEObject)this.targetDataPrototype;
            this.targetDataPrototype = (DataPrototype)this.eResolveProxy(oldTargetDataPrototype);
            if (this.targetDataPrototype != oldTargetDataPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 11, (Object)oldTargetDataPrototype, (Object)this.targetDataPrototype));
            }
        }
        return this.targetDataPrototype;
    }

    public DataPrototype basicGetTargetDataPrototype() {
        return this.targetDataPrototype;
    }

    @Override
    public void setTargetDataPrototype(DataPrototype newTargetDataPrototype) {
        DataPrototype oldTargetDataPrototype = this.targetDataPrototype;
        this.targetDataPrototype = newTargetDataPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)11, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldTargetDataPrototype, (Object)this.targetDataPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetAutosarParameterRef((AutosarParameterRef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetAutosarParameterRef(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 6: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, AutosarParameterRef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetContextPort();
            }
            case 5: {
                return this.gGetTargetParameter();
            }
            case 6: {
                return this.getAutosarParameterRef();
            }
            case 7: {
                return this.getBase();
            }
            case 8: {
                if (resolve) {
                    return this.getPortPrototype();
                }
                return this.basicGetPortPrototype();
            }
            case 9: {
                if (resolve) {
                    return this.getRootParameterDataPrototype();
                }
                return this.basicGetRootParameterDataPrototype();
            }
            case 10: {
                return this.getContextDataPrototypes();
            }
            case 11: {
                if (resolve) {
                    return this.getTargetDataPrototype();
                }
                return this.basicGetTargetDataPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gSetContextPort((GPortPrototype)newValue);
                return;
            }
            case 5: {
                this.gSetTargetParameter((GDataPrototype)newValue);
                return;
            }
            case 6: {
                this.setAutosarParameterRef((AutosarParameterRef)newValue);
                return;
            }
            case 8: {
                this.setPortPrototype((PortPrototype)newValue);
                return;
            }
            case 9: {
                this.setRootParameterDataPrototype((DataPrototype)newValue);
                return;
            }
            case 10: {
                this.getContextDataPrototypes().clear();
                this.getContextDataPrototypes().addAll((Collection)newValue);
                return;
            }
            case 11: {
                this.setTargetDataPrototype((DataPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gSetContextPort(null);
                return;
            }
            case 5: {
                this.gSetTargetParameter(null);
                return;
            }
            case 6: {
                this.setAutosarParameterRef(null);
                return;
            }
            case 8: {
                this.setPortPrototype(null);
                return;
            }
            case 9: {
                this.setRootParameterDataPrototype(null);
                return;
            }
            case 10: {
                this.getContextDataPrototypes().clear();
                return;
            }
            case 11: {
                this.setTargetDataPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.gGetContextPort() != null;
            }
            case 5: {
                return this.gGetTargetParameter() != null;
            }
            case 6: {
                return this.getAutosarParameterRef() != null;
            }
            case 7: {
                return this.getBase() != null;
            }
            case 8: {
                return this.portPrototype != null;
            }
            case 9: {
                return this.rootParameterDataPrototype != null;
            }
            case 10: {
                return this.contextDataPrototypes != null && !this.contextDataPrototypes.isEmpty();
            }
            case 11: {
                return this.targetDataPrototype != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GParameterInAtomicSwcIRef.class) {
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
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GParameterInAtomicSwcIRef.class) {
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

