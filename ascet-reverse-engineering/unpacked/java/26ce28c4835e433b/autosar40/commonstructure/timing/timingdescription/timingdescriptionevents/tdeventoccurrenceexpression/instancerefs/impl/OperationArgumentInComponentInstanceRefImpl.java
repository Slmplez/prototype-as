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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.impl;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.InstancerefsPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.OperationArgumentInComponentInstanceRef;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarOperationArgumentInstance;
import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationCompositeElementDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.portinterface.ArgumentDataPrototype;
import autosar40.swcomponent.portinterface.ClientServerOperation;
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
public class OperationArgumentInComponentInstanceRefImpl
extends AtpInstanceRefImpl
implements OperationArgumentInComponentInstanceRef,
IReferringClass {
    protected EList<SwComponentPrototype> contextComponents;
    protected PortPrototype contextPortPrototype;
    protected ClientServerOperation contextOperation;
    protected ArgumentDataPrototype rootArgumentDataPrototype;
    protected EList<ApplicationCompositeElementDataPrototype> contextDataPrototypes;
    protected DataPrototype targetDataPrototype;

    protected OperationArgumentInComponentInstanceRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF;
    }

    @Override
    public AutosarOperationArgumentInstance getAutosarOperationArgumentInstance() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (AutosarOperationArgumentInstance)this.eContainer();
    }

    public NotificationChain basicSetAutosarOperationArgumentInstance(AutosarOperationArgumentInstance newAutosarOperationArgumentInstance, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newAutosarOperationArgumentInstance, 4, msgs);
        return msgs;
    }

    @Override
    public void setAutosarOperationArgumentInstance(AutosarOperationArgumentInstance newAutosarOperationArgumentInstance) {
        if (newAutosarOperationArgumentInstance != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newAutosarOperationArgumentInstance != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newAutosarOperationArgumentInstance)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newAutosarOperationArgumentInstance != null) {
                msgs = ((InternalEObject)newAutosarOperationArgumentInstance).eInverseAdd((InternalEObject)this, 19, AutosarOperationArgumentInstance.class, msgs);
            }
            if ((msgs = this.basicSetAutosarOperationArgumentInstance(newAutosarOperationArgumentInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newAutosarOperationArgumentInstance, (Object)newAutosarOperationArgumentInstance));
        }
    }

    @Override
    public SwComponentType getBase() {
        EList<SwComponentPrototype> contextComponents = this.getContextComponents();
        SwComponentPrototype contextComponent = null;
        if (!contextComponents.isEmpty()) {
            contextComponent = (SwComponentPrototype)contextComponents.get(0);
        }
        if (contextComponent != null) {
            return contextComponent.getType();
        }
        return null;
    }

    @Override
    public EList<SwComponentPrototype> getContextComponents() {
        if (this.contextComponents == null) {
            this.contextComponents = new EObjectResolvingReferringEList(SwComponentPrototype.class, (InternalEObject)this, 6);
        }
        return this.contextComponents;
    }

    @Override
    public PortPrototype getContextPortPrototype() {
        if (this.contextPortPrototype != null && this.contextPortPrototype.eIsProxy()) {
            InternalEObject oldContextPortPrototype = (InternalEObject)this.contextPortPrototype;
            this.contextPortPrototype = (PortPrototype)this.eResolveProxy(oldContextPortPrototype);
            if (this.contextPortPrototype != oldContextPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldContextPortPrototype, (Object)this.contextPortPrototype));
            }
        }
        return this.contextPortPrototype;
    }

    public PortPrototype basicGetContextPortPrototype() {
        return this.contextPortPrototype;
    }

    @Override
    public void setContextPortPrototype(PortPrototype newContextPortPrototype) {
        PortPrototype oldContextPortPrototype = this.contextPortPrototype;
        this.contextPortPrototype = newContextPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldContextPortPrototype, (Object)this.contextPortPrototype));
        }
    }

    @Override
    public ClientServerOperation getContextOperation() {
        if (this.contextOperation != null && this.contextOperation.eIsProxy()) {
            InternalEObject oldContextOperation = (InternalEObject)this.contextOperation;
            this.contextOperation = (ClientServerOperation)this.eResolveProxy(oldContextOperation);
            if (this.contextOperation != oldContextOperation && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldContextOperation, (Object)this.contextOperation));
            }
        }
        return this.contextOperation;
    }

    public ClientServerOperation basicGetContextOperation() {
        return this.contextOperation;
    }

    @Override
    public void setContextOperation(ClientServerOperation newContextOperation) {
        ClientServerOperation oldContextOperation = this.contextOperation;
        this.contextOperation = newContextOperation;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldContextOperation, (Object)this.contextOperation));
        }
    }

    @Override
    public ArgumentDataPrototype getRootArgumentDataPrototype() {
        if (this.rootArgumentDataPrototype != null && this.rootArgumentDataPrototype.eIsProxy()) {
            InternalEObject oldRootArgumentDataPrototype = (InternalEObject)this.rootArgumentDataPrototype;
            this.rootArgumentDataPrototype = (ArgumentDataPrototype)this.eResolveProxy(oldRootArgumentDataPrototype);
            if (this.rootArgumentDataPrototype != oldRootArgumentDataPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldRootArgumentDataPrototype, (Object)this.rootArgumentDataPrototype));
            }
        }
        return this.rootArgumentDataPrototype;
    }

    public ArgumentDataPrototype basicGetRootArgumentDataPrototype() {
        return this.rootArgumentDataPrototype;
    }

    @Override
    public void setRootArgumentDataPrototype(ArgumentDataPrototype newRootArgumentDataPrototype) {
        ArgumentDataPrototype oldRootArgumentDataPrototype = this.rootArgumentDataPrototype;
        this.rootArgumentDataPrototype = newRootArgumentDataPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldRootArgumentDataPrototype, (Object)this.rootArgumentDataPrototype));
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
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetAutosarOperationArgumentInstance((AutosarOperationArgumentInstance)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetAutosarOperationArgumentInstance(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, AutosarOperationArgumentInstance.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getAutosarOperationArgumentInstance();
            }
            case 5: {
                return this.getBase();
            }
            case 6: {
                return this.getContextComponents();
            }
            case 7: {
                if (resolve) {
                    return this.getContextPortPrototype();
                }
                return this.basicGetContextPortPrototype();
            }
            case 8: {
                if (resolve) {
                    return this.getContextOperation();
                }
                return this.basicGetContextOperation();
            }
            case 9: {
                if (resolve) {
                    return this.getRootArgumentDataPrototype();
                }
                return this.basicGetRootArgumentDataPrototype();
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
                this.setAutosarOperationArgumentInstance((AutosarOperationArgumentInstance)newValue);
                return;
            }
            case 6: {
                this.getContextComponents().clear();
                this.getContextComponents().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.setContextPortPrototype((PortPrototype)newValue);
                return;
            }
            case 8: {
                this.setContextOperation((ClientServerOperation)newValue);
                return;
            }
            case 9: {
                this.setRootArgumentDataPrototype((ArgumentDataPrototype)newValue);
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
                this.setAutosarOperationArgumentInstance(null);
                return;
            }
            case 6: {
                this.getContextComponents().clear();
                return;
            }
            case 7: {
                this.setContextPortPrototype(null);
                return;
            }
            case 8: {
                this.setContextOperation(null);
                return;
            }
            case 9: {
                this.setRootArgumentDataPrototype(null);
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
                return this.getAutosarOperationArgumentInstance() != null;
            }
            case 5: {
                return this.getBase() != null;
            }
            case 6: {
                return this.contextComponents != null && !this.contextComponents.isEmpty();
            }
            case 7: {
                return this.contextPortPrototype != null;
            }
            case 8: {
                return this.contextOperation != null;
            }
            case 9: {
                return this.rootArgumentDataPrototype != null;
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

