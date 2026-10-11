/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.datamapping;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.datamapping.IndexedArrayElement;
import autosar40.system.datamapping.SenderRecArrayTypeMapping;
import autosar40.system.datamapping.SenderRecCompositeTypeMapping;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignal;

public interface SenderRecArrayElementMapping
extends ARObject {
    public SenderRecArrayTypeMapping getSenderRecArrayTypeMapping();

    public void setSenderRecArrayTypeMapping(SenderRecArrayTypeMapping var1);

    public SenderRecCompositeTypeMapping getComplexTypeMapping();

    public void setComplexTypeMapping(SenderRecCompositeTypeMapping var1);

    public IndexedArrayElement getIndexedArrayElement();

    public void setIndexedArrayElement(IndexedArrayElement var1);

    public SystemSignal getSystemSignal();

    public void setSystemSignal(SystemSignal var1);
}

