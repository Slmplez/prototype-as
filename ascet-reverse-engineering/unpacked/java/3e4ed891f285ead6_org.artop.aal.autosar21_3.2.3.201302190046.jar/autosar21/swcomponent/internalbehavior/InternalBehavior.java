/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.internalbehavior;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.swcomponent.components.AtomicSoftwareComponentType;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveArea;
import autosar21.swcomponent.internalbehavior.interrunnablecommunication.InterRunnableVariable;
import autosar21.swcomponent.internalbehavior.nvrammapping.NVRAMMapping;
import autosar21.swcomponent.internalbehavior.perinstancememory.PerInstanceMemory;
import autosar21.swcomponent.internalbehavior.portapioptions.PortAPIOption;
import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
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

    public EList<InterRunnableVariable> getInterRunnableVariables();

    public EList<NVRAMMapping> getNVRAMMappings();

    public EList<CalprmElementPrototype> getPerInstanceCalprms();

    public EList<PerInstanceMemory> getPerInstanceMemories();

    public EList<PortAPIOption> getPortAPIOptions();

    public EList<RunnableEntity> getRunnables();

    public EList<CalprmElementPrototype> getSharedCalprms();

    public Boolean getSupportsMultipleInstantiation();

    public void setSupportsMultipleInstantiation(Boolean var1);

    public void unsetSupportsMultipleInstantiation();

    public boolean isSetSupportsMultipleInstantiation();
}

