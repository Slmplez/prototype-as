/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.core.internal.events;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.internal.resources.ModelObject;
import org.eclipse.core.resources.IBuildConfiguration;
import org.eclipse.core.resources.ICommand;
import org.eclipse.core.resources.IncrementalProjectBuilder;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.Platform;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BuildCommand
extends ModelObject
implements ICommand {
    private static final int MASK_AUTO = 1;
    private static final int MASK_INCREMENTAL = 2;
    private static final int MASK_FULL = 4;
    private static final int MASK_CLEAN = 8;
    private static final int MASK_CONFIGURABLE = 16;
    private static final int MASK_CONFIG_COMPUTED = 32;
    private static final int ALL_TRIGGERS = 15;
    protected HashMap<String, String> arguments = new HashMap(0);
    private boolean supportsConfigurationsCalculated;
    private boolean supportsConfigurations;
    private IncrementalProjectBuilder builder;
    private HashMap<IBuildConfiguration, IncrementalProjectBuilder> builders;
    private int triggers = 15;

    private static int maskForTrigger(int trigger) {
        switch (trigger) {
            case 9: {
                return 1;
            }
            case 10: {
                return 2;
            }
            case 6: {
                return 4;
            }
            case 15: {
                return 8;
            }
        }
        return 0;
    }

    public BuildCommand() {
        super("");
    }

    @Override
    public Object clone() {
        BuildCommand result = null;
        result = (BuildCommand)super.clone();
        if (result == null) {
            return null;
        }
        result.setArguments(this.getArguments());
        result.setBuilders(null);
        return result;
    }

    private void computeIsConfigurable() {
        IConfigurationElement[] configs;
        this.triggers |= 0x20;
        IExtension extension = Platform.getExtensionRegistry().getExtension("org.eclipse.core.resources", "builders", this.name);
        if (extension != null && (configs = extension.getConfigurationElements()).length != 0) {
            String value = configs[0].getAttribute("isConfigurable");
            this.setConfigurable(value != null && value.equalsIgnoreCase(Boolean.TRUE.toString()));
        }
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof BuildCommand)) {
            return false;
        }
        BuildCommand command = (BuildCommand)object;
        return this.getBuilderName().equals(command.getBuilderName()) && this.getArguments(false).equals(command.getArguments(false)) && (this.triggers & 0xF) == (command.triggers & 0xF);
    }

    @Override
    public Map<String, String> getArguments() {
        return this.getArguments(true);
    }

    public Map<String, String> getArguments(boolean makeCopy) {
        return this.arguments == null ? null : (makeCopy ? (Map)this.arguments.clone() : this.arguments);
    }

    public Object getBuilders() {
        if (this.supportsConfigs()) {
            return this.builders;
        }
        return this.builder;
    }

    public IncrementalProjectBuilder getBuilder(IBuildConfiguration config) {
        if (this.builders != null && this.supportsConfigs()) {
            return this.builders.get(config);
        }
        return this.builder;
    }

    @Override
    public String getBuilderName() {
        return this.getName();
    }

    public int hashCode() {
        return 37 * this.getName().hashCode() + (0xF & this.triggers);
    }

    @Override
    public boolean isBuilding(int trigger) {
        return (this.triggers & BuildCommand.maskForTrigger(trigger)) != 0;
    }

    @Override
    public boolean isConfigurable() {
        if ((this.triggers & 0x20) == 0) {
            this.computeIsConfigurable();
        }
        return (this.triggers & 0x10) != 0;
    }

    public boolean supportsConfigs() {
        if (!this.supportsConfigurationsCalculated) {
            IConfigurationElement[] configs;
            IExtension extension = Platform.getExtensionRegistry().getExtension("org.eclipse.core.resources", "builders", this.name);
            if (extension != null && (configs = extension.getConfigurationElements()).length != 0) {
                String value = configs[0].getAttribute("supportsConfigurations");
                this.supportsConfigurations = value != null && value.equalsIgnoreCase(Boolean.TRUE.toString());
            }
            this.supportsConfigurationsCalculated = true;
        }
        return this.supportsConfigurations;
    }

    @Override
    public void setArguments(Map<String, String> value) {
        this.arguments = value == null ? null : new HashMap<String, String>(value);
    }

    public void setBuilders(Object value) {
        if (value == null) {
            this.builder = null;
            this.builders = null;
        } else if (value instanceof IncrementalProjectBuilder) {
            this.builder = (IncrementalProjectBuilder)value;
        } else {
            this.builders = new HashMap((Map)value);
        }
    }

    public void addBuilder(IBuildConfiguration config, IncrementalProjectBuilder builder) {
        Assert.isTrue((this.builders == null || !this.builders.containsKey(config) ? 1 : 0) != 0);
        Assert.isTrue((this.builder == null ? 1 : 0) != 0);
        if (this.supportsConfigs()) {
            if (this.builders == null) {
                this.builders = new HashMap(1);
            }
            this.builders.put(config, builder);
        } else {
            this.builder = builder;
        }
    }

    @Override
    public void setBuilderName(String value) {
        this.setName(value == null ? "" : value);
    }

    @Override
    public void setBuilding(int trigger, boolean value) {
        if (!this.isConfigurable()) {
            return;
        }
        this.triggers = value ? (this.triggers |= BuildCommand.maskForTrigger(trigger)) : (this.triggers &= ~BuildCommand.maskForTrigger(trigger));
    }

    public void setConfigurable(boolean value) {
        this.triggers |= 0x20;
        this.triggers = value ? (this.triggers |= 0x10) : 15;
    }

    public String toString() {
        return "BuildCommand(" + this.getName() + ")";
    }
}

