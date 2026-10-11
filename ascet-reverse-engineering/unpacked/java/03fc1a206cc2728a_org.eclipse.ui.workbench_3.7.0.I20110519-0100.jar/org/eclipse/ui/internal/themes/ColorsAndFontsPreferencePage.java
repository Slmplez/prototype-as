/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferenceConverter
 *  org.eclipse.jface.preference.PreferencePage
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.StringConverter
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.viewers.DoubleClickEvent
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.IDoubleClickListener
 *  org.eclipse.jface.viewers.IFontProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.LabelProviderChangedEvent
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.swt.custom.SashForm
 *  org.eclipse.swt.custom.StackLayout
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.FillLayout
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.ColorDialog
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.FontDialog
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.themes;

import com.ibm.icu.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferenceConverter;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.StringConverter;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.IFontProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.swt.custom.SashForm;
import org.eclipse.swt.custom.StackLayout;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.ColorDialog;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.FontDialog;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.dialogs.FilteredTree;
import org.eclipse.ui.dialogs.PatternFilter;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.themes.CascadingColorRegistry;
import org.eclipse.ui.internal.themes.CascadingFontRegistry;
import org.eclipse.ui.internal.themes.CascadingTheme;
import org.eclipse.ui.internal.themes.ColorDefinition;
import org.eclipse.ui.internal.themes.FontDefinition;
import org.eclipse.ui.internal.themes.ICategorizedThemeElementDefinition;
import org.eclipse.ui.internal.themes.IHierarchalThemeElementDefinition;
import org.eclipse.ui.internal.themes.IThemeElementDefinition;
import org.eclipse.ui.internal.themes.IThemeRegistry;
import org.eclipse.ui.internal.themes.ThemeElementCategory;
import org.eclipse.ui.internal.themes.ThemeElementHelper;
import org.eclipse.ui.internal.themes.ThemeRegistry;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.themes.ITheme;
import org.eclipse.ui.themes.IThemeManager;
import org.eclipse.ui.themes.IThemePreview;

public final class ColorsAndFontsPreferencePage
extends PreferencePage
implements IWorkbenchPreferencePage {
    private static final String SELECTED_ELEMENT_PREF = "ColorsAndFontsPreferencePage.selectedElement";
    private static final String EXPANDED_ELEMENTS_PREF = "ColorsAndFontsPreferencePage.expandedCategories";
    private static final String EXPANDED_ELEMENTS_TOKEN = "\t";
    private static final char MARKER_CATEGORY = 'T';
    private static final char MARKER_COLOR = 'C';
    private static final char MARKER_FONT = 'F';
    private static final ResourceBundle RESOURCE_BUNDLE;
    private Map categoryMap = new HashMap(7);
    private Font appliedDialogFont;
    private Map colorPreferencesToSet = new HashMap(7);
    private CascadingColorRegistry colorRegistry;
    private Map colorValuesToSet = new HashMap(7);
    private Composite defaultColorPreview;
    private Composite defaultFontPreview;
    private Composite defaultNoPreview;
    private Font currentFont;
    private Color currentColor;
    private Canvas colorSampler;
    private Canvas fontSampler;
    private String fontSampleText;
    private List dialogFontWidgets = new ArrayList();
    private Button fontChangeButton;
    private Button editDefaultButton;
    private Button goToDefaultButton;
    private Map fontPreferencesToSet = new HashMap(7);
    private CascadingFontRegistry fontRegistry;
    private Button fontResetButton;
    private Button fontSystemButton;
    private Map fontValuesToSet = new HashMap(7);
    private Composite previewComposite;
    private Map previewMap = new HashMap(7);
    private Set previewSet = new HashSet(7);
    private StackLayout stackLayout;
    private final IThemeRegistry themeRegistry = WorkbenchPlugin.getDefault().getThemeRegistry();
    private ITheme currentTheme;
    private PresentationLabelProvider labelProvider;
    private CascadingTheme cascadingTheme;
    private IPropertyChangeListener themeChangeListener;
    private Workbench workbench;
    private FilteredTree tree;
    private Text descriptionText;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.themes.ColorsAndFontsPreferencePage");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = ResourceBundle.getBundle(clazz.getName());
    }

    public void applyData(Object data) {
        String id;
        ColorDefinition colorDef;
        if (this.tree == null || !(data instanceof String)) {
            return;
        }
        ThemeRegistry themeRegistry = (ThemeRegistry)this.tree.getViewer().getInput();
        String command = (String)data;
        if (command.startsWith("selectCategory:")) {
            String categoryId = command.substring(15);
            ThemeElementCategory category = themeRegistry.findCategory(categoryId);
            if (category != null) {
                this.selectAndReveal(category);
                this.tree.getViewer().expandToLevel((Object)category, 1);
            }
        } else if (command.startsWith("selectFont:")) {
            String id2 = command.substring(11);
            FontDefinition fontDef = themeRegistry.findFont(id2);
            if (fontDef != null) {
                this.selectAndReveal(fontDef);
            }
        } else if (command.startsWith("selectColor:") && (colorDef = themeRegistry.findColor(id = command.substring(12))) != null) {
            this.selectAndReveal(colorDef);
        }
    }

    private void selectAndReveal(Object selection) {
        TreeViewer viewer = this.tree.getViewer();
        viewer.setSelection((ISelection)new StructuredSelection(selection), false);
        viewer.reveal(selection);
        viewer.getTree().setFocus();
    }

    private static boolean equals(String string, String string2) {
        if (string == null && string2 == null) {
            return true;
        }
        if (string == null || string2 == null) {
            return false;
        }
        return string.equals(string2);
    }

    private Button createButton(Composite parent, String label) {
        Button button = new Button(parent, 0x1000008);
        button.setText(label);
        this.myApplyDialogFont((Control)button);
        this.setButtonLayoutData(button);
        button.setEnabled(false);
        return button;
    }

    private Label createSeparator(Composite parent) {
        Label separator = new Label(parent, 0);
        separator.setFont(parent.getFont());
        separator.setVisible(false);
        GridData gd = new GridData();
        gd.horizontalAlignment = 4;
        gd.verticalAlignment = 1;
        gd.heightHint = 4;
        separator.setLayoutData((Object)gd);
        return separator;
    }

    protected Control createContents(Composite parent) {
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)parent, "org.eclipse.ui.font_preference_page_context");
        parent.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                if (ColorsAndFontsPreferencePage.this.appliedDialogFont != null) {
                    ColorsAndFontsPreferencePage.this.appliedDialogFont.dispose();
                }
            }
        });
        SashForm advancedComposite = new SashForm(parent, 512);
        GridData sashData = new GridData(4, 4, true, true);
        advancedComposite.setLayoutData((Object)sashData);
        Composite mainColumn = new Composite((Composite)advancedComposite, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        mainColumn.setFont(parent.getFont());
        mainColumn.setLayout((Layout)layout);
        GridData data = new GridData(1);
        data.horizontalSpan = 2;
        Label label = new Label(mainColumn, 16384);
        label.setText(RESOURCE_BUNDLE.getString("colorsAndFonts"));
        this.myApplyDialogFont((Control)label);
        label.setLayoutData((Object)data);
        this.createTree(mainColumn);
        Composite controlColumn = new Composite(mainColumn, 0);
        data = new GridData(1040);
        controlColumn.setLayoutData((Object)data);
        layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        controlColumn.setLayout((Layout)layout);
        Label placeholder = new Label(controlColumn, 0);
        GridData placeholderData = new GridData(128);
        placeholderData.heightHint = this.convertVerticalDLUsToPixels(12);
        placeholder.setLayoutData((Object)placeholderData);
        this.fontChangeButton = this.createButton(controlColumn, RESOURCE_BUNDLE.getString("openChange"));
        this.fontSystemButton = this.createButton(controlColumn, WorkbenchMessages.FontsPreference_useSystemFont);
        this.fontResetButton = this.createButton(controlColumn, RESOURCE_BUNDLE.getString("reset"));
        this.createSeparator(controlColumn);
        this.editDefaultButton = this.createButton(controlColumn, RESOURCE_BUNDLE.getString("editDefault"));
        this.goToDefaultButton = this.createButton(controlColumn, RESOURCE_BUNDLE.getString("goToDefault"));
        this.createDescriptionControl(mainColumn);
        Composite previewColumn = new Composite((Composite)advancedComposite, 0);
        GridLayout previewLayout = new GridLayout();
        previewLayout.marginTop = 7;
        previewLayout.marginWidth = 0;
        previewLayout.marginHeight = 0;
        previewColumn.setFont(parent.getFont());
        previewColumn.setLayout((Layout)previewLayout);
        Composite composite = new Composite(previewColumn, 0);
        GridData data2 = new GridData(1808);
        composite.setLayoutData((Object)data2);
        GridLayout layout2 = new GridLayout(1, true);
        layout2.marginHeight = 0;
        layout2.marginWidth = 0;
        composite.setLayout((Layout)layout2);
        Label label2 = new Label(composite, 16384);
        label2.setText(RESOURCE_BUNDLE.getString("preview"));
        this.myApplyDialogFont((Control)label2);
        this.previewComposite = new Composite(composite, 0);
        this.previewComposite.setLayoutData((Object)new GridData(1808));
        this.stackLayout = new StackLayout();
        this.stackLayout.marginHeight = 0;
        this.stackLayout.marginWidth = 0;
        this.previewComposite.setLayout((Layout)this.stackLayout);
        this.defaultFontPreview = this.createFontPreviewControl();
        this.defaultColorPreview = this.createColorPreviewControl();
        this.defaultNoPreview = this.createNoPreviewControl();
        this.hookListeners();
        this.updateTreeSelection(this.tree.getViewer().getSelection());
        advancedComposite.setWeights(new int[]{75, 25});
        return advancedComposite;
    }

    private void createTree(Composite parent) {
        this.labelProvider = new PresentationLabelProvider();
        PatternFilter filter = new PatternFilter(){

            protected boolean isLeafMatch(Viewer viewer, Object element) {
                if (super.isLeafMatch(viewer, element)) {
                    return true;
                }
                String text = null;
                if (element instanceof ICategorizedThemeElementDefinition) {
                    text = ((ICategorizedThemeElementDefinition)element).getDescription();
                }
                return text != null ? this.wordMatches(text) : false;
            }
        };
        filter.setIncludeLeadingWildcard(true);
        this.tree = new FilteredTree(parent, 2820, filter, true);
        GridData data = new GridData(1808);
        data.widthHint = Math.max(285, this.convertWidthInCharsToPixels(30));
        data.heightHint = Math.max(175, this.convertHeightInCharsToPixels(10));
        this.tree.setLayoutData(data);
        this.myApplyDialogFont(this.tree.getViewer().getControl());
        Text filterText = this.tree.getFilterControl();
        if (filterText != null) {
            this.myApplyDialogFont((Control)filterText);
        }
        this.tree.getViewer().setLabelProvider((IBaseLabelProvider)this.labelProvider);
        this.tree.getViewer().setContentProvider((IContentProvider)new ThemeContentProvider());
        this.tree.getViewer().setComparator(new ViewerComparator(){

            public int category(Object element) {
                if (element instanceof ThemeElementCategory) {
                    return 0;
                }
                return 1;
            }
        });
        this.tree.getViewer().setInput((Object)WorkbenchPlugin.getDefault().getThemeRegistry());
        this.tree.getViewer().addDoubleClickListener(new IDoubleClickListener(){

            public void doubleClick(DoubleClickEvent event) {
                IStructuredSelection s = (IStructuredSelection)event.getSelection();
                Object element = s.getFirstElement();
                if (ColorsAndFontsPreferencePage.this.tree.getViewer().isExpandable(element)) {
                    ColorsAndFontsPreferencePage.this.tree.getViewer().setExpandedState(element, !ColorsAndFontsPreferencePage.this.tree.getViewer().getExpandedState(element));
                }
                if (element instanceof FontDefinition) {
                    ColorsAndFontsPreferencePage.this.editFont(ColorsAndFontsPreferencePage.this.tree.getDisplay());
                } else if (element instanceof ColorDefinition) {
                    ColorsAndFontsPreferencePage.this.editColor(ColorsAndFontsPreferencePage.this.tree.getDisplay());
                }
                ColorsAndFontsPreferencePage.this.updateControls();
            }
        });
        this.restoreTreeExpansion();
        this.restoreTreeSelection();
    }

    public void dispose() {
        super.dispose();
        this.workbench.getThemeManager().removePropertyChangeListener(this.themeChangeListener);
        this.clearPreviews();
        this.colorRegistry.dispose();
        this.fontRegistry.dispose();
    }

    private void clearPreviews() {
        if (this.cascadingTheme != null) {
            this.cascadingTheme.dispose();
        }
        Iterator i = this.previewSet.iterator();
        while (i.hasNext()) {
            IThemePreview preview = (IThemePreview)i.next();
            try {
                preview.dispose();
            }
            catch (RuntimeException e) {
                WorkbenchPlugin.log(RESOURCE_BUNDLE.getString("errorDisposePreviewLog"), StatusUtil.newStatus(4, e.getMessage(), (Throwable)e));
            }
        }
        this.previewSet.clear();
    }

    private ColorDefinition getColorAncestor(ColorDefinition definition) {
        String defaultsTo = definition.getDefaultsTo();
        if (defaultsTo == null) {
            return null;
        }
        return this.themeRegistry.findColor(defaultsTo);
    }

    private RGB getColorAncestorValue(ColorDefinition definition) {
        ColorDefinition ancestor = this.getColorAncestor(definition);
        if (ancestor == null) {
            return null;
        }
        return this.getColorValue(ancestor);
    }

    private RGB getColorValue(ColorDefinition definition) {
        String id = definition.getId();
        RGB updatedRGB = (RGB)this.colorPreferencesToSet.get(id);
        if (updatedRGB == null && (updatedRGB = (RGB)this.colorValuesToSet.get(id)) == null) {
            updatedRGB = this.currentTheme.getColorRegistry().getRGB(id);
        }
        return updatedRGB;
    }

    private ColorDefinition[] getDescendantColors(ColorDefinition definition) {
        ArrayList<ColorDefinition> list = new ArrayList<ColorDefinition>(5);
        String id = definition.getId();
        IHierarchalThemeElementDefinition[] colors = this.themeRegistry.getColors();
        ColorDefinition[] sorted = new ColorDefinition[colors.length];
        System.arraycopy(colors, 0, sorted, 0, sorted.length);
        Arrays.sort(sorted, new IThemeRegistry.HierarchyComparator(colors));
        int i = 0;
        while (i < sorted.length) {
            if (id.equals(sorted[i].getDefaultsTo())) {
                list.add(sorted[i]);
            }
            ++i;
        }
        return list.toArray(new ColorDefinition[list.size()]);
    }

    private FontDefinition[] getDescendantFonts(FontDefinition definition) {
        ArrayList<FontDefinition> list = new ArrayList<FontDefinition>(5);
        String id = definition.getId();
        IHierarchalThemeElementDefinition[] fonts = this.themeRegistry.getFonts();
        FontDefinition[] sorted = new FontDefinition[fonts.length];
        System.arraycopy(fonts, 0, sorted, 0, sorted.length);
        Arrays.sort(sorted, new IThemeRegistry.HierarchyComparator(fonts));
        int i = 0;
        while (i < sorted.length) {
            if (id.equals(sorted[i].getDefaultsTo())) {
                list.add(sorted[i]);
            }
            ++i;
        }
        return list.toArray(new FontDefinition[list.size()]);
    }

    private FontDefinition getFontAncestor(FontDefinition definition) {
        String defaultsTo = definition.getDefaultsTo();
        if (defaultsTo == null) {
            return null;
        }
        return this.themeRegistry.findFont(defaultsTo);
    }

    private FontData[] getFontAncestorValue(FontDefinition definition) {
        FontDefinition ancestor = this.getFontAncestor(definition);
        if (ancestor == null) {
            return PreferenceConverter.getDefaultFontDataArray((IPreferenceStore)this.getPreferenceStore(), (String)ThemeElementHelper.createPreferenceKey(this.currentTheme, definition.getId()));
        }
        return this.getFontValue(ancestor);
    }

    protected FontData[] getFontValue(FontDefinition definition) {
        String id = definition.getId();
        FontData[] updatedFD = (FontData[])this.fontPreferencesToSet.get(id);
        if (updatedFD == null && (updatedFD = (FontData[])this.fontValuesToSet.get(id)) == null) {
            updatedFD = this.currentTheme.getFontRegistry().getFontData(id);
        }
        return updatedFD;
    }

    protected ColorDefinition getSelectedColorDefinition() {
        Object o = ((IStructuredSelection)this.tree.getViewer().getSelection()).getFirstElement();
        if (o instanceof ColorDefinition) {
            return (ColorDefinition)o;
        }
        return null;
    }

    protected FontDefinition getSelectedFontDefinition() {
        Object o = ((IStructuredSelection)this.tree.getViewer().getSelection()).getFirstElement();
        if (o instanceof FontDefinition) {
            return (FontDefinition)o;
        }
        return null;
    }

    protected boolean isFontSelected() {
        Object o = ((IStructuredSelection)this.tree.getViewer().getSelection()).getFirstElement();
        return o instanceof FontDefinition;
    }

    protected boolean isColorSelected() {
        Object o = ((IStructuredSelection)this.tree.getViewer().getSelection()).getFirstElement();
        return o instanceof ColorDefinition;
    }

    private void hookListeners() {
        TreeViewer viewer = this.tree.getViewer();
        viewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                ColorsAndFontsPreferencePage.this.updateTreeSelection(event.getSelection());
            }
        });
        this.fontChangeButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent event) {
                Display display = event.display;
                if (ColorsAndFontsPreferencePage.this.isFontSelected()) {
                    ColorsAndFontsPreferencePage.this.editFont(display);
                } else if (ColorsAndFontsPreferencePage.this.isColorSelected()) {
                    ColorsAndFontsPreferencePage.this.editColor(display);
                }
                ColorsAndFontsPreferencePage.this.updateControls();
            }
        });
        this.fontResetButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                if (ColorsAndFontsPreferencePage.this.isFontSelected()) {
                    ColorsAndFontsPreferencePage.this.resetFont(ColorsAndFontsPreferencePage.this.getSelectedFontDefinition(), false);
                } else if (ColorsAndFontsPreferencePage.this.isColorSelected()) {
                    ColorsAndFontsPreferencePage.this.resetColor(ColorsAndFontsPreferencePage.this.getSelectedColorDefinition(), false);
                }
                ColorsAndFontsPreferencePage.this.updateControls();
            }
        });
        this.fontSystemButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent event) {
                FontDefinition definition = ColorsAndFontsPreferencePage.this.getSelectedFontDefinition();
                if (definition == null) {
                    return;
                }
                FontData[] defaultFontData = JFaceResources.getDefaultFont().getFontData();
                ColorsAndFontsPreferencePage.this.setFontPreferenceValue(definition, defaultFontData);
                ColorsAndFontsPreferencePage.this.updateControls();
            }
        });
        this.editDefaultButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent event) {
                Display display = event.display;
                FontDefinition fontDefinition = ColorsAndFontsPreferencePage.this.getSelectedFontDefinition();
                if (fontDefinition != null) {
                    String defaultFontId = fontDefinition.getDefaultsTo();
                    FontDefinition defaultFontDefinition = ColorsAndFontsPreferencePage.this.themeRegistry.findFont(defaultFontId);
                    ColorsAndFontsPreferencePage.this.editFont(defaultFontDefinition, display);
                } else {
                    ColorDefinition colorDefinition = ColorsAndFontsPreferencePage.this.getSelectedColorDefinition();
                    if (colorDefinition != null) {
                        String defaultColorId = colorDefinition.getDefaultsTo();
                        ColorDefinition defaultColorDefinition = ColorsAndFontsPreferencePage.this.themeRegistry.findColor(defaultColorId);
                        ColorsAndFontsPreferencePage.this.editColor(defaultColorDefinition, display);
                    }
                }
                ColorsAndFontsPreferencePage.this.updateControls();
            }
        });
        this.goToDefaultButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent event) {
                FontDefinition fontDefinition = ColorsAndFontsPreferencePage.this.getSelectedFontDefinition();
                if (fontDefinition != null) {
                    String defaultFontId = fontDefinition.getDefaultsTo();
                    FontDefinition defaultFontDefinition = ColorsAndFontsPreferencePage.this.themeRegistry.findFont(defaultFontId);
                    ColorsAndFontsPreferencePage.this.selectAndReveal(defaultFontDefinition);
                } else {
                    ColorDefinition colorDefinition = ColorsAndFontsPreferencePage.this.getSelectedColorDefinition();
                    if (colorDefinition != null) {
                        String defaultColorId = colorDefinition.getDefaultsTo();
                        ColorDefinition defaultColorDefinition = ColorsAndFontsPreferencePage.this.themeRegistry.findColor(defaultColorId);
                        ColorsAndFontsPreferencePage.this.selectAndReveal(defaultColorDefinition);
                    }
                }
                ColorsAndFontsPreferencePage.this.updateControls();
            }
        });
    }

    public void init(IWorkbench aWorkbench) {
        this.workbench = (Workbench)aWorkbench;
        this.setPreferenceStore(PrefUtil.getInternalPreferenceStore());
        final IThemeManager themeManager = aWorkbench.getThemeManager();
        this.themeChangeListener = new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if (event.getProperty().equals("CHANGE_CURRENT_THEME")) {
                    ColorsAndFontsPreferencePage.this.updateThemeInfo(themeManager);
                    ColorsAndFontsPreferencePage.this.refreshCategory();
                    ColorsAndFontsPreferencePage.this.tree.getViewer().refresh();
                }
            }
        };
        themeManager.addPropertyChangeListener(this.themeChangeListener);
        this.updateThemeInfo(themeManager);
    }

    private void updateThemeInfo(IThemeManager manager) {
        this.clearPreviews();
        this.categoryMap.clear();
        if (this.labelProvider != null) {
            this.labelProvider.dispose();
        }
        if (this.colorRegistry != null) {
            this.colorRegistry.dispose();
        }
        if (this.fontRegistry != null) {
            this.fontRegistry.dispose();
        }
        this.currentTheme = manager.getCurrentTheme();
        this.colorRegistry = new CascadingColorRegistry(this.currentTheme.getColorRegistry());
        this.fontRegistry = new CascadingFontRegistry(this.currentTheme.getFontRegistry());
        this.fontPreferencesToSet.clear();
        this.fontValuesToSet.clear();
        this.colorPreferencesToSet.clear();
        this.colorValuesToSet.clear();
        if (this.labelProvider != null) {
            this.labelProvider.hookListeners();
        }
    }

    private boolean isDefault(ColorDefinition definition) {
        String id = definition.getId();
        return this.colorPreferencesToSet.containsKey(id) ? (definition.getValue() != null ? this.colorPreferencesToSet.get(id).equals(definition.getValue()) : this.colorPreferencesToSet.get(id).equals(this.getColorAncestorValue(definition))) : (this.colorValuesToSet.containsKey(id) ? (definition.getValue() != null ? this.colorValuesToSet.get(id).equals(definition.getValue()) : this.colorValuesToSet.get(id).equals(this.getColorAncestorValue(definition))) : (definition.getValue() != null ? this.getPreferenceStore().isDefault(ThemeElementHelper.createPreferenceKey(this.currentTheme, id)) : this.getColorValue(definition).equals((Object)this.getColorAncestorValue(definition))));
    }

    private boolean isDefault(FontDefinition definition) {
        String id = definition.getId();
        if (this.fontPreferencesToSet.containsKey(id)) {
            if (definition.getValue() != null) {
                if (Arrays.equals((FontData[])this.fontPreferencesToSet.get(id), definition.getValue())) {
                    return true;
                }
            } else {
                Object[] ancestor = this.getFontAncestorValue(definition);
                if (Arrays.equals((FontData[])this.fontPreferencesToSet.get(id), ancestor)) {
                    return true;
                }
            }
        } else if (this.fontValuesToSet.containsKey(id)) {
            if (definition.getValue() != null) {
                if (Arrays.equals((FontData[])this.fontValuesToSet.get(id), definition.getValue())) {
                    return true;
                }
            } else {
                Object[] ancestor = this.getFontAncestorValue(definition);
                if (Arrays.equals((FontData[])this.fontValuesToSet.get(id), ancestor)) {
                    return true;
                }
            }
        } else if (definition.getValue() != null) {
            if (this.getPreferenceStore().isDefault(ThemeElementHelper.createPreferenceKey(this.currentTheme, id))) {
                return true;
            }
        } else {
            Object[] ancestor = this.getFontAncestorValue(definition);
            if (ancestor == null) {
                return true;
            }
            if (Arrays.equals(this.getFontValue(definition), ancestor)) {
                return true;
            }
        }
        return false;
    }

    private void myApplyDialogFont(Control control) {
        control.setFont(JFaceResources.getDialogFont());
        this.dialogFontWidgets.add(control);
    }

    protected void performApply() {
        super.performApply();
        Font oldFont = this.appliedDialogFont;
        FontDefinition fontDefinition = this.themeRegistry.findFont("org.eclipse.jface.dialogfont");
        if (fontDefinition == null) {
            return;
        }
        FontData[] newData = this.getFontValue(fontDefinition);
        this.appliedDialogFont = new Font((Device)this.getControl().getDisplay(), newData);
        this.updateForDialogFontChange(this.appliedDialogFont);
        this.getApplyButton().setFont(this.appliedDialogFont);
        this.getDefaultsButton().setFont(this.appliedDialogFont);
        if (oldFont != null) {
            oldFont.dispose();
        }
    }

    private void performColorDefaults() {
        IHierarchalThemeElementDefinition[] definitions = this.themeRegistry.getColors();
        ColorDefinition[] definitionsCopy = new ColorDefinition[definitions.length];
        System.arraycopy(definitions, 0, definitionsCopy, 0, definitions.length);
        Arrays.sort(definitionsCopy, new IThemeRegistry.HierarchyComparator(definitions));
        int i = 0;
        while (i < definitionsCopy.length) {
            this.resetColor(definitionsCopy[i], true);
            ++i;
        }
    }

    private boolean performColorOk() {
        Iterator i = this.colorPreferencesToSet.keySet().iterator();
        while (i.hasNext()) {
            String storeString;
            String id = (String)i.next();
            String key = ThemeElementHelper.createPreferenceKey(this.currentTheme, id);
            RGB rgb = (RGB)this.colorPreferencesToSet.get(id);
            String rgbString = StringConverter.asString((RGB)rgb);
            if (rgbString.equals(storeString = this.getPreferenceStore().getString(key))) continue;
            this.getPreferenceStore().setValue(key, rgbString);
        }
        this.colorValuesToSet.clear();
        this.colorPreferencesToSet.clear();
        return true;
    }

    protected void performDefaults() {
        this.performColorDefaults();
        this.performFontDefaults();
        this.updateControls();
        this.tree.getViewer().refresh();
    }

    private void performFontDefaults() {
        IHierarchalThemeElementDefinition[] definitions = this.themeRegistry.getFonts();
        FontDefinition[] definitionsCopy = new FontDefinition[definitions.length];
        System.arraycopy(definitions, 0, definitionsCopy, 0, definitions.length);
        Arrays.sort(definitionsCopy, new IThemeRegistry.HierarchyComparator(definitions));
        int i = 0;
        while (i < definitionsCopy.length) {
            this.resetFont(definitionsCopy[i], true);
            ++i;
        }
    }

    private boolean performFontOk() {
        Iterator i = this.fontPreferencesToSet.keySet().iterator();
        while (i.hasNext()) {
            String storeString;
            String id = (String)i.next();
            String key = ThemeElementHelper.createPreferenceKey(this.currentTheme, id);
            FontData[] fd = (FontData[])this.fontPreferencesToSet.get(id);
            String fdString = PreferenceConverter.getStoredRepresentation((FontData[])fd);
            if (fdString.equals(storeString = this.getPreferenceStore().getString(key))) continue;
            this.getPreferenceStore().setValue(key, fdString);
        }
        this.fontValuesToSet.clear();
        this.fontPreferencesToSet.clear();
        return true;
    }

    public boolean performOk() {
        boolean result;
        this.saveTreeExpansion();
        this.saveTreeSelection();
        boolean bl = result = this.performColorOk() && this.performFontOk();
        if (result) {
            PrefUtil.savePrefs();
        }
        return result;
    }

    private void refreshCategory() {
        this.updateControls();
    }

    private boolean resetColor(ColorDefinition definition, boolean force) {
        RGB newRGB;
        if ((force || !this.isDefault(definition)) && (newRGB = definition.getValue() != null ? definition.getValue() : this.getColorAncestorValue(definition)) != null) {
            this.setColorPreferenceValue(definition, newRGB);
            this.setRegistryValue(definition, newRGB);
            return true;
        }
        return false;
    }

    protected boolean resetFont(FontDefinition definition, boolean force) {
        FontData[] newFD;
        if ((force || !this.isDefault(definition)) && (newFD = !force && definition.getDefaultsTo() != null ? this.getFontAncestorValue(definition) : PreferenceConverter.getDefaultFontDataArray((IPreferenceStore)this.getPreferenceStore(), (String)ThemeElementHelper.createPreferenceKey(this.currentTheme, definition.getId()))) != null) {
            this.setFontPreferenceValue(definition, newFD);
            return true;
        }
        return false;
    }

    protected void setColorPreferenceValue(ColorDefinition definition, RGB newRGB) {
        this.setDescendantRegistryValues(definition, newRGB);
        this.colorPreferencesToSet.put(definition.getId(), newRGB);
    }

    private void setDescendantRegistryValues(ColorDefinition definition, RGB newRGB) {
        ColorDefinition[] children = this.getDescendantColors(definition);
        int i = 0;
        while (i < children.length) {
            if (this.isDefault(children[i])) {
                this.setDescendantRegistryValues(children[i], newRGB);
                this.setRegistryValue(children[i], newRGB);
                this.colorValuesToSet.put(children[i].getId(), newRGB);
            }
            ++i;
        }
    }

    private void setDescendantRegistryValues(FontDefinition definition, FontData[] datas) {
        FontDefinition[] children = this.getDescendantFonts(definition);
        int i = 0;
        while (i < children.length) {
            if (this.isDefault(children[i])) {
                this.setDescendantRegistryValues(children[i], datas);
                this.setRegistryValue(children[i], datas);
                this.fontValuesToSet.put(children[i].getId(), datas);
                this.fontPreferencesToSet.remove(children[i].getId());
            }
            ++i;
        }
    }

    protected void setFontPreferenceValue(FontDefinition definition, FontData[] datas) {
        this.setDescendantRegistryValues(definition, datas);
        this.fontPreferencesToSet.put(definition.getId(), datas);
        this.setRegistryValue(definition, datas);
    }

    protected void setRegistryValue(ColorDefinition definition, RGB newRGB) {
        this.colorRegistry.put(definition.getId(), newRGB);
    }

    protected void setRegistryValue(FontDefinition definition, FontData[] datas) {
        this.fontRegistry.put(definition.getId(), datas);
    }

    private IThemePreview getThemePreview(ThemeElementCategory category) throws CoreException {
        int idx;
        IThemePreview preview = category.createPreview();
        if (preview != null) {
            return preview;
        }
        if (category.getParentId() != null && (idx = Arrays.binarySearch(this.themeRegistry.getCategories(), category.getParentId(), IThemeRegistry.ID_COMPARATOR)) >= 0) {
            return this.getThemePreview(this.themeRegistry.getCategories()[idx]);
        }
        return null;
    }

    private ITheme getCascadingTheme() {
        if (this.cascadingTheme == null) {
            this.cascadingTheme = new CascadingTheme(this.currentTheme, this.colorRegistry, this.fontRegistry);
        }
        return this.cascadingTheme;
    }

    private void updateForDialogFontChange(Font newFont) {
        Iterator iterator = this.dialogFontWidgets.iterator();
        while (iterator.hasNext()) {
            ((Control)iterator.next()).setFont(newFont);
        }
        this.labelProvider.clearFontCacheAndUpdate();
    }

    private void updateTreeSelection(ISelection selection) {
        String categoryID;
        ThemeElementCategory category = null;
        Object element = ((IStructuredSelection)selection).getFirstElement();
        if (element instanceof ThemeElementCategory) {
            category = (ThemeElementCategory)element;
        } else if (element instanceof ColorDefinition) {
            categoryID = ((ColorDefinition)element).getCategoryId();
            category = WorkbenchPlugin.getDefault().getThemeRegistry().findCategory(categoryID);
        } else if (element instanceof FontDefinition) {
            categoryID = ((FontDefinition)element).getCategoryId();
            category = WorkbenchPlugin.getDefault().getThemeRegistry().findCategory(categoryID);
        }
        Composite previewControl = null;
        if (category != null && (previewControl = (Composite)this.previewMap.get(category)) == null) {
            try {
                IThemePreview preview = this.getThemePreview(category);
                if (preview != null) {
                    previewControl = new Composite(this.previewComposite, 0);
                    previewControl.setLayout((Layout)new FillLayout());
                    ITheme theme = this.getCascadingTheme();
                    preview.createControl(previewControl, theme);
                    this.previewSet.add(preview);
                    this.previewMap.put(category, previewControl);
                }
            }
            catch (CoreException e) {
                previewControl = new Composite(this.previewComposite, 0);
                previewControl.setLayout((Layout)new FillLayout());
                this.myApplyDialogFont((Control)previewControl);
                Text error = new Text(previewControl, 72);
                error.setText(RESOURCE_BUNDLE.getString("errorCreatingPreview"));
                WorkbenchPlugin.log(RESOURCE_BUNDLE.getString("errorCreatePreviewLog"), StatusUtil.newStatus(4, e.getMessage(), (Throwable)e));
            }
        }
        if (previewControl == null) {
            previewControl = element instanceof ColorDefinition ? this.defaultColorPreview : (element instanceof FontDefinition ? this.defaultFontPreview : this.defaultNoPreview);
        }
        this.stackLayout.topControl = previewControl;
        this.previewComposite.layout();
        this.updateControls();
    }

    private void restoreTreeSelection() {
        String selectedElementString = this.getPreferenceStore().getString(SELECTED_ELEMENT_PREF);
        if (selectedElementString == null) {
            return;
        }
        IThemeElementDefinition element = this.findElementFromMarker(selectedElementString);
        if (element == null) {
            return;
        }
        this.tree.getViewer().setSelection((ISelection)new StructuredSelection((Object)element), true);
    }

    private void saveTreeSelection() {
        IStructuredSelection selection = (IStructuredSelection)this.tree.getViewer().getSelection();
        Object element = selection.getFirstElement();
        StringBuffer buffer = new StringBuffer();
        this.appendMarkerToBuffer(buffer, element);
        if (buffer.length() > 0) {
            buffer.append(((IThemeElementDefinition)element).getId());
        }
        this.getPreferenceStore().setValue(SELECTED_ELEMENT_PREF, buffer.toString());
    }

    private void restoreTreeExpansion() {
        String expandedElementsString = this.getPreferenceStore().getString(EXPANDED_ELEMENTS_PREF);
        if (expandedElementsString == null) {
            return;
        }
        String[] expandedElementIDs = Util.getArrayFromList(expandedElementsString, EXPANDED_ELEMENTS_TOKEN);
        if (expandedElementIDs.length == 0) {
            return;
        }
        ArrayList<IThemeElementDefinition> elements = new ArrayList<IThemeElementDefinition>(expandedElementIDs.length);
        int i = 0;
        while (i < expandedElementIDs.length) {
            IThemeElementDefinition def = this.findElementFromMarker(expandedElementIDs[i]);
            if (def != null) {
                elements.add(def);
            }
            ++i;
        }
        this.tree.getViewer().setExpandedElements(elements.toArray());
    }

    private IThemeElementDefinition findElementFromMarker(String string) {
        if (string.length() < 2) {
            return null;
        }
        char marker = string.charAt(0);
        String id = string.substring(1);
        IThemeElementDefinition def = null;
        switch (marker) {
            case 'F': {
                def = this.themeRegistry.findFont(id);
                break;
            }
            case 'C': {
                def = this.themeRegistry.findColor(id);
                break;
            }
            case 'T': {
                def = this.themeRegistry.findCategory(id);
            }
        }
        return def;
    }

    private void saveTreeExpansion() {
        Object[] elements = this.tree.getViewer().getExpandedElements();
        ArrayList<String> elementIds = new ArrayList<String>(elements.length);
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < elements.length) {
            Object object = elements[i];
            this.appendMarkerToBuffer(buffer, object);
            if (buffer.length() != 0) {
                buffer.append(((IThemeElementDefinition)object).getId());
                elementIds.add(buffer.toString());
            }
            buffer.setLength(0);
            ++i;
        }
        Iterator i2 = elementIds.iterator();
        while (i2.hasNext()) {
            String id = (String)i2.next();
            buffer.append(id);
            if (!i2.hasNext()) continue;
            buffer.append(EXPANDED_ELEMENTS_TOKEN);
        }
        this.getPreferenceStore().setValue(EXPANDED_ELEMENTS_PREF, buffer.toString());
    }

    private void appendMarkerToBuffer(StringBuffer buffer, Object object) {
        if (object instanceof FontDefinition) {
            buffer.append('F');
        } else if (object instanceof ColorDefinition) {
            buffer.append('C');
        } else if (object instanceof ThemeElementCategory) {
            buffer.append('T');
        }
    }

    private void editFont(Display display) {
        this.editFont(this.getSelectedFontDefinition(), display);
    }

    private void editFont(FontDefinition definition, Display display) {
        if (definition != null) {
            FontDialog fontDialog = new FontDialog(this.getShell());
            fontDialog.setFontList(this.getFontValue(definition));
            FontData data = fontDialog.open();
            if (data != null) {
                this.setFontPreferenceValue(definition, fontDialog.getFontList());
            }
        }
    }

    private void editColor(Display display) {
        this.editColor(this.getSelectedColorDefinition(), display);
    }

    private void editColor(ColorDefinition definition, Display display) {
        if (definition == null) {
            return;
        }
        RGB currentColor = this.colorRegistry.getRGB(definition.getId());
        ColorDialog colorDialog = new ColorDialog(display.getActiveShell());
        colorDialog.setRGB(currentColor);
        RGB selectedColor = colorDialog.open();
        if (selectedColor != null && !selectedColor.equals((Object)currentColor)) {
            this.setColorPreferenceValue(definition, selectedColor);
            this.setRegistryValue(definition, selectedColor);
        }
    }

    protected void updateControls() {
        FontDefinition fontDefinition = this.getSelectedFontDefinition();
        if (fontDefinition != null) {
            boolean isDefault = this.isDefault(fontDefinition);
            boolean hasDefault = fontDefinition.getDefaultsTo() != null;
            this.fontChangeButton.setEnabled(true);
            this.fontSystemButton.setEnabled(true);
            this.fontResetButton.setEnabled(!isDefault);
            this.editDefaultButton.setEnabled(hasDefault && isDefault);
            this.goToDefaultButton.setEnabled(hasDefault);
            this.setCurrentFont(fontDefinition);
            return;
        }
        ColorDefinition colorDefinition = this.getSelectedColorDefinition();
        if (colorDefinition != null) {
            boolean isDefault = this.isDefault(this.getSelectedColorDefinition());
            boolean hasDefault = colorDefinition.getDefaultsTo() != null;
            this.fontChangeButton.setEnabled(true);
            this.fontSystemButton.setEnabled(false);
            this.fontResetButton.setEnabled(!isDefault);
            this.editDefaultButton.setEnabled(hasDefault && isDefault);
            this.goToDefaultButton.setEnabled(hasDefault);
            this.setCurrentColor(colorDefinition);
            return;
        }
        this.fontChangeButton.setEnabled(false);
        this.fontSystemButton.setEnabled(false);
        this.fontResetButton.setEnabled(false);
        this.editDefaultButton.setEnabled(false);
        this.goToDefaultButton.setEnabled(false);
        this.descriptionText.setText("");
    }

    private Composite createNoPreviewControl() {
        Composite noPreviewControl = new Composite(this.previewComposite, 0);
        noPreviewControl.setLayout((Layout)new FillLayout());
        Label l = new Label(noPreviewControl, 16384);
        l.setText(RESOURCE_BUNDLE.getString("noPreviewAvailable"));
        this.myApplyDialogFont((Control)l);
        return noPreviewControl;
    }

    private void setCurrentFont(FontDefinition fontDefinition) {
        this.currentFont = this.fontRegistry.get(fontDefinition.getId());
        FontData[] fontData = this.currentFont.getFontData();
        StringBuffer tmp = new StringBuffer();
        int i = 0;
        while (i < fontData.length) {
            tmp.append(fontData[i].getName());
            tmp.append(' ');
            tmp.append(fontData[i].getHeight());
            int style = fontData[i].getStyle();
            if ((style & 1) != 0) {
                tmp.append(' ');
                tmp.append(RESOURCE_BUNDLE.getString("boldFont"));
            }
            if ((style & 2) != 0) {
                tmp.append(' ');
                tmp.append(RESOURCE_BUNDLE.getString("italicFont"));
            }
            ++i;
        }
        this.fontSampleText = tmp.toString();
        String description = fontDefinition.getDescription();
        this.descriptionText.setText(description == null ? "" : description);
        this.fontSampler.redraw();
    }

    public void setCurrentColor(ColorDefinition colorDefinition) {
        this.currentColor = this.colorRegistry.get(colorDefinition.getId());
        this.colorSampler.redraw();
        String description = colorDefinition.getDescription();
        this.descriptionText.setText(description == null ? "" : description);
    }

    private Composite createFontPreviewControl() {
        this.fontSampler = new Canvas(this.previewComposite, 0);
        GridLayout gridLayout = new GridLayout();
        gridLayout.marginWidth = 0;
        gridLayout.marginHeight = 0;
        this.fontSampler.setLayout((Layout)gridLayout);
        this.fontSampler.setLayoutData((Object)new GridData(1808));
        this.fontSampler.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent e) {
                if (ColorsAndFontsPreferencePage.this.currentFont != null) {
                    ColorsAndFontsPreferencePage.this.paintFontSample(e.gc);
                }
            }
        });
        return this.fontSampler;
    }

    private void paintFontSample(GC gc) {
        if (this.currentFont == null || this.currentFont.isDisposed()) {
            return;
        }
        Rectangle clientArea = this.colorSampler.getClientArea();
        FontMetrics standardFontMetrics = gc.getFontMetrics();
        int standardLineHeight = standardFontMetrics.getHeight();
        int maxHeight = standardLineHeight * 4;
        if (clientArea.height > maxHeight) {
            clientArea = new Rectangle(clientArea.x, clientArea.y, clientArea.width, maxHeight);
        }
        gc.setForeground(this.previewComposite.getDisplay().getSystemColor(18));
        gc.drawRectangle(0, 0, clientArea.width - 1, clientArea.height - 1);
        gc.setForeground(this.previewComposite.getDisplay().getSystemColor(2));
        gc.setFont(this.currentFont);
        FontMetrics fontMetrics = gc.getFontMetrics();
        int lineHeight = fontMetrics.getHeight();
        int topY = clientArea.y + 5;
        gc.setClipping(1, 1, clientArea.width - 2, clientArea.height - 2);
        gc.drawText(this.fontSampleText, clientArea.x + 5, topY);
        gc.drawText(RESOURCE_BUNDLE.getString("fontTextSample"), clientArea.x + 5, topY + lineHeight);
    }

    private Composite createColorPreviewControl() {
        this.colorSampler = new Canvas(this.previewComposite, 0);
        GridLayout gridLayout = new GridLayout();
        gridLayout.marginWidth = 0;
        gridLayout.marginHeight = 0;
        this.colorSampler.setLayout((Layout)gridLayout);
        this.colorSampler.setLayoutData((Object)new GridData(1808));
        this.colorSampler.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent e) {
                if (ColorsAndFontsPreferencePage.this.currentColor != null) {
                    ColorsAndFontsPreferencePage.this.paintColorSample(e.gc);
                }
            }
        });
        return this.colorSampler;
    }

    private void paintColorSample(GC gc) {
        int textBottomY;
        if (this.currentColor == null || this.currentColor.isDisposed()) {
            return;
        }
        gc.setFont(this.previewComposite.getDisplay().getSystemFont());
        FontMetrics fontMetrics = gc.getFontMetrics();
        int lineHeight = fontMetrics.getHeight();
        Rectangle clientArea = this.colorSampler.getClientArea();
        int maxHeight = lineHeight * 4;
        if (clientArea.height > maxHeight) {
            clientArea = new Rectangle(clientArea.x, clientArea.y, clientArea.width, maxHeight);
        }
        String messageTop = RESOURCE_BUNDLE.getString("fontColorSample");
        RGB rgb = this.currentColor.getRGB();
        String messageBottom = MessageFormat.format((String)"RGB({0}, {1}, {2})", (Object[])new Object[]{new Integer(rgb.red), new Integer(rgb.green), new Integer(rgb.blue)});
        int separator = (clientArea.width - 2) / 3;
        int verticalCenter = clientArea.height / 2;
        int textTopY = (verticalCenter - lineHeight) / 2;
        if (textTopY < 1) {
            textTopY = 1;
        }
        if ((textBottomY = verticalCenter + (textTopY += clientArea.y)) > clientArea.height - 2) {
            textBottomY = clientArea.height - 2;
        }
        textBottomY += clientArea.y;
        int stringWidthTop = gc.stringExtent((String)messageTop).x;
        int textTopX = (separator - stringWidthTop - 1) / 2;
        if (textTopX < 1) {
            textTopX = 1;
        }
        textTopX += clientArea.x;
        int stringWidthBottom = gc.stringExtent((String)messageBottom).x;
        int textBottomX = (separator - stringWidthBottom - 1) / 2;
        if (textBottomX < 1) {
            textBottomX = 1;
        }
        gc.setForeground(this.currentColor);
        gc.drawText(messageTop, textTopX, textTopY);
        gc.drawText(messageBottom, textBottomX += clientArea.x, textBottomY);
        gc.setBackground(this.previewComposite.getDisplay().getSystemColor(25));
        int rightWidth = clientArea.width - 2 - separator * 2;
        gc.fillRectangle(separator * 2, 1, rightWidth, clientArea.height - 2);
        gc.setForeground(this.currentColor);
        gc.drawText(messageTop, separator * 2 + textTopX, textTopY);
        gc.drawText(messageBottom, separator * 2 + textBottomX, textBottomY);
        gc.setBackground(this.currentColor);
        gc.fillRectangle(separator, 1, separator, clientArea.height - 2);
        gc.setForeground(this.previewComposite.getDisplay().getSystemColor(2));
        gc.drawText(messageTop, separator + textTopX, textTopY);
        gc.setForeground(this.previewComposite.getDisplay().getSystemColor(1));
        gc.drawText(messageBottom, separator + textBottomX, textBottomY);
        gc.setForeground(this.previewComposite.getDisplay().getSystemColor(18));
        gc.drawLine(separator, verticalCenter, separator * 2 - 1, verticalCenter);
        gc.setForeground(this.previewComposite.getDisplay().getSystemColor(18));
        gc.drawRectangle(0, 0, clientArea.width - 1, clientArea.height - 1);
    }

    private void createDescriptionControl(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        composite.setLayout((Layout)layout);
        GridData data = new GridData(768);
        data.horizontalSpan = 2;
        composite.setLayoutData((Object)data);
        Label label = new Label(composite, 16384);
        label.setText(RESOURCE_BUNDLE.getString("description"));
        this.myApplyDialogFont((Control)label);
        this.descriptionText = new Text(composite, 2120);
        data = new GridData(1808);
        data.heightHint = this.convertHeightInCharsToPixels(3);
        data.widthHint = this.convertWidthInCharsToPixels(30);
        this.descriptionText.setLayoutData((Object)data);
        this.myApplyDialogFont((Control)this.descriptionText);
    }

    private class PresentationLabelProvider
    extends LabelProvider
    implements IFontProvider {
        private HashMap fonts = new HashMap();
        private HashMap images = new HashMap();
        private int imageSize = -1;
        private int usableImageSize = -1;
        private IPropertyChangeListener listener = new IPropertyChangeListener(this){
            final /* synthetic */ PresentationLabelProvider this$1;
            {
                this.this$1 = presentationLabelProvider;
            }

            public void propertyChange(PropertyChangeEvent event) {
                PresentationLabelProvider.access$0(this.this$1, new LabelProviderChangedEvent((IBaseLabelProvider)this.this$1));
            }
        };
        private Image emptyImage;

        public PresentationLabelProvider() {
            this.hookListeners();
        }

        public void hookListeners() {
            ColorsAndFontsPreferencePage.this.colorRegistry.addListener(this.listener);
            ColorsAndFontsPreferencePage.this.fontRegistry.addListener(this.listener);
        }

        public void dispose() {
            super.dispose();
            ColorsAndFontsPreferencePage.this.colorRegistry.removeListener(this.listener);
            ColorsAndFontsPreferencePage.this.fontRegistry.removeListener(this.listener);
            Iterator i = this.images.values().iterator();
            while (i.hasNext()) {
                ((Image)i.next()).dispose();
            }
            this.images.clear();
            if (this.emptyImage != null) {
                this.emptyImage.dispose();
                this.emptyImage = null;
            }
            this.clearFontCache();
        }

        public void clearFontCache() {
            Iterator i = this.fonts.values().iterator();
            while (i.hasNext()) {
                ((Font)i.next()).dispose();
            }
            this.fonts.clear();
        }

        public void clearFontCacheAndUpdate() {
            this.clearFontCache();
            this.fireLabelProviderChanged(new LabelProviderChangedEvent((IBaseLabelProvider)this));
        }

        public Font getFont(Object element) {
            Display display = ColorsAndFontsPreferencePage.this.tree.getDisplay();
            if (element instanceof FontDefinition) {
                int parentHeight = ColorsAndFontsPreferencePage.this.tree.getViewer().getControl().getFont().getFontData()[0].getHeight();
                Font baseFont = ColorsAndFontsPreferencePage.this.fontRegistry.get(((FontDefinition)element).getId());
                Font font = (Font)this.fonts.get(baseFont);
                if (font == null) {
                    FontData[] data = baseFont.getFontData();
                    int i = 0;
                    while (i < data.length) {
                        data[i].setHeight(parentHeight);
                        ++i;
                    }
                    font = new Font((Device)display, data);
                    this.fonts.put(baseFont, font);
                }
                return font;
            }
            return JFaceResources.getDialogFont();
        }

        public Image getImage(Object element) {
            if (element instanceof ColorDefinition) {
                Color c = ColorsAndFontsPreferencePage.this.colorRegistry.get(((ColorDefinition)element).getId());
                Image image = (Image)this.images.get(c);
                if (image == null) {
                    Display display = ColorsAndFontsPreferencePage.this.tree.getDisplay();
                    this.ensureImageSize();
                    image = new Image((Device)display, this.imageSize, this.imageSize);
                    GC gc = new GC((Drawable)image);
                    gc.setBackground(ColorsAndFontsPreferencePage.this.tree.getViewer().getControl().getBackground());
                    gc.setForeground(ColorsAndFontsPreferencePage.this.tree.getViewer().getControl().getBackground());
                    gc.drawRectangle(0, 0, this.imageSize - 1, this.imageSize - 1);
                    gc.setForeground(ColorsAndFontsPreferencePage.this.tree.getViewer().getControl().getForeground());
                    gc.setBackground(c);
                    int offset = (this.imageSize - this.usableImageSize) / 2;
                    gc.drawRectangle(offset, offset, this.usableImageSize - offset, this.usableImageSize - offset);
                    gc.fillRectangle(offset + 1, offset + 1, this.usableImageSize - offset - 1, this.usableImageSize - offset - 1);
                    gc.dispose();
                    this.images.put(c, image);
                }
                return image;
            }
            if (element instanceof FontDefinition) {
                return ColorsAndFontsPreferencePage.this.workbench.getSharedImages().getImage("IMG_OBJ_FONT");
            }
            return ColorsAndFontsPreferencePage.this.workbench.getSharedImages().getImage("IMG_OBJ_THEME_CATEGORY");
        }

        private void ensureImageSize() {
            if (this.imageSize == -1) {
                this.imageSize = ColorsAndFontsPreferencePage.this.tree.getViewer().getTree().getItemHeight();
                this.usableImageSize = Math.max(1, this.imageSize - 4);
            }
        }

        public String getText(Object element) {
            IHierarchalThemeElementDefinition themeElement;
            if (element instanceof IHierarchalThemeElementDefinition && (themeElement = (IHierarchalThemeElementDefinition)element).getDefaultsTo() != null) {
                String myCategory = ((ICategorizedThemeElementDefinition)((Object)themeElement)).getCategoryId();
                ICategorizedThemeElementDefinition def = element instanceof ColorDefinition ? ColorsAndFontsPreferencePage.this.themeRegistry.findColor(themeElement.getDefaultsTo()) : ColorsAndFontsPreferencePage.this.themeRegistry.findFont(themeElement.getDefaultsTo());
                if (!ColorsAndFontsPreferencePage.equals(def.getCategoryId(), myCategory)) {
                    if (this.isDefault(themeElement)) {
                        return MessageFormat.format((String)RESOURCE_BUNDLE.getString("defaultFormat_default"), (Object[])new Object[]{themeElement.getName(), def.getName()});
                    }
                    return MessageFormat.format((String)RESOURCE_BUNDLE.getString("defaultFormat_override"), (Object[])new Object[]{themeElement.getName(), def.getName()});
                }
            }
            return ((IThemeElementDefinition)element).getName();
        }

        private boolean isDefault(IThemeElementDefinition def) {
            if (def instanceof FontDefinition) {
                FontDefinition fontDef = (FontDefinition)def;
                String defaultFontID = fontDef.getDefaultsTo();
                return defaultFontID != null && Arrays.equals(ColorsAndFontsPreferencePage.this.fontRegistry.getFontData(def.getId()), ColorsAndFontsPreferencePage.this.fontRegistry.getFontData(defaultFontID));
            }
            if (def instanceof ColorDefinition) {
                ColorDefinition colorDef = (ColorDefinition)def;
                String defaultColorID = colorDef.getDefaultsTo();
                if (defaultColorID == null) {
                    return false;
                }
                RGB defaultRGB = ColorsAndFontsPreferencePage.this.colorRegistry.getRGB(defaultColorID);
                return defaultRGB != null && defaultRGB.equals((Object)ColorsAndFontsPreferencePage.this.colorRegistry.getRGB(colorDef.getId()));
            }
            return false;
        }

        static /* synthetic */ void access$0(PresentationLabelProvider presentationLabelProvider, LabelProviderChangedEvent labelProviderChangedEvent) {
            presentationLabelProvider.fireLabelProviderChanged(labelProviderChangedEvent);
        }
    }

    private class ThemeContentProvider
    implements ITreeContentProvider {
        private IThemeRegistry registry;

        private ThemeContentProvider() {
        }

        public Object[] getChildren(Object parentElement) {
            if (parentElement instanceof ThemeElementCategory) {
                String categoryId = ((ThemeElementCategory)parentElement).getId();
                Object[] defintions = (Object[])ColorsAndFontsPreferencePage.this.categoryMap.get(categoryId);
                if (defintions == null) {
                    defintions = this.getCategoryChildren(categoryId);
                    ColorsAndFontsPreferencePage.this.categoryMap.put(categoryId, defintions);
                }
                return defintions;
            }
            ArrayList<ICategorizedThemeElementDefinition> list = new ArrayList<ICategorizedThemeElementDefinition>();
            IHierarchalThemeElementDefinition def = (IHierarchalThemeElementDefinition)parentElement;
            String id = def.getId();
            ICategorizedThemeElementDefinition[] defs = def instanceof ColorDefinition ? this.registry.getColors() : this.registry.getFonts();
            int i = 0;
            while (i < defs.length) {
                if (id.equals(defs[i].getDefaultsTo()) && ColorsAndFontsPreferencePage.equals(((ICategorizedThemeElementDefinition)((Object)def)).getCategoryId(), defs[i].getCategoryId())) {
                    list.add(defs[i]);
                }
                ++i;
            }
            return list.toArray();
        }

        private Object[] getCategoryChildren(String categoryId) {
            String catId;
            int i;
            ArrayList<Object> list = new ArrayList<Object>();
            if (categoryId != null) {
                ThemeElementCategory[] categories = this.registry.getCategories();
                i = 0;
                while (i < categories.length) {
                    Set bindings;
                    if (categoryId.equals(categories[i].getParentId()) && ((bindings = ColorsAndFontsPreferencePage.this.themeRegistry.getPresentationsBindingsFor(categories[i])) == null || bindings.contains(ColorsAndFontsPreferencePage.this.workbench.getPresentationId()))) {
                        list.add(categories[i]);
                    }
                    ++i;
                }
            }
            ColorDefinition[] colorDefinitions = ColorsAndFontsPreferencePage.this.themeRegistry.getColorsFor(ColorsAndFontsPreferencePage.this.currentTheme.getId());
            i = 0;
            while (i < colorDefinitions.length) {
                if (colorDefinitions[i].isEditable() && ((catId = colorDefinitions[i].getCategoryId()) == null && categoryId == null || catId != null && categoryId != null && categoryId.equals(catId)) && (colorDefinitions[i].getDefaultsTo() == null || !this.parentIsInSameCategory(colorDefinitions[i]))) {
                    list.add(colorDefinitions[i]);
                }
                ++i;
            }
            FontDefinition[] fontDefinitions = ColorsAndFontsPreferencePage.this.themeRegistry.getFontsFor(ColorsAndFontsPreferencePage.this.currentTheme.getId());
            i = 0;
            while (i < fontDefinitions.length) {
                if (fontDefinitions[i].isEditable() && ((catId = fontDefinitions[i].getCategoryId()) == null && categoryId == null || catId != null && categoryId != null && categoryId.equals(catId)) && (fontDefinitions[i].getDefaultsTo() == null || !this.parentIsInSameCategory(fontDefinitions[i]))) {
                    list.add(fontDefinitions[i]);
                }
                ++i;
            }
            return list.toArray(new Object[list.size()]);
        }

        private boolean parentIsInSameCategory(ColorDefinition definition) {
            String defaultsTo = definition.getDefaultsTo();
            ColorDefinition[] defs = this.registry.getColors();
            int i = 0;
            while (i < defs.length) {
                if (defs[i].getId().equals(defaultsTo) && ColorsAndFontsPreferencePage.equals(defs[i].getCategoryId(), definition.getCategoryId())) {
                    return true;
                }
                ++i;
            }
            return false;
        }

        private boolean parentIsInSameCategory(FontDefinition definition) {
            String defaultsTo = definition.getDefaultsTo();
            FontDefinition[] defs = this.registry.getFonts();
            int i = 0;
            while (i < defs.length) {
                if (defs[i].getId().equals(defaultsTo) && ColorsAndFontsPreferencePage.equals(defs[i].getCategoryId(), definition.getCategoryId())) {
                    return true;
                }
                ++i;
            }
            return false;
        }

        public Object getParent(Object element) {
            if (element instanceof ThemeElementCategory) {
                return this.registry;
            }
            if (element instanceof ColorDefinition) {
                ColorDefinition defaultElement;
                String defaultId = ((IHierarchalThemeElementDefinition)element).getDefaultsTo();
                if (defaultId != null && this.parentIsInSameCategory(defaultElement = this.registry.findColor(defaultId))) {
                    return defaultElement;
                }
                String categoryId = ((ColorDefinition)element).getCategoryId();
                return this.registry.findCategory(categoryId);
            }
            if (element instanceof FontDefinition) {
                FontDefinition defaultElement;
                String defaultId = ((FontDefinition)element).getDefaultsTo();
                if (defaultId != null && this.parentIsInSameCategory(defaultElement = this.registry.findFont(defaultId))) {
                    return defaultElement;
                }
                String categoryId = ((FontDefinition)element).getCategoryId();
                return this.registry.findCategory(categoryId);
            }
            return null;
        }

        public boolean hasChildren(Object element) {
            if (element instanceof ThemeElementCategory) {
                return true;
            }
            IHierarchalThemeElementDefinition def = (IHierarchalThemeElementDefinition)element;
            String id = def.getId();
            ICategorizedThemeElementDefinition[] defs = def instanceof ColorDefinition ? this.registry.getColors() : this.registry.getFonts();
            int i = 0;
            while (i < defs.length) {
                if (id.equals(defs[i].getDefaultsTo()) && ColorsAndFontsPreferencePage.equals(((ICategorizedThemeElementDefinition)((Object)def)).getCategoryId(), defs[i].getCategoryId())) {
                    return true;
                }
                ++i;
            }
            return false;
        }

        public Object[] getElements(Object inputElement) {
            ArrayList<Object> list = new ArrayList<Object>();
            Object[] uncatChildren = this.getCategoryChildren(null);
            list.addAll(Arrays.asList(uncatChildren));
            ThemeElementCategory[] categories = ((IThemeRegistry)inputElement).getCategories();
            int i = 0;
            while (i < categories.length) {
                Set bindings;
                if (categories[i].getParentId() == null && ((bindings = ColorsAndFontsPreferencePage.this.themeRegistry.getPresentationsBindingsFor(categories[i])) == null || bindings.contains(ColorsAndFontsPreferencePage.this.workbench.getPresentationId()))) {
                    list.add(categories[i]);
                }
                ++i;
            }
            return list.toArray(new Object[list.size()]);
        }

        public void dispose() {
            ColorsAndFontsPreferencePage.this.categoryMap.clear();
        }

        public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
            ColorsAndFontsPreferencePage.this.categoryMap.clear();
            this.registry = (IThemeRegistry)newInput;
        }
    }
}

