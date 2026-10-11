/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.commonstructure.resourceconsumption;

import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar3x.commonstructure.resourceconsumption.heapusage.HeapUsage;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorySection;
import autosar3x.commonstructure.resourceconsumption.stackusage.StackUsage;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ResourceConsumption
extends Identifiable,
GResourceConsumption {
    public EList<ExecutionTime> getExecutionTimes();

    public EList<HeapUsage> getHeapUsages();

    public EList<MemorySection> getObjectFileSections();

    public EList<StackUsage> getStackUsages();
}

