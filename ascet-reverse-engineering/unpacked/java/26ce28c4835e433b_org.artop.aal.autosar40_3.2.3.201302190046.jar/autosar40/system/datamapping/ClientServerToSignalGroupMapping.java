/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.datamapping;

import autosar40.system.datamapping.ApplicationErrorMapping;
import autosar40.system.datamapping.ClientIdMapping;
import autosar40.system.datamapping.ClientServerCompositeTypeMapping;
import autosar40.system.datamapping.ClientServerPrimitiveTypeMapping;
import autosar40.system.datamapping.DataMapping;
import autosar40.system.datamapping.EmptySignalMapping;
import autosar40.system.datamapping.SequenceCounterMapping;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignalGroup;
import autosar40.system.instancerefs.OperationInSystemInstanceRef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ClientServerToSignalGroupMapping
extends DataMapping {
    public ApplicationErrorMapping getApplicationError();

    public void setApplicationError(ApplicationErrorMapping var1);

    public ClientIdMapping getClientID();

    public void setClientID(ClientIdMapping var1);

    public EList<ClientServerCompositeTypeMapping> getCompositeTypeMappings();

    public EmptySignalMapping getEmptySignal();

    public void setEmptySignal(EmptySignalMapping var1);

    public OperationInSystemInstanceRef getMappedOperation();

    public void setMappedOperation(OperationInSystemInstanceRef var1);

    public EList<ClientServerPrimitiveTypeMapping> getPrimitiveTypeMappings();

    public SystemSignalGroup getRequestGroup();

    public void setRequestGroup(SystemSignalGroup var1);

    public SystemSignalGroup getResponseGroup();

    public void setResponseGroup(SystemSignalGroup var1);

    public SequenceCounterMapping getSequenceCounter();

    public void setSequenceCounter(SequenceCounterMapping var1);
}

