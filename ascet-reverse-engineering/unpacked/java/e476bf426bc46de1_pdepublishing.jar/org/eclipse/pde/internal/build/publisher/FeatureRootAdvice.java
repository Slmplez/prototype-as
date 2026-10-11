/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils$IPathComputer
 *  org.eclipse.equinox.internal.p2.publisher.FileSetDescriptor
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.publisher.AbstractAdvice
 *  org.eclipse.equinox.p2.publisher.actions.IFeatureRootAdvice
 */
package org.eclipse.pde.internal.build.publisher;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.eclipse.equinox.internal.p2.core.helpers.FileUtils;
import org.eclipse.equinox.internal.p2.publisher.FileSetDescriptor;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.AbstractAdvice;
import org.eclipse.equinox.p2.publisher.actions.IFeatureRootAdvice;
import org.eclipse.pde.internal.build.publisher.GatheringComputer;

public class FeatureRootAdvice
extends AbstractAdvice
implements IFeatureRootAdvice {
    private static final int IDX_COMPUTER = 0;
    private static final int IDX_DESCRIPTOR = 1;
    private final Map<String, Object[]> advice = new HashMap<String, Object[]>();
    private String featureId;
    private Version featureVersion;

    public boolean isApplicable(String configSpec, boolean includeDefault, String id, Version version) {
        if (this.featureId != null && !this.featureId.equals(id)) {
            return false;
        }
        if (this.featureVersion != null && !this.featureVersion.equals(version)) {
            return false;
        }
        return configSpec == null || this.advice.containsKey(configSpec);
    }

    public String[] getConfigs() {
        return this.advice.keySet().toArray(new String[this.advice.size()]);
    }

    public FileUtils.IPathComputer getRootFileComputer(String config) {
        if (this.advice.containsKey(config)) {
            return (GatheringComputer)this.advice.get(config)[0];
        }
        return null;
    }

    public void addRootfiles(String config, GatheringComputer computer) {
        Object[] configAdvice = this.getConfigAdvice(config);
        if (configAdvice[0] == null) {
            configAdvice[0] = computer;
        } else {
            GatheringComputer existing = (GatheringComputer)configAdvice[0];
            existing.addAll(computer);
        }
        FileSetDescriptor descriptor = this.getDescriptor(config);
        descriptor.addFiles(computer.getFiles());
    }

    public void addPermissions(String config, String permissions, String[] files) {
        FileSetDescriptor descriptor = this.getDescriptor(config);
        int i = 0;
        while (i < files.length) {
            descriptor.addPermissions(new String[]{permissions, files[i]});
            ++i;
        }
    }

    public void addLinks(String config, String links) {
        FileSetDescriptor descriptor = this.getDescriptor(config);
        descriptor.setLinks(links);
    }

    private Object[] getConfigAdvice(String config) {
        Object[] configAdvice = this.advice.get(config);
        if (configAdvice == null) {
            configAdvice = new Object[3];
            this.advice.put(config, configAdvice);
        }
        return configAdvice;
    }

    public FileSetDescriptor getDescriptor(String config) {
        Object[] configAdvice = this.getConfigAdvice(config);
        FileSetDescriptor descriptor = null;
        if (configAdvice[1] != null) {
            descriptor = (FileSetDescriptor)configAdvice[1];
        } else {
            String key = "root";
            if (config.length() > 0) {
                key = String.valueOf(key) + "." + config;
            }
            descriptor = new FileSetDescriptor(key, config);
            configAdvice[1] = descriptor;
        }
        return descriptor;
    }

    public void setFeatureId(String featureId) {
        this.featureId = featureId;
    }

    public void setFeatureVersion(Version featureVersion) {
        this.featureVersion = featureVersion;
    }

    public String[] getConfigurations() {
        Set<String> keys = this.advice.keySet();
        return keys.toArray(new String[keys.size()]);
    }
}

