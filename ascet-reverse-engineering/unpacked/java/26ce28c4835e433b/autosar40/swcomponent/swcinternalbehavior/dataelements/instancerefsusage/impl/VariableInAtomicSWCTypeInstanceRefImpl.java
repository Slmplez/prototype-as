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
package autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.impl;

import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationCompositeElementDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.InstancerefsusagePackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.VariableInAtomicSWCTypeInstanceRef;
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
public class VariableInAtomicSWCTypeInstanceRefImpl
extends AtpInstanceRefImpl
implements VariableInAtomicSWCTypeInstanceRef,
IReferringClass {
    protected PortPrototype portPrototype;
    protected VariableDataPrototype rootVariableDataPrototype;
    protected EList<ApplicationCompositeElementDataPrototype> contextDataPrototypes;
    protected DataPrototype targetDataPrototype;

    protected VariableInAtomicSWCTypeInstanceRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefsusagePackage.Literals.VARIABLE_IN_ATOMIC_SWC_TYPE_INSTANCE_REF;
    }

    @Override
    public AutosarVariableRef getAutosarVariableRef() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (AutosarVariableRef)this.eContainer();
    }

    public NotificationChain basicSetAutosarVariableRef(AutosarVariableRef newAutosarVariableRef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newAutosarVariableRef, 4, msgs);
        return msgs;
    }

    @Override
    public void setAutosarVariableRef(AutosarVariableRef newAutosarVariableRef) {
        if (newAutosarVariableRef != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newAutosarVariableRef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newAutosarVariableRef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newAutosarVariableRef != null) {
                msgs = ((InternalEObject)newAutosarVariableRef).eInverseAdd((InternalEObject)this, 5, AutosarVariableRef.class, msgs);
            }
            if ((msgs = this.basicSetAutosarVariableRef(newAutosarVariableRef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newAutosarVariableRef, (Object)newAutosarVariableRef));
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
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldPortPrototype, (Object)this.portPrototype));
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
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPortPrototype, (Object)this.portPrototype));
        }
    }

    @Override
    public VariableDataPrototype getRootVariableDataPrototype() {
        if (this.rootVariableDataPrototype != null && this.rootVariableDataPrototype.eIsProxy()) {
            InternalEObject oldRootVariableDataPrototype = (InternalEObject)this.rootVariableDataPrototype;
            this.rootVariableDataPrototype = (VariableDataPrototype)this.eResolveProxy(oldRootVariableDataPrototype);
            if (this.rootVariableDataPrototype != oldRootVariableDataPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldRootVariableDataPrototype, (Object)this.rootVariableDataPrototype));
            }
        }
        return this.rootVariableDataPrototype;
    }

    public VariableDataPrototype basicGetRootVariableDataPrototype() {
        return this.rootVariableDataPrototype;
    }

    @Override
    public void setRootVariableDataPrototype(VariableDataPrototype newRootVariableDataPrototype) {
        VariableDataPrototype oldRootVariableDataPrototype = this.rootVariableDataPrototype;
        this.rootVariableDataPrototype = newRootVariableDataPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldRootVariableDataPrototype, (Object)this.rootVariableDataPrototype));
        }
    }

    @Override
    public EList<ApplicationCompositeElementDataPrototype> getContextDataPrototypes() {
        if (this.contextDataPrototypes == null) {
            this.contextDataPrototypes = new EObjectResolvingReferringEList(ApplicationCompositeElementDataPrototype.class, (InternalEObject)this, 8);
        }
        return this.contextDataPrototypes;
    }

    @Override
    public DataPrototype getTargetDataPrototype() {
        if (this.targetDataPrototype != null && this.targetDataPrototype.eIsProxy()) {
            InternalEObject oldTargetDataPrototype = (InternalEObject)this.targetDataPrototype;
            this.targetDataPrototype = (DataPrototype)this.eResolveProxy(oldTargetDataPrototype);
            if (this.targetDataPrototype != oldTargetDataPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldTargetDataPrototype, (Object)this.targetDataPrototype));
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
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldTargetDataPrototype, (Object)this.targetDataPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetAutosarVariableRef((AutosarVariableRef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetAutosarVariableRef(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, AutosarVariableRef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getAutosarVariableRef();
            }
            case 5: {
                return this.getBase();
            }
            case 6: {
                if (resolve) {
                    return this.getPortPrototype();
                }
                return this.basicGetPortPrototype();
            }
            case 7: {
                if (resolve) {
                    return this.getRootVariableDataPrototype();
                }
                return this.basicGetRootVariableDataPrototype();
            }
            case 8: {
                return this.getContextDataPrototypes();
            }
            case 9: {
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
                this.setAutosarVariableRef((AutosarVariableRef)newValue);
                return;
            }
            case 6: {
                this.setPortPrototype((PortPrototype)newValue);
                return;
            }
            case 7: {
                this.setRootVariableDataPrototype((VariableDataPrototype)newValue);
                return;
            }
            case 8: {
                this.getContextDataPrototypes().clear();
                this.getContextDataPrototypes().addAll((Collection)newValue);
                return;
            }
            case 9: {
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
                this.setAutosarVariableRef(null);
                return;
            }
            case 6: {
                this.setPortPrototype(null);
                return;
            }
            case 7: {
                this.setRootVariableDataPrototype(null);
                return;
            }
            case 8: {
                this.getContextDataPrototypes().clear();
                return;
            }
            case 9: {
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
                return this.getAutosarVariableRef() != null;
            }
            case 5: {
                return this.getBase() != null;
            }
            case 6: {
                return this.portPrototype != null;
            }
            case 7: {
                return this.rootVariableDataPrototype != null;
            }
            case 8: {
                return this.contextDataPrototypes != null && !this.contextDataPrototypes.isEmpty();
            }
            case 9: {
                return this.targetDataPrototype != null;
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

