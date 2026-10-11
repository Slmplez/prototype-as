/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.provisional.configuratormanipulator.ConfiguratorManipulator
 *  org.eclipse.equinox.internal.provisional.configuratormanipulator.ConfiguratorManipulatorFactory
 */
package org.eclipse.equinox.internal.simpleconfigurator.manipulator;

import org.eclipse.equinox.internal.provisional.configuratormanipulator.ConfiguratorManipulator;
import org.eclipse.equinox.internal.provisional.configuratormanipulator.ConfiguratorManipulatorFactory;
import org.eclipse.equinox.internal.simpleconfigurator.manipulator.SimpleConfiguratorManipulatorImpl;

public class SimpleConfiguratorManipulatorFactoryImpl
extends ConfiguratorManipulatorFactory {
    protected ConfiguratorManipulator createConfiguratorManipulator() {
        return new SimpleConfiguratorManipulatorImpl();
    }
}

