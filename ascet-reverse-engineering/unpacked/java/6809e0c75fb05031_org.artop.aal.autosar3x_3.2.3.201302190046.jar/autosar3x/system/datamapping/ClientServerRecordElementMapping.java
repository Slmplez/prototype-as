/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.datamapping;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.datatypes.RecordElement;
import autosar3x.system.datamapping.ClientServerCompositeTypeMapping;
import autosar3x.system.datamapping.ClientServerRecordTypeMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignal;

public interface ClientServerRecordElementMapping
extends ARObject {
    public ClientServerRecordTypeMapping getClientServerRecordTypeMapping();

    public void setClientServerRecordTypeMapping(ClientServerRecordTypeMapping var1);

    public ClientServerCompositeTypeMapping getComplexTypeMapping();

    public void setComplexTypeMapping(ClientServerCompositeTypeMapping var1);

    public RecordElement getRecordElement();

    public void setRecordElement(RecordElement var1);

    public SystemSignal getSignal();

    public void setSignal(SystemSignal var1);
}

