/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.swcinternalbehavior;

import autosar40.commonstructure.internalbehavior.InternalBehavior;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.swcinternalbehavior.HandleTerminationAndRestartEnum;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.IncludedDataTypeSet;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationDataDefProps;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.IncludedModeDeclarationGroupSet;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerInstanceMemory;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortAPIOption;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.SwcServiceDependency;
import autosar40.swcomponent.swcinternalbehavior.varianthandling.VariationPointProxy;
import gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwcInternalBehavior
extends InternalBehavior,
GSwcInternalBehavior {
    public AtomicSwComponentType getAtomicSwComponentType();

    public void setAtomicSwComponentType(AtomicSwComponentType var1);

    public EList<VariableDataPrototype> getArTypedPerInstanceMemories();

    public EList<RTEEvent> getEvents();

    public EList<VariableDataPrototype> getExplicitInterRunnableVariables();

    public HandleTerminationAndRestartEnum getHandleTerminationAndRestart();

    public void setHandleTerminationAndRestart(HandleTerminationAndRestartEnum var1);

    public void unsetHandleTerminationAndRestart();

    public boolean isSetHandleTerminationAndRestart();

    public EList<VariableDataPrototype> getImplicitInterRunnableVariables();

    public EList<IncludedDataTypeSet> getIncludedDataTypeSets();

    public EList<IncludedModeDeclarationGroupSet> getIncludedModeDeclarationGroupSets();

    public EList<InstantiationDataDefProps> getInstantiationDataDefProps();

    public EList<PerInstanceMemory> getPerInstanceMemories();

    public EList<ParameterDataPrototype> getPerInstanceParameters();

    public EList<PortAPIOption> getPortAPIOptions();

    public EList<RunnableEntity> getRunnables();

    public EList<SwcServiceDependency> getServiceDependencies();

    public EList<ParameterDataPrototype> getSharedParameters();

    public Boolean getSupportsMultipleInstantiation();

    public void setSupportsMultipleInstantiation(Boolean var1);

    public void unsetSupportsMultipleInstantiation();

    public boolean isSetSupportsMultipleInstantiation();

    public EList<VariationPointProxy> getVariationPointProxies();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

