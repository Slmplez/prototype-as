/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.viewers.StructuredViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerDropAdapter
 *  org.eclipse.swt.dnd.DropTargetEvent
 *  org.eclipse.swt.dnd.TransferData
 */
package org.eclipse.ui.part;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.viewers.StructuredViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerDropAdapter;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.part.IDropActionDelegate;
import org.eclipse.ui.part.PluginTransfer;
import org.eclipse.ui.part.PluginTransferData;

public class PluginDropAdapter
extends ViewerDropAdapter {
    public static final String ATT_CLASS = "class";
    private TransferData currentTransfer;

    public PluginDropAdapter(StructuredViewer viewer) {
        super((Viewer)viewer);
    }

    public void drop(DropTargetEvent event) {
        try {
            if (PluginTransfer.getInstance().isSupportedType(event.currentDataType)) {
                PluginTransferData pluginData = (PluginTransferData)event.data;
                IDropActionDelegate delegate = PluginDropAdapter.getPluginAdapter(pluginData);
                if (!delegate.run(pluginData.getData(), this.getCurrentTarget())) {
                    event.detail = 0;
                }
            } else {
                super.drop(event);
            }
        }
        catch (CoreException e) {
            WorkbenchPlugin.log("Drop Failed", e.getStatus());
        }
    }

    protected TransferData getCurrentTransfer() {
        return this.currentTransfer;
    }

    protected static IDropActionDelegate getPluginAdapter(PluginTransferData data) throws CoreException {
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        String adapterName = data.getExtensionId();
        IExtensionPoint xpt = registry.getExtensionPoint("org.eclipse.ui", "dropActions");
        IExtension[] extensions = xpt.getExtensions();
        int i = 0;
        while (i < extensions.length) {
            IConfigurationElement[] configs = extensions[i].getConfigurationElements();
            if (configs != null && configs.length > 0) {
                int j = 0;
                while (j < configs.length) {
                    String id = configs[j].getAttribute("id");
                    if (id != null && id.equals(adapterName)) {
                        return (IDropActionDelegate)WorkbenchPlugin.createExtension(configs[j], ATT_CLASS);
                    }
                    ++j;
                }
            }
            ++i;
        }
        return null;
    }

    public boolean performDrop(Object data) {
        return false;
    }

    public boolean validateDrop(Object target, int operation, TransferData transferType) {
        this.currentTransfer = transferType;
        return this.currentTransfer != null && PluginTransfer.getInstance().isSupportedType(this.currentTransfer);
    }
}

