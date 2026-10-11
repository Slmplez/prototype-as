/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferencePage
 *  org.eclipse.jface.viewers.ArrayContentProvider
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.ui.internal.dialogs;

import java.util.Arrays;
import java.util.HashSet;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.viewers.ArrayContentProvider;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.testing.ContributionInfo;

public class StartupPreferencePage
extends PreferencePage
implements IWorkbenchPreferencePage {
    private Table pluginsList;
    private Workbench workbench;

    protected Control createContents(Composite parent) {
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)parent, "org.eclipse.ui.startup_preference_page_context");
        Composite composite = this.createComposite(parent);
        this.createEarlyStartupSelection(composite);
        return composite;
    }

    protected Composite createComposite(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        composite.setLayout((Layout)layout);
        GridData data = new GridData(1808);
        composite.setLayoutData((Object)data);
        composite.setFont(parent.getFont());
        return composite;
    }

    protected void createEarlyStartupSelection(Composite parent) {
        Label label = new Label(parent, 0);
        label.setText(WorkbenchMessages.StartupPreferencePage_label);
        label.setFont(parent.getFont());
        GridData data = new GridData(768);
        label.setLayoutData((Object)data);
        this.pluginsList = new Table(parent, 2848);
        data = new GridData(1808);
        this.pluginsList.setFont(parent.getFont());
        this.pluginsList.setLayoutData((Object)data);
        TableViewer viewer = new TableViewer(this.pluginsList);
        viewer.setLabelProvider((IBaseLabelProvider)new LabelProvider(){

            public String getText(Object element) {
                return (String)Platform.getBundle((String)((ContributionInfo)element).getBundleId()).getHeaders().get("Bundle-Name");
            }
        });
        viewer.setContentProvider((IContentProvider)ArrayContentProvider.getInstance());
        viewer.setInput((Object)this.workbench.getEarlyActivatedPlugins());
        viewer.setFilters(new ViewerFilter[]{this.createPlatformUIFilter()});
        this.updateCheckState();
    }

    private ViewerFilter createPlatformUIFilter() {
        return new ViewerFilter(){

            public boolean select(Viewer viewer, Object parentElement, Object element) {
                if (element instanceof ContributionInfo) {
                    ContributionInfo info = (ContributionInfo)element;
                    return !"org.eclipse.ui".equals(info.getBundleId());
                }
                return true;
            }
        };
    }

    private void updateCheckState() {
        HashSet<String> disabledPlugins = new HashSet<String>(Arrays.asList(this.workbench.getDisabledEarlyActivatedPlugins()));
        int i = 0;
        while (i < this.pluginsList.getItemCount()) {
            TableItem item;
            String pluginId = ((ContributionInfo)(item = this.pluginsList.getItem(i)).getData()).getBundleId();
            item.setChecked(!disabledPlugins.contains(pluginId));
            ++i;
        }
    }

    public void init(IWorkbench workbench) {
        this.workbench = (Workbench)workbench;
    }

    protected void performDefaults() {
        IPreferenceStore store = PrefUtil.getInternalPreferenceStore();
        store.setToDefault("PLUGINS_NOT_ACTIVATED_ON_STARTUP");
        this.updateCheckState();
    }

    public boolean performOk() {
        StringBuffer preference = new StringBuffer();
        TableItem[] items = this.pluginsList.getItems();
        int i = 0;
        while (i < items.length) {
            if (!items[i].getChecked()) {
                preference.append(((ContributionInfo)items[i].getData()).getBundleId());
                preference.append(';');
            }
            ++i;
        }
        String pref = preference.toString();
        IPreferenceStore store = PrefUtil.getInternalPreferenceStore();
        store.putValue("PLUGINS_NOT_ACTIVATED_ON_STARTUP", pref);
        PrefUtil.savePrefs();
        return true;
    }
}

