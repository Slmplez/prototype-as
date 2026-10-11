/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.resourceconsumption;

import autosar40.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar40.commonstructure.resourceconsumption.heapusage.HeapUsage;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorySection;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.SectionNamePrefix;
import autosar40.commonstructure.resourceconsumption.stackusage.StackUsage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
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

    public EList<MemorySection> getMemorySections();

    public EList<SectionNamePrefix> getSectionNamePrefixs();

    public EList<StackUsage> getStackUsages();
}

