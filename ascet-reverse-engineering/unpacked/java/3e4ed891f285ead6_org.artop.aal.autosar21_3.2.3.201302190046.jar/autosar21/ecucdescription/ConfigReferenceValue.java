/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GConfigReferenceValue
 */
package autosar21.ecucdescription;

import autosar21.ecucdescription.Container;
import autosar21.ecucparameterdef.ConfigReference;
import autosar21.genericstructure.infrastructure.ARObject;
import gautosar.gecucdescription.GConfigReferenceValue;

public interface ConfigReferenceValue
extends ARObject,
GConfigReferenceValue {
    public Container getContainer();

    public void setContainer(Container var1);

    public ConfigReference getDefinition();

    public void setDefinition(ConfigReference var1);
}

