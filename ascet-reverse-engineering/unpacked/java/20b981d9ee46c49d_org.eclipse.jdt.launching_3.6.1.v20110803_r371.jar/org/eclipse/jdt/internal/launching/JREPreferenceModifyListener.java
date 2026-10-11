/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IPreferenceNodeVisitor
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.eclipse.core.runtime.preferences.PreferenceModifyListener
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.jdt.internal.launching;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IPreferenceNodeVisitor;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.core.runtime.preferences.PreferenceModifyListener;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.internal.launching.VMDefinitionsContainer;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.VMStandin;
import org.osgi.service.prefs.BackingStoreException;

public class JREPreferenceModifyListener
extends PreferenceModifyListener {
    public IEclipsePreferences preApply(IEclipsePreferences node) {
        try {
            JavaRuntime.getVMInstallTypes();
            node.accept((IPreferenceNodeVisitor)new Visitor());
        }
        catch (BackingStoreException e) {
            LaunchingPlugin.log(e);
        }
        return node;
    }

    class Visitor
    implements IPreferenceNodeVisitor {
        Visitor() {
        }

        public boolean visit(IEclipsePreferences node) throws BackingStoreException {
            if (node.name().equals(LaunchingPlugin.getUniqueIdentifier())) {
                String jresXML = node.get(JavaRuntime.PREF_VM_XML, null);
                if (jresXML != null) {
                    VMDefinitionsContainer vms = new VMDefinitionsContainer();
                    String pref = InstanceScope.INSTANCE.getNode("org.eclipse.jdt.launching").get(JavaRuntime.PREF_VM_XML, "");
                    HashMap<String, IVMInstall> names = new HashMap<String, IVMInstall>();
                    HashSet<String> ids = new HashSet<String>();
                    if (pref.length() > 0) {
                        try {
                            VMDefinitionsContainer container = VMDefinitionsContainer.parseXMLIntoContainer(new ByteArrayInputStream(pref.getBytes("UTF8")));
                            List validVMList = container.getValidVMList();
                            Iterator iterator = validVMList.iterator();
                            while (iterator.hasNext()) {
                                IVMInstall vm = (IVMInstall)iterator.next();
                                names.put(vm.getName(), vm);
                                ids.add(vm.getId());
                                vms.addVM(vm);
                            }
                            vms.setDefaultVMInstallCompositeID(container.getDefaultVMInstallCompositeID());
                            vms.setDefaultVMInstallConnectorTypeID(container.getDefaultVMInstallConnectorTypeID());
                        }
                        catch (IOException e) {
                            LaunchingPlugin.log(e);
                            return false;
                        }
                    }
                    try {
                        ByteArrayInputStream inputStream = new ByteArrayInputStream(jresXML.getBytes("UTF8"));
                        VMDefinitionsContainer container = VMDefinitionsContainer.parseXMLIntoContainer(inputStream);
                        List validVMList = container.getValidVMList();
                        Iterator iterator = validVMList.iterator();
                        while (iterator.hasNext()) {
                            boolean collision;
                            IVMInstall vm = (IVMInstall)iterator.next();
                            IVMInstall existing = (IVMInstall)names.get(vm.getName());
                            if (existing != null) {
                                vms.removeVM(existing);
                                ids.remove(existing.getId());
                            }
                            if (collision = ids.contains(vm.getId())) {
                                long unique = System.currentTimeMillis();
                                while (ids.contains(String.valueOf(unique))) {
                                    ++unique;
                                }
                                vm = new VMStandin(vm, String.valueOf(unique));
                                ids.add(vm.getId());
                            }
                            vms.addVM(vm);
                        }
                        String defaultVMInstallCompositeID = container.getDefaultVMInstallCompositeID();
                        validVMList = vms.getValidVMList();
                        iterator = validVMList.iterator();
                        while (iterator.hasNext()) {
                            IVMInstall vm = (IVMInstall)iterator.next();
                            if (!JavaRuntime.getCompositeIdFromVM(vm).equals(defaultVMInstallCompositeID)) continue;
                            vms.setDefaultVMInstallCompositeID(defaultVMInstallCompositeID);
                            break;
                        }
                    }
                    catch (IOException e) {
                        LaunchingPlugin.log(e);
                        return false;
                    }
                    try {
                        String xml = vms.getAsXML();
                        node.put(JavaRuntime.PREF_VM_XML, xml);
                    }
                    catch (CoreException e) {
                        LaunchingPlugin.log(e);
                        return false;
                    }
                }
                return false;
            }
            return true;
        }
    }
}

