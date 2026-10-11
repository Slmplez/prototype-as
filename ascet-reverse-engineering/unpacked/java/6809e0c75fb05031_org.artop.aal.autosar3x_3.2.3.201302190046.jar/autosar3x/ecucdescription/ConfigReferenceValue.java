/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GConfigReferenceValue
 */
package autosar3x.ecucdescription;

import autosar3x.ecucdescription.Container;
import autosar3x.ecucparameterdef.ConfigReference;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.gecucdescription.GConfigReferenceValue;

public interface ConfigReferenceValue
extends ARObject,
GConfigReferenceValue {
    public Container getContainer();

    public void setContainer(Container var1);

    public ConfigReference getDefinition();

    public void setDefinition(ConfigReference var1);
}

