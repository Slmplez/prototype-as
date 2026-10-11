/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.framework.console.CommandInterpreter
 *  org.eclipse.osgi.framework.console.CommandProvider
 */
package org.eclipse.core.internal.registry.osgi;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.osgi.framework.console.CommandInterpreter;
import org.eclipse.osgi.framework.console.CommandProvider;

public class RegistryCommandProvider
implements CommandProvider {
    private static final String NEW_LINE = "\r\n";
    private static final String indent = "   ";
    private boolean verbose = false;

    public String getHelp() {
        return this.getHelp(null);
    }

    private String getHelp(String commandName) {
        boolean all = commandName == null;
        StringBuffer sb = new StringBuffer();
        if (all) {
            sb.append("---Extension Registry Commands---");
            sb.append(NEW_LINE);
        }
        if (all || "ns".equals(commandName)) {
            sb.append("\tns [-v] [name] - display extension points in the namespace; add -v to display extensions");
            sb.append(NEW_LINE);
        }
        if (all || "pt".equals(commandName)) {
            sb.append("\tpt [-v] uniqueExtensionPointId - display the extension point and extensions; add -v to display config elements");
            sb.append(NEW_LINE);
        }
        return sb.toString();
    }

    public void _ns(CommandInterpreter ci) throws Exception {
        String namespace = this.getArgument(ci);
        if (namespace == null) {
            String[] namespaces = RegistryFactory.getRegistry().getNamespaces();
            ci.println((Object)"Namespace(s):");
            ci.println((Object)"-------------------");
            int i = 0;
            while (i < namespaces.length) {
                ci.println((Object)namespaces[i]);
                ++i;
            }
            return;
        }
        IExtensionRegistry registry = RegistryFactory.getRegistry();
        IExtensionPoint[] extpts = registry.getExtensionPoints(namespace);
        ci.println((Object)"Extension point(s):");
        ci.println((Object)"-------------------");
        int i = 0;
        while (i < extpts.length) {
            this.displayExtensionPoint(extpts[i], ci);
            ++i;
        }
        if (this.verbose) {
            ci.println((Object)"\nExtension(s):");
            ci.println((Object)"-------------------");
            IExtension[] exts = RegistryFactory.getRegistry().getExtensions(namespace);
            int j = 0;
            while (j < exts.length) {
                this.displayExtension(exts[j], ci, true);
                ++j;
            }
        }
    }

    public void _pt(CommandInterpreter ci) throws Exception {
        String extensionPointId = this.getArgument(ci);
        if (extensionPointId == null) {
            return;
        }
        IExtensionPoint extpt = RegistryFactory.getRegistry().getExtensionPoint(extensionPointId);
        if (extpt == null) {
            return;
        }
        ci.print((Object)"Extension point: ");
        this.displayExtensionPoint(extpt, ci);
        IExtension[] exts = extpt.getExtensions();
        ci.println((Object)"\nExtension(s):");
        ci.println((Object)"-------------------");
        int i = 0;
        while (i < exts.length) {
            this.displayExtension(exts[i], ci, false);
            if (this.verbose) {
                IConfigurationElement[] ce = exts[i].getConfigurationElements();
                int j = 0;
                while (j < ce.length) {
                    this.displayConfigElement(ci, ce[j], 1);
                    ++j;
                }
                ci.println();
            }
            ++i;
        }
    }

    public Object _help(CommandInterpreter intp) {
        String commandName = intp.nextArgument();
        if (commandName == null) {
            return Boolean.FALSE;
        }
        String help = this.getHelp(commandName);
        if (help.length() > 0) {
            return help;
        }
        return Boolean.FALSE;
    }

    private String getArgument(CommandInterpreter ci) {
        String firstParm = ci.nextArgument();
        if ("-v".equals(firstParm)) {
            this.verbose = true;
            return ci.nextArgument();
        }
        this.verbose = false;
        return firstParm;
    }

    private void displayExtensionPoint(IExtensionPoint extentionPoint, CommandInterpreter ci) {
        if (extentionPoint == null) {
            return;
        }
        ci.println((Object)(String.valueOf(extentionPoint.getUniqueIdentifier()) + " [from " + extentionPoint.getContributor().getName() + ']'));
    }

    private void displayExtension(IExtension extention, CommandInterpreter ci, boolean full) {
        if (extention == null) {
            return;
        }
        if (full) {
            ci.print((Object)("Id: " + extention.getUniqueIdentifier()));
            ci.print((Object)(" PointId: " + extention.getExtensionPointUniqueIdentifier()));
            ci.println((Object)(" [from " + extention.getContributor().getName() + "]"));
        } else {
            ci.println((Object)(String.valueOf(extention.getUniqueIdentifier()) + " [from " + extention.getContributor().getName() + "]"));
        }
    }

    private void displayConfigElement(CommandInterpreter ci, IConfigurationElement ce, int level) throws Exception {
        String spacing = this.spacing(ci, level);
        ci.println((Object)(String.valueOf(spacing) + '<' + ce.getName() + '>'));
        String[] attrs = ce.getAttributeNames();
        int k = 0;
        while (k < attrs.length) {
            ci.println((Object)(indent + spacing + attrs[k] + " = " + ce.getAttribute(attrs[k])));
            ++k;
        }
        String value = ce.getValue();
        if (value != null) {
            ci.println((Object)(indent + spacing + value));
        }
        IConfigurationElement[] children = ce.getChildren();
        int z = 0;
        while (z < children.length) {
            this.displayConfigElement(ci, children[z], level + 1);
            ++z;
        }
        ci.println((Object)(String.valueOf(spacing) + "</" + ce.getName() + '>'));
    }

    private String spacing(CommandInterpreter ci, int level) {
        StringBuffer b = new StringBuffer();
        int i = 0;
        while (i < level) {
            b.append(indent);
            ++i;
        }
        return b.toString();
    }
}

