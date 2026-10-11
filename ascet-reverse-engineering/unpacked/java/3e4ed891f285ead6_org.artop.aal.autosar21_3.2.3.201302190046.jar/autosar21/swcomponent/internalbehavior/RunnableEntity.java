/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.internalbehavior;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.internalbehavior.InternalBehavior;
import autosar21.swcomponent.internalbehavior.dataelements.DataReadAccess;
import autosar21.swcomponent.internalbehavior.dataelements.DataReceivePoint;
import autosar21.swcomponent.internalbehavior.dataelements.DataSendPoint;
import autosar21.swcomponent.internalbehavior.dataelements.DataWriteAccess;
import autosar21.swcomponent.internalbehavior.exclusivearea.RunnableEntityCanEnterExclusiveArea;
import autosar21.swcomponent.internalbehavior.exclusivearea.RunnableEntityRunsInExclusiveArea;
import autosar21.swcomponent.internalbehavior.interrunnablecommunication.InterRunnableVariable;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar21.swcomponent.internalbehavior.rteevents.WaitPoint;
import autosar21.swcomponent.internalbehavior.servercall.ServerCallPoint;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmAccess;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface RunnableEntity
extends Identifiable,
GRunnableEntity {
    public InternalBehavior getInternalBehavior();

    public void setInternalBehavior(InternalBehavior var1);

    public EList<CalprmAccess> getCalprmAccess();

    public Boolean getCanBeInvokedConcurrently();

    public void setCanBeInvokedConcurrently(Boolean var1);

    public void unsetCanBeInvokedConcurrently();

    public boolean isSetCanBeInvokedConcurrently();

    public EList<DataReadAccess> getDataReadAccess();

    public EList<DataReceivePoint> getDataReceivePoints();

    public EList<DataSendPoint> getDataSendPoints();

    public EList<DataWriteAccess> getDataWriteAccess();

    public EList<RunnableEntityRunsInExclusiveArea> getInsideExclusiveAreas();

    public Double getMinimumStartInterval();

    public void setMinimumStartInterval(Double var1);

    public void unsetMinimumStartInterval();

    public boolean isSetMinimumStartInterval();

    public EList<ModeSwitchPoint> getModeSwitchPoints();

    public EList<CalprmElementPrototype> getPerInstanceCalprmAccess();

    public EList<InterRunnableVariable> getReadVariables();

    public EList<ServerCallPoint> getServerCallPoints();

    public EList<CalprmElementPrototype> getSharedCalprmAccess();

    public String getSymbol();

    public void setSymbol(String var1);

    public void unsetSymbol();

    public boolean isSetSymbol();

    public EList<RunnableEntityCanEnterExclusiveArea> getUsesExclusiveAreas();

    public EList<WaitPoint> getWaitPoints();

    public EList<InterRunnableVariable> getWrittenVariables();
}

