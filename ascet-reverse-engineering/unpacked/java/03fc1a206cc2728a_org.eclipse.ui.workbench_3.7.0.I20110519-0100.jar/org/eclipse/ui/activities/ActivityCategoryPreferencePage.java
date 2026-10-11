/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.dialogs.TrayDialog
 *  org.eclipse.jface.preference.PreferencePage
 *  org.eclipse.jface.resource.DeviceResourceException
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.jface.util.Util
 *  org.eclipse.jface.viewers.CheckboxTableViewer
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.ITableLabelProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.LabelProviderChangedEvent
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.activities;

import java.util.Collections;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.dialogs.TrayDialog;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.util.Util;
import org.eclipse.jface.viewers.CheckboxTableViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.ActivityManagerEvent;
import org.eclipse.ui.activities.IActivity;
import org.eclipse.ui.activities.IActivityManagerListener;
import org.eclipse.ui.activities.ICategory;
import org.eclipse.ui.activities.IMutableActivityManager;
import org.eclipse.ui.activities.NotDefinedException;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.OverlayIcon;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.activities.InternalActivityHelper;
import org.eclipse.ui.internal.activities.ws.ActivityEnabler;
import org.eclipse.ui.internal.activities.ws.ActivityMessages;
import org.eclipse.ui.plugin.AbstractUIPlugin;

public final class ActivityCategoryPreferencePage
extends PreferencePage
implements IWorkbenchPreferencePage,
IExecutableExtension {
    public static final String ACTIVITY_NAME = "activityName";
    public static final String ALLOW_ADVANCED = "allowAdvanced";
    public static final String CAPTION_MESSAGE = "captionMessage";
    public static final String CATEGORY_NAME = "categoryName";
    public static final String ACTIVITY_PROMPT_BUTTON = "activityPromptButton";
    public static final String ACTIVITY_PROMPT_BUTTON_TOOLTIP = "activityPromptButtonTooltip";
    protected IWorkbench workbench;
    private CheckboxTableViewer categoryViewer;
    private TableViewer dependantViewer;
    private Text descriptionText;
    private IMutableActivityManager workingCopy;
    private Button activityPromptButton;
    private boolean allowAdvanced = false;
    private Button advancedButton;
    private Properties strings = new Properties();

    protected Control createContents(Composite parent) {
        this.initializeDialogUnits((Control)parent);
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout(2, false);
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
        layout.verticalSpacing = this.convertVerticalDLUsToPixels(4);
        composite.setLayout((Layout)layout);
        Label label = new Label(composite, 64);
        label.setText(this.strings.getProperty(CAPTION_MESSAGE, ActivityMessages.ActivitiesPreferencePage_captionMessage));
        GridData data = new GridData(768);
        data.widthHint = 400;
        data.horizontalSpan = 2;
        label.setLayoutData((Object)data);
        label = new Label(composite, 0);
        data = new GridData(32);
        data.horizontalSpan = 2;
        label.setLayoutData((Object)data);
        this.createPromptButton(composite);
        this.createCategoryArea(composite);
        this.createDetailsArea(composite);
        this.createButtons(composite);
        this.workbench.getHelpSystem().setHelp((Control)parent, "org.eclipse.ui.capabilities_preference_page_context");
        Dialog.applyDialogFont((Control)composite);
        return composite;
    }

    private void createPromptButton(Composite composite) {
        this.activityPromptButton = new Button(composite, 32);
        this.activityPromptButton.setText(this.strings.getProperty(ACTIVITY_PROMPT_BUTTON, ActivityMessages.activityPromptButton));
        this.activityPromptButton.setToolTipText(this.strings.getProperty(ACTIVITY_PROMPT_BUTTON_TOOLTIP, ActivityMessages.activityPromptToolTip));
        GridData data = new GridData();
        data.horizontalSpan = 2;
        this.activityPromptButton.setLayoutData((Object)data);
        this.activityPromptButton.setSelection(this.getPreferenceStore().getBoolean("shouldPromptForEnablement"));
    }

    private void createButtons(final Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout(4, false);
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
        layout.verticalSpacing = this.convertVerticalDLUsToPixels(4);
        composite.setLayout((Layout)layout);
        GridData data = new GridData(768);
        data.horizontalSpan = 2;
        composite.setLayoutData((Object)data);
        Button enableAll = new Button(composite, 8);
        enableAll.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                ActivityCategoryPreferencePage.this.workingCopy.setEnabledActivityIds(ActivityCategoryPreferencePage.this.workingCopy.getDefinedActivityIds());
            }
        });
        enableAll.setText(ActivityMessages.ActivityEnabler_selectAll);
        this.setButtonLayoutData(enableAll);
        Button disableAll = new Button(composite, 8);
        disableAll.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                ActivityCategoryPreferencePage.this.workingCopy.setEnabledActivityIds(Collections.EMPTY_SET);
            }
        });
        disableAll.setText(ActivityMessages.ActivityEnabler_deselectAll);
        this.setButtonLayoutData(disableAll);
        if (this.allowAdvanced) {
            Label spacer = new Label(composite, 0);
            data = new GridData(512);
            spacer.setLayoutData((Object)data);
            this.advancedButton = new Button(composite, 8);
            this.advancedButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent e) {
                    AdvancedDialog dialog = new AdvancedDialog(parent.getShell());
                    dialog.open();
                }
            });
            this.advancedButton.setText(ActivityMessages.ActivitiesPreferencePage_advancedButton);
            this.setButtonLayoutData(this.advancedButton);
        }
    }

    private void createDetailsArea(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
        layout.verticalSpacing = this.convertVerticalDLUsToPixels(4);
        composite.setLayout((Layout)layout);
        composite.setLayoutData((Object)new GridData(1808));
        new Label(composite, 0).setText(ActivityMessages.ActivityEnabler_description);
        this.descriptionText = new Text(composite, 2120);
        GridData data = new GridData(1808);
        data.heightHint = 100;
        data.widthHint = 200;
        this.descriptionText.setLayoutData((Object)data);
        new Label(composite, 0).setText(ActivityMessages.ActivitiesPreferencePage_requirements);
        this.dependantViewer = new TableViewer(composite, 2048);
        this.dependantViewer.getControl().setLayoutData((Object)new GridData(1808));
        this.dependantViewer.setContentProvider((IContentProvider)new CategoryContentProvider());
        this.dependantViewer.addFilter((ViewerFilter)new EmptyCategoryFilter());
        this.dependantViewer.setLabelProvider((IBaseLabelProvider)new CategoryLabelProvider(false));
        this.dependantViewer.setInput((Object)Collections.EMPTY_SET);
    }

    private void createCategoryArea(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
        layout.verticalSpacing = this.convertVerticalDLUsToPixels(4);
        composite.setLayout((Layout)layout);
        GridData data = new GridData(1808);
        data.widthHint = 200;
        composite.setLayoutData((Object)data);
        Label label = new Label(composite, 0);
        label.setText(String.valueOf(this.strings.getProperty(CATEGORY_NAME, ActivityMessages.ActivityEnabler_categories)) + ':');
        Table table = new Table(composite, 2084);
        table.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                if (e.detail == 32) {
                    TableItem tableItem = (TableItem)e.item;
                    ICategory category = (ICategory)tableItem.getData();
                    if (ActivityCategoryPreferencePage.this.isLocked(category)) {
                        tableItem.setChecked(true);
                        e.doit = false;
                        return;
                    }
                    HashSet activitySet = WorkbenchActivityHelper.getActivityIdsForCategory(category);
                    if (tableItem.getChecked()) {
                        activitySet.addAll(ActivityCategoryPreferencePage.this.workingCopy.getEnabledActivityIds());
                    } else {
                        HashSet newSet = new HashSet(ActivityCategoryPreferencePage.this.workingCopy.getEnabledActivityIds());
                        newSet.removeAll(activitySet);
                        activitySet = newSet;
                    }
                    ActivityCategoryPreferencePage.this.workingCopy.setEnabledActivityIds(activitySet);
                    ActivityCategoryPreferencePage.this.updateCategoryCheckState();
                }
            }
        });
        this.categoryViewer = new CheckboxTableViewer(table);
        this.categoryViewer.getControl().setLayoutData((Object)new GridData(1808));
        this.categoryViewer.setContentProvider((IContentProvider)new CategoryContentProvider());
        CategoryLabelProvider categoryLabelProvider = new CategoryLabelProvider(true);
        this.workingCopy.addActivityManagerListener(categoryLabelProvider);
        this.categoryViewer.setLabelProvider((IBaseLabelProvider)categoryLabelProvider);
        this.categoryViewer.setComparator(new ViewerComparator());
        this.categoryViewer.addFilter((ViewerFilter)new EmptyCategoryFilter());
        this.categoryViewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                ICategory element = (ICategory)((IStructuredSelection)event.getSelection()).getFirstElement();
                ActivityCategoryPreferencePage.this.setDetails(element);
            }
        });
        this.categoryViewer.setInput((Object)this.workingCopy.getDefinedCategoryIds());
        this.updateCategoryCheckState();
    }

    private void updateCategoryCheckState() {
        ICategory[] enabledCategories = this.getEnabledCategories();
        Object[] partiallyEnabledCategories = this.getPartialCategories();
        Object[] allChecked = new Object[enabledCategories.length + partiallyEnabledCategories.length];
        System.arraycopy(enabledCategories, 0, allChecked, 0, enabledCategories.length);
        System.arraycopy(partiallyEnabledCategories, 0, allChecked, enabledCategories.length, partiallyEnabledCategories.length);
        this.categoryViewer.setCheckedElements(allChecked);
        this.categoryViewer.setGrayedElements(partiallyEnabledCategories);
    }

    private ICategory[] getPartialCategories() {
        return WorkbenchActivityHelper.resolveCategories(this.workingCopy, InternalActivityHelper.getPartiallyEnabledCategories(this.workingCopy));
    }

    private ICategory[] getEnabledCategories() {
        return WorkbenchActivityHelper.resolveCategories(this.workingCopy, InternalActivityHelper.getEnabledCategories(this.workingCopy));
    }

    protected void setDetails(ICategory category) {
        if (category == null) {
            this.clearDetails();
            return;
        }
        Set categories = null;
        categories = WorkbenchActivityHelper.isEnabled(this.workingCopy, category.getId()) ? WorkbenchActivityHelper.getDisabledCategories(this.workingCopy, category.getId()) : WorkbenchActivityHelper.getEnabledCategories(this.workingCopy, category.getId());
        categories = WorkbenchActivityHelper.getContainedCategories(this.workingCopy, category.getId());
        this.dependantViewer.setInput((Object)categories);
        try {
            this.descriptionText.setText(category.getDescription());
        }
        catch (NotDefinedException notDefinedException) {
            this.descriptionText.setText("");
        }
    }

    protected void clearDetails() {
        this.dependantViewer.setInput((Object)Collections.EMPTY_SET);
        this.descriptionText.setText("");
    }

    public void init(IWorkbench workbench) {
        this.workbench = workbench;
        this.workingCopy = workbench.getActivitySupport().createWorkingCopy();
        this.setPreferenceStore(WorkbenchPlugin.getDefault().getPreferenceStore());
    }

    protected boolean isLocked(ICategory category) {
        return !WorkbenchActivityHelper.getDisabledCategories(this.workingCopy, category.getId()).isEmpty();
    }

    public boolean performOk() {
        this.workbench.getActivitySupport().setEnabledActivityIds(this.workingCopy.getEnabledActivityIds());
        this.getPreferenceStore().setValue("shouldPromptForEnablement", this.activityPromptButton.getSelection());
        return true;
    }

    protected void performDefaults() {
        super.performDefaults();
        this.activityPromptButton.setSelection(this.getPreferenceStore().getDefaultBoolean("shouldPromptForEnablement"));
        HashSet<String> defaultEnabled = new HashSet<String>();
        Set activityIds = this.workingCopy.getDefinedActivityIds();
        Iterator i = activityIds.iterator();
        while (i.hasNext()) {
            String activityId = (String)i.next();
            IActivity activity = this.workingCopy.getActivity(activityId);
            try {
                if (!activity.isDefaultEnabled()) continue;
                defaultEnabled.add(activityId);
            }
            catch (NotDefinedException notDefinedException) {}
        }
        this.workingCopy.setEnabledActivityIds(defaultEnabled);
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) {
        if (data instanceof Hashtable) {
            Hashtable table = (Hashtable)data;
            this.allowAdvanced = Boolean.valueOf((String)table.remove(ALLOW_ADVANCED));
            this.strings.putAll(table);
        }
    }

    public void dispose() {
        if (this.workingCopy != null) {
            this.workingCopy.removeActivityManagerListener((CategoryLabelProvider)this.categoryViewer.getLabelProvider());
        }
        super.dispose();
    }

    private class AdvancedDialog
    extends TrayDialog {
        private static final String DIALOG_SETTINGS_SECTION = "ActivityCategoryPreferencePageAdvancedDialogSettings";
        ActivityEnabler enabler;

        protected AdvancedDialog(Shell parentShell) {
            super(parentShell);
            this.setShellStyle(this.getShellStyle() | 0x10000000);
        }

        protected void configureShell(Shell newShell) {
            super.configureShell(newShell);
            String activityName = ActivityCategoryPreferencePage.this.strings.getProperty(ActivityCategoryPreferencePage.ACTIVITY_NAME, ActivityMessages.ActivityEnabler_activities);
            activityName = Util.replaceAll((String)activityName, (String)"&", (String)"");
            newShell.setText(NLS.bind((String)ActivityMessages.ActivitiesPreferencePage_advancedDialogTitle, (Object)activityName));
        }

        protected Control createDialogArea(Composite parent) {
            Composite composite = (Composite)super.createDialogArea(parent);
            this.enabler = new ActivityEnabler(ActivityCategoryPreferencePage.this.workingCopy, ActivityCategoryPreferencePage.this.strings);
            Control enablerControl = this.enabler.createControl(composite);
            enablerControl.setLayoutData((Object)new GridData(1808));
            return composite;
        }

        protected void okPressed() {
            this.enabler.updateActivityStates();
            super.okPressed();
        }

        protected IDialogSettings getDialogBoundsSettings() {
            IDialogSettings settings = WorkbenchPlugin.getDefault().getDialogSettings();
            IDialogSettings section = settings.getSection(DIALOG_SETTINGS_SECTION);
            if (section == null) {
                section = settings.addNewSection(DIALOG_SETTINGS_SECTION);
            }
            return section;
        }

        protected boolean isResizable() {
            return true;
        }
    }

    private class CategoryContentProvider
    implements IStructuredContentProvider {
        private CategoryContentProvider() {
        }

        public Object[] getElements(Object inputElement) {
            return WorkbenchActivityHelper.resolveCategories(ActivityCategoryPreferencePage.this.workingCopy, (Set)inputElement);
        }

        public void dispose() {
        }

        public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        }
    }

    private class CategoryLabelProvider
    extends LabelProvider
    implements ITableLabelProvider,
    IActivityManagerListener {
        private LocalResourceManager manager = new LocalResourceManager(JFaceResources.getResources());
        private ImageDescriptor lockDescriptor;
        private boolean decorate;

        public CategoryLabelProvider(boolean decorate) {
            this.decorate = decorate;
            this.lockDescriptor = AbstractUIPlugin.imageDescriptorFromPlugin("org.eclipse.ui", "icons/full/ovr16/lock_ovr.gif");
        }

        public Image getColumnImage(Object element, int columnIndex) {
            ICategory category = (ICategory)element;
            ImageDescriptor descriptor = PlatformUI.getWorkbench().getActivitySupport().getImageDescriptor(category);
            if (descriptor != null) {
                try {
                    if (this.decorate && ActivityCategoryPreferencePage.this.isLocked(category)) {
                        ImageData originalImageData = descriptor.getImageData();
                        OverlayIcon overlay = new OverlayIcon(descriptor, this.lockDescriptor, new Point(originalImageData.width, originalImageData.height));
                        return this.manager.createImage((ImageDescriptor)overlay);
                    }
                    return this.manager.createImage(descriptor);
                }
                catch (DeviceResourceException e) {
                    WorkbenchPlugin.log(e);
                }
            }
            return null;
        }

        public String getText(Object element) {
            String name = null;
            ICategory category = (ICategory)element;
            try {
                name = category.getName();
            }
            catch (NotDefinedException notDefinedException) {
                name = category.getId();
            }
            if (this.decorate && ActivityCategoryPreferencePage.this.isLocked(category)) {
                name = NLS.bind((String)ActivityMessages.ActivitiesPreferencePage_lockedMessage, (Object)name);
            }
            return name;
        }

        public String getColumnText(Object element, int columnIndex) {
            return this.getText(element);
        }

        public void dispose() {
            super.dispose();
            this.manager.dispose();
        }

        public void activityManagerChanged(ActivityManagerEvent activityManagerEvent) {
            if (activityManagerEvent.haveEnabledActivityIdsChanged()) {
                ActivityCategoryPreferencePage.this.updateCategoryCheckState();
                this.fireLabelProviderChanged(new LabelProviderChangedEvent((IBaseLabelProvider)this));
            }
        }
    }

    private class EmptyCategoryFilter
    extends ViewerFilter {
        private EmptyCategoryFilter() {
        }

        public boolean select(Viewer viewer, Object parentElement, Object element) {
            ICategory category = (ICategory)element;
            return !InternalActivityHelper.getActivityIdsForCategory(ActivityCategoryPreferencePage.this.workingCopy, category).isEmpty();
        }
    }
}

