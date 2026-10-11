/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.BuildSettingsType;
import com.etas.amd620.core.ComponentProject.PlatformType;
import org.eclipse.emf.ecore.EObject;

public interface BuildConfigurationType
extends EObject {
    public PlatformType getPlatform();

    public void setPlatform(PlatformType var1);

    public BuildSettingsType getBuildSettings();

    public void setBuildSettings(BuildSettingsType var1);

    public String getBuildConfigKey();

    public void setBuildConfigKey(String var1);

    public byte[] getChecksum();

    public void setChecksum(byte[] var1);

    public byte[] getChecksumCodeRelevant();

    public void setChecksumCodeRelevant(byte[] var1);

    public String getName();

    public void setName(String var1);

    public void unsetName();

    public boolean isSetName();
}

