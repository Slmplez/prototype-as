/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.LegacyActionTools
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.fieldassist.ComboContentAdapter
 *  org.eclipse.jface.fieldassist.FieldDecoration
 *  org.eclipse.jface.fieldassist.FieldDecorationRegistry
 *  org.eclipse.jface.fieldassist.IContentProposalProvider
 *  org.eclipse.jface.fieldassist.IControlContentAdapter
 *  org.eclipse.jface.resource.JFaceColors
 *  org.eclipse.jface.text.FindReplaceDocumentAdapter
 *  org.eclipse.jface.text.FindReplaceDocumentAdapterContentProposalProvider
 *  org.eclipse.jface.text.IFindReplaceTarget
 *  org.eclipse.jface.text.IFindReplaceTargetExtension
 *  org.eclipse.jface.text.IFindReplaceTargetExtension3
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.jface.util.Util
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.events.ModifyEvent
 *  org.eclipse.swt.events.ModifyListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.ShellAdapter
 *  org.eclipse.swt.events.ShellEvent
 *  org.eclipse.swt.events.ShellListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Group
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.IEditorPart
 *  org.eclipse.ui.IWorkbenchPage
 *  org.eclipse.ui.IWorkbenchWindow
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.fieldassist.ContentAssistCommandAdapter
 */
package org.eclipse.ui.texteditor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.regex.PatternSyntaxException;
import org.eclipse.jface.action.LegacyActionTools;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.fieldassist.ComboContentAdapter;
import org.eclipse.jface.fieldassist.FieldDecoration;
import org.eclipse.jface.fieldassist.FieldDecorationRegistry;
import org.eclipse.jface.fieldassist.IContentProposalProvider;
import org.eclipse.jface.fieldassist.IControlContentAdapter;
import org.eclipse.jface.resource.JFaceColors;
import org.eclipse.jface.text.FindReplaceDocumentAdapter;
import org.eclipse.jface.text.FindReplaceDocumentAdapterContentProposalProvider;
import org.eclipse.jface.text.IFindReplaceTarget;
import org.eclipse.jface.text.IFindReplaceTargetExtension;
import org.eclipse.jface.text.IFindReplaceTargetExtension3;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.ShellAdapter;
import org.eclipse.swt.events.ShellEvent;
import org.eclipse.swt.events.ShellListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.fieldassist.ContentAssistCommandAdapter;
import org.eclipse.ui.internal.texteditor.NLSUtility;
import org.eclipse.ui.internal.texteditor.SWTUtil;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.eclipse.ui.texteditor.EditorMessages;
import org.eclipse.ui.texteditor.FindReplaceDialog;
import org.eclipse.ui.texteditor.IEditorStatusLine;
import org.eclipse.ui.texteditor.IFindReplaceTargetExtension2;

class FindReplaceDialog
extends Dialog {
    private static final int HISTORY_SIZE = 5;
    private Point fIncrementalBaseLocation;
    private boolean fWrapInit = false;
    private boolean fCaseInit = false;
    private boolean fWholeWordInit = false;
    private boolean fForwardInit = true;
    private boolean fGlobalInit = true;
    private boolean fIncrementalInit = false;
    private boolean fNeedsInitialFindBeforeReplace;
    boolean fIsRegExInit = false;
    private List fFindHistory;
    private List fReplaceHistory;
    private IRegion fOldScope;
    private boolean fIsTargetEditable;
    private IFindReplaceTarget fTarget = null;
    private Shell fParentShell = null;
    private Shell fActiveShell;
    private final ActivationListener fActivationListener = new ActivationListener();
    private final ModifyListener fFindModifyListener = new FindModifyListener();
    private Label fReplaceLabel;
    private Label fStatusLabel;
    private Button fForwardRadioButton;
    private Button fGlobalRadioButton;
    private Button fSelectedRangeRadioButton;
    private Button fCaseCheckBox;
    private Button fWrapCheckBox;
    private Button fWholeWordCheckBox;
    private Button fIncrementalCheckBox;
    private Button fIsRegExCheckBox;
    private Button fReplaceSelectionButton;
    private Button fReplaceFindButton;
    private Button fFindNextButton;
    private Button fReplaceAllButton;
    private Combo fFindField;
    private Combo fReplaceField;
    private ContentAssistCommandAdapter fContentAssistFindField;
    private ContentAssistCommandAdapter fContentAssistReplaceField;
    private Rectangle fDialogPositionInit = null;
    private IDialogSettings fDialogSettings;
    private boolean fIsTargetSupportingRegEx;
    private boolean fUseSelectedLines;
    private boolean fGiveFocusToFindField = true;
    private HashMap fMnemonicButtonMap = new HashMap();
    static /* synthetic */ Class class$0;

    public FindReplaceDialog(Shell parentShell) {
        super(parentShell);
        this.fFindHistory = new ArrayList(4);
        this.fReplaceHistory = new ArrayList(4);
        this.readConfiguration();
        this.setShellStyle(this.getShellStyle() ^ 0x10000);
        this.setBlockOnOpen(false);
    }

    protected boolean isResizable() {
        return true;
    }

    public Shell getParentShell() {
        return super.getParentShell();
    }

    private boolean okToUse(Control control) {
        return control != null && !control.isDisposed();
    }

    public void create() {
        super.create();
        Shell shell = this.getShell();
        shell.addShellListener((ShellListener)this.fActivationListener);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)shell, "org.eclipse.ui.find_replace_dialog_context");
        this.fFindField.removeModifyListener(this.fFindModifyListener);
        this.updateCombo(this.fFindField, this.fFindHistory);
        this.fFindField.addModifyListener(this.fFindModifyListener);
        this.updateCombo(this.fReplaceField, this.fReplaceHistory);
        this.initFindStringFromSelection();
        if (this.fDialogPositionInit != null) {
            shell.setBounds(this.fDialogPositionInit);
        }
        shell.setText(EditorMessages.FindReplace_title);
    }

    private Composite createButtonSection(Composite parent) {
        Composite panel = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = -2;
        panel.setLayout((Layout)layout);
        this.fFindNextButton = this.makeButton(panel, EditorMessages.FindReplace_FindNextButton_label, 102, true, (SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                if (FindReplaceDialog.this.isIncrementalSearch() && !FindReplaceDialog.this.isRegExSearchAvailableAndChecked()) {
                    FindReplaceDialog.this.initIncrementalBaseLocation();
                }
                FindReplaceDialog.this.fNeedsInitialFindBeforeReplace = false;
                FindReplaceDialog.this.performSearch(e.stateMask == 131072 ^ FindReplaceDialog.this.isForwardSearch());
                FindReplaceDialog.this.updateFindHistory();
            }
        });
        this.setGridData((Control)this.fFindNextButton, 4, true, 4, false);
        this.fReplaceFindButton = this.makeButton(panel, EditorMessages.FindReplace_ReplaceFindButton_label, 103, false, (SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                if (FindReplaceDialog.this.fNeedsInitialFindBeforeReplace) {
                    FindReplaceDialog.this.performSearch(e.stateMask == 131072 ^ FindReplaceDialog.this.isForwardSearch());
                }
                if (FindReplaceDialog.this.performReplaceSelection()) {
                    FindReplaceDialog.this.performSearch(e.stateMask == 131072 ^ FindReplaceDialog.this.isForwardSearch());
                }
                FindReplaceDialog.this.updateFindAndReplaceHistory();
            }
        });
        this.setGridData((Control)this.fReplaceFindButton, 4, false, 4, false);
        this.fReplaceSelectionButton = this.makeButton(panel, EditorMessages.FindReplace_ReplaceSelectionButton_label, 104, false, (SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                if (FindReplaceDialog.this.fNeedsInitialFindBeforeReplace) {
                    FindReplaceDialog.this.performSearch();
                }
                FindReplaceDialog.this.performReplaceSelection();
                FindReplaceDialog.this.updateButtonState();
                FindReplaceDialog.this.updateFindAndReplaceHistory();
            }
        });
        this.setGridData((Control)this.fReplaceSelectionButton, 4, false, 4, false);
        this.fReplaceAllButton = this.makeButton(panel, EditorMessages.FindReplace_ReplaceAllButton_label, 105, false, (SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                FindReplaceDialog.this.performReplaceAll();
                FindReplaceDialog.this.updateFindAndReplaceHistory();
            }
        });
        this.setGridData((Control)this.fReplaceAllButton, 4, true, 4, false);
        this.fReplaceAllButton.setEnabled(this.isEditable());
        return panel;
    }

    private Composite createConfigPanel(Composite parent) {
        Composite panel = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        layout.makeColumnsEqualWidth = true;
        panel.setLayout((Layout)layout);
        Composite directionGroup = this.createDirectionGroup(panel);
        this.setGridData((Control)directionGroup, 4, true, 4, false);
        Composite scopeGroup = this.createScopeGroup(panel);
        this.setGridData((Control)scopeGroup, 4, true, 4, false);
        Composite optionsGroup = this.createOptionsGroup(panel);
        this.setGridData((Control)optionsGroup, 4, true, 4, true);
        ((GridData)optionsGroup.getLayoutData()).horizontalSpan = 2;
        return panel;
    }

    protected Control createContents(Composite parent) {
        Composite panel = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 1;
        layout.makeColumnsEqualWidth = true;
        panel.setLayout((Layout)layout);
        panel.setLayoutData((Object)new GridData(4, 4, true, true));
        Composite inputPanel = this.createInputPanel(panel);
        this.setGridData((Control)inputPanel, 4, true, 128, false);
        Composite configPanel = this.createConfigPanel(panel);
        this.setGridData((Control)configPanel, 4, true, 128, true);
        Composite buttonPanelB = this.createButtonSection(panel);
        this.setGridData((Control)buttonPanelB, 131072, true, 1024, false);
        Composite statusBar = this.createStatusAndCloseButton(panel);
        this.setGridData((Control)statusBar, 4, true, 1024, false);
        panel.addTraverseListener(new TraverseListener(){

            public void keyTraversed(TraverseEvent e) {
                if (e.detail == 4) {
                    Control controlWithFocus;
                    if (!Util.isMac() && (controlWithFocus = FindReplaceDialog.this.getShell().getDisplay().getFocusControl()) != null && (controlWithFocus.getStyle() & 8) == 8) {
                        return;
                    }
                    Event event = new Event();
                    event.type = 13;
                    event.stateMask = e.stateMask;
                    FindReplaceDialog.this.fFindNextButton.notifyListeners(13, event);
                    e.doit = false;
                } else if (e.detail == 128) {
                    Character mnemonic = new Character(Character.toLowerCase(e.character));
                    if (FindReplaceDialog.this.fMnemonicButtonMap.containsKey(mnemonic)) {
                        Button button = (Button)FindReplaceDialog.this.fMnemonicButtonMap.get(mnemonic);
                        if ((FindReplaceDialog.this.fFindField.isFocusControl() || FindReplaceDialog.this.fReplaceField.isFocusControl() || (button.getStyle() & 8) != 0) && button.isEnabled()) {
                            Event event = new Event();
                            event.type = 13;
                            event.stateMask = e.stateMask;
                            if ((button.getStyle() & 0x10) != 0) {
                                Composite buttonParent = button.getParent();
                                if (buttonParent != null) {
                                    Control[] children = buttonParent.getChildren();
                                    int i = 0;
                                    while (i < children.length) {
                                        ((Button)children[i]).setSelection(false);
                                        ++i;
                                    }
                                }
                                button.setSelection(true);
                            } else {
                                button.setSelection(!button.getSelection());
                            }
                            button.notifyListeners(13, event);
                            e.detail = 0;
                            e.doit = true;
                        }
                    }
                }
            }
        });
        this.updateButtonState();
        FindReplaceDialog.applyDialogFont((Control)panel);
        return panel;
    }

    private void setContentAssistsEnablement(boolean enable) {
        this.fContentAssistFindField.setEnabled(enable);
        this.fContentAssistReplaceField.setEnabled(enable);
    }

    private Composite createDirectionGroup(Composite parent) {
        Composite panel = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        panel.setLayout((Layout)layout);
        Group group = new Group(panel, 16);
        group.setText(EditorMessages.FindReplace_Direction);
        GridLayout groupLayout = new GridLayout();
        group.setLayout((Layout)groupLayout);
        group.setLayoutData((Object)new GridData(4, 4, true, true));
        SelectionListener selectionListener = new SelectionListener(){

            public void widgetSelected(SelectionEvent e) {
                if (FindReplaceDialog.this.isIncrementalSearch() && !FindReplaceDialog.this.isRegExSearchAvailableAndChecked()) {
                    FindReplaceDialog.this.initIncrementalBaseLocation();
                }
            }

            public void widgetDefaultSelected(SelectionEvent e) {
            }
        };
        this.fForwardRadioButton = new Button((Composite)group, 16400);
        this.fForwardRadioButton.setText(EditorMessages.FindReplace_ForwardRadioButton_label);
        this.setGridData((Control)this.fForwardRadioButton, 16384, false, 0x1000000, false);
        this.fForwardRadioButton.addSelectionListener(selectionListener);
        this.storeButtonWithMnemonicInMap(this.fForwardRadioButton);
        Button backwardRadioButton = new Button((Composite)group, 16400);
        backwardRadioButton.setText(EditorMessages.FindReplace_BackwardRadioButton_label);
        this.setGridData((Control)backwardRadioButton, 16384, false, 0x1000000, false);
        backwardRadioButton.addSelectionListener(selectionListener);
        this.storeButtonWithMnemonicInMap(backwardRadioButton);
        backwardRadioButton.setSelection(!this.fForwardInit);
        this.fForwardRadioButton.setSelection(this.fForwardInit);
        return panel;
    }

    private Composite createScopeGroup(Composite parent) {
        Composite panel = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        panel.setLayout((Layout)layout);
        Group group = new Group(panel, 16);
        group.setText(EditorMessages.FindReplace_Scope);
        GridLayout groupLayout = new GridLayout();
        group.setLayout((Layout)groupLayout);
        group.setLayoutData((Object)new GridData(4, 4, true, true));
        this.fGlobalRadioButton = new Button((Composite)group, 16400);
        this.fGlobalRadioButton.setText(EditorMessages.FindReplace_GlobalRadioButton_label);
        this.setGridData((Control)this.fGlobalRadioButton, 16384, false, 0x1000000, false);
        this.fGlobalRadioButton.setSelection(this.fGlobalInit);
        this.fGlobalRadioButton.addSelectionListener(new SelectionListener(){

            public void widgetSelected(SelectionEvent e) {
                if (!FindReplaceDialog.this.fGlobalRadioButton.getSelection() || !FindReplaceDialog.this.fUseSelectedLines) {
                    return;
                }
                FindReplaceDialog.this.fUseSelectedLines = false;
                FindReplaceDialog.this.useSelectedLines(false);
            }

            public void widgetDefaultSelected(SelectionEvent e) {
            }
        });
        this.storeButtonWithMnemonicInMap(this.fGlobalRadioButton);
        this.fSelectedRangeRadioButton = new Button((Composite)group, 16400);
        this.fSelectedRangeRadioButton.setText(EditorMessages.FindReplace_SelectedRangeRadioButton_label);
        this.setGridData((Control)this.fSelectedRangeRadioButton, 16384, false, 0x1000000, false);
        this.fSelectedRangeRadioButton.setSelection(!this.fGlobalInit);
        this.fUseSelectedLines = !this.fGlobalInit;
        this.fSelectedRangeRadioButton.addSelectionListener(new SelectionListener(){

            public void widgetSelected(SelectionEvent e) {
                if (!FindReplaceDialog.this.fSelectedRangeRadioButton.getSelection() || FindReplaceDialog.this.fUseSelectedLines) {
                    return;
                }
                FindReplaceDialog.this.fUseSelectedLines = true;
                FindReplaceDialog.this.useSelectedLines(true);
            }

            public void widgetDefaultSelected(SelectionEvent e) {
            }
        });
        this.storeButtonWithMnemonicInMap(this.fSelectedRangeRadioButton);
        return panel;
    }

    private void useSelectedLines(boolean selectedLines) {
        if (this.isIncrementalSearch() && !this.isRegExSearchAvailableAndChecked()) {
            this.initIncrementalBaseLocation();
        }
        if (this.fTarget == null || !(this.fTarget instanceof IFindReplaceTargetExtension)) {
            return;
        }
        IFindReplaceTargetExtension extensionTarget = (IFindReplaceTargetExtension)this.fTarget;
        if (selectedLines) {
            IRegion scope;
            if (this.fOldScope == null) {
                Point lineSelection = extensionTarget.getLineSelection();
                scope = new Region(lineSelection.x, lineSelection.y);
            } else {
                scope = this.fOldScope;
                this.fOldScope = null;
            }
            int offset = this.isForwardSearch() ? scope.getOffset() : scope.getOffset() + scope.getLength();
            extensionTarget.setSelection(offset, 0);
            extensionTarget.setScope(scope);
        } else {
            this.fOldScope = extensionTarget.getScope();
            extensionTarget.setScope(null);
        }
    }

    private Composite createInputPanel(Composite parent) {
        ModifyListener listener = new ModifyListener(){

            public void modifyText(ModifyEvent e) {
                FindReplaceDialog.this.updateButtonState();
            }
        };
        Composite panel = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        panel.setLayout((Layout)layout);
        Label findLabel = new Label(panel, 16384);
        findLabel.setText(EditorMessages.FindReplace_Find_label);
        this.setGridData((Control)findLabel, 16384, false, 0x1000000, false);
        ComboContentAdapter contentAdapter = new ComboContentAdapter();
        FindReplaceDocumentAdapterContentProposalProvider findProposer = new FindReplaceDocumentAdapterContentProposalProvider(true);
        this.fFindField = new Combo(panel, 2052);
        this.fContentAssistFindField = new ContentAssistCommandAdapter((Control)this.fFindField, (IControlContentAdapter)contentAdapter, (IContentProposalProvider)findProposer, "org.eclipse.ui.edit.text.contentAssist.proposals", new char[0], true);
        this.setGridData((Control)this.fFindField, 4, true, 0x1000000, false);
        this.addDecorationMargin((Control)this.fFindField);
        this.fFindField.addModifyListener(this.fFindModifyListener);
        this.fReplaceLabel = new Label(panel, 16384);
        this.fReplaceLabel.setText(EditorMessages.FindReplace_Replace_label);
        this.setGridData((Control)this.fReplaceLabel, 16384, false, 0x1000000, false);
        FindReplaceDocumentAdapterContentProposalProvider replaceProposer = new FindReplaceDocumentAdapterContentProposalProvider(false);
        this.fReplaceField = new Combo(panel, 2052);
        this.fContentAssistReplaceField = new ContentAssistCommandAdapter((Control)this.fReplaceField, (IControlContentAdapter)contentAdapter, (IContentProposalProvider)replaceProposer, "org.eclipse.ui.edit.text.contentAssist.proposals", new char[0], true);
        this.setGridData((Control)this.fReplaceField, 4, true, 0x1000000, false);
        this.addDecorationMargin((Control)this.fReplaceField);
        this.fReplaceField.addModifyListener(listener);
        return panel;
    }

    private Composite createOptionsGroup(Composite parent) {
        Composite panel = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        panel.setLayout((Layout)layout);
        Group group = new Group(panel, 32);
        group.setText(EditorMessages.FindReplace_Options);
        GridLayout groupLayout = new GridLayout();
        groupLayout.numColumns = 2;
        groupLayout.makeColumnsEqualWidth = true;
        group.setLayout((Layout)groupLayout);
        group.setLayoutData((Object)new GridData(4, 4, true, true));
        SelectionListener selectionListener = new SelectionListener(){

            public void widgetSelected(SelectionEvent e) {
                FindReplaceDialog.this.storeSettings();
            }

            public void widgetDefaultSelected(SelectionEvent e) {
            }
        };
        this.fCaseCheckBox = new Button((Composite)group, 16416);
        this.fCaseCheckBox.setText(EditorMessages.FindReplace_CaseCheckBox_label);
        this.setGridData((Control)this.fCaseCheckBox, 16384, false, 0x1000000, false);
        this.fCaseCheckBox.setSelection(this.fCaseInit);
        this.fCaseCheckBox.addSelectionListener(selectionListener);
        this.storeButtonWithMnemonicInMap(this.fCaseCheckBox);
        this.fWrapCheckBox = new Button((Composite)group, 16416);
        this.fWrapCheckBox.setText(EditorMessages.FindReplace_WrapCheckBox_label);
        this.setGridData((Control)this.fWrapCheckBox, 16384, false, 0x1000000, false);
        this.fWrapCheckBox.setSelection(this.fWrapInit);
        this.fWrapCheckBox.addSelectionListener(selectionListener);
        this.storeButtonWithMnemonicInMap(this.fWrapCheckBox);
        this.fWholeWordCheckBox = new Button((Composite)group, 16416);
        this.fWholeWordCheckBox.setText(EditorMessages.FindReplace_WholeWordCheckBox_label);
        this.setGridData((Control)this.fWholeWordCheckBox, 16384, false, 0x1000000, false);
        this.fWholeWordCheckBox.setSelection(this.fWholeWordInit);
        this.fWholeWordCheckBox.addSelectionListener(selectionListener);
        this.storeButtonWithMnemonicInMap(this.fWholeWordCheckBox);
        this.fIncrementalCheckBox = new Button((Composite)group, 16416);
        this.fIncrementalCheckBox.setText(EditorMessages.FindReplace_IncrementalCheckBox_label);
        this.setGridData((Control)this.fIncrementalCheckBox, 16384, false, 0x1000000, false);
        this.fIncrementalCheckBox.setSelection(this.fIncrementalInit);
        this.fIncrementalCheckBox.addSelectionListener(new SelectionListener(){

            public void widgetSelected(SelectionEvent e) {
                if (FindReplaceDialog.this.isIncrementalSearch() && !FindReplaceDialog.this.isRegExSearch()) {
                    FindReplaceDialog.this.initIncrementalBaseLocation();
                }
                FindReplaceDialog.this.storeSettings();
            }

            public void widgetDefaultSelected(SelectionEvent e) {
            }
        });
        this.storeButtonWithMnemonicInMap(this.fIncrementalCheckBox);
        this.fIsRegExCheckBox = new Button((Composite)group, 16416);
        this.fIsRegExCheckBox.setText(EditorMessages.FindReplace_RegExCheckbox_label);
        this.setGridData((Control)this.fIsRegExCheckBox, 16384, false, 0x1000000, false);
        ((GridData)this.fIsRegExCheckBox.getLayoutData()).horizontalSpan = 2;
        this.fIsRegExCheckBox.setSelection(this.fIsRegExInit);
        this.fIsRegExCheckBox.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                boolean newState = FindReplaceDialog.this.fIsRegExCheckBox.getSelection();
                FindReplaceDialog.this.fIncrementalCheckBox.setEnabled(!newState);
                FindReplaceDialog.this.updateButtonState();
                FindReplaceDialog.this.storeSettings();
                FindReplaceDialog.this.setContentAssistsEnablement(newState);
            }
        });
        this.storeButtonWithMnemonicInMap(this.fIsRegExCheckBox);
        this.fWholeWordCheckBox.setEnabled(!this.isRegExSearchAvailableAndChecked());
        this.fWholeWordCheckBox.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                FindReplaceDialog.this.updateButtonState();
            }
        });
        this.fIncrementalCheckBox.setEnabled(!this.isRegExSearchAvailableAndChecked());
        return panel;
    }

    private Composite createStatusAndCloseButton(Composite parent) {
        Composite panel = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        panel.setLayout((Layout)layout);
        this.fStatusLabel = new Label(panel, 16384);
        this.setGridData((Control)this.fStatusLabel, 4, true, 0x1000000, false);
        String label = EditorMessages.FindReplace_CloseButton_label;
        Button closeButton = this.createButton(panel, 101, label, false);
        this.setGridData((Control)closeButton, 131072, false, 1024, false);
        return panel;
    }

    protected void buttonPressed(int buttonID) {
        if (buttonID == 101) {
            this.close();
        }
    }

    private int findIndex(String findString, int startPosition, boolean forwardSearch, boolean caseSensitive, boolean wrapSearch, boolean wholeWord, boolean regExSearch, boolean beep) {
        int index;
        if (forwardSearch) {
            int index2 = this.findAndSelect(startPosition, findString, true, caseSensitive, wholeWord, regExSearch);
            if (index2 == -1) {
                if (beep && this.okToUse((Control)this.getShell())) {
                    this.getShell().getDisplay().beep();
                }
                if (wrapSearch) {
                    this.statusMessage(EditorMessages.FindReplace_Status_wrapped_label);
                    index2 = this.findAndSelect(-1, findString, true, caseSensitive, wholeWord, regExSearch);
                }
            }
            return index2;
        }
        int n = index = startPosition == 0 ? -1 : this.findAndSelect(startPosition - 1, findString, false, caseSensitive, wholeWord, regExSearch);
        if (index == -1) {
            if (beep && this.okToUse((Control)this.getShell())) {
                this.getShell().getDisplay().beep();
            }
            if (wrapSearch) {
                this.statusMessage(EditorMessages.FindReplace_Status_wrapped_label);
                index = this.findAndSelect(-1, findString, false, caseSensitive, wholeWord, regExSearch);
            }
        }
        return index;
    }

    private int findAndSelect(int offset, String findString, boolean forwardSearch, boolean caseSensitive, boolean wholeWord, boolean regExSearch) {
        if (this.fTarget instanceof IFindReplaceTargetExtension3) {
            return ((IFindReplaceTargetExtension3)this.fTarget).findAndSelect(offset, findString, forwardSearch, caseSensitive, wholeWord, regExSearch);
        }
        return this.fTarget.findAndSelect(offset, findString, forwardSearch, caseSensitive, wholeWord);
    }

    Point replaceSelection(String replaceString, boolean regExReplace) {
        if (this.fTarget instanceof IFindReplaceTargetExtension3) {
            ((IFindReplaceTargetExtension3)this.fTarget).replaceSelection(replaceString, regExReplace);
        } else {
            this.fTarget.replaceSelection(replaceString);
        }
        return this.fTarget.getSelection();
    }

    private boolean findNext(String findString, boolean forwardSearch, boolean caseSensitive, boolean wrapSearch, boolean wholeWord, boolean incremental, boolean regExSearch, boolean beep) {
        if (this.fTarget == null) {
            return false;
        }
        Point r = null;
        r = incremental ? this.fIncrementalBaseLocation : this.fTarget.getSelection();
        int findReplacePosition = r.x;
        if (forwardSearch && !this.fNeedsInitialFindBeforeReplace || !forwardSearch && this.fNeedsInitialFindBeforeReplace) {
            findReplacePosition += r.y;
        }
        this.fNeedsInitialFindBeforeReplace = false;
        int index = this.findIndex(findString, findReplacePosition, forwardSearch, caseSensitive, wrapSearch, wholeWord, regExSearch, beep);
        if (index == -1) {
            this.statusMessage(EditorMessages.FindReplace_Status_noMatch_label);
            return false;
        }
        if (forwardSearch && index >= findReplacePosition || !forwardSearch && index <= findReplacePosition) {
            this.statusMessage("");
        }
        return true;
    }

    private Rectangle getDialogBoundaries() {
        if (this.okToUse((Control)this.getShell())) {
            return this.getShell().getBounds();
        }
        return this.fDialogPositionInit;
    }

    protected Point getInitialSize() {
        Point initialSize = super.getInitialSize();
        Point minSize = this.getShell().computeSize(-1, -1);
        if (initialSize.x < minSize.x) {
            return minSize;
        }
        return initialSize;
    }

    private List getFindHistory() {
        return this.fFindHistory;
    }

    private String getFindString() {
        if (this.okToUse((Control)this.fFindField)) {
            return this.fFindField.getText();
        }
        return "";
    }

    private List getReplaceHistory() {
        return this.fReplaceHistory;
    }

    private String getReplaceString() {
        if (this.okToUse((Control)this.fReplaceField)) {
            return this.fReplaceField.getText();
        }
        return "";
    }

    private String getFirstLine(String selection) {
        if (selection.length() > 0) {
            int[] info = TextUtilities.indexOf((String[])TextUtilities.DELIMITERS, (String)selection, (int)0);
            if (info[0] > 0) {
                return selection.substring(0, info[0]);
            }
            if (info[0] == -1) {
                return selection;
            }
        }
        return "";
    }

    public boolean close() {
        this.handleDialogClose();
        return super.close();
    }

    private void handleDialogClose() {
        if (this.okToUse((Control)this.fFindField)) {
            this.fFindField.removeModifyListener(this.fFindModifyListener);
        }
        if (this.fParentShell != null) {
            this.fParentShell.removeShellListener((ShellListener)this.fActivationListener);
            this.fParentShell = null;
        }
        this.getShell().removeShellListener((ShellListener)this.fActivationListener);
        this.storeSettings();
        if (this.fTarget != null && this.fTarget instanceof IFindReplaceTargetExtension) {
            ((IFindReplaceTargetExtension)this.fTarget).endSession();
        }
        this.fActiveShell = null;
        this.fTarget = null;
    }

    private void writeSelection() {
        if (this.fTarget == null) {
            return;
        }
        IDialogSettings s = this.getDialogSettings();
        s.put("selection", this.fTarget.getSelectionText());
    }

    private void storeSettings() {
        this.fDialogPositionInit = this.getDialogBoundaries();
        this.fWrapInit = this.isWrapSearch();
        this.fWholeWordInit = this.isWholeWordSetting();
        this.fCaseInit = this.isCaseSensitiveSearch();
        this.fIsRegExInit = this.isRegExSearch();
        this.fIncrementalInit = this.isIncrementalSearch();
        this.fForwardInit = this.isForwardSearch();
        this.writeConfiguration();
    }

    private void initFindStringFromSelection() {
        if (this.fTarget != null && this.okToUse((Control)this.fFindField)) {
            String fullSelection = this.fTarget.getSelectionText();
            boolean isRegEx = this.isRegExSearchAvailableAndChecked();
            this.fFindField.removeModifyListener(this.fFindModifyListener);
            if (fullSelection.length() > 0) {
                String firstLine = this.getFirstLine(fullSelection);
                String pattern = isRegEx ? FindReplaceDocumentAdapter.escapeForRegExPattern((String)fullSelection) : firstLine;
                this.fFindField.setText(pattern);
                if (!firstLine.equals(fullSelection)) {
                    this.useSelectedLines(true);
                    this.fGlobalRadioButton.setSelection(false);
                    this.fSelectedRangeRadioButton.setSelection(true);
                    this.fUseSelectedLines = true;
                }
            } else if ("".equals(this.fFindField.getText())) {
                if (this.fFindHistory.size() > 0) {
                    this.fFindField.setText((String)this.fFindHistory.get(0));
                } else {
                    this.fFindField.setText("");
                }
            }
            this.fFindField.setSelection(new Point(0, this.fFindField.getText().length()));
            this.fFindField.addModifyListener(this.fFindModifyListener);
        }
    }

    private void initIncrementalBaseLocation() {
        this.fIncrementalBaseLocation = this.fTarget != null && this.isIncrementalSearch() && !this.isRegExSearchAvailableAndChecked() ? this.fTarget.getSelection() : new Point(0, 0);
    }

    private boolean isCaseSensitiveSearch() {
        if (this.okToUse((Control)this.fCaseCheckBox)) {
            return this.fCaseCheckBox.getSelection();
        }
        return this.fCaseInit;
    }

    private boolean isRegExSearch() {
        if (this.okToUse((Control)this.fIsRegExCheckBox)) {
            return this.fIsRegExCheckBox.getSelection();
        }
        return this.fIsRegExInit;
    }

    private boolean isRegExSearchAvailableAndChecked() {
        if (this.okToUse((Control)this.fIsRegExCheckBox)) {
            return this.fIsTargetSupportingRegEx && this.fIsRegExCheckBox.getSelection();
        }
        return this.fIsRegExInit;
    }

    private boolean isForwardSearch() {
        if (this.okToUse((Control)this.fForwardRadioButton)) {
            return this.fForwardRadioButton.getSelection();
        }
        return this.fForwardInit;
    }

    private boolean isWholeWordSetting() {
        if (this.okToUse((Control)this.fWholeWordCheckBox)) {
            return this.fWholeWordCheckBox.getSelection();
        }
        return this.fWholeWordInit;
    }

    private boolean isWholeWordSearch() {
        return this.isWholeWordSetting() && !this.isRegExSearchAvailableAndChecked() && (!this.okToUse((Control)this.fWholeWordCheckBox) || this.fWholeWordCheckBox.isEnabled());
    }

    private boolean isWrapSearch() {
        if (this.okToUse((Control)this.fWrapCheckBox)) {
            return this.fWrapCheckBox.getSelection();
        }
        return this.fWrapInit;
    }

    private boolean isIncrementalSearch() {
        if (this.okToUse((Control)this.fIncrementalCheckBox)) {
            return this.fIncrementalCheckBox.getSelection();
        }
        return this.fIncrementalInit;
    }

    private Button makeButton(Composite parent, String label, int id, boolean dfltButton, SelectionListener listener) {
        Button button = this.createButton(parent, id, label, dfltButton);
        button.addSelectionListener(listener);
        this.storeButtonWithMnemonicInMap(button);
        return button;
    }

    private void storeButtonWithMnemonicInMap(Button button) {
        char mnemonic = LegacyActionTools.extractMnemonic((String)button.getText());
        if (mnemonic != '\u0000') {
            this.fMnemonicButtonMap.put(new Character(Character.toLowerCase(mnemonic)), button);
        }
    }

    private IEditorStatusLine getStatusLineManager() {
        IWorkbenchWindow window = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        if (window == null) {
            return null;
        }
        IWorkbenchPage page = window.getActivePage();
        if (page == null) {
            return null;
        }
        IEditorPart editor = page.getActiveEditor();
        if (editor == null) {
            return null;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.texteditor.IEditorStatusLine");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IEditorStatusLine)editor.getAdapter((Class)clazz);
    }

    private void statusMessage(boolean error, String message) {
        this.fStatusLabel.setText(message);
        if (error) {
            this.fStatusLabel.setForeground(JFaceColors.getErrorText((Display)this.fStatusLabel.getDisplay()));
        } else {
            this.fStatusLabel.setForeground(null);
        }
        IEditorStatusLine statusLine = this.getStatusLineManager();
        if (statusLine != null) {
            statusLine.setMessage(error, message, null);
        }
        if (error) {
            this.getShell().getDisplay().beep();
        }
    }

    private void statusError(String message) {
        this.statusMessage(true, message);
    }

    private void statusMessage(String message) {
        this.statusMessage(false, message);
    }

    private void performReplaceAll() {
        int replaceCount = 0;
        String replaceString = this.getReplaceString();
        String findString = this.getFindString();
        if (findString != null && findString.length() > 0) {
            try {
                class ReplaceAllRunnable
                implements Runnable {
                    public int numberOfOccurrences;
                    final /* synthetic */ FindReplaceDialog this$0;
                    private final /* synthetic */ String val$findString;
                    private final /* synthetic */ String val$replaceString;

                    ReplaceAllRunnable(FindReplaceDialog findReplaceDialog, String string, String string2) {
                        this.this$0 = findReplaceDialog;
                        this.val$findString = string;
                        this.val$replaceString = string2;
                    }

                    public void run() {
                        this.numberOfOccurrences = FindReplaceDialog.access$40(this.this$0, this.val$findString, this.val$replaceString == null ? "" : this.val$replaceString, FindReplaceDialog.access$16(this.this$0), FindReplaceDialog.access$19(this.this$0), FindReplaceDialog.access$20(this.this$0), FindReplaceDialog.access$14(this.this$0));
                    }
                }
                ReplaceAllRunnable runnable = new ReplaceAllRunnable(this, findString, replaceString);
                BusyIndicator.showWhile((Display)this.fActiveShell.getDisplay(), (Runnable)runnable);
                replaceCount = runnable.numberOfOccurrences;
                if (replaceCount != 0) {
                    if (replaceCount == 1) {
                        this.statusMessage(EditorMessages.FindReplace_Status_replacement_label);
                    } else {
                        String msg = EditorMessages.FindReplace_Status_replacements_label;
                        msg = NLSUtility.format(msg, String.valueOf(replaceCount));
                        this.statusMessage(msg);
                    }
                } else {
                    this.statusMessage(EditorMessages.FindReplace_Status_noMatch_label);
                }
            }
            catch (PatternSyntaxException ex) {
                this.statusError(ex.getLocalizedMessage());
            }
            catch (IllegalStateException illegalStateException) {}
        }
        this.writeSelection();
        this.updateButtonState();
    }

    private boolean validateTargetState() {
        IFindReplaceTargetExtension2 extension;
        if (this.fTarget instanceof IFindReplaceTargetExtension2 && !(extension = (IFindReplaceTargetExtension2)this.fTarget).validateTargetState()) {
            this.statusError(EditorMessages.FindReplaceDialog_read_only);
            this.updateButtonState();
            return false;
        }
        return this.isEditable();
    }

    private boolean performReplaceSelection() {
        boolean replaced;
        if (!this.validateTargetState()) {
            return false;
        }
        String replaceString = this.getReplaceString();
        if (replaceString == null) {
            replaceString = "";
        }
        try {
            this.replaceSelection(replaceString, this.isRegExSearchAvailableAndChecked());
            replaced = true;
            this.writeSelection();
        }
        catch (PatternSyntaxException ex) {
            this.statusError(ex.getLocalizedMessage());
            replaced = false;
        }
        catch (IllegalStateException illegalStateException) {
            replaced = false;
        }
        return replaced;
    }

    private void performSearch() {
        this.performSearch(this.isForwardSearch());
    }

    private void performSearch(boolean forwardSearch) {
        this.performSearch(this.isIncrementalSearch() && !this.isRegExSearchAvailableAndChecked(), true, forwardSearch);
    }

    private void performSearch(boolean mustInitIncrementalBaseLocation, boolean beep, boolean forwardSearch) {
        if (mustInitIncrementalBaseLocation) {
            this.initIncrementalBaseLocation();
        }
        String findString = this.getFindString();
        boolean somethingFound = false;
        if (findString != null && findString.length() > 0) {
            try {
                somethingFound = this.findNext(findString, forwardSearch, this.isCaseSensitiveSearch(), this.isWrapSearch(), this.isWholeWordSearch(), this.isIncrementalSearch() && !this.isRegExSearchAvailableAndChecked(), this.isRegExSearchAvailableAndChecked(), beep);
            }
            catch (PatternSyntaxException ex) {
                this.statusError(ex.getLocalizedMessage());
            }
            catch (IllegalStateException illegalStateException) {}
        }
        this.writeSelection();
        this.updateButtonState(!somethingFound);
    }

    private int replaceAll(String findString, String replaceString, boolean forwardSearch, boolean caseSensitive, boolean wholeWord, boolean regExSearch) {
        int replaceCount = 0;
        int findReplacePosition = 0;
        findReplacePosition = 0;
        forwardSearch = true;
        if (!this.validateTargetState()) {
            return replaceCount;
        }
        if (this.fTarget instanceof IFindReplaceTargetExtension) {
            ((IFindReplaceTargetExtension)this.fTarget).setReplaceAllMode(true);
        }
        try {
            int index = 0;
            while (index != -1) {
                index = this.findAndSelect(findReplacePosition, findString, forwardSearch, caseSensitive, wholeWord, regExSearch);
                if (index == -1) continue;
                Point selection = this.replaceSelection(replaceString, regExSearch);
                ++replaceCount;
                if (forwardSearch) {
                    findReplacePosition = selection.x + selection.y;
                    continue;
                }
                findReplacePosition = selection.x - 1;
                if (findReplacePosition != -1) continue;
                break;
            }
        }
        finally {
            if (this.fTarget instanceof IFindReplaceTargetExtension) {
                ((IFindReplaceTargetExtension)this.fTarget).setReplaceAllMode(false);
            }
        }
        return replaceCount;
    }

    private void setGridData(Control component, int horizontalAlignment, boolean grabExcessHorizontalSpace, int verticalAlignment, boolean grabExcessVerticalSpace) {
        GridData gd;
        if (component instanceof Button && (((Button)component).getStyle() & 8) != 0) {
            SWTUtil.setButtonDimensionHint((Button)component);
            gd = (GridData)component.getLayoutData();
        } else {
            gd = new GridData();
            component.setLayoutData((Object)gd);
            gd.horizontalAlignment = horizontalAlignment;
            gd.grabExcessHorizontalSpace = grabExcessHorizontalSpace;
        }
        gd.verticalAlignment = verticalAlignment;
        gd.grabExcessVerticalSpace = grabExcessVerticalSpace;
    }

    private void addDecorationMargin(Control control) {
        Object layoutData = control.getLayoutData();
        if (!(layoutData instanceof GridData)) {
            return;
        }
        GridData gd = (GridData)layoutData;
        FieldDecoration dec = FieldDecorationRegistry.getDefault().getFieldDecoration("DEC_CONTENT_PROPOSAL");
        gd.horizontalIndent = dec.getImage().getBounds().width;
    }

    private void updateButtonState() {
        this.updateButtonState(false);
    }

    private void updateButtonState(boolean disableReplace) {
        if (this.okToUse((Control)this.getShell()) && this.okToUse((Control)this.fFindNextButton)) {
            boolean selection = false;
            if (this.fTarget != null) {
                selection = this.fTarget.getSelectionText().length() > 0;
            }
            boolean enable = this.fTarget != null && (this.fActiveShell == this.fParentShell || this.fActiveShell == this.getShell());
            String str = this.getFindString();
            boolean findString = str != null && str.length() > 0;
            this.fWholeWordCheckBox.setEnabled(this.isWord(str) && !this.isRegExSearchAvailableAndChecked());
            this.fFindNextButton.setEnabled(enable && findString);
            this.fReplaceSelectionButton.setEnabled(!disableReplace && enable && this.isEditable() && selection && (!this.fNeedsInitialFindBeforeReplace || !this.isRegExSearchAvailableAndChecked()));
            this.fReplaceFindButton.setEnabled(!disableReplace && enable && this.isEditable() && findString && selection && (!this.fNeedsInitialFindBeforeReplace || !this.isRegExSearchAvailableAndChecked()));
            this.fReplaceAllButton.setEnabled(enable && this.isEditable() && findString);
        }
    }

    private boolean isWord(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int i = 0;
        while (i < str.length()) {
            if (!Character.isJavaIdentifierPart(str.charAt(i))) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private void updateCombo(Combo combo, List content) {
        combo.removeAll();
        int i = 0;
        while (i < content.size()) {
            combo.add(content.get(i).toString());
            ++i;
        }
    }

    private void updateFindAndReplaceHistory() {
        this.updateFindHistory();
        if (this.okToUse((Control)this.fReplaceField)) {
            this.updateHistory(this.fReplaceField, this.fReplaceHistory);
        }
    }

    private void updateFindHistory() {
        if (this.okToUse((Control)this.fFindField)) {
            this.fFindField.removeModifyListener(this.fFindModifyListener);
            this.updateHistory(this.fFindField, this.fFindHistory);
            this.fFindField.addModifyListener(this.fFindModifyListener);
        }
    }

    private void updateHistory(Combo combo, List history) {
        String findString = combo.getText();
        int index = history.indexOf(findString);
        if (index != 0) {
            if (index != -1) {
                history.remove(index);
            }
            history.add(0, findString);
            Point selection = combo.getSelection();
            this.updateCombo(combo, history);
            combo.setText(findString);
            combo.setSelection(selection);
        }
    }

    private boolean isEditable() {
        boolean isEditable;
        boolean bl = isEditable = this.fTarget == null ? false : this.fTarget.isEditable();
        return this.fIsTargetEditable && isEditable;
    }

    public void updateTarget(IFindReplaceTarget target, boolean isTargetEditable, boolean initializeFindString) {
        this.fIsTargetEditable = isTargetEditable;
        this.fNeedsInitialFindBeforeReplace = true;
        if (target != this.fTarget) {
            if (this.fTarget != null && this.fTarget instanceof IFindReplaceTargetExtension) {
                ((IFindReplaceTargetExtension)this.fTarget).endSession();
            }
            this.fTarget = target;
            if (this.fTarget != null) {
                this.fIsTargetSupportingRegEx = this.fTarget instanceof IFindReplaceTargetExtension3;
            }
            if (this.fTarget instanceof IFindReplaceTargetExtension) {
                ((IFindReplaceTargetExtension)this.fTarget).beginSession();
                this.fGlobalInit = true;
                this.fGlobalRadioButton.setSelection(this.fGlobalInit);
                this.fSelectedRangeRadioButton.setSelection(!this.fGlobalInit);
                boolean bl = this.fUseSelectedLines = !this.fGlobalInit;
            }
        }
        if (this.okToUse((Control)this.fIsRegExCheckBox)) {
            this.fIsRegExCheckBox.setEnabled(this.fIsTargetSupportingRegEx);
        }
        if (this.okToUse((Control)this.fWholeWordCheckBox)) {
            this.fWholeWordCheckBox.setEnabled(!this.isRegExSearchAvailableAndChecked());
        }
        if (this.okToUse((Control)this.fIncrementalCheckBox)) {
            this.fIncrementalCheckBox.setEnabled(!this.isRegExSearchAvailableAndChecked());
        }
        if (this.okToUse((Control)this.fReplaceLabel)) {
            this.fReplaceLabel.setEnabled(this.isEditable());
            this.fReplaceField.setEnabled(this.isEditable());
            if (initializeFindString) {
                this.initFindStringFromSelection();
                this.fGiveFocusToFindField = true;
            }
            this.initIncrementalBaseLocation();
            this.updateButtonState();
        }
        this.setContentAssistsEnablement(this.isRegExSearchAvailableAndChecked());
    }

    public void setParentShell(Shell shell) {
        if (shell != this.fParentShell) {
            if (this.fParentShell != null) {
                this.fParentShell.removeShellListener((ShellListener)this.fActivationListener);
            }
            this.fParentShell = shell;
            this.fParentShell.addShellListener((ShellListener)this.fActivationListener);
        }
        this.fActiveShell = shell;
    }

    private IDialogSettings getDialogSettings() {
        IDialogSettings settings = TextEditorPlugin.getDefault().getDialogSettings();
        this.fDialogSettings = settings.getSection(((Object)((Object)this)).getClass().getName());
        if (this.fDialogSettings == null) {
            this.fDialogSettings = settings.addNewSection(((Object)((Object)this)).getClass().getName());
        }
        return this.fDialogSettings;
    }

    protected IDialogSettings getDialogBoundsSettings() {
        String sectionName = String.valueOf(((Object)((Object)this)).getClass().getName()) + "_dialogBounds";
        IDialogSettings settings = TextEditorPlugin.getDefault().getDialogSettings();
        IDialogSettings section = settings.getSection(sectionName);
        if (section == null) {
            section = settings.addNewSection(sectionName);
        }
        return section;
    }

    protected int getDialogBoundsStrategy() {
        return 3;
    }

    private void readConfiguration() {
        String[] replaceHistory;
        IDialogSettings s = this.getDialogSettings();
        this.fWrapInit = s.get("wrap") == null || s.getBoolean("wrap");
        this.fCaseInit = s.getBoolean("casesensitive");
        this.fWholeWordInit = s.getBoolean("wholeword");
        this.fIncrementalInit = s.getBoolean("incremental");
        this.fIsRegExInit = s.getBoolean("isRegEx");
        String[] findHistory = s.getArray("findhistory");
        if (findHistory != null) {
            List history = this.getFindHistory();
            history.clear();
            int i = 0;
            while (i < findHistory.length) {
                history.add(findHistory[i]);
                ++i;
            }
        }
        if ((replaceHistory = s.getArray("replacehistory")) != null) {
            List history = this.getReplaceHistory();
            history.clear();
            int i = 0;
            while (i < replaceHistory.length) {
                history.add(replaceHistory[i]);
                ++i;
            }
        }
    }

    private void writeConfiguration() {
        IDialogSettings s = this.getDialogSettings();
        s.put("wrap", this.fWrapInit);
        s.put("casesensitive", this.fCaseInit);
        s.put("wholeword", this.fWholeWordInit);
        s.put("incremental", this.fIncrementalInit);
        s.put("isRegEx", this.fIsRegExInit);
        List history = this.getFindHistory();
        String findString = this.getFindString();
        if (findString.length() > 0) {
            history.add(0, findString);
        }
        this.writeHistory(history, s, "findhistory");
        history = this.getReplaceHistory();
        String replaceString = this.getReplaceString();
        if (replaceString.length() > 0) {
            history.add(0, replaceString);
        }
        this.writeHistory(history, s, "replacehistory");
    }

    private void writeHistory(List history, IDialogSettings settings, String sectionName) {
        int itemCount = history.size();
        HashSet<String> distinctItems = new HashSet<String>(itemCount);
        int i = 0;
        while (i < itemCount) {
            String item = (String)history.get(i);
            if (distinctItems.contains(item)) {
                history.remove(i--);
                --itemCount;
            } else {
                distinctItems.add(item);
            }
            ++i;
        }
        while (history.size() > 8) {
            history.remove(8);
        }
        String[] names = new String[history.size()];
        history.toArray(names);
        settings.put(sectionName, names);
    }

    static /* synthetic */ int access$40(FindReplaceDialog findReplaceDialog, String string, String string2, boolean bl, boolean bl2, boolean bl3, boolean bl4) {
        return findReplaceDialog.replaceAll(string, string2, bl, bl2, bl3, bl4);
    }

    class ActivationListener
    extends ShellAdapter {
        ActivationListener() {
        }

        public void shellActivated(ShellEvent e) {
            FindReplaceDialog.this.fActiveShell = (Shell)e.widget;
            FindReplaceDialog.this.updateButtonState();
            if (FindReplaceDialog.this.fGiveFocusToFindField && FindReplaceDialog.this.getShell() == FindReplaceDialog.this.fActiveShell && FindReplaceDialog.this.okToUse((Control)FindReplaceDialog.this.fFindField)) {
                FindReplaceDialog.this.fFindField.setFocus();
            }
        }

        public void shellDeactivated(ShellEvent e) {
            FindReplaceDialog.this.fGiveFocusToFindField = false;
            FindReplaceDialog.this.storeSettings();
            FindReplaceDialog.this.fGlobalRadioButton.setSelection(true);
            FindReplaceDialog.this.fSelectedRangeRadioButton.setSelection(false);
            FindReplaceDialog.this.fUseSelectedLines = false;
            if (FindReplaceDialog.this.fTarget != null && FindReplaceDialog.this.fTarget instanceof IFindReplaceTargetExtension) {
                ((IFindReplaceTargetExtension)FindReplaceDialog.this.fTarget).setScope(null);
            }
            FindReplaceDialog.this.fOldScope = null;
            FindReplaceDialog.this.fActiveShell = null;
            FindReplaceDialog.this.updateButtonState();
        }
    }

    private class FindModifyListener
    implements ModifyListener {
        private FindModifyListener() {
        }

        public void modifyText(ModifyEvent e) {
            if (FindReplaceDialog.this.isIncrementalSearch() && !FindReplaceDialog.this.isRegExSearchAvailableAndChecked()) {
                if (FindReplaceDialog.this.fFindField.getText().equals("") && FindReplaceDialog.this.fTarget != null) {
                    int offset = ((FindReplaceDialog)FindReplaceDialog.this).fIncrementalBaseLocation.x;
                    if (FindReplaceDialog.this.isForwardSearch() && !FindReplaceDialog.this.fNeedsInitialFindBeforeReplace || !FindReplaceDialog.this.isForwardSearch() && FindReplaceDialog.this.fNeedsInitialFindBeforeReplace) {
                        offset += ((FindReplaceDialog)FindReplaceDialog.this).fIncrementalBaseLocation.y;
                    }
                    FindReplaceDialog.this.fNeedsInitialFindBeforeReplace = false;
                    FindReplaceDialog.this.findAndSelect(offset, "", FindReplaceDialog.this.isForwardSearch(), FindReplaceDialog.this.isCaseSensitiveSearch(), FindReplaceDialog.this.isWholeWordSearch(), FindReplaceDialog.this.isRegExSearchAvailableAndChecked());
                } else {
                    FindReplaceDialog.this.performSearch(false, false, FindReplaceDialog.this.isForwardSearch());
                }
            }
            FindReplaceDialog.this.updateButtonState(!FindReplaceDialog.this.isIncrementalSearch());
        }
    }
}

