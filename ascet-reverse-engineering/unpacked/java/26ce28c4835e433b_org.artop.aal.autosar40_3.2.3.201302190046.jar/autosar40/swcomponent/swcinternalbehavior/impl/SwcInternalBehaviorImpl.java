/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GAtomicSwComponentType
 *  gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity
 *  gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior
 *  gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GPerInstanceMemory
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.swcinternalbehavior.impl;

import autosar40.commonstructure.internalbehavior.impl.InternalBehaviorImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.swcinternalbehavior.HandleTerminationAndRestartEnum;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import autosar40.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.IncludedDataTypeSet;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationDataDefProps;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.IncludedModeDeclarationGroupSet;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerInstanceMemory;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortAPIOption;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.SwcServiceDependency;
import autosar40.swcomponent.swcinternalbehavior.varianthandling.VariationPointProxy;
import gautosar.gswcomponents.gcomponents.GAtomicSwComponentType;
import gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GPerInstanceMemory;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwcInternalBehaviorImpl
extends InternalBehaviorImpl
implements SwcInternalBehavior {
    protected static final Boolean GSUPPORTS_MULTIPLE_INSTANTIATION_EDEFAULT = null;
    protected EList<VariableDataPrototype> arTypedPerInstanceMemories;
    protected EList<RTEEvent> events;
    protected EList<VariableDataPrototype> explicitInterRunnableVariables;
    protected static final HandleTerminationAndRestartEnum HANDLE_TERMINATION_AND_RESTART_EDEFAULT = HandleTerminationAndRestartEnum.NO_SUPPORT;
    protected HandleTerminationAndRestartEnum handleTerminationAndRestart = HANDLE_TERMINATION_AND_RESTART_EDEFAULT;
    protected boolean handleTerminationAndRestartESet;
    protected EList<VariableDataPrototype> implicitInterRunnableVariables;
    protected EList<IncludedDataTypeSet> includedDataTypeSets;
    protected EList<IncludedModeDeclarationGroupSet> includedModeDeclarationGroupSets;
    protected EList<InstantiationDataDefProps> instantiationDataDefProps;
    protected EList<PerInstanceMemory> perInstanceMemories;
    protected EList<ParameterDataPrototype> perInstanceParameters;
    protected EList<PortAPIOption> portAPIOptions;
    protected EList<RunnableEntity> runnables;
    protected EList<SwcServiceDependency> serviceDependencies;
    protected EList<ParameterDataPrototype> sharedParameters;
    protected static final Boolean SUPPORTS_MULTIPLE_INSTANTIATION_EDEFAULT = Boolean.FALSE;
    protected Boolean supportsMultipleInstantiation = SUPPORTS_MULTIPLE_INSTANTIATION_EDEFAULT;
    protected boolean supportsMultipleInstantiationESet;
    protected EList<VariationPointProxy> variationPointProxies;
    protected VariationPoint variationPoint;

    protected SwcInternalBehaviorImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SwcinternalbehaviorPackage.Literals.SWC_INTERNAL_BEHAVIOR;
    }

    public EList<GRunnableEntity> gGetRunnables() {
        EList<RunnableEntity> untypedList = this.getRunnables();
        return untypedList;
    }

    public EList<GRTEEvent> gGetEvents() {
        EList<RTEEvent> untypedList = this.getEvents();
        return untypedList;
    }

    public EList<GPerInstanceMemory> gGetPerInstanceMemories() {
        EList<PerInstanceMemory> untypedList = this.getPerInstanceMemories();
        return untypedList;
    }

    public GAtomicSwComponentType gGetComponent() {
        return this.getAtomicSwComponentType();
    }

    public void gSetComponent(GAtomicSwComponentType newGComponent) {
        this.setAtomicSwComponentType((AtomicSwComponentType)newGComponent);
    }

    public Boolean gGetSupportsMultipleInstantiation() {
        Boolean tgtFeatureValue = this.getSupportsMultipleInstantiation();
        return tgtFeatureValue;
    }

    public void gSetSupportsMultipleInstantiation(Boolean newGSupportsMultipleInstantiation) {
        this.setSupportsMultipleInstantiation(newGSupportsMultipleInstantiation);
    }

    public void gUnsetSupportsMultipleInstantiation() {
        this.unsetSupportsMultipleInstantiation();
    }

    public boolean gIsSetSupportsMultipleInstantiation() {
        return this.isSetSupportsMultipleInstantiation();
    }

    @Override
    public AtomicSwComponentType getAtomicSwComponentType() {
        if (this.eContainerFeatureID() != 30) {
            return null;
        }
        return (AtomicSwComponentType)this.eContainer();
    }

    public NotificationChain basicSetAtomicSwComponentType(AtomicSwComponentType newAtomicSwComponentType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newAtomicSwComponentType, 30, msgs);
        return msgs;
    }

    @Override
    public void setAtomicSwComponentType(AtomicSwComponentType newAtomicSwComponentType) {
        if (newAtomicSwComponentType != this.eInternalContainer() || this.eContainerFeatureID() != 30 && newAtomicSwComponentType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newAtomicSwComponentType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newAtomicSwComponentType != null) {
                msgs = ((InternalEObject)newAtomicSwComponentType).eInverseAdd((InternalEObject)this, 26, AtomicSwComponentType.class, msgs);
            }
            if ((msgs = this.basicSetAtomicSwComponentType(newAtomicSwComponentType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)newAtomicSwComponentType, (Object)newAtomicSwComponentType));
        }
    }

    @Override
    public EList<VariableDataPrototype> getArTypedPerInstanceMemories() {
        if (this.arTypedPerInstanceMemories == null) {
            this.arTypedPerInstanceMemories = new EObjectContainmentEList(VariableDataPrototype.class, (InternalEObject)this, 31);
        }
        return this.arTypedPerInstanceMemories;
    }

    @Override
    public EList<RTEEvent> getEvents() {
        if (this.events == null) {
            this.events = new EObjectContainmentWithInverseEList(RTEEvent.class, (InternalEObject)this, 32, 20);
        }
        return this.events;
    }

    @Override
    public EList<VariableDataPrototype> getExplicitInterRunnableVariables() {
        if (this.explicitInterRunnableVariables == null) {
            this.explicitInterRunnableVariables = new EObjectContainmentEList(VariableDataPrototype.class, (InternalEObject)this, 33);
        }
        return this.explicitInterRunnableVariables;
    }

    @Override
    public HandleTerminationAndRestartEnum getHandleTerminationAndRestart() {
        return this.handleTerminationAndRestart;
    }

    @Override
    public void setHandleTerminationAndRestart(HandleTerminationAndRestartEnum newHandleTerminationAndRestart) {
        HandleTerminationAndRestartEnum oldHandleTerminationAndRestart = this.handleTerminationAndRestart;
        this.handleTerminationAndRestart = newHandleTerminationAndRestart == null ? HANDLE_TERMINATION_AND_RESTART_EDEFAULT : newHandleTerminationAndRestart;
        boolean oldHandleTerminationAndRestartESet = this.handleTerminationAndRestartESet;
        this.handleTerminationAndRestartESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldHandleTerminationAndRestart, (Object)this.handleTerminationAndRestart, !oldHandleTerminationAndRestartESet));
        }
    }

    @Override
    public void unsetHandleTerminationAndRestart() {
        HandleTerminationAndRestartEnum oldHandleTerminationAndRestart = this.handleTerminationAndRestart;
        boolean oldHandleTerminationAndRestartESet = this.handleTerminationAndRestartESet;
        this.handleTerminationAndRestart = HANDLE_TERMINATION_AND_RESTART_EDEFAULT;
        this.handleTerminationAndRestartESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldHandleTerminationAndRestart, (Object)HANDLE_TERMINATION_AND_RESTART_EDEFAULT, oldHandleTerminationAndRestartESet));
        }
    }

    @Override
    public boolean isSetHandleTerminationAndRestart() {
        return this.handleTerminationAndRestartESet;
    }

    @Override
    public EList<VariableDataPrototype> getImplicitInterRunnableVariables() {
        if (this.implicitInterRunnableVariables == null) {
            this.implicitInterRunnableVariables = new EObjectContainmentEList(VariableDataPrototype.class, (InternalEObject)this, 35);
        }
        return this.implicitInterRunnableVariables;
    }

    @Override
    public EList<IncludedDataTypeSet> getIncludedDataTypeSets() {
        if (this.includedDataTypeSets == null) {
            this.includedDataTypeSets = new EObjectContainmentWithInverseEList(IncludedDataTypeSet.class, (InternalEObject)this, 36, 4);
        }
        return this.includedDataTypeSets;
    }

    @Override
    public EList<IncludedModeDeclarationGroupSet> getIncludedModeDeclarationGroupSets() {
        if (this.includedModeDeclarationGroupSets == null) {
            this.includedModeDeclarationGroupSets = new EObjectContainmentWithInverseEList(IncludedModeDeclarationGroupSet.class, (InternalEObject)this, 37, 4);
        }
        return this.includedModeDeclarationGroupSets;
    }

    @Override
    public EList<InstantiationDataDefProps> getInstantiationDataDefProps() {
        if (this.instantiationDataDefProps == null) {
            this.instantiationDataDefProps = new EObjectContainmentEList(InstantiationDataDefProps.class, (InternalEObject)this, 38);
        }
        return this.instantiationDataDefProps;
    }

    @Override
    public EList<PerInstanceMemory> getPerInstanceMemories() {
        if (this.perInstanceMemories == null) {
            this.perInstanceMemories = new EObjectContainmentWithInverseEList(PerInstanceMemory.class, (InternalEObject)this, 39, 21);
        }
        return this.perInstanceMemories;
    }

    @Override
    public EList<ParameterDataPrototype> getPerInstanceParameters() {
        if (this.perInstanceParameters == null) {
            this.perInstanceParameters = new EObjectContainmentEList(ParameterDataPrototype.class, (InternalEObject)this, 40);
        }
        return this.perInstanceParameters;
    }

    @Override
    public EList<PortAPIOption> getPortAPIOptions() {
        if (this.portAPIOptions == null) {
            this.portAPIOptions = new EObjectContainmentWithInverseEList(PortAPIOption.class, (InternalEObject)this, 41, 4);
        }
        return this.portAPIOptions;
    }

    @Override
    public EList<RunnableEntity> getRunnables() {
        if (this.runnables == null) {
            this.runnables = new EObjectContainmentWithInverseEList(RunnableEntity.class, (InternalEObject)this, 42, 34);
        }
        return this.runnables;
    }

    @Override
    public EList<SwcServiceDependency> getServiceDependencies() {
        if (this.serviceDependencies == null) {
            this.serviceDependencies = new EObjectContainmentWithInverseEList(SwcServiceDependency.class, (InternalEObject)this, 43, 19);
        }
        return this.serviceDependencies;
    }

    @Override
    public EList<ParameterDataPrototype> getSharedParameters() {
        if (this.sharedParameters == null) {
            this.sharedParameters = new EObjectContainmentEList(ParameterDataPrototype.class, (InternalEObject)this, 44);
        }
        return this.sharedParameters;
    }

    @Override
    public Boolean getSupportsMultipleInstantiation() {
        return this.supportsMultipleInstantiation;
    }

    @Override
    public void setSupportsMultipleInstantiation(Boolean newSupportsMultipleInstantiation) {
        Boolean oldSupportsMultipleInstantiation = this.supportsMultipleInstantiation;
        this.supportsMultipleInstantiation = newSupportsMultipleInstantiation;
        boolean oldSupportsMultipleInstantiationESet = this.supportsMultipleInstantiationESet;
        this.supportsMultipleInstantiationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 45, (Object)oldSupportsMultipleInstantiation, (Object)this.supportsMultipleInstantiation, !oldSupportsMultipleInstantiationESet));
        }
    }

    @Override
    public void unsetSupportsMultipleInstantiation() {
        Boolean oldSupportsMultipleInstantiation = this.supportsMultipleInstantiation;
        boolean oldSupportsMultipleInstantiationESet = this.supportsMultipleInstantiationESet;
        this.supportsMultipleInstantiation = SUPPORTS_MULTIPLE_INSTANTIATION_EDEFAULT;
        this.supportsMultipleInstantiationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 45, (Object)oldSupportsMultipleInstantiation, (Object)SUPPORTS_MULTIPLE_INSTANTIATION_EDEFAULT, oldSupportsMultipleInstantiationESet));
        }
    }

    @Override
    public boolean isSetSupportsMultipleInstantiation() {
        return this.supportsMultipleInstantiationESet;
    }

    @Override
    public EList<VariationPointProxy> getVariationPointProxies() {
        if (this.variationPointProxies == null) {
            this.variationPointProxies = new EObjectContainmentWithInverseEList(VariationPointProxy.class, (InternalEObject)this, 46, 18);
        }
        return this.variationPointProxies;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 47, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -48, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -48, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 47, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 30: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetAtomicSwComponentType((AtomicSwComponentType)otherEnd, msgs);
            }
            case 32: {
                return ((InternalEList)this.getEvents()).basicAdd((Object)otherEnd, msgs);
            }
            case 36: {
                return ((InternalEList)this.getIncludedDataTypeSets()).basicAdd((Object)otherEnd, msgs);
            }
            case 37: {
                return ((InternalEList)this.getIncludedModeDeclarationGroupSets()).basicAdd((Object)otherEnd, msgs);
            }
            case 39: {
                return ((InternalEList)this.getPerInstanceMemories()).basicAdd((Object)otherEnd, msgs);
            }
            case 41: {
                return ((InternalEList)this.getPortAPIOptions()).basicAdd((Object)otherEnd, msgs);
            }
            case 42: {
                return ((InternalEList)this.getRunnables()).basicAdd((Object)otherEnd, msgs);
            }
            case 43: {
                return ((InternalEList)this.getServiceDependencies()).basicAdd((Object)otherEnd, msgs);
            }
            case 46: {
                return ((InternalEList)this.getVariationPointProxies()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 30: {
                return this.basicSetAtomicSwComponentType(null, msgs);
            }
            case 31: {
                return ((InternalEList)this.getArTypedPerInstanceMemories()).basicRemove((Object)otherEnd, msgs);
            }
            case 32: {
                return ((InternalEList)this.getEvents()).basicRemove((Object)otherEnd, msgs);
            }
            case 33: {
                return ((InternalEList)this.getExplicitInterRunnableVariables()).basicRemove((Object)otherEnd, msgs);
            }
            case 35: {
                return ((InternalEList)this.getImplicitInterRunnableVariables()).basicRemove((Object)otherEnd, msgs);
            }
            case 36: {
                return ((InternalEList)this.getIncludedDataTypeSets()).basicRemove((Object)otherEnd, msgs);
            }
            case 37: {
                return ((InternalEList)this.getIncludedModeDeclarationGroupSets()).basicRemove((Object)otherEnd, msgs);
            }
            case 38: {
                return ((InternalEList)this.getInstantiationDataDefProps()).basicRemove((Object)otherEnd, msgs);
            }
            case 39: {
                return ((InternalEList)this.getPerInstanceMemories()).basicRemove((Object)otherEnd, msgs);
            }
            case 40: {
                return ((InternalEList)this.getPerInstanceParameters()).basicRemove((Object)otherEnd, msgs);
            }
            case 41: {
                return ((InternalEList)this.getPortAPIOptions()).basicRemove((Object)otherEnd, msgs);
            }
            case 42: {
                return ((InternalEList)this.getRunnables()).basicRemove((Object)otherEnd, msgs);
            }
            case 43: {
                return ((InternalEList)this.getServiceDependencies()).basicRemove((Object)otherEnd, msgs);
            }
            case 44: {
                return ((InternalEList)this.getSharedParameters()).basicRemove((Object)otherEnd, msgs);
            }
            case 46: {
                return ((InternalEList)this.getVariationPointProxies()).basicRemove((Object)otherEnd, msgs);
            }
            case 47: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 30: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 26, AtomicSwComponentType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 25: {
                return this.gGetRunnables();
            }
            case 26: {
                return this.gGetEvents();
            }
            case 27: {
                return this.gGetPerInstanceMemories();
            }
            case 28: {
                return this.gGetComponent();
            }
            case 29: {
                return this.gGetSupportsMultipleInstantiation();
            }
            case 30: {
                return this.getAtomicSwComponentType();
            }
            case 31: {
                return this.getArTypedPerInstanceMemories();
            }
            case 32: {
                return this.getEvents();
            }
            case 33: {
                return this.getExplicitInterRunnableVariables();
            }
            case 34: {
                return this.getHandleTerminationAndRestart();
            }
            case 35: {
                return this.getImplicitInterRunnableVariables();
            }
            case 36: {
                return this.getIncludedDataTypeSets();
            }
            case 37: {
                return this.getIncludedModeDeclarationGroupSets();
            }
            case 38: {
                return this.getInstantiationDataDefProps();
            }
            case 39: {
                return this.getPerInstanceMemories();
            }
            case 40: {
                return this.getPerInstanceParameters();
            }
            case 41: {
                return this.getPortAPIOptions();
            }
            case 42: {
                return this.getRunnables();
            }
            case 43: {
                return this.getServiceDependencies();
            }
            case 44: {
                return this.getSharedParameters();
            }
            case 45: {
                return this.getSupportsMultipleInstantiation();
            }
            case 46: {
                return this.getVariationPointProxies();
            }
            case 47: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 25: {
                this.gGetRunnables().clear();
                this.gGetRunnables().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.gGetEvents().clear();
                this.gGetEvents().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.gGetPerInstanceMemories().clear();
                this.gGetPerInstanceMemories().addAll((Collection)newValue);
                return;
            }
            case 28: {
                this.gSetComponent((GAtomicSwComponentType)newValue);
                return;
            }
            case 29: {
                this.gSetSupportsMultipleInstantiation((Boolean)newValue);
                return;
            }
            case 30: {
                this.setAtomicSwComponentType((AtomicSwComponentType)newValue);
                return;
            }
            case 31: {
                this.getArTypedPerInstanceMemories().clear();
                this.getArTypedPerInstanceMemories().addAll((Collection)newValue);
                return;
            }
            case 32: {
                this.getEvents().clear();
                this.getEvents().addAll((Collection)newValue);
                return;
            }
            case 33: {
                this.getExplicitInterRunnableVariables().clear();
                this.getExplicitInterRunnableVariables().addAll((Collection)newValue);
                return;
            }
            case 34: {
                this.setHandleTerminationAndRestart((HandleTerminationAndRestartEnum)((Object)newValue));
                return;
            }
            case 35: {
                this.getImplicitInterRunnableVariables().clear();
                this.getImplicitInterRunnableVariables().addAll((Collection)newValue);
                return;
            }
            case 36: {
                this.getIncludedDataTypeSets().clear();
                this.getIncludedDataTypeSets().addAll((Collection)newValue);
                return;
            }
            case 37: {
                this.getIncludedModeDeclarationGroupSets().clear();
                this.getIncludedModeDeclarationGroupSets().addAll((Collection)newValue);
                return;
            }
            case 38: {
                this.getInstantiationDataDefProps().clear();
                this.getInstantiationDataDefProps().addAll((Collection)newValue);
                return;
            }
            case 39: {
                this.getPerInstanceMemories().clear();
                this.getPerInstanceMemories().addAll((Collection)newValue);
                return;
            }
            case 40: {
                this.getPerInstanceParameters().clear();
                this.getPerInstanceParameters().addAll((Collection)newValue);
                return;
            }
            case 41: {
                this.getPortAPIOptions().clear();
                this.getPortAPIOptions().addAll((Collection)newValue);
                return;
            }
            case 42: {
                this.getRunnables().clear();
                this.getRunnables().addAll((Collection)newValue);
                return;
            }
            case 43: {
                this.getServiceDependencies().clear();
                this.getServiceDependencies().addAll((Collection)newValue);
                return;
            }
            case 44: {
                this.getSharedParameters().clear();
                this.getSharedParameters().addAll((Collection)newValue);
                return;
            }
            case 45: {
                this.setSupportsMultipleInstantiation((Boolean)newValue);
                return;
            }
            case 46: {
                this.getVariationPointProxies().clear();
                this.getVariationPointProxies().addAll((Collection)newValue);
                return;
            }
            case 47: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 25: {
                this.gGetRunnables().clear();
                return;
            }
            case 26: {
                this.gGetEvents().clear();
                return;
            }
            case 27: {
                this.gGetPerInstanceMemories().clear();
                return;
            }
            case 28: {
                this.gSetComponent(null);
                return;
            }
            case 29: {
                this.gUnsetSupportsMultipleInstantiation();
                return;
            }
            case 30: {
                this.setAtomicSwComponentType(null);
                return;
            }
            case 31: {
                this.getArTypedPerInstanceMemories().clear();
                return;
            }
            case 32: {
                this.getEvents().clear();
                return;
            }
            case 33: {
                this.getExplicitInterRunnableVariables().clear();
                return;
            }
            case 34: {
                this.unsetHandleTerminationAndRestart();
                return;
            }
            case 35: {
                this.getImplicitInterRunnableVariables().clear();
                return;
            }
            case 36: {
                this.getIncludedDataTypeSets().clear();
                return;
            }
            case 37: {
                this.getIncludedModeDeclarationGroupSets().clear();
                return;
            }
            case 38: {
                this.getInstantiationDataDefProps().clear();
                return;
            }
            case 39: {
                this.getPerInstanceMemories().clear();
                return;
            }
            case 40: {
                this.getPerInstanceParameters().clear();
                return;
            }
            case 41: {
                this.getPortAPIOptions().clear();
                return;
            }
            case 42: {
                this.getRunnables().clear();
                return;
            }
            case 43: {
                this.getServiceDependencies().clear();
                return;
            }
            case 44: {
                this.getSharedParameters().clear();
                return;
            }
            case 45: {
                this.unsetSupportsMultipleInstantiation();
                return;
            }
            case 46: {
                this.getVariationPointProxies().clear();
                return;
            }
            case 47: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 25: {
                return !this.gGetRunnables().isEmpty();
            }
            case 26: {
                return !this.gGetEvents().isEmpty();
            }
            case 27: {
                return !this.gGetPerInstanceMemories().isEmpty();
            }
            case 28: {
                return this.gGetComponent() != null;
            }
            case 29: {
                return this.gIsSetSupportsMultipleInstantiation();
            }
            case 30: {
                return this.getAtomicSwComponentType() != null;
            }
            case 31: {
                return this.arTypedPerInstanceMemories != null && !this.arTypedPerInstanceMemories.isEmpty();
            }
            case 32: {
                return this.events != null && !this.events.isEmpty();
            }
            case 33: {
                return this.explicitInterRunnableVariables != null && !this.explicitInterRunnableVariables.isEmpty();
            }
            case 34: {
                return this.isSetHandleTerminationAndRestart();
            }
            case 35: {
                return this.implicitInterRunnableVariables != null && !this.implicitInterRunnableVariables.isEmpty();
            }
            case 36: {
                return this.includedDataTypeSets != null && !this.includedDataTypeSets.isEmpty();
            }
            case 37: {
                return this.includedModeDeclarationGroupSets != null && !this.includedModeDeclarationGroupSets.isEmpty();
            }
            case 38: {
                return this.instantiationDataDefProps != null && !this.instantiationDataDefProps.isEmpty();
            }
            case 39: {
                return this.perInstanceMemories != null && !this.perInstanceMemories.isEmpty();
            }
            case 40: {
                return this.perInstanceParameters != null && !this.perInstanceParameters.isEmpty();
            }
            case 41: {
                return this.portAPIOptions != null && !this.portAPIOptions.isEmpty();
            }
            case 42: {
                return this.runnables != null && !this.runnables.isEmpty();
            }
            case 43: {
                return this.serviceDependencies != null && !this.serviceDependencies.isEmpty();
            }
            case 44: {
                return this.sharedParameters != null && !this.sharedParameters.isEmpty();
            }
            case 45: {
                return this.isSetSupportsMultipleInstantiation();
            }
            case 46: {
                return this.variationPointProxies != null && !this.variationPointProxies.isEmpty();
            }
            case 47: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GSwcInternalBehavior.class) {
            switch (derivedFeatureID) {
                case 25: {
                    return 7;
                }
                case 26: {
                    return 8;
                }
                case 27: {
                    return 9;
                }
                case 28: {
                    return 10;
                }
                case 29: {
                    return 11;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GSwcInternalBehavior.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 25;
                }
                case 8: {
                    return 26;
                }
                case 9: {
                    return 27;
                }
                case 10: {
                    return 28;
                }
                case 11: {
                    return 29;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (handleTerminationAndRestart: ");
        if (this.handleTerminationAndRestartESet) {
            result.append((Object)this.handleTerminationAndRestart);
        } else {
            result.append("<unset>");
        }
        result.append(", supportsMultipleInstantiation: ");
        if (this.supportsMultipleInstantiationESet) {
            result.append(this.supportsMultipleInstantiation);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

