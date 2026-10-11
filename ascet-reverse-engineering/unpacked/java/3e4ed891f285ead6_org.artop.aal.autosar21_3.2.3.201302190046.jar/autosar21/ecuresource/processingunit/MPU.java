/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecuresource.processingunit;

import autosar21.ecuresource.memory.MemoryMappedHWPort;
import autosar21.ecuresource.processingunit.InterruptProduceHWPort;
import autosar21.ecuresource.processingunit.ProcessingUnit;
import autosar21.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface MPU
extends ARObject {
    public ProcessingUnit getProcessingUnit();

    public void setProcessingUnit(ProcessingUnit var1);

    public Integer getChannelCount();

    public void setChannelCount(Integer var1);

    public void unsetChannelCount();

    public boolean isSetChannelCount();

    public EList<MemoryMappedHWPort> getProtectedMemoryHWPorts();

    public EList<InterruptProduceHWPort> getRaisedInterrupts();
}

