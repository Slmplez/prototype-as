/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.datamapping;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.datamapping.IndexedArrayElement;
import autosar3x.system.datamapping.SenderRecArrayTypeMapping;
import autosar3x.system.datamapping.SenderRecCompositeTypeMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignal;

public interface SenderRecArrayElementMapping
extends ARObject {
    public SenderRecArrayTypeMapping getSenderRecArrayTypeMapping();

    public void setSenderRecArrayTypeMapping(SenderRecArrayTypeMapping var1);

    public SenderRecCompositeTypeMapping getComplexTypeMapping();

    public void setComplexTypeMapping(SenderRecCompositeTypeMapping var1);

    public IndexedArrayElement getIndexedArrayElement();

    public void setIndexedArrayElement(IndexedArrayElement var1);

    public SystemSignal getSignal();

    public void setSignal(SystemSignal var1);
}

