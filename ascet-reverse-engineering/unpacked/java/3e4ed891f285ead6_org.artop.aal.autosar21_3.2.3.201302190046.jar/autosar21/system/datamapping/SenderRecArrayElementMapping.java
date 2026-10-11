/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.datamapping;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.datamapping.SenderRecArrayTypeMapping;
import autosar21.system.datamapping.SenderRecCompositeTypeMapping;
import autosar21.system.datamapping.instanceref.SenderRecArrayElementMappingArrayElement;
import autosar21.system.systemsignal.SystemSignal;

public interface SenderRecArrayElementMapping
extends ARObject {
    public SenderRecArrayTypeMapping getSenderRecArrayTypeMapping();

    public void setSenderRecArrayTypeMapping(SenderRecArrayTypeMapping var1);

    public SenderRecArrayElementMappingArrayElement getArrayElement();

    public void setArrayElement(SenderRecArrayElementMappingArrayElement var1);

    public SenderRecCompositeTypeMapping getComplexTypeMapping();

    public void setComplexTypeMapping(SenderRecCompositeTypeMapping var1);

    public SystemSignal getSignal();

    public void setSignal(SystemSignal var1);
}

