/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.topology;

import autosar21.system.topology.ECUCommunicationPortInstance;
import autosar21.system.topology.LINCommunicationPortInstanceNodeRoleEnum;
import autosar21.system.topology.LINCommunicationPortInstanceProtocolVersionEnum;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface LINCommunicationPortInstance
extends ECUCommunicationPortInstance {
    public Integer getDiagnosticAddress();

    public void setDiagnosticAddress(Integer var1);

    public void unsetDiagnosticAddress();

    public boolean isSetDiagnosticAddress();

    public Integer getFunctionID();

    public void setFunctionID(Integer var1);

    public void unsetFunctionID();

    public boolean isSetFunctionID();

    public EList<Integer> getInitialNADs();

    public void unsetInitialNADs();

    public boolean isSetInitialNADs();

    public Integer getMaxMessageLength();

    public void setMaxMessageLength(Integer var1);

    public void unsetMaxMessageLength();

    public boolean isSetMaxMessageLength();

    public Double getMaxPermittedSlaveJitter();

    public void setMaxPermittedSlaveJitter(Double var1);

    public void unsetMaxPermittedSlaveJitter();

    public boolean isSetMaxPermittedSlaveJitter();

    public LINCommunicationPortInstanceNodeRoleEnum getNodeRole();

    public void setNodeRole(LINCommunicationPortInstanceNodeRoleEnum var1);

    public void unsetNodeRole();

    public boolean isSetNodeRole();

    public Double getP2Min();

    public void setP2Min(Double var1);

    public void unsetP2Min();

    public boolean isSetP2Min();

    public LINCommunicationPortInstanceProtocolVersionEnum getProtocolVersion();

    public void setProtocolVersion(LINCommunicationPortInstanceProtocolVersionEnum var1);

    public void unsetProtocolVersion();

    public boolean isSetProtocolVersion();

    public Double getStMin();

    public void setStMin(Double var1);

    public void unsetStMin();

    public boolean isSetStMin();

    public Integer getSupplierID();

    public void setSupplierID(Integer var1);

    public void unsetSupplierID();

    public boolean isSetSupplierID();

    public String getSupportSID();

    public void setSupportSID(String var1);

    public void unsetSupportSID();

    public boolean isSetSupportSID();

    public Double getTimeBase();

    public void setTimeBase(Double var1);

    public void unsetTimeBase();

    public boolean isSetTimeBase();

    public Double getTimeBaseJitter();

    public void setTimeBaseJitter(Double var1);

    public void unsetTimeBaseJitter();

    public boolean isSetTimeBaseJitter();

    public Integer getVariantID();

    public void setVariantID(Integer var1);

    public void unsetVariantID();

    public boolean isSetVariantID();
}

