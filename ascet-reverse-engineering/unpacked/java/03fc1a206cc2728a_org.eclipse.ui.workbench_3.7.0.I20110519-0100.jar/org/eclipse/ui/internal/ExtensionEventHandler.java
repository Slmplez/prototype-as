/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.ExtensionEventHandlerMessages;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.themes.ColorDefinition;
import org.eclipse.ui.internal.themes.FontDefinition;
import org.eclipse.ui.internal.themes.ThemeElementHelper;
import org.eclipse.ui.internal.themes.ThemeRegistry;
import org.eclipse.ui.internal.themes.ThemeRegistryReader;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.themes.ITheme;

class ExtensionEventHandler
implements IRegistryChangeListener {
    private Workbench workbench;
    private List changeList = new ArrayList(10);

    public ExtensionEventHandler(Workbench workbench) {
        this.workbench = workbench;
    }

    public void registryChanged(IRegistryChangeEvent event) {
        try {
            IExtensionDelta[] delta = event.getExtensionDeltas(WorkbenchPlugin.PI_WORKBENCH);
            Display display = PlatformUI.getWorkbench().getDisplay();
            if (display == null) {
                return;
            }
            ArrayList<IExtensionDelta> appearList = new ArrayList<IExtensionDelta>(5);
            ArrayList<IExtensionDelta> revokeList = new ArrayList<IExtensionDelta>(5);
            String id = null;
            int numPerspectives = 0;
            int numActionSetPartAssoc = 0;
            int i = 0;
            while (i < delta.length) {
                id = delta[i].getExtensionPoint().getSimpleIdentifier();
                if (delta[i].getKind() == 1) {
                    if (id.equals("actionSets")) {
                        appearList.add(0, delta[i]);
                    } else if (!(id.equals("perspectives") || id.equals("views") || id.equals("actionSets"))) {
                        appearList.add(appearList.size() - numPerspectives, delta[i]);
                    }
                } else if (delta[i].getKind() == 2) {
                    if (id.equals("actionSetPartAssociations")) {
                        revokeList.add(0, delta[i]);
                        ++numActionSetPartAssoc;
                    } else if (id.equals("perspectives")) {
                        revokeList.add(numActionSetPartAssoc, delta[i]);
                    } else {
                        revokeList.add(delta[i]);
                    }
                }
                ++i;
            }
            Iterator iter = appearList.iterator();
            IExtensionDelta extDelta = null;
            while (iter.hasNext()) {
                extDelta = (IExtensionDelta)iter.next();
                IExtensionPoint extPt = extDelta.getExtensionPoint();
                IExtension ext = extDelta.getExtension();
                this.asyncAppear(display, extPt, ext);
            }
            this.resetCurrentPerspective(display);
        }
        finally {
            this.changeList.clear();
        }
    }

    private void asyncAppear(Display display, final IExtensionPoint extpt, final IExtension ext) {
        Runnable run = new Runnable(){

            public void run() {
                ExtensionEventHandler.this.appear(extpt, ext);
            }
        };
        display.syncExec(run);
    }

    private void appear(IExtensionPoint extPt, IExtension ext) {
        String name = extPt.getSimpleIdentifier();
        if (name.equalsIgnoreCase("fontDefinitions")) {
            this.loadFontDefinitions(ext);
            return;
        }
        if (name.equalsIgnoreCase("themes")) {
            this.loadThemes(ext);
            return;
        }
    }

    private void loadFontDefinitions(IExtension ext) {
        ThemeRegistryReader reader = new ThemeRegistryReader();
        reader.setRegistry((ThemeRegistry)WorkbenchPlugin.getDefault().getThemeRegistry());
        IConfigurationElement[] elements = ext.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            reader.readElement(elements[i]);
            ++i;
        }
        Collection fonts = reader.getFontDefinitions();
        FontDefinition[] fontDefs = fonts.toArray(new FontDefinition[fonts.size()]);
        ThemeElementHelper.populateRegistry(this.workbench.getThemeManager().getTheme("org.eclipse.ui.defaultTheme"), fontDefs, PrefUtil.getInternalPreferenceStore());
    }

    private void loadThemes(IExtension ext) {
        ThemeRegistryReader reader = new ThemeRegistryReader();
        ThemeRegistry registry = (ThemeRegistry)WorkbenchPlugin.getDefault().getThemeRegistry();
        reader.setRegistry(registry);
        IConfigurationElement[] elements = ext.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            reader.readElement(elements[i]);
            ++i;
        }
        Collection colors = reader.getColorDefinitions();
        ColorDefinition[] colorDefs = colors.toArray(new ColorDefinition[colors.size()]);
        ITheme theme = this.workbench.getThemeManager().getTheme("org.eclipse.ui.defaultTheme");
        ThemeElementHelper.populateRegistry(theme, colorDefs, PrefUtil.getInternalPreferenceStore());
        Collection fonts = reader.getFontDefinitions();
        FontDefinition[] fontDefs = fonts.toArray(new FontDefinition[fonts.size()]);
        ThemeElementHelper.populateRegistry(theme, fontDefs, PrefUtil.getInternalPreferenceStore());
        Map data = reader.getData();
        registry.addData(data);
    }

    private void resetCurrentPerspective(Display display) {
        if (this.changeList.isEmpty()) {
            return;
        }
        final StringBuffer message = new StringBuffer(ExtensionEventHandlerMessages.ExtensionEventHandler_following_changes);
        Iterator i = this.changeList.iterator();
        while (i.hasNext()) {
            message.append(i.next());
        }
        message.append(ExtensionEventHandlerMessages.ExtensionEventHandler_need_to_reset);
        display.asyncExec(new Runnable(){

            public void run() {
                Shell parentShell = null;
                IWorkbenchWindow window = ExtensionEventHandler.this.workbench.getActiveWorkbenchWindow();
                if (window == null) {
                    if (ExtensionEventHandler.this.workbench.getWorkbenchWindowCount() == 0) {
                        return;
                    }
                    window = ExtensionEventHandler.this.workbench.getWorkbenchWindows()[0];
                }
                if (MessageDialog.openQuestion((Shell)(parentShell = window.getShell()), (String)ExtensionEventHandlerMessages.ExtensionEventHandler_reset_perspective, (String)message.toString())) {
                    IWorkbenchPage page = window.getActivePage();
                    if (page == null) {
                        return;
                    }
                    page.resetPerspective();
                }
            }
        });
    }
}

