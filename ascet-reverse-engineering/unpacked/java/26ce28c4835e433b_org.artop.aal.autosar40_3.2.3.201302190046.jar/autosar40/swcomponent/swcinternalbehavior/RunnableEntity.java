/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.swcinternalbehavior;

import autosar40.commonstructure.internalbehavior.ExecutableEntity;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import autosar40.swcomponent.swcinternalbehavior.dataelements.ParameterAccess;
import autosar40.swcomponent.swcinternalbehavior.dataelements.VariableAccess;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeAccessPoint;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar40.swcomponent.swcinternalbehavior.rteevents.WaitPoint;
import autosar40.swcomponent.swcinternalbehavior.runnableentity.RunnableEntityArgument;
import autosar40.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallResultPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.ServerCallPoint;
import autosar40.swcomponent.swcinternalbehavior.trigger.ExternalTriggeringPoint;
import autosar40.swcomponent.swcinternalbehavior.trigger.InternalTriggeringPoint;
import gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface RunnableEntity
extends AtpStructureElement,
ExecutableEntity,
GRunnableEntity {
    public SwcInternalBehavior getSwcInternalBehavior();

    public void setSwcInternalBehavior(SwcInternalBehavior var1);

    public EList<RunnableEntityArgument> getArguments();

    public EList<AsynchronousServerCallResultPoint> getAsynchronousServerCallResultPoints();

    public Boolean getCanBeInvokedConcurrently();

    public void setCanBeInvokedConcurrently(Boolean var1);

    public void unsetCanBeInvokedConcurrently();

    public boolean isSetCanBeInvokedConcurrently();

    public EList<VariableAccess> getDataReadAccess();

    public EList<VariableAccess> getDataReceivePointByArguments();

    public EList<VariableAccess> getDataReceivePointByValues();

    public EList<VariableAccess> getDataSendPoints();

    public EList<VariableAccess> getDataWriteAccess();

    public EList<ExternalTriggeringPoint> getExternalTriggeringPoints();

    public EList<InternalTriggeringPoint> getInternalTriggeringPoints();

    public EList<ModeAccessPoint> getModeAccessPoints();

    public EList<ModeSwitchPoint> getModeSwitchPoints();

    public EList<ParameterAccess> getParameterAccess();

    public EList<VariableAccess> getReadLocalVariables();

    public EList<ServerCallPoint> getServerCallPoints();

    public String getSymbol();

    public void setSymbol(String var1);

    public void unsetSymbol();

    public boolean isSetSymbol();

    public EList<WaitPoint> getWaitPoints();

    public EList<VariableAccess> getWrittenLocalVariables();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

