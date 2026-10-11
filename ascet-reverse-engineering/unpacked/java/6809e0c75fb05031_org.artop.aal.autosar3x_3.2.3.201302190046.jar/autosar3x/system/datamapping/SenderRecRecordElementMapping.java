/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.datamapping;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.datatypes.RecordElement;
import autosar3x.system.datamapping.SenderRecCompositeTypeMapping;
import autosar3x.system.datamapping.SenderRecRecordTypeMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignal;

public interface SenderRecRecordElementMapping
extends ARObject {
    public SenderRecRecordTypeMapping getSenderRecRecordTypeMapping();

    public void setSenderRecRecordTypeMapping(SenderRecRecordTypeMapping var1);

    public SenderRecCompositeTypeMapping getComplexTypeMapping();

    public void setComplexTypeMapping(SenderRecCompositeTypeMapping var1);

    public RecordElement getRecordElement();

    public void setRecordElement(RecordElement var1);

    public SystemSignal getSignal();

    public void setSignal(SystemSignal var1);
}

