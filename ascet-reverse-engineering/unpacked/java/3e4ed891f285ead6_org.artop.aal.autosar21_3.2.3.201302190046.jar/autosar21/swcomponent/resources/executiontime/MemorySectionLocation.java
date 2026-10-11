/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar21.swcomponent.resources.executiontime;

import autosar21.ecuresource.memory.ProvidedMemorySegment;
import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.resources.executiontime.ExecutionTime;
import autosar21.swcomponent.resources.objectfilesection.ObjectFileSection;
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

    public ObjectFileSection getSoftwareMemorySection();

    public void setSoftwareMemorySection(ObjectFileSection var1);

    public boolean extimeecuhardwareMemorySectionecu(DiagnosticChain var1, Map<Object, Object> var2);
}

