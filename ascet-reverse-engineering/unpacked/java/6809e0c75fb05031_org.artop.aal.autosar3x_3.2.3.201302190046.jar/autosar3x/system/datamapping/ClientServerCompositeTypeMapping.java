/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.datamapping;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.portinterface.ArgumentPrototype;

public interface ClientServerCompositeTypeMapping
extends ARObject {
    public ArgumentPrototype getArgument();

    public void setArgument(ArgumentPrototype var1);
}

