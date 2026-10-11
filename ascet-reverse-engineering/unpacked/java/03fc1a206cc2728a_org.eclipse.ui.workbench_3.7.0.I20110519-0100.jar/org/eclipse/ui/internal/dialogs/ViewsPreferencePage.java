/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferencePage
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.accessibility.AccessibleAdapter
 *  org.eclipse.swt.accessibility.AccessibleEvent
 *  org.eclipse.swt.accessibility.AccessibleListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.layout.FormAttachment
 *  org.eclipse.swt.layout.FormData
 *  org.eclipse.swt.layout.FormLayout
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Group
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.dialogs;

import com.ibm.icu.text.Collator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Locale;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.layout.FormAttachment;
import org.eclipse.swt.layout.FormData;
import org.eclipse.swt.layout.FormLayout;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.themes.IThemeDescriptor;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.preferences.IWorkbenchPreferenceContainer;
import org.eclipse.ui.progress.UIJob;
import org.eclipse.ui.themes.ITheme;

public class ViewsPreferencePage
extends PreferencePage
implements IWorkbenchPreferencePage {
    private Button showTextOnPerspectiveBar;
    private Button showTraditionalStyleTabs;
    private Button enableAnimations;
    private Button useColoredLabels;
    private Button editorTopButton;
    private Button editorBottomButton;
    private Button viewTopButton;
    private Button viewBottomButton;
    private Button perspLeftButton;
    private Button perspTopLeftButton;
    private Button perspTopRightButton;
    static final String EDITORS_TITLE = WorkbenchMessages.ViewsPreference_editors;
    private static final String EDITORS_TOP_TITLE = WorkbenchMessages.ViewsPreference_editors_top;
    private static final String EDITORS_BOTTOM_TITLE = WorkbenchMessages.ViewsPreference_editors_bottom;
    private static final String VIEWS_TITLE = WorkbenchMessages.ViewsPreference_views;
    private static final String VIEWS_TOP_TITLE = WorkbenchMessages.ViewsPreference_views_top;
    private static final String VIEWS_BOTTOM_TITLE = WorkbenchMessages.ViewsPreference_views_bottom;
    private static final String PERSP_TITLE = WorkbenchMessages.ViewsPreference_perspectiveBar;
    private static final String PERSP_LEFT_TITLE = WorkbenchMessages.ViewsPreference_perspectiveBar_left;
    private static final String PERSP_TOP_LEFT_TITLE = WorkbenchMessages.ViewsPreference_perspectiveBar_topLeft;
    private static final String PERSP_TOP_RIGHT_TITLE = WorkbenchMessages.ViewsPreference_perspectiveBar_topRight;
    private static final String R21PRESENTATION_ID = "org.eclipse.ui.internal.r21presentationFactory";
    private static final String DEFAULT_PRESENTATION_ID = "org.eclipse.ui.presentations.default";
    private static final String R30_PRESENTATION_ID = "org.eclipse.ui.presentations.r30";
    private static final String INITIAL_VAL = new String();
    private static final int INITIAL_LOC_INT = -1;
    private String fastViewLoc = INITIAL_VAL;
    private String showTextOnPerspBar = INITIAL_VAL;
    private int editorAlignment;
    private boolean editorAlignmentChanged = false;
    private int viewAlignment;
    private boolean viewAlignmentChanged = false;
    private String perspBarLocation;
    private Combo themeCombo;
    private Combo presentationCombo;
    private IConfigurationElement[] presentationFactories;
    private String currentPresentationFactoryId;
    private Button overridePresButton;
    private IPropertyChangeListener overrideListener;
    private boolean restartPosted = false;
    private Group editorTabGroup;
    private Group viewTabGroup;
    private Group perspBarTabGroup;
    private Text themeDescriptionText;

    private Group createButtonGroup(Composite composite, String title) {
        Group buttonComposite = new Group(composite, 0);
        buttonComposite.setText(title);
        FormLayout layout = new FormLayout();
        layout.marginWidth = 5;
        layout.marginHeight = 5;
        buttonComposite.setLayout((Layout)layout);
        buttonComposite.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        return buttonComposite;
    }

    protected Control createContents(Composite parent) {
        this.initializeDialogUnits((Control)parent);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)parent, "org.eclipse.ui.views_preference_page_context");
        IPreferenceStore apiStore = PrefUtil.getAPIPreferenceStore();
        this.editorAlignment = apiStore.getInt("EDITOR_TAB_POSITION");
        this.viewAlignment = apiStore.getInt("VIEW_TAB_POSITION");
        this.perspBarLocation = apiStore.getString("DOCK_PERSPECTIVE_BAR");
        Composite composite = new Composite(parent, 0);
        composite.setLayoutData((Object)new GridData(4, 4, true, true));
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.verticalSpacing = this.convertVerticalDLUsToPixels(4);
        composite.setLayout((Layout)layout);
        this.createPresentationCombo(composite);
        this.createPresentationOverride(composite);
        this.createEditorTabButtonGroup(composite);
        this.createViewTabButtonGroup(composite);
        this.createPerspBarTabButtonGroup(composite);
        this.createShowTextOnPerspectiveBarPref(composite);
        this.createThemeCombo(composite);
        this.createThemeDescriptionText(composite);
        this.createShowTraditionalStyleTabsPref(composite);
        this.createEnableAnimationsPref(composite);
        this.createColoredLabelsPref(composite);
        this.updateOverride();
        this.hookOverrideListener();
        this.applyDialogFont(composite);
        return composite;
    }

    private void createColoredLabelsPref(Composite composite) {
        IPreferenceStore apiStore = PrefUtil.getAPIPreferenceStore();
        this.useColoredLabels = this.createCheckButton(composite, WorkbenchMessages.ViewsPreference_useColoredLabels, apiStore.getBoolean("USE_COLORED_LABELS"));
    }

    private void createThemeCombo(Composite composite) {
        new Label(composite, 0).setText(WorkbenchMessages.ViewsPreference_currentTheme);
        this.themeCombo = new Combo(composite, 8);
        this.themeCombo.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        this.themeCombo.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                ViewsPreferencePage.this.refreshThemeDescriptionText();
            }
        });
        this.refreshThemeCombo(PlatformUI.getWorkbench().getThemeManager().getCurrentTheme().getId());
    }

    private void createThemeDescriptionText(Composite parent) {
        new Label(parent, 0).setText(WorkbenchMessages.ViewsPreference_currentThemeDescription);
        this.themeDescriptionText = new Text(parent, 2888);
        GridData layoutData = new GridData(4, 4, true, true);
        GC gc = new GC((Drawable)parent);
        layoutData.heightHint = Dialog.convertHeightInCharsToPixels((FontMetrics)gc.getFontMetrics(), (int)2);
        gc.dispose();
        this.themeDescriptionText.setLayoutData((Object)layoutData);
        this.refreshThemeDescriptionText();
    }

    private void refreshThemeDescriptionText() {
        String description = null;
        int idx = this.themeCombo.getSelectionIndex();
        if (idx > 0) {
            IThemeDescriptor theme = WorkbenchPlugin.getDefault().getThemeRegistry().getThemes()[idx - 1];
            description = theme.getDescription();
        }
        if (description == null) {
            description = "";
        }
        this.themeDescriptionText.setText(description);
    }

    private Button createCheckButton(Composite composite, String text, boolean selection) {
        Button button = new Button(composite, 32);
        button.setText(text);
        button.setSelection(selection);
        return button;
    }

    private void createPresentationOverride(Composite parent) {
        String barLocation;
        IPreferenceStore store = this.getPreferenceStore();
        boolean override = store.getBoolean("overridepresentation");
        boolean showText = PrefUtil.getAPIPreferenceStore().getBoolean("SHOW_TEXT_ON_PERSPECTIVE_BAR");
        if ((showText && this.isR21(this.currentPresentationFactoryId) || !showText && this.isR30(this.currentPresentationFactoryId)) && !override) {
            store.setValue("overridepresentation", true);
            override = true;
        }
        if ((!(barLocation = PrefUtil.getAPIPreferenceStore().getString("DOCK_PERSPECTIVE_BAR")).equals("left") && this.isR21(this.currentPresentationFactoryId) || !barLocation.equals("topRight") && this.isR30(this.currentPresentationFactoryId)) && !override) {
            store.setValue("overridepresentation", true);
            override = true;
        }
        this.overridePresButton = this.createCheckButton(parent, WorkbenchMessages.ViewsPreference_override, override);
        this.overridePresButton.addSelectionListener(new SelectionListener(){

            public void widgetSelected(SelectionEvent e) {
                ViewsPreferencePage.this.updateOverrideState(ViewsPreferencePage.this.overridePresButton.getSelection());
            }

            public void widgetDefaultSelected(SelectionEvent e) {
                ViewsPreferencePage.this.updateOverrideState(ViewsPreferencePage.this.overridePresButton.getSelection());
            }
        });
    }

    private void updateOverrideState(boolean override) {
        IPreferenceStore store = this.getPreferenceStore();
        if (store.getBoolean("overridepresentation") != override) {
            store.setValue("overridepresentation", override);
        }
        if (!override) {
            this.setPresentationPrefs(this.getSelectedPresentationID());
        }
    }

    private void createPresentationCombo(Composite parent) {
        new Label(parent, 0).setText(WorkbenchMessages.ViewsPreference_currentPresentation);
        this.presentationCombo = new Combo(parent, 8);
        this.presentationCombo.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        this.presentationCombo.addSelectionListener(new SelectionListener(){

            public void widgetSelected(SelectionEvent e) {
                this.updateSettings();
            }

            public void widgetDefaultSelected(SelectionEvent e) {
                this.updateSettings();
            }

            private void updateSettings() {
                if (!ViewsPreferencePage.this.overridePresButton.getSelection()) {
                    ViewsPreferencePage.this.setPresentationPrefs(ViewsPreferencePage.this.getSelectedPresentationID());
                }
            }
        });
        this.refreshPresentationCombo();
        this.setPresentationSelection();
    }

    private void attachControls(Control leftControl, Control rightControl) {
        FormData leftData = new FormData();
        leftData.left = new FormAttachment(0, 0);
        FormData rightData = new FormData();
        rightData.left = new FormAttachment(leftControl, this.convertHorizontalDLUsToPixels(4));
        leftControl.setLayoutData((Object)leftData);
        rightControl.setLayoutData((Object)rightData);
    }

    private void createEditorTabButtonGroup(Composite composite) {
        this.editorTabGroup = this.createButtonGroup(composite, EDITORS_TITLE);
        this.editorTopButton = new Button((Composite)this.editorTabGroup, 16);
        this.editorTopButton.setText(EDITORS_TOP_TITLE);
        this.editorTopButton.setSelection(this.editorAlignment == 128);
        this.editorTopButton.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                e.result = EDITORS_TITLE;
            }
        });
        this.editorBottomButton = new Button((Composite)this.editorTabGroup, 16);
        this.editorBottomButton.setText(EDITORS_BOTTOM_TITLE);
        this.editorBottomButton.setSelection(this.editorAlignment == 1024);
        SelectionAdapter sel = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                if (e.widget.equals(ViewsPreferencePage.this.editorTopButton)) {
                    if (ViewsPreferencePage.this.editorAlignment != 128) {
                        ViewsPreferencePage.this.editorAlignment = 128;
                        ViewsPreferencePage.this.editorAlignmentChanged = true;
                    }
                } else if (e.widget.equals(ViewsPreferencePage.this.editorBottomButton) && ViewsPreferencePage.this.editorAlignment != 1024) {
                    ViewsPreferencePage.this.editorAlignment = 1024;
                    ViewsPreferencePage.this.editorAlignmentChanged = true;
                }
            }
        };
        this.editorTopButton.addSelectionListener((SelectionListener)sel);
        this.editorBottomButton.addSelectionListener((SelectionListener)sel);
        this.attachControls((Control)this.editorTopButton, (Control)this.editorBottomButton);
    }

    private void createViewTabButtonGroup(Composite composite) {
        this.viewTabGroup = this.createButtonGroup(composite, VIEWS_TITLE);
        this.viewTopButton = new Button((Composite)this.viewTabGroup, 16);
        this.viewTopButton.setText(VIEWS_TOP_TITLE);
        this.viewTopButton.setSelection(this.viewAlignment == 128);
        this.viewBottomButton = new Button((Composite)this.viewTabGroup, 16);
        this.viewBottomButton.setText(VIEWS_BOTTOM_TITLE);
        this.viewBottomButton.setSelection(this.viewAlignment == 1024);
        SelectionAdapter sel = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                if (e.widget.equals(ViewsPreferencePage.this.viewTopButton)) {
                    if (ViewsPreferencePage.this.viewAlignment != 128) {
                        ViewsPreferencePage.this.viewAlignment = 128;
                        ViewsPreferencePage.this.viewAlignmentChanged = true;
                    }
                } else if (e.widget.equals(ViewsPreferencePage.this.viewBottomButton) && ViewsPreferencePage.this.viewAlignment != 1024) {
                    ViewsPreferencePage.this.viewAlignment = 1024;
                    ViewsPreferencePage.this.viewAlignmentChanged = true;
                }
            }
        };
        this.viewTopButton.addSelectionListener((SelectionListener)sel);
        this.viewBottomButton.addSelectionListener((SelectionListener)sel);
        this.attachControls((Control)this.viewTopButton, (Control)this.viewBottomButton);
    }

    private void createPerspBarTabButtonGroup(Composite composite) {
        this.perspBarTabGroup = this.createButtonGroup(composite, PERSP_TITLE);
        this.perspLeftButton = new Button((Composite)this.perspBarTabGroup, 16);
        this.perspLeftButton.setText(PERSP_LEFT_TITLE);
        this.perspLeftButton.setSelection("left".equals(this.perspBarLocation));
        this.perspLeftButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                ViewsPreferencePage.this.perspBarLocation = "left";
            }
        });
        this.perspTopLeftButton = new Button((Composite)this.perspBarTabGroup, 16);
        this.perspTopLeftButton.setText(PERSP_TOP_LEFT_TITLE);
        this.perspTopLeftButton.setSelection("topLeft".equals(this.perspBarLocation));
        this.perspTopLeftButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                ViewsPreferencePage.this.perspBarLocation = "topLeft";
            }
        });
        this.perspTopRightButton = new Button((Composite)this.perspBarTabGroup, 16);
        this.perspTopRightButton.setText(PERSP_TOP_RIGHT_TITLE);
        this.perspTopRightButton.setSelection("topRight".equals(this.perspBarLocation));
        this.perspTopRightButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                ViewsPreferencePage.this.perspBarLocation = "topRight";
            }
        });
        int spacing = this.convertHorizontalDLUsToPixels(4);
        FormData leftData = new FormData();
        leftData.left = new FormAttachment(0, 0);
        FormData topLeftData = new FormData();
        topLeftData.left = new FormAttachment((Control)this.perspLeftButton, spacing);
        FormData topRightData = new FormData();
        topRightData.left = new FormAttachment((Control)this.perspTopLeftButton, spacing);
        this.perspLeftButton.setLayoutData((Object)leftData);
        this.perspTopLeftButton.setLayoutData((Object)topLeftData);
        this.perspTopRightButton.setLayoutData((Object)topRightData);
    }

    private void hookOverrideListener() {
        if (this.overrideListener != null) {
            return;
        }
        IPreferenceStore store = this.getPreferenceStore();
        this.overrideListener = new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if (event.getProperty().equals("overridepresentation")) {
                    ViewsPreferencePage.this.updateOverride();
                }
            }
        };
        store.addPropertyChangeListener(this.overrideListener);
    }

    public void dispose() {
        super.dispose();
        if (this.overrideListener != null) {
            this.getPreferenceStore().removePropertyChangeListener(this.overrideListener);
            this.overrideListener = null;
        }
    }

    private void updateOverride() {
        boolean override = this.getPreferenceStore().getBoolean("overridepresentation");
        this.editorTabGroup.setEnabled(override);
        this.editorTopButton.setEnabled(override);
        this.editorBottomButton.setEnabled(override);
        this.viewTabGroup.setEnabled(override);
        this.viewTopButton.setEnabled(override);
        this.viewBottomButton.setEnabled(override);
        this.perspBarTabGroup.setEnabled(override);
        this.perspTopLeftButton.setEnabled(override);
        this.perspLeftButton.setEnabled(override);
        this.perspTopRightButton.setEnabled(override);
        this.showTextOnPerspectiveBar.setEnabled(override);
    }

    private void refreshPresentationCombo() {
        this.presentationCombo.removeAll();
        this.refreshPresentationFactories();
        int i = 0;
        while (i < this.presentationFactories.length) {
            IConfigurationElement el = this.presentationFactories[i];
            String name = el.getAttribute("name");
            if (!this.currentPresentationFactoryId.equals(el.getAttribute("id"))) {
                this.presentationCombo.add(name);
            } else {
                this.presentationCombo.add(NLS.bind((String)WorkbenchMessages.ViewsPreference_currentPresentationFormat, (Object)name));
            }
            ++i;
        }
    }

    private void setPresentationSelection() {
        int i = 0;
        while (i < this.presentationFactories.length) {
            if (this.currentPresentationFactoryId.equals(this.presentationFactories[i].getAttribute("id"))) {
                this.presentationCombo.select(i);
                return;
            }
            ++i;
        }
    }

    private void refreshPresentationFactories() {
        this.currentPresentationFactoryId = PrefUtil.getAPIPreferenceStore().getString("presentationFactoryId");
        this.presentationFactories = Platform.getExtensionRegistry().getConfigurationElementsFor("org.eclipse.ui", "presentationFactories");
        Arrays.sort(this.presentationFactories, new Comparator(){
            Collator collator = Collator.getInstance((Locale)Locale.getDefault());

            public int compare(Object a, Object b) {
                IConfigurationElement el1 = (IConfigurationElement)a;
                IConfigurationElement el2 = (IConfigurationElement)b;
                return this.collator.compare(el1.getAttribute("name"), el2.getAttribute("name"));
            }
        });
    }

    private boolean updatePresentationPreferences() {
        if (this.presentationCombo == null) {
            return false;
        }
        String id = this.getSelectedPresentationID();
        if (id.equals(this.currentPresentationFactoryId)) {
            return false;
        }
        this.currentPresentationFactoryId = id;
        this.setPresentationPrefs(id);
        PrefUtil.getAPIPreferenceStore().putValue("presentationFactoryId", id);
        return true;
    }

    private void setPresentationPrefs(String id) {
        if (this.isR21(id)) {
            this.setR21Preferences();
        } else if (this.isR30(id)) {
            this.setR30Preferences();
        } else if (this.isR33(id)) {
            this.setR33Preferences();
        }
    }

    private boolean isR33(String id) {
        return DEFAULT_PRESENTATION_ID.equals(id);
    }

    private boolean isR30(String id) {
        return R30_PRESENTATION_ID.equals(id);
    }

    private boolean isR21(String id) {
        return R21PRESENTATION_ID.equals(id);
    }

    private String getSelectedPresentationID() {
        int selection = this.presentationCombo.getSelectionIndex();
        IConfigurationElement element = this.presentationFactories[selection];
        String id = element.getAttribute("id");
        return id;
    }

    private void setR33Preferences() {
        this.setR30Preferences();
        IPreferenceStore apiStore = PrefUtil.getAPIPreferenceStore();
        apiStore.setValue("ENABLE_MIN_MAX", true);
    }

    private void setR30Preferences() {
        IPreferenceStore apiStore = PrefUtil.getAPIPreferenceStore();
        apiStore.setValue("ENABLE_MIN_MAX", false);
        this.setEditorAlignDefault(apiStore);
        this.setViewAlignDefault(apiStore);
        this.perspBarLocation = apiStore.getDefaultString("DOCK_PERSPECTIVE_BAR");
        this.perspLeftButton.setSelection(this.perspBarLocation.equals("left"));
        this.perspTopLeftButton.setSelection(this.perspBarLocation.equals("topLeft"));
        this.perspTopRightButton.setSelection(this.perspBarLocation.equals("topRight"));
        this.perspBarLocation = INITIAL_VAL;
        this.showTextOnPerspectiveBar.setSelection(apiStore.getDefaultBoolean("SHOW_TEXT_ON_PERSPECTIVE_BAR"));
        this.showTextOnPerspBar = INITIAL_VAL;
        this.fastViewLoc = INITIAL_VAL;
    }

    private void setViewAlignDefault(IPreferenceStore apiStore) {
        int oldVal = this.viewAlignment;
        this.viewAlignment = apiStore.getDefaultInt("VIEW_TAB_POSITION");
        this.viewTopButton.setSelection(this.viewAlignment == 128);
        this.viewBottomButton.setSelection(this.viewAlignment == 1024);
        if (oldVal != this.viewAlignment) {
            this.viewAlignmentChanged = true;
        }
        this.viewAlignment = -1;
    }

    private void setEditorAlignDefault(IPreferenceStore apiStore) {
        int oldVal = this.editorAlignment;
        this.editorAlignment = apiStore.getDefaultInt("EDITOR_TAB_POSITION");
        this.editorTopButton.setSelection(this.editorAlignment == 128);
        this.editorBottomButton.setSelection(this.editorAlignment == 1024);
        if (oldVal != this.editorAlignment) {
            this.editorAlignmentChanged = true;
        }
        this.editorAlignment = -1;
    }

    private void setR21Preferences() {
        int oldVal = this.editorAlignment;
        this.editorAlignment = 128;
        this.editorTopButton.setSelection(this.editorAlignment == 128);
        this.editorBottomButton.setSelection(this.editorAlignment == 1024);
        if (oldVal != this.editorAlignment) {
            this.editorAlignmentChanged = true;
        }
        oldVal = this.viewAlignment;
        this.viewAlignment = 1024;
        this.viewTopButton.setSelection(this.viewAlignment == 128);
        this.viewBottomButton.setSelection(this.viewAlignment == 1024);
        if (oldVal != this.viewAlignment) {
            this.viewAlignmentChanged = true;
        }
        this.perspBarLocation = "left";
        this.perspLeftButton.setSelection(this.perspBarLocation.equals("left"));
        this.perspTopLeftButton.setSelection(this.perspBarLocation.equals("topLeft"));
        this.perspTopRightButton.setSelection(this.perspBarLocation.equals("topRight"));
        this.showTextOnPerspectiveBar.setSelection(false);
        this.showTextOnPerspBar = String.valueOf(false);
        this.fastViewLoc = "left";
        IPreferenceStore apiStore = PrefUtil.getAPIPreferenceStore();
        apiStore.setValue("ENABLE_MIN_MAX", false);
    }

    private void refreshThemeCombo(String themeToSelect) {
        this.themeCombo.removeAll();
        ITheme currentTheme = PlatformUI.getWorkbench().getThemeManager().getCurrentTheme();
        IThemeDescriptor[] descs = WorkbenchPlugin.getDefault().getThemeRegistry().getThemes();
        String defaultThemeString = PlatformUI.getWorkbench().getThemeManager().getTheme("org.eclipse.ui.defaultTheme").getLabel();
        if (currentTheme.getId().equals("org.eclipse.ui.defaultTheme")) {
            defaultThemeString = NLS.bind((String)WorkbenchMessages.ViewsPreference_currentThemeFormat, (Object[])new Object[]{defaultThemeString});
        }
        this.themeCombo.add(defaultThemeString);
        int selection = 0;
        int i = 0;
        while (i < descs.length) {
            String themeString = descs[i].getName();
            if (descs[i].getId().equals(currentTheme.getId())) {
                themeString = NLS.bind((String)WorkbenchMessages.ViewsPreference_currentThemeFormat, (Object[])new Object[]{themeString});
            }
            if (themeToSelect.equals(descs[i].getId())) {
                selection = i + 1;
            }
            this.themeCombo.add(themeString);
            ++i;
        }
        this.themeCombo.select(selection);
    }

    protected void createShowTextOnPerspectiveBarPref(Composite composite) {
        IPreferenceStore apiStore = PrefUtil.getAPIPreferenceStore();
        this.showTextOnPerspectiveBar = this.createCheckButton(composite, WorkbenchMessages.WorkbenchPreference_showTextOnPerspectiveBar, apiStore.getBoolean("SHOW_TEXT_ON_PERSPECTIVE_BAR"));
    }

    protected void createShowTraditionalStyleTabsPref(Composite composite) {
        IPreferenceStore apiStore = PrefUtil.getAPIPreferenceStore();
        this.showTraditionalStyleTabs = this.createCheckButton(composite, WorkbenchMessages.ViewsPreference_traditionalTabs, apiStore.getBoolean("SHOW_TRADITIONAL_STYLE_TABS"));
    }

    protected void createEnableAnimationsPref(Composite composite) {
        IPreferenceStore apiStore = PrefUtil.getAPIPreferenceStore();
        this.enableAnimations = this.createCheckButton(composite, WorkbenchMessages.ViewsPreference_enableAnimations, apiStore.getBoolean("ENABLE_ANIMATIONS"));
    }

    protected IPreferenceStore doGetPreferenceStore() {
        return WorkbenchPlugin.getDefault().getPreferenceStore();
    }

    public void init(IWorkbench workbench) {
        this.currentPresentationFactoryId = PrefUtil.getAPIPreferenceStore().getString("presentationFactoryId");
    }

    protected void performDefaults() {
        String presID;
        IPreferenceStore store = this.getPreferenceStore();
        IPreferenceStore apiStore = PrefUtil.getAPIPreferenceStore();
        this.showTextOnPerspectiveBar.setSelection(apiStore.getDefaultBoolean("SHOW_TEXT_ON_PERSPECTIVE_BAR"));
        this.showTraditionalStyleTabs.setSelection(apiStore.getDefaultBoolean("SHOW_TRADITIONAL_STYLE_TABS"));
        this.enableAnimations.setSelection(apiStore.getDefaultBoolean("ENABLE_ANIMATIONS"));
        this.useColoredLabels.setSelection(apiStore.getDefaultBoolean("USE_COLORED_LABELS"));
        this.currentPresentationFactoryId = presID = apiStore.getDefaultString("presentationFactoryId");
        this.setPresentationSelection();
        boolean overridePrefs = store.getDefaultBoolean("overridepresentation");
        this.overridePresButton.setSelection(overridePrefs);
        this.updateOverrideState(overridePrefs);
        this.setEditorAlignDefault(apiStore);
        this.setViewAlignDefault(apiStore);
        this.perspBarLocation = apiStore.getDefaultString("DOCK_PERSPECTIVE_BAR");
        this.perspLeftButton.setSelection("left".equals(this.perspBarLocation));
        this.perspTopLeftButton.setSelection("topLeft".equals(this.perspBarLocation));
        this.perspTopRightButton.setSelection("topRight".equals(this.perspBarLocation));
        this.refreshThemeCombo(PlatformUI.getWorkbench().getThemeManager().getTheme("org.eclipse.ui.defaultTheme").getId());
        this.refreshThemeDescriptionText();
        WorkbenchPlugin.getDefault().savePluginPreferences();
        super.performDefaults();
    }

    public boolean performOk() {
        IPreferenceStore store = this.getPreferenceStore();
        IPreferenceStore apiStore = PrefUtil.getAPIPreferenceStore();
        boolean override = store.getBoolean("overridepresentation");
        boolean restart = this.updatePresentationPreferences();
        if (this.showTextOnPerspBar.equals(INITIAL_VAL) && !override) {
            apiStore.setToDefault("SHOW_TEXT_ON_PERSPECTIVE_BAR");
        } else {
            apiStore.setValue("SHOW_TEXT_ON_PERSPECTIVE_BAR", this.showTextOnPerspectiveBar.getSelection());
        }
        if (this.editorAlignmentChanged) {
            if (this.editorAlignment == -1) {
                apiStore.setToDefault("EDITOR_TAB_POSITION");
            } else if (!override) {
                apiStore.setValue("EDITOR_TAB_POSITION", this.editorAlignment);
            } else {
                apiStore.setValue("EDITOR_TAB_POSITION", this.editorAlignment);
            }
            restart = true;
        }
        if (this.viewAlignmentChanged) {
            if (this.viewAlignment == -1) {
                apiStore.setToDefault("VIEW_TAB_POSITION");
            } else if (!override) {
                apiStore.setValue("VIEW_TAB_POSITION", this.viewAlignment);
            } else {
                apiStore.setValue("VIEW_TAB_POSITION", this.viewAlignment);
            }
            restart = true;
        }
        if (this.perspBarLocation.equals(INITIAL_VAL)) {
            apiStore.setToDefault("DOCK_PERSPECTIVE_BAR");
        } else if (!override) {
            apiStore.setValue("DOCK_PERSPECTIVE_BAR", this.perspBarLocation);
        } else {
            apiStore.setValue("DOCK_PERSPECTIVE_BAR", this.perspBarLocation);
        }
        if (this.fastViewLoc.equals(INITIAL_VAL)) {
            apiStore.setToDefault("initialFastViewBarLocation");
        } else {
            apiStore.setValue("initialFastViewBarLocation", this.fastViewLoc);
        }
        int idx = this.themeCombo.getSelectionIndex();
        if (idx <= 0) {
            PlatformUI.getWorkbench().getThemeManager().setCurrentTheme("org.eclipse.ui.defaultTheme");
            this.refreshThemeCombo("org.eclipse.ui.defaultTheme");
        } else {
            IThemeDescriptor applyTheme = WorkbenchPlugin.getDefault().getThemeRegistry().getThemes()[idx - 1];
            PlatformUI.getWorkbench().getThemeManager().setCurrentTheme(applyTheme.getId());
            this.refreshThemeCombo(applyTheme.getId());
        }
        this.refreshThemeDescriptionText();
        apiStore.setValue("SHOW_TRADITIONAL_STYLE_TABS", this.showTraditionalStyleTabs.getSelection());
        apiStore.setValue("ENABLE_ANIMATIONS", this.enableAnimations.getSelection());
        apiStore.setValue("USE_COLORED_LABELS", this.useColoredLabels.getSelection());
        PrefUtil.savePrefs();
        if (restart && !this.restartPosted && this.getContainer() instanceof IWorkbenchPreferenceContainer) {
            IWorkbenchPreferenceContainer container = (IWorkbenchPreferenceContainer)this.getContainer();
            UIJob job = new UIJob(WorkbenchMessages.ViewsPreference_restartRequestJobName){

                public IStatus runInUIThread(IProgressMonitor monitor) {
                    int really = new MessageDialog(null, WorkbenchMessages.ViewsPreference_presentationConfirm_title, null, WorkbenchMessages.ViewsPreference_presentationConfirm_message, 3, new String[]{WorkbenchMessages.ViewsPreference_presentationConfirm_yes, WorkbenchMessages.ViewsPreference_presentationConfirm_no}, 1).open();
                    if (really == 0) {
                        PlatformUI.getWorkbench().restart();
                    }
                    return Status.OK_STATUS;
                }
            };
            job.setSystem(true);
            container.registerUpdateJob(job);
            this.restartPosted = true;
        }
        return true;
    }
}

