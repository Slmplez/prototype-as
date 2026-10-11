/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.swcinternalbehavior;

import autosar3x.commonstructure.internalbehavior.ExclusiveArea;
import autosar3x.commonstructure.serviceneeds.ServiceNeeds;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.swcomponent.components.AtomicSoftwareComponentType;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar3x.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.LocalParameterInitValueAssignment;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.InterRunnableVariable;
import autosar3x.swcomponent.swcinternalbehavior.perinstancememory.PerInstanceMemory;
import autosar3x.swcomponent.swcinternalbehavior.portapioptions.PortAPIOption;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface InternalBehavior
extends ARElement,
GSwcInternalBehavior {
    public AtomicSoftwareComponentType getComponent();

    public void setComponent(AtomicSoftwareComponentType var1);

    public EList<RTEEvent> getEvents();

    public EList<ExclusiveArea> getExclusiveAreas();

    public EList<LocalParameterInitValueAssignment> getInitValues();

    public EList<InterRunnableVariable> getInterRunnableVariables();

    public EList<CalprmElementPrototype> getPerInstanceCalprms();

    public EList<PerInstanceMemory> getPerInstanceMemories();

    public EList<PortAPIOption> getPortAPIOptions();

    public EList<RunnableEntity> getRunnables();

    public EList<ServiceNeeds> getServiceNeeds();

    public EList<CalprmElementPrototype> getSharedCalprms();

    public Boolean getSupportsMultipleInstantiation();

    public void setSupportsMultipleInstantiation(Boolean var1);

    public void unsetSupportsMultipleInstantiation();

    public boolean isSetSupportsMultipleInstantiation();
}

