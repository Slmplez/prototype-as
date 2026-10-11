/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.datamapping;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.datamapping.ClientServerArrayTypeMapping;
import autosar21.system.datamapping.ClientServerCompositeTypeMapping;
import autosar21.system.datamapping.instanceref.ClientServerArrayElementMappingArrayElement;
import autosar21.system.systemsignal.SystemSignal;

public interface ClientServerArrayElementMapping
extends ARObject {
    public ClientServerArrayTypeMapping getClientServerArrayTypeMapping();

    public void setClientServerArrayTypeMapping(ClientServerArrayTypeMapping var1);

    public ClientServerArrayElementMappingArrayElement getClientServerArrayElementMapping_arrayElement();

    public void setClientServerArrayElementMapping_arrayElement(ClientServerArrayElementMappingArrayElement var1);

    public ClientServerCompositeTypeMapping getComplexTypeMapping();

    public void setComplexTypeMapping(ClientServerCompositeTypeMapping var1);

    public SystemSignal getSignal();

    public void setSignal(SystemSignal var1);
}

