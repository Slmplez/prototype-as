/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.IInputValidator
 *  org.eclipse.jface.dialogs.InputDialog
 *  org.eclipse.jface.dialogs.TrayDialog
 *  org.eclipse.swt.events.ModifyEvent
 *  org.eclipse.swt.events.ModifyListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.VerifyEvent
 *  org.eclipse.swt.events.VerifyListener
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Group
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.List
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.ui.IMemento
 *  org.eclipse.ui.PlatformUI
 */
package org.eclipse.ui.internal.views.log;

import java.util.StringTokenizer;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IInputValidator;
import org.eclipse.jface.dialogs.InputDialog;
import org.eclipse.jface.dialogs.TrayDialog;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.events.VerifyListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.List;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.views.log.Messages;

public class FilterDialog
extends TrayDialog {
    Button okButton;
    private Button limit;
    Text limitText;
    private Button errorCheckbox;
    private Button warningCheckbox;
    private Button infoCheckbox;
    private Button okCheckbox;
    private Button showAllButton;
    private Button filterEnabled;
    private Button addFilter;
    private Button removeFilter;
    private List filterList;
    private IMemento memento;

    public FilterDialog(Shell parentShell, IMemento memento) {
        super(parentShell);
        this.memento = memento;
    }

    protected void configureShell(Shell newShell) {
        super.configureShell(newShell);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)newShell, "org.eclipse.pde.doc.user.log_filter");
    }

    protected Control createDialogArea(Composite parent) {
        Composite container = (Composite)super.createDialogArea(parent);
        this.createEventTypesGroup(container);
        this.createLimitSection(container);
        this.createSessionSection(container);
        this.createFilterSection(container);
        Dialog.applyDialogFont((Control)container);
        return container;
    }

    private void createEventTypesGroup(Composite parent) {
        Group group = new Group(parent, 0);
        group.setLayout((Layout)new GridLayout());
        GridData gd = new GridData(768);
        gd.widthHint = 275;
        group.setLayoutData((Object)gd);
        group.setText(Messages.LogView_FilterDialog_eventTypes);
        this.okCheckbox = new Button((Composite)group, 32);
        this.okCheckbox.setText(Messages.LogView_FilterDialog_ok);
        this.okCheckbox.setSelection(this.memento.getString("ok").equals("true"));
        this.infoCheckbox = new Button((Composite)group, 32);
        this.infoCheckbox.setText(Messages.LogView_FilterDialog_information);
        this.infoCheckbox.setSelection(this.memento.getString("info").equals("true"));
        this.warningCheckbox = new Button((Composite)group, 32);
        this.warningCheckbox.setText(Messages.LogView_FilterDialog_warning);
        this.warningCheckbox.setSelection(this.memento.getString("warning").equals("true"));
        this.errorCheckbox = new Button((Composite)group, 32);
        this.errorCheckbox.setText(Messages.LogView_FilterDialog_error);
        this.errorCheckbox.setSelection(this.memento.getString("error").equals("true"));
    }

    private void createLimitSection(Composite parent) {
        Composite comp = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        comp.setLayout((Layout)layout);
        comp.setLayoutData((Object)new GridData(768));
        this.limit = new Button(comp, 32);
        this.limit.setText(Messages.LogView_FilterDialog_limitTo);
        this.limit.setSelection(this.memento.getString("useLimit").equals("true"));
        this.limit.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                FilterDialog.this.limitText.setEnabled(((Button)e.getSource()).getSelection());
            }
        });
        this.limitText = new Text(comp, 2048);
        this.limitText.addVerifyListener(new VerifyListener(){

            public void verifyText(VerifyEvent e) {
                if (Character.isLetter(e.character)) {
                    e.doit = false;
                }
            }
        });
        this.limitText.addModifyListener(new ModifyListener(){

            public void modifyText(ModifyEvent e) {
                try {
                    if (FilterDialog.this.okButton == null) {
                        return;
                    }
                    Integer.parseInt(FilterDialog.this.limitText.getText());
                    FilterDialog.this.okButton.setEnabled(true);
                }
                catch (NumberFormatException numberFormatException) {
                    FilterDialog.this.okButton.setEnabled(false);
                }
            }
        });
        this.limitText.setLayoutData((Object)new GridData(768));
        this.limitText.setText(this.memento.getString("limit"));
        this.limitText.setEnabled(this.limit.getSelection());
    }

    private void createSessionSection(Composite parent) {
        Composite container = new Composite(parent, 0);
        container.setLayout((Layout)new GridLayout());
        container.setLayoutData((Object)new GridData(768));
        Label label = new Label(container, 0);
        label.setText(Messages.LogView_FilterDialog_eventsLogged);
        this.showAllButton = new Button(container, 16);
        this.showAllButton.setText(Messages.LogView_FilterDialog_allSessions);
        GridData gd = new GridData();
        gd.horizontalIndent = 20;
        this.showAllButton.setLayoutData((Object)gd);
        Button button = new Button(container, 16);
        button.setText(Messages.LogView_FilterDialog_recentSession);
        gd = new GridData();
        gd.horizontalIndent = 20;
        button.setLayoutData((Object)gd);
        if (this.memento.getString("allSessions").equals("true")) {
            this.showAllButton.setSelection(true);
        } else {
            button.setSelection(true);
        }
    }

    private void createFilterSection(Composite parent) {
        Composite comp = new Composite(parent, 0);
        GridLayout layout = new GridLayout(2, false);
        comp.setLayout((Layout)layout);
        comp.setLayoutData((Object)new GridData(768));
        this.filterEnabled = new Button(comp, 32);
        this.filterEnabled.setText(Messages.FilterDialog_EnableFiltersCheckbox);
        GridData gd = new GridData();
        gd.horizontalSpan = 2;
        this.filterEnabled.setLayoutData((Object)gd);
        this.filterEnabled.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                FilterDialog.this.setStackTraceFilterEnabled(FilterDialog.this.filterEnabled.getSelection());
            }
        });
        this.filterList = new List(comp, 2050);
        gd = new GridData(1808);
        gd.verticalSpan = 3;
        gd.widthHint = 280;
        gd.horizontalIndent = 20;
        this.filterList.setLayoutData((Object)gd);
        this.filterList.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                FilterDialog.this.removeFilter.setEnabled(true);
            }
        });
        this.addFilter = new Button(comp, 0);
        gd = new GridData(768);
        this.addFilter.setLayoutData((Object)gd);
        this.addFilter.setText(Messages.FilterDialog_Add);
        this.addFilter.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                FilterDialog.this.addFilter();
            }
        });
        this.removeFilter = new Button(comp, 0);
        gd = new GridData(768);
        this.removeFilter.setLayoutData((Object)gd);
        this.removeFilter.setText(Messages.FilterDialog_Remove);
        this.removeFilter.setEnabled(false);
        this.removeFilter.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                FilterDialog.this.removeFilter();
            }
        });
        Boolean enable = this.memento.getBoolean("detailsStackFilterEnabled");
        enable = enable == null ? Boolean.FALSE : enable;
        this.filterEnabled.setSelection(enable.booleanValue());
        this.setStackTraceFilterEnabled(enable);
        String filters = this.memento.getString("detailsStackFilterList");
        if (filters != null) {
            StringTokenizer st = new StringTokenizer(filters, ";");
            while (st.hasMoreElements()) {
                this.filterList.add(st.nextToken());
            }
        }
    }

    private void addFilter() {
        String value;
        IInputValidator validator = new IInputValidator(){

            public String isValid(String newText) {
                return newText.indexOf(59) >= 0 ? Messages.FilterDialog_FilterShouldntContainSemicolon : null;
            }
        };
        InputDialog dialog = new InputDialog(this.getShell(), Messages.FilterDialog_AddFilterTitle, Messages.FilterDialog_AddFliterLabel, null, validator);
        if (dialog.open() == 0 && (value = dialog.getValue().trim()).length() > 0) {
            this.filterList.add(value);
        }
    }

    private void removeFilter() {
        String[] selected = this.filterList.getSelection();
        int i = 0;
        while (i < selected.length) {
            this.filterList.remove(selected[i]);
            ++i;
        }
        this.removeFilter.setEnabled(false);
    }

    private void setStackTraceFilterEnabled(boolean enabled) {
        this.filterList.setEnabled(enabled);
        this.addFilter.setEnabled(enabled);
        this.removeFilter.setEnabled(enabled && this.filterList.getSelectionIndex() != -1);
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.okButton = this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
        this.createButton(parent, 1, IDialogConstants.CANCEL_LABEL, false);
    }

    protected void okPressed() {
        this.memento.putString("ok", this.okCheckbox.getSelection() ? "true" : "false");
        this.memento.putString("info", this.infoCheckbox.getSelection() ? "true" : "false");
        this.memento.putString("warning", this.warningCheckbox.getSelection() ? "true" : "false");
        this.memento.putString("error", this.errorCheckbox.getSelection() ? "true" : "false");
        this.memento.putString("limit", this.limitText.getText());
        this.memento.putString("useLimit", this.limit.getSelection() ? "true" : "false");
        this.memento.putString("allSessions", this.showAllButton.getSelection() ? "true" : "false");
        this.memento.putBoolean("detailsStackFilterEnabled", this.filterEnabled.getSelection());
        StringBuffer sb = new StringBuffer();
        String[] items = this.filterList.getItems();
        int i = 0;
        while (i < items.length) {
            sb.append(items[i]);
            if (i < items.length - 1) {
                sb.append(";");
            }
            ++i;
        }
        this.memento.putString("detailsStackFilterList", sb.toString());
        super.okPressed();
    }
}

