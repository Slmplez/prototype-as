/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.BuildConfigurationType;
import com.etas.amd620.core.ComponentProject.DataConfigurationType;
import com.etas.amd620.core.ComponentProject.FilesType;
import com.etas.amd620.core.ComponentProject.ImplementationConfigurationType;
import com.etas.amd620.core.ComponentProject.MessageTType;
import com.etas.amd620.core.ComponentProject.ModelConfigurationT;
import com.etas.amd620.core.ComponentProject.OsLogicType;
import com.etas.amd620.core.ComponentProject.SimulationConfigurationType;
import com.etas.amd620.core.ComponentProject.TransferOptionsType;
import org.eclipse.emf.ecore.EObject;
import org.w3._2000._09.xmldsig.SignatureType;

public interface ProjectType
extends EObject {
    public ImplementationConfigurationType getImplementationConfiguration();

    public void setImplementationConfiguration(ImplementationConfigurationType var1);

    public DataConfigurationType getDataConfiguration();

    public void setDataConfiguration(DataConfigurationType var1);

    public OsLogicType getOsLogic();

    public void setOsLogic(OsLogicType var1);

    public ModelConfigurationT getModelConfiguration();

    public void setModelConfiguration(ModelConfigurationT var1);

    public BuildConfigurationType getBuildConfiguration();

    public void setBuildConfiguration(BuildConfigurationType var1);

    public SimulationConfigurationType getSimulationConfiguration();

    public void setSimulationConfiguration(SimulationConfigurationType var1);

    public MessageTType getHiddenMessageTypes();

    public void setHiddenMessageTypes(MessageTType var1);

    public MessageTType getIgnoredMessageTypes();

    public void setIgnoredMessageTypes(MessageTType var1);

    public MessageTType getPromotedToErrorMessageTypes();

    public void setPromotedToErrorMessageTypes(MessageTType var1);

    public MessageTType getPromotedToWarningMessageTypes();

    public void setPromotedToWarningMessageTypes(MessageTType var1);

    public TransferOptionsType getTransferOptions();

    public void setTransferOptions(TransferOptionsType var1);

    public FilesType getFiles();

    public void setFiles(FilesType var1);

    public SignatureType getSignature();

    public void setSignature(SignatureType var1);

    public String getBuildConfigKey();

    public void setBuildConfigKey(String var1);

    public String getSchemaVersion();

    public void setSchemaVersion(String var1);

    public String getToolVersion();

    public void setToolVersion(String var1);
}

