/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecuresource.processingunit;

import autosar3x.ecuresource.processingunit.ProcessingUnit;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SupportedDataType
extends Identifiable {
    public ProcessingUnit getProcessingUnit();

    public void setProcessingUnit(ProcessingUnit var1);

    public EList<Integer> getSupportedDataSizes();

    public void unsetSupportedDataSizes();

    public boolean isSetSupportedDataSizes();
}

