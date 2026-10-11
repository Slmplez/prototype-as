/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GParameterValue
 */
package autosar21.ecucdescription;

import autosar21.ecucdescription.Container;
import autosar21.ecucparameterdef.ConfigParameter;
import autosar21.genericstructure.infrastructure.ARObject;
import gautosar.gecucdescription.GParameterValue;

public interface ParameterValue
extends ARObject,
GParameterValue {
    public Container getContainer();

    public void setContainer(Container var1);

    public ConfigParameter getDefinition();

    public void setDefinition(ConfigParameter var1);
}

