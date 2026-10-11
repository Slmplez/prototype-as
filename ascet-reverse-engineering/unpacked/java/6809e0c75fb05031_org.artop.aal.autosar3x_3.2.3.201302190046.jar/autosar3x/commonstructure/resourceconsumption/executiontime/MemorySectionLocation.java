/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar3x.commonstructure.resourceconsumption.executiontime;

import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorySection;
import autosar3x.ecuresource.memory.ProvidedMemorySegment;
import autosar3x.genericstructure.infrastructure.ARObject;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface MemorySectionLocation
extends ARObject {
    public ExecutionTime getExecutionTime();

    public void setExecutionTime(ExecutionTime var1);

    public ProvidedMemorySegment getProvidedMemory();

    public void setProvidedMemory(ProvidedMemorySegment var1);

    public MemorySection getSoftwareMemorySection();

    public void setSoftwareMemorySection(MemorySection var1);

    public boolean extimeecuhardwareMemorySectionecu(DiagnosticChain var1, Map<Object, Object> var2);
}

