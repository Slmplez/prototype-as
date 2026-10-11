/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build;

import org.eclipse.osgi.service.resolver.VersionRange;
import org.osgi.framework.Version;

public class P2InfUtils {
    public static final int INSTRUCTION_INSTALL = 0;
    public static final int INSTRUCTION_UNINSTALL = 1;
    public static final int INSTRUCTION_CONFIGURE = 2;
    public static final int INSTRUCTION_UNCONFIGURE = 3;
    public static final String NAMESPACE_IU = "org.eclipse.equinox.p2.iu";
    public static final String NAMESPACE_OSGI = "osgi.bundle";
    public static final String NAMESPACE_TYPE = "org.eclipse.equinox.p2.eclipse.type";
    public static final String NAMESPACE_FLAVOR = "org.eclipse.equinox.p2.flavor";
    private static final VersionRange BUNDLE_RANGE = new VersionRange("[1.0.0, 2.0.0)");

    public static void printBundleCU(StringBuffer buffer, int i, String name, Version hostVersion, String filter, String[] instructions) {
        P2InfUtils.printBundleCU(buffer, i, name, hostVersion.toString(), hostVersion, filter, instructions);
    }

    public static void printBundleCU(StringBuffer buffer, int i, String name, String cuVersion, Version hostVersion, String filter, String[] instructions) {
        VersionRange hostRange = new VersionRange(hostVersion, true, hostVersion, true);
        String cuRange = "[" + cuVersion + "," + cuVersion + "]";
        String prefix = "units." + i + '.';
        P2InfUtils.printRequires(buffer, null, i, NAMESPACE_IU, "@FLAVOR@" + name, cuRange, filter, true);
        buffer.append(String.valueOf(prefix) + "id=@FLAVOR@" + name + '\n');
        buffer.append(String.valueOf(prefix) + "version=" + cuVersion + '\n');
        buffer.append(String.valueOf(prefix) + "properties.1.name=org.eclipse.pde.build.default\n");
        buffer.append(String.valueOf(prefix) + "properties.1.value=true\n");
        if (filter != null) {
            buffer.append(String.valueOf(prefix) + "filter=" + filter + '\n');
        }
        P2InfUtils.printProvides(buffer, prefix, 1, NAMESPACE_IU, "@FLAVOR@" + name, cuVersion);
        P2InfUtils.printProvides(buffer, prefix, 2, NAMESPACE_FLAVOR, "@FLAVOR@", "1.0.0");
        P2InfUtils.printInstructions(buffer, prefix, instructions);
        P2InfUtils.printHostRequires(buffer, prefix, 1, NAMESPACE_OSGI, name, hostRange, false);
        P2InfUtils.printHostRequires(buffer, prefix, 2, NAMESPACE_TYPE, "bundle", BUNDLE_RANGE, false);
        P2InfUtils.printRequires(buffer, prefix, 1, NAMESPACE_OSGI, name, hostRange, null, false);
        P2InfUtils.printRequires(buffer, prefix, 2, NAMESPACE_TYPE, "bundle", BUNDLE_RANGE, null, false);
    }

    public static void printIU(StringBuffer buffer, int i, String name, Version version, String filter, String[] instructions) {
        P2InfUtils.printIU(buffer, i, name, version.toString(), filter, instructions);
    }

    public static void printIU(StringBuffer buffer, int i, String name, String version, String filter, String[] instructions) {
        P2InfUtils.printRequires(buffer, null, i, NAMESPACE_IU, "@FLAVOR@" + name, "[" + version + "," + version + "]", filter, true);
        String prefix = "units." + i + '.';
        buffer.append(String.valueOf(prefix) + "id=@FLAVOR@" + name + '\n');
        buffer.append(String.valueOf(prefix) + "version=" + version + '\n');
        buffer.append(String.valueOf(prefix) + "properties.1.name=org.eclipse.pde.build.default\n");
        buffer.append(String.valueOf(prefix) + "properties.1.value=true\n");
        if (filter != null) {
            buffer.append(String.valueOf(prefix) + "filter=" + filter + '\n');
        }
        P2InfUtils.printProvides(buffer, prefix, 1, NAMESPACE_IU, "@FLAVOR@" + name, version);
        P2InfUtils.printProvides(buffer, prefix, 2, NAMESPACE_FLAVOR, "@FLAVOR@", "1.0.0");
        buffer.append(String.valueOf(prefix) + "touchpoint.id=org.eclipse.equinox.p2.osgi\n");
        buffer.append(String.valueOf(prefix) + "touchpoint.version=1.0.0\n");
        P2InfUtils.printInstructions(buffer, prefix, instructions);
    }

    private static void printInstructions(StringBuffer buffer, String prefix, String[] instructions) {
        if (instructions[0] != null) {
            buffer.append(String.valueOf(prefix) + "instructions.install=" + instructions[0] + '\n');
        }
        if (instructions[1] != null) {
            buffer.append(String.valueOf(prefix) + "instructions.uninstall=" + instructions[1] + '\n');
        }
        if (instructions[3] != null) {
            buffer.append(String.valueOf(prefix) + "instructions.unconfigure=" + instructions[3] + '\n');
        }
        if (instructions[2] != null) {
            buffer.append(String.valueOf(prefix) + "instructions.configure=" + instructions[2] + '\n');
        }
    }

    public static void printRequires(StringBuffer buffer, String prefix, int i, String namespace, String name, VersionRange range, String filter, boolean greedy) {
        P2InfUtils.printRequires(buffer, prefix, i, namespace, name, range.toString(), filter, greedy);
    }

    public static void printRequires(StringBuffer buffer, String prefix, int i, String namespace, String name, String range, String filter, boolean greedy) {
        if (prefix == null) {
            prefix = "";
        }
        buffer.append(String.valueOf(prefix) + "requires." + i + ".namespace=" + namespace + "\n");
        buffer.append(String.valueOf(prefix) + "requires." + i + ".name=" + name + '\n');
        buffer.append(String.valueOf(prefix) + "requires." + i + ".range=" + range.toString() + '\n');
        buffer.append(String.valueOf(prefix) + "requires." + i + ".greedy=" + Boolean.toString(greedy) + '\n');
        if (filter != null) {
            buffer.append(String.valueOf(prefix) + "requires." + i + ".filter=" + filter + '\n');
        }
    }

    public static void printProvides(StringBuffer buffer, String prefix, int i, String namespace, String name, String version) {
        buffer.append(String.valueOf(prefix) + "provides." + i + ".namespace=" + namespace + '\n');
        buffer.append(String.valueOf(prefix) + "provides." + i + ".name=" + name + '\n');
        buffer.append(String.valueOf(prefix) + "provides." + i + ".version=" + version + '\n');
    }

    public static void printHostRequires(StringBuffer buffer, String prefix, int i, String namespace, String name, VersionRange range, boolean greedy) {
        if (prefix == null) {
            prefix = "";
        }
        buffer.append(String.valueOf(prefix) + "hostRequirements." + i + ".namespace=" + namespace + "\n");
        buffer.append(String.valueOf(prefix) + "hostRequirements." + i + ".name=" + name + '\n');
        buffer.append(String.valueOf(prefix) + "hostRequirements." + i + ".range=" + range.toString() + '\n');
        buffer.append(String.valueOf(prefix) + "hostRequirements." + i + ".greedy=" + Boolean.toString(greedy) + '\n');
    }
}

