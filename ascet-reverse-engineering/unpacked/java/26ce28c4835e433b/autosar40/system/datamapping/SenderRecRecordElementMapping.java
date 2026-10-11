/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.datamapping;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement;
import autosar40.system.datamapping.SenderRecCompositeTypeMapping;
import autosar40.system.datamapping.SenderRecRecordTypeMapping;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignal;

public interface SenderRecRecordElementMapping
extends ARObject {
    public SenderRecRecordTypeMapping getSenderRecRecordTypeMapping();

    public void setSenderRecRecordTypeMapping(SenderRecRecordTypeMapping var1);

    public ApplicationRecordElement getApplicationRecordElement();

    public void setApplicationRecordElement(ApplicationRecordElement var1);

    public SenderRecCompositeTypeMapping getComplexTypeMapping();

    public void setComplexTypeMapping(SenderRecCompositeTypeMapping var1);

    public ImplementationDataTypeElement getImplementationRecordElement();

    public void setImplementationRecordElement(ImplementationDataTypeElement var1);

    public SystemSignal getSystemSignal();

    public void setSystemSignal(SystemSignal var1);
}

