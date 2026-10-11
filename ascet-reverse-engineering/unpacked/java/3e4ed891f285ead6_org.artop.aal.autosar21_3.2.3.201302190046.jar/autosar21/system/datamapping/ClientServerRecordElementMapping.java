/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.datamapping;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.datamapping.ClientServerCompositeTypeMapping;
import autosar21.system.datamapping.ClientServerRecordTypeMapping;
import autosar21.system.datamapping.instanceref.ClientServerRecordElementMappingRecordElement;
import autosar21.system.systemsignal.SystemSignal;

public interface ClientServerRecordElementMapping
extends ARObject {
    public ClientServerRecordTypeMapping getClientServerRecordTypeMapping();

    public void setClientServerRecordTypeMapping(ClientServerRecordTypeMapping var1);

    public ClientServerCompositeTypeMapping getComplexTypeMapping();

    public void setComplexTypeMapping(ClientServerCompositeTypeMapping var1);

    public ClientServerRecordElementMappingRecordElement getRecordElement();

    public void setRecordElement(ClientServerRecordElementMappingRecordElement var1);

    public SystemSignal getSignal();

    public void setSignal(SystemSignal var1);
}

