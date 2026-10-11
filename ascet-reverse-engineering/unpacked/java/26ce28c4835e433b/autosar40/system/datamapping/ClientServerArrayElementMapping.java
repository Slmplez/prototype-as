/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.datamapping;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.datamapping.ClientServerArrayTypeMapping;
import autosar40.system.datamapping.ClientServerCompositeTypeMapping;
import autosar40.system.datamapping.IndexedArrayElement;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignal;

public interface ClientServerArrayElementMapping
extends ARObject {
    public ClientServerArrayTypeMapping getClientServerArrayTypeMapping();

    public void setClientServerArrayTypeMapping(ClientServerArrayTypeMapping var1);

    public ClientServerCompositeTypeMapping getComplexTypeMapping();

    public void setComplexTypeMapping(ClientServerCompositeTypeMapping var1);

    public IndexedArrayElement getIndexedArrayElement();

    public void setIndexedArrayElement(IndexedArrayElement var1);

    public SystemSignal getSystemSignal();

    public void setSystemSignal(SystemSignal var1);
}

