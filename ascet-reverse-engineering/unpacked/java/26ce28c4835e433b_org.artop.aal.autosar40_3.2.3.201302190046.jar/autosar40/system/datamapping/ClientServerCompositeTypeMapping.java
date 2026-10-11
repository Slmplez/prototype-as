/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.datamapping;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.portinterface.ArgumentDataPrototype;

public interface ClientServerCompositeTypeMapping
extends ARObject {
    public ArgumentDataPrototype getArgument();

    public void setArgument(ArgumentDataPrototype var1);
}

