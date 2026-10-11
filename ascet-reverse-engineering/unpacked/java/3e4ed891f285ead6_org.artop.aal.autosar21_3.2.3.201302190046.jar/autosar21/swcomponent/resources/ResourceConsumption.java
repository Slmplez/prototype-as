/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.resources;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.implementation.Implementation;
import autosar21.swcomponent.resources.executiontime.ExecutionTime;
import autosar21.swcomponent.resources.heapusage.HeapUsage;
import autosar21.swcomponent.resources.objectfilesection.ObjectFileSection;
import autosar21.swcomponent.resources.perinstancememorysize.PerInstanceMemorySize;
import autosar21.swcomponent.resources.stackusage.StackUsage;
import gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ResourceConsumption
extends Identifiable,
GResourceConsumption {
    public Implementation getImplementation();

    public void setImplementation(Implementation var1);

    public EList<ExecutionTime> getExecutionTimes();

    public EList<HeapUsage> getHeapUsages();

    public EList<ObjectFileSection> getObjectFileSections();

    public EList<PerInstanceMemorySize> getPerInstanceMemorySizes();

    public EList<StackUsage> getStackUsages();
}

