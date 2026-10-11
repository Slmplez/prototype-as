/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.datamapping;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.datamapping.SenderRecCompositeTypeMapping;
import autosar21.system.datamapping.SenderRecRecordTypeMapping;
import autosar21.system.datamapping.instanceref.SenderRecRecordElementMappingRecordElement;
import autosar21.system.systemsignal.SystemSignal;

public interface SenderRecRecordElementMapping
extends ARObject {
    public SenderRecRecordTypeMapping getSenderRecRecordTypeMapping();

    public void setSenderRecRecordTypeMapping(SenderRecRecordTypeMapping var1);

    public SenderRecCompositeTypeMapping getComplexTypeMapping();

    public void setComplexTypeMapping(SenderRecCompositeTypeMapping var1);

    public SenderRecRecordElementMappingRecordElement getRecordElement();

    public void setRecordElement(SenderRecRecordElementMappingRecordElement var1);

    public SystemSignal getSignal();

    public void setSignal(SystemSignal var1);
}

