/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.launching;

import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.PropertyChangeEvent;

public interface IVMInstallChangedListener {
    public static final String PROPERTY_LIBRARY_LOCATIONS = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".PROPERTY_LIBRARY_LOCATIONS";
    public static final String PROPERTY_NAME = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".PROPERTY_NAME";
    public static final String PROPERTY_INSTALL_LOCATION = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".PROPERTY_INSTALL_LOCATION";
    public static final String PROPERTY_JAVADOC_LOCATION = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".PROPERTY_JAVADOC_LOCATION";
    public static final String PROPERTY_VM_ARGUMENTS = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".PROPERTY_VM_ARGUMENTS";

    public void defaultVMInstallChanged(IVMInstall var1, IVMInstall var2);

    public void vmChanged(PropertyChangeEvent var1);

    public void vmAdded(IVMInstall var1);

    public void vmRemoved(IVMInstall var1);
}

