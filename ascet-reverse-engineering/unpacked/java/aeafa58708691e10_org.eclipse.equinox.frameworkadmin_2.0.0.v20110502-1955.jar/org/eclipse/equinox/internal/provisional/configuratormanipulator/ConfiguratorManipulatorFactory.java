/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.provisional.configuratormanipulator;

import org.eclipse.equinox.internal.provisional.configuratormanipulator.ConfiguratorManipulator;

public abstract class ConfiguratorManipulatorFactory {
    public static final String SYSTEM_PROPERTY_KEY = "org.eclipse.equinox.configuratorManipulatorFactory";

    protected abstract ConfiguratorManipulator createConfiguratorManipulator();

    public static ConfiguratorManipulator getInstance(String className) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        ConfiguratorManipulatorFactory factory = (ConfiguratorManipulatorFactory)Class.forName(className).newInstance();
        return factory.createConfiguratorManipulator();
    }
}

