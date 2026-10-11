/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.swcinternalbehavior;

import autosar3x.bswmodule.bswbehavior.BswModuleEntity;
import autosar3x.commonstructure.internalbehavior.ExclusiveArea;
import autosar3x.commonstructure.internalbehavior.ExecutableEntity;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmAccess;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar3x.swcomponent.swcinternalbehavior.InternalBehavior;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataReadAccess;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataReceivePoint;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataSendPoint;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataWriteAccess;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.InterRunnableVariable;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.WaitPoint;
import autosar3x.swcomponent.swcinternalbehavior.servercall.ServerCallPoint;
import gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface RunnableEntity
extends ExecutableEntity,
GRunnableEntity {
    public InternalBehavior getInternalBehavior();

    public void setInternalBehavior(InternalBehavior var1);

    public BswModuleEntity getBswEntity();

    public void setBswEntity(BswModuleEntity var1);

    public EList<CalprmAccess> getCalprmAccess();

    public Boolean getCanBeInvokedConcurrently();

    public void setCanBeInvokedConcurrently(Boolean var1);

    public void unsetCanBeInvokedConcurrently();

    public boolean isSetCanBeInvokedConcurrently();

    public EList<ExclusiveArea> getCanEnterExclusiveAreas();

    public EList<DataReadAccess> getDataReadAccess();

    public EList<DataReceivePoint> getDataReceivePoints();

    public EList<DataSendPoint> getDataSendPoints();

    public EList<DataWriteAccess> getDataWriteAccess();

    public Double getMinimumStartInterval();

    public void setMinimumStartInterval(Double var1);

    public void unsetMinimumStartInterval();

    public boolean isSetMinimumStartInterval();

    public EList<ModeSwitchPoint> getModeSwitchPoints();

    public EList<CalprmElementPrototype> getPerInstanceCalprmAccess();

    public EList<InterRunnableVariable> getReadVariables();

    public EList<ExclusiveArea> getRunsInsideExclusiveAreas();

    public EList<ServerCallPoint> getServerCallPoints();

    public EList<CalprmElementPrototype> getSharedCalprmAccess();

    public String getSymbol();

    public void setSymbol(String var1);

    public void unsetSymbol();

    public boolean isSetSymbol();

    public EList<WaitPoint> getWaitPoints();

    public EList<InterRunnableVariable> getWrittenVariables();
}

