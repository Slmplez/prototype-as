/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gsystem.GSystem
 */
package autosar21.system;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.system.SoftwareComposition;
import autosar21.system.SystemCommunication;
import autosar21.system.SystemMapping;
import autosar21.system.SystemTopologyInstance;
import gautosar.gsystem.GSystem;

public interface System
extends ARElement,
GSystem {
    public SystemCommunication getCommunication();

    public void setCommunication(SystemCommunication var1);

    public SystemMapping getMapping();

    public void setMapping(SystemMapping var1);

    public SoftwareComposition getSoftwareComposition();

    public void setSoftwareComposition(SoftwareComposition var1);

    public SystemTopologyInstance getTopology();

    public void setTopology(SystemTopologyInstance var1);
}

