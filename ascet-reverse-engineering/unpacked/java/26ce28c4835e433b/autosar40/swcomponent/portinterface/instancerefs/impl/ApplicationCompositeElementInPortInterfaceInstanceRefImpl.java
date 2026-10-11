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
package autosar40.swcomponent.portinterface.instancerefs.impl;

import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationCompositeElementDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.impl.ParameterDataPrototypeImpl;
import autosar40.swcomponent.datatype.dataprototypes.impl.VariableDataPrototypeImpl;
import autosar40.swcomponent.portinterface.ApplicationCompositeDataTypeSubElementRef;
import autosar40.swcomponent.portinterface.DataInterface;
import autosar40.swcomponent.portinterface.instancerefs.ApplicationCompositeElementInPortInterfaceInstanceRef;
import autosar40.swcomponent.portinterface.instancerefs.InstancerefsPackage;
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
public class ApplicationCompositeElementInPortInterfaceInstanceRefImpl
extends AtpInstanceRefImpl
implements ApplicationCompositeElementInPortInterfaceInstanceRef,
IReferringClass {
    protected AutosarDataPrototype rootDataPrototype;
    protected EList<ApplicationCompositeElementDataPrototype> contextDataPrototypes;
    protected ApplicationCompositeElementDataPrototype targetDataPrototype;

    protected ApplicationCompositeElementInPortInterfaceInstanceRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF;
    }

    @Override
    public ApplicationCompositeDataTypeSubElementRef getApplicationCompositeDataTypeSubElementRef() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ApplicationCompositeDataTypeSubElementRef)this.eContainer();
    }

    public NotificationChain basicSetApplicationCompositeDataTypeSubElementRef(ApplicationCompositeDataTypeSubElementRef newApplicationCompositeDataTypeSubElementRef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newApplicationCompositeDataTypeSubElementRef, 4, msgs);
        return msgs;
    }

    @Override
    public void setApplicationCompositeDataTypeSubElementRef(ApplicationCompositeDataTypeSubElementRef newApplicationCompositeDataTypeSubElementRef) {
        if (newApplicationCompositeDataTypeSubElementRef != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newApplicationCompositeDataTypeSubElementRef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newApplicationCompositeDataTypeSubElementRef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newApplicationCompositeDataTypeSubElementRef != null) {
                msgs = ((InternalEObject)newApplicationCompositeDataTypeSubElementRef).eInverseAdd((InternalEObject)this, 5, ApplicationCompositeDataTypeSubElementRef.class, msgs);
            }
            if ((msgs = this.basicSetApplicationCompositeDataTypeSubElementRef(newApplicationCompositeDataTypeSubElementRef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newApplicationCompositeDataTypeSubElementRef, (Object)newApplicationCompositeDataTypeSubElementRef));
        }
    }

    @Override
    public AutosarDataPrototype getRootDataPrototype() {
        if (this.rootDataPrototype != null && this.rootDataPrototype.eIsProxy()) {
            InternalEObject oldRootDataPrototype = (InternalEObject)this.rootDataPrototype;
            this.rootDataPrototype = (AutosarDataPrototype)this.eResolveProxy(oldRootDataPrototype);
            if (this.rootDataPrototype != oldRootDataPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldRootDataPrototype, (Object)this.rootDataPrototype));
            }
        }
        return this.rootDataPrototype;
    }

    public AutosarDataPrototype basicGetRootDataPrototype() {
        return this.rootDataPrototype;
    }

    @Override
    public void setRootDataPrototype(AutosarDataPrototype newRootDataPrototype) {
        AutosarDataPrototype oldRootDataPrototype = this.rootDataPrototype;
        this.rootDataPrototype = newRootDataPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldRootDataPrototype, (Object)this.rootDataPrototype));
        }
    }

    @Override
    public DataInterface getBase() {
        AutosarDataPrototype rootDataPrototype = this.getRootDataPrototype();
        if (rootDataPrototype != null) {
            if (rootDataPrototype instanceof ParameterDataPrototypeImpl) {
                return (DataInterface)((ParameterDataPrototypeImpl)rootDataPrototype).eContainer();
            }
            if (rootDataPrototype instanceof VariableDataPrototypeImpl) {
                return (DataInterface)((VariableDataPrototypeImpl)rootDataPrototype).eContainer();
            }
            if (rootDataPrototype instanceof VariableDataPrototypeImpl) {
                return (DataInterface)((VariableDataPrototypeImpl)rootDataPrototype).eContainer();
            }
        }
        return null;
    }

    @Override
    public EList<ApplicationCompositeElementDataPrototype> getContextDataPrototypes() {
        if (this.contextDataPrototypes == null) {
            this.contextDataPrototypes = new EObjectResolvingReferringEList(ApplicationCompositeElementDataPrototype.class, (InternalEObject)this, 7);
        }
        return this.contextDataPrototypes;
    }

    @Override
    public ApplicationCompositeElementDataPrototype getTargetDataPrototype() {
        if (this.targetDataPrototype != null && this.targetDataPrototype.eIsProxy()) {
            InternalEObject oldTargetDataPrototype = (InternalEObject)this.targetDataPrototype;
            this.targetDataPrototype = (ApplicationCompositeElementDataPrototype)this.eResolveProxy(oldTargetDataPrototype);
            if (this.targetDataPrototype != oldTargetDataPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldTargetDataPrototype, (Object)this.targetDataPrototype));
            }
        }
        return this.targetDataPrototype;
    }

    public ApplicationCompositeElementDataPrototype basicGetTargetDataPrototype() {
        return this.targetDataPrototype;
    }

    @Override
    public void setTargetDataPrototype(ApplicationCompositeElementDataPrototype newTargetDataPrototype) {
        ApplicationCompositeElementDataPrototype oldTargetDataPrototype = this.targetDataPrototype;
        this.targetDataPrototype = newTargetDataPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldTargetDataPrototype, (Object)this.targetDataPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetApplicationCompositeDataTypeSubElementRef((ApplicationCompositeDataTypeSubElementRef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetApplicationCompositeDataTypeSubElementRef(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, ApplicationCompositeDataTypeSubElementRef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getApplicationCompositeDataTypeSubElementRef();
            }
            case 5: {
                if (resolve) {
                    return this.getRootDataPrototype();
                }
                return this.basicGetRootDataPrototype();
            }
            case 6: {
                return this.getBase();
            }
            case 7: {
                return this.getContextDataPrototypes();
            }
            case 8: {
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
                this.setApplicationCompositeDataTypeSubElementRef((ApplicationCompositeDataTypeSubElementRef)newValue);
                return;
            }
            case 5: {
                this.setRootDataPrototype((AutosarDataPrototype)newValue);
                return;
            }
            case 7: {
                this.getContextDataPrototypes().clear();
                this.getContextDataPrototypes().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.setTargetDataPrototype((ApplicationCompositeElementDataPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setApplicationCompositeDataTypeSubElementRef(null);
                return;
            }
            case 5: {
                this.setRootDataPrototype(null);
                return;
            }
            case 7: {
                this.getContextDataPrototypes().clear();
                return;
            }
            case 8: {
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
                return this.getApplicationCompositeDataTypeSubElementRef() != null;
            }
            case 5: {
                return this.rootDataPrototype != null;
            }
            case 6: {
                return this.getBase() != null;
            }
            case 7: {
                return this.contextDataPrototypes != null && !this.contextDataPrototypes.isEmpty();
            }
            case 8: {
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

