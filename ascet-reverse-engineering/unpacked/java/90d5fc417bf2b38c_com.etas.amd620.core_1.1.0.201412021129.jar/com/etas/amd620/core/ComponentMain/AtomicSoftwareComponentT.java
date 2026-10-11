/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.ComponentT;
import com.etas.amd620.core.ComponentMain.ParameterMappingsType;
import com.etas.amd620.core.ComponentMain.VariableMappingsExternalType;
import com.etas.amd620.core.ComponentMain.VariableMappingsInternalType;

public interface AtomicSoftwareComponentT
extends ComponentT {
    public ParameterMappingsType getParameterMappings();

    public void setParameterMappings(ParameterMappingsType var1);

    public VariableMappingsInternalType getVariableMappingsInternal();

    public void setVariableMappingsInternal(VariableMappingsInternalType var1);

    public VariableMappingsExternalType getVariableMappingsExternal();

    public void setVariableMappingsExternal(VariableMappingsExternalType var1);

    public String getCategory();

    public void setCategory(String var1);

    public boolean isSupportsMultipleInstantiation();

    public void setSupportsMultipleInstantiation(boolean var1);

    public void unsetSupportsMultipleInstantiation();

    public boolean isSetSupportsMultipleInstantiation();
}

