/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.amd620;

import com.etas.amd620.core.ComponentData.ComponentDataType;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationType;
import com.etas.amd620.core.ComponentSpecification.SpecificationsType;
import com.etas.amd620.core.amd620.AscetComponent;
import com.etas.amd620.core.amd620.DefaultConfiguration;

public interface AscetClass
extends AscetComponent {
    public ComponentDataType getComponentDataType();

    public void setComponentDataType(ComponentDataType var1);

    public ComponentImplementationType getComponentImplementationType();

    public void setComponentImplementationType(ComponentImplementationType var1);

    public SpecificationsType getSpecificationsType();

    public void setSpecificationsType(SpecificationsType var1);

    public DefaultConfiguration getDefaultConfiguration();

    public void setDefaultConfiguration(DefaultConfiguration var1);
}

