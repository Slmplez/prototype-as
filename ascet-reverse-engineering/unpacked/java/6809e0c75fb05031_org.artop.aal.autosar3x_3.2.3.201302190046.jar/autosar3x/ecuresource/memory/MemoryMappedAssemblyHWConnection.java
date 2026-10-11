/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecuresource.memory;

import autosar3x.ecuresource.AssemblyHWConnection;
import autosar3x.ecuresource.memory.MemoryAccess;
import autosar3x.ecuresource.memory.MemorySegmentUsageEnum;
import autosar3x.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface MemoryMappedAssemblyHWConnection
extends AssemblyHWConnection {
    public Integer getBaseAddress();

    public void setBaseAddress(Integer var1);

    public void unsetBaseAddress();

    public boolean isSetBaseAddress();

    public ByteOrderEnum getByteOrder();

    public void setByteOrder(ByteOrderEnum var1);

    public void unsetByteOrder();

    public boolean isSetByteOrder();

    public Boolean getCachable();

    public void setCachable(Boolean var1);

    public void unsetCachable();

    public boolean isSetCachable();

    public EList<MemoryAccess> getHwConnectionAccess();

    public EList<MemorySegmentUsageEnum> getSegmentUsages();

    public void unsetSegmentUsages();

    public boolean isSetSegmentUsages();
}

