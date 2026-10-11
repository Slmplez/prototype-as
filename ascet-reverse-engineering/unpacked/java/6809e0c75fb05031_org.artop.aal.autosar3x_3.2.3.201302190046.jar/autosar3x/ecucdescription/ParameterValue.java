/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GParameterValue
 */
package autosar3x.ecucdescription;

import autosar3x.ecucdescription.Container;
import autosar3x.ecucparameterdef.ConfigParameter;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.gecucdescription.GParameterValue;

public interface ParameterValue
extends ARObject,
GParameterValue {
    public Container getContainer();

    public void setContainer(Container var1);

    public ConfigParameter getDefinition();

    public void setDefinition(ConfigParameter var1);
}

