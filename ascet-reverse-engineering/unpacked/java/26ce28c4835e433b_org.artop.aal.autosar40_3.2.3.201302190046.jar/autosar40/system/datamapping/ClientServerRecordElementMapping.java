/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.datamapping;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement;
import autosar40.system.datamapping.ClientServerCompositeTypeMapping;
import autosar40.system.datamapping.ClientServerRecordTypeMapping;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignal;

public interface ClientServerRecordElementMapping
extends ARObject {
    public ClientServerRecordTypeMapping getClientServerRecordTypeMapping();

    public void setClientServerRecordTypeMapping(ClientServerRecordTypeMapping var1);

    public ApplicationRecordElement getApplicationRecordElement();

    public void setApplicationRecordElement(ApplicationRecordElement var1);

    public ClientServerCompositeTypeMapping getComplexTypeMapping();

    public void setComplexTypeMapping(ClientServerCompositeTypeMapping var1);

    public ImplementationDataTypeElement getImplementationRecordElement();

    public void setImplementationRecordElement(ImplementationDataTypeElement var1);

    public SystemSignal getSystemSignal();

    public void setSystemSignal(SystemSignal var1);
}

