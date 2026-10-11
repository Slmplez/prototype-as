/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.datamapping;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.datamapping.ClientServerArrayTypeMapping;
import autosar3x.system.datamapping.ClientServerCompositeTypeMapping;
import autosar3x.system.datamapping.IndexedArrayElement;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignal;

public interface ClientServerArrayElementMapping
extends ARObject {
    public ClientServerArrayTypeMapping getClientServerArrayTypeMapping();

    public void setClientServerArrayTypeMapping(ClientServerArrayTypeMapping var1);

    public ClientServerCompositeTypeMapping getComplexTypeMapping();

    public void setComplexTypeMapping(ClientServerCompositeTypeMapping var1);

    public IndexedArrayElement getIndexedArrayElement();

    public void setIndexedArrayElement(IndexedArrayElement var1);

    public SystemSignal getSignal();

    public void setSignal(SystemSignal var1);
}

