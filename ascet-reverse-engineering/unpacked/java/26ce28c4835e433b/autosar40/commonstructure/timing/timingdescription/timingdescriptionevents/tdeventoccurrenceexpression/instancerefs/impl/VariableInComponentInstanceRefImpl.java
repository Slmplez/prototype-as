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
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.VariableInComponentInstanceRef;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarVariableInstance;
import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationCompositeElementDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
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
public class VariableInComponentInstanceRefImpl
extends AtpInstanceRefImpl
implements VariableInComponentInstanceRef,
IReferringClass {
    protected EList<SwComponentPrototype> contextComponents;
    protected PortPrototype contextPortPrototype;
    protected VariableDataPrototype rootVariableDataPrototype;
    protected EList<ApplicationCompositeElementDataPrototype> contextDataPrototypes;
    protected DataPrototype targetDataProtoype;

    protected VariableInComponentInstanceRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.VARIABLE_IN_COMPONENT_INSTANCE_REF;
    }

    @Override
    public AutosarVariableInstance getAutosarVariableInstance() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (AutosarVariableInstance)this.eContainer();
    }

    public NotificationChain basicSetAutosarVariableInstance(AutosarVariableInstance newAutosarVariableInstance, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newAutosarVariableInstance, 4, msgs);
        return msgs;
    }

    @Override
    public void setAutosarVariableInstance(AutosarVariableInstance newAutosarVariableInstance) {
        if (newAutosarVariableInstance != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newAutosarVariableInstance != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newAutosarVariableInstance)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newAutosarVariableInstance != null) {
                msgs = ((InternalEObject)newAutosarVariableInstance).eInverseAdd((InternalEObject)this, 19, AutosarVariableInstance.class, msgs);
            }
            if ((msgs = this.basicSetAutosarVariableInstance(newAutosarVariableInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newAutosarVariableInstance, (Object)newAutosarVariableInstance));
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
    public VariableDataPrototype getRootVariableDataPrototype() {
        if (this.rootVariableDataPrototype != null && this.rootVariableDataPrototype.eIsProxy()) {
            InternalEObject oldRootVariableDataPrototype = (InternalEObject)this.rootVariableDataPrototype;
            this.rootVariableDataPrototype = (VariableDataPrototype)this.eResolveProxy(oldRootVariableDataPrototype);
            if (this.rootVariableDataPrototype != oldRootVariableDataPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldRootVariableDataPrototype, (Object)this.rootVariableDataPrototype));
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
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldRootVariableDataPrototype, (Object)this.rootVariableDataPrototype));
        }
    }

    @Override
    public EList<ApplicationCompositeElementDataPrototype> getContextDataPrototypes() {
        if (this.contextDataPrototypes == null) {
            this.contextDataPrototypes = new EObjectResolvingReferringEList(ApplicationCompositeElementDataPrototype.class, (InternalEObject)this, 9);
        }
        return this.contextDataPrototypes;
    }

    @Override
    public DataPrototype getTargetDataProtoype() {
        if (this.targetDataProtoype != null && this.targetDataProtoype.eIsProxy()) {
            InternalEObject oldTargetDataProtoype = (InternalEObject)this.targetDataProtoype;
            this.targetDataProtoype = (DataPrototype)this.eResolveProxy(oldTargetDataProtoype);
            if (this.targetDataProtoype != oldTargetDataProtoype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 10, (Object)oldTargetDataProtoype, (Object)this.targetDataProtoype));
            }
        }
        return this.targetDataProtoype;
    }

    public DataPrototype basicGetTargetDataProtoype() {
        return this.targetDataProtoype;
    }

    @Override
    public void setTargetDataProtoype(DataPrototype newTargetDataProtoype) {
        DataPrototype oldTargetDataProtoype = this.targetDataProtoype;
        this.targetDataProtoype = newTargetDataProtoype;
        AutosarObjectUtil.setDest((EObject)this, (int)10, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldTargetDataProtoype, (Object)this.targetDataProtoype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetAutosarVariableInstance((AutosarVariableInstance)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetAutosarVariableInstance(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, AutosarVariableInstance.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getAutosarVariableInstance();
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
                    return this.getRootVariableDataPrototype();
                }
                return this.basicGetRootVariableDataPrototype();
            }
            case 9: {
                return this.getContextDataPrototypes();
            }
            case 10: {
                if (resolve) {
                    return this.getTargetDataProtoype();
                }
                return this.basicGetTargetDataProtoype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setAutosarVariableInstance((AutosarVariableInstance)newValue);
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
                this.setRootVariableDataPrototype((VariableDataPrototype)newValue);
                return;
            }
            case 9: {
                this.getContextDataPrototypes().clear();
                this.getContextDataPrototypes().addAll((Collection)newValue);
                return;
            }
            case 10: {
                this.setTargetDataProtoype((DataPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setAutosarVariableInstance(null);
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
                this.setRootVariableDataPrototype(null);
                return;
            }
            case 9: {
                this.getContextDataPrototypes().clear();
                return;
            }
            case 10: {
                this.setTargetDataProtoype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getAutosarVariableInstance() != null;
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
                return this.rootVariableDataPrototype != null;
            }
            case 9: {
                return this.contextDataPrototypes != null && !this.contextDataPrototypes.isEmpty();
            }
            case 10: {
                return this.targetDataProtoype != null;
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

