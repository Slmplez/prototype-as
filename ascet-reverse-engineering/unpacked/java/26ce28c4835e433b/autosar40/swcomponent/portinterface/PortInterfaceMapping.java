/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.portinterface;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.swcomponent.portinterface.PortInterfaceMappingSet;

public interface PortInterfaceMapping
extends Identifiable {
    public PortInterfaceMappingSet getPortInterfaceMappingSet();

    public void setPortInterfaceMappingSet(PortInterfaceMappingSet var1);
}

