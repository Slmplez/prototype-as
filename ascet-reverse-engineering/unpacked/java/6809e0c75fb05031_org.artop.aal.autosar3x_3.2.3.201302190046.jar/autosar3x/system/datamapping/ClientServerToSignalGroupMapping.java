/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.datamapping;

import autosar3x.system.datamapping.ApplicationErrorMapping;
import autosar3x.system.datamapping.ClientIdMapping;
import autosar3x.system.datamapping.ClientServerCompositeTypeMapping;
import autosar3x.system.datamapping.ClientServerPrimitiveTypeMapping;
import autosar3x.system.datamapping.DataMapping;
import autosar3x.system.datamapping.EmptySignalMapping;
import autosar3x.system.datamapping.SequenceCounterMapping;
import autosar3x.system.datamapping.instanceref.ClientServerToSignalGroupMappingMappedOperation;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignalGroup;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ClientServerToSignalGroupMapping
extends DataMapping {
    public EList<ApplicationErrorMapping> getApplicationErrors();

    public ClientIdMapping getClientID();

    public void setClientID(ClientIdMapping var1);

    public EList<ClientServerCompositeTypeMapping> getCompositeTypeMappings();

    public EmptySignalMapping getEmptySignal();

    public void setEmptySignal(EmptySignalMapping var1);

    public ClientServerToSignalGroupMappingMappedOperation getMappedOperation();

    public void setMappedOperation(ClientServerToSignalGroupMappingMappedOperation var1);

    public EList<ClientServerPrimitiveTypeMapping> getPrimitiveTypeMappings();

    public SystemSignalGroup getRequestGroup();

    public void setRequestGroup(SystemSignalGroup var1);

    public SystemSignalGroup getResponseGroup();

    public void setResponseGroup(SystemSignalGroup var1);

    public SequenceCounterMapping getSequenceCounter();

    public void setSequenceCounter(SequenceCounterMapping var1);
}

