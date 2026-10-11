/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.commonstructure.resourceconsumption.executiontime;

import autosar40.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorySection;
import autosar40.ecuresource.HwElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface MemorySectionLocation
extends ARObject {
    public ExecutionTime getExecutionTime();

    public void setExecutionTime(ExecutionTime var1);

    public HwElement getProvidedMemory();

    public void setProvidedMemory(HwElement var1);

    public MemorySection getSoftwareMemorySection();

    public void setSoftwareMemorySection(MemorySection var1);

    public boolean extimeecuhardwareMemorySectionecu(DiagnosticChain var1, Map<Object, Object> var2);
}

