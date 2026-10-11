/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.dialogs;

import com.ibm.icu.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.IWorkingSetManager;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dialogs.SimpleWorkingSetSelectionDialog;

public class WorkingSetConfigurationBlock {
    private static final IWorkingSet[] EMPTY_WORKING_SET_ARRAY = new IWorkingSet[0];
    private static final String WORKINGSET_SELECTION_HISTORY = "workingset_selection_history";
    private static final int MAX_HISTORY_SIZE = 5;
    private Label workingSetLabel;
    private Combo workingSetCombo;
    private Button selectButton;
    private Button enableButton;
    private IWorkingSet[] selectedWorkingSets;
    private ArrayList selectionHistory;
    private final IDialogSettings dialogSettings;
    private final String[] workingSetTypeIds;
    private final String selectLabel;
    private final String comboLabel;
    private final String addButtonLabel;

    public static IWorkingSet[] filter(IWorkingSet[] workingSets, String[] workingSetIds) {
        Object[] workingSetIdsCopy = new String[workingSetIds.length];
        System.arraycopy(workingSetIds, 0, workingSetIdsCopy, 0, workingSetIds.length);
        Arrays.sort(workingSetIdsCopy);
        ArrayList<IWorkingSet> result = new ArrayList<IWorkingSet>();
        int i = 0;
        while (i < workingSets.length) {
            if (Arrays.binarySearch(workingSetIdsCopy, workingSets[i].getId()) >= 0) {
                result.add(workingSets[i]);
            }
            ++i;
        }
        return result.toArray(new IWorkingSet[result.size()]);
    }

    public WorkingSetConfigurationBlock(String[] workingSetIds, IDialogSettings settings) {
        this(workingSetIds, settings, null, null, null);
    }

    public WorkingSetConfigurationBlock(String[] workingSetIds, IDialogSettings settings, String addButtonLabel, String comboLabel, String selectLabel) {
        Assert.isNotNull((Object)workingSetIds);
        Assert.isNotNull((Object)settings);
        this.workingSetTypeIds = workingSetIds;
        Arrays.sort(workingSetIds);
        this.selectedWorkingSets = EMPTY_WORKING_SET_ARRAY;
        this.dialogSettings = settings;
        this.selectionHistory = this.loadSelectionHistory(settings, workingSetIds);
        this.addButtonLabel = addButtonLabel == null ? WorkbenchMessages.WorkingSetGroup_EnableWorkingSet_button : addButtonLabel;
        this.comboLabel = comboLabel == null ? WorkbenchMessages.WorkingSetConfigurationBlock_WorkingSetText_name : comboLabel;
        this.selectLabel = selectLabel == null ? WorkbenchMessages.WorkingSetConfigurationBlock_SelectWorkingSet_button : selectLabel;
    }

    public void setSelection(IStructuredSelection selection) {
        this.selectedWorkingSets = this.findApplicableWorkingSets(selection);
        if (this.workingSetCombo != null) {
            this.updateSelectedWorkingSets();
        }
    }

    public void setWorkingSets(IWorkingSet[] workingSets) {
        this.selectedWorkingSets = this.filterWorkingSets(Arrays.asList(workingSets));
        if (this.workingSetCombo != null) {
            this.updateSelectedWorkingSets();
        }
    }

    public IWorkingSet[] findApplicableWorkingSets(IStructuredSelection selection) {
        if (selection == null) {
            return EMPTY_WORKING_SET_ARRAY;
        }
        return this.filterWorkingSets(selection.toList());
    }

    private IWorkingSet[] filterWorkingSets(Collection elements) {
        ArrayList result = new ArrayList();
        Iterator iterator = elements.iterator();
        while (iterator.hasNext()) {
            Object element = iterator.next();
            if (!(element instanceof IWorkingSet) || !this.verifyWorkingSet((IWorkingSet)element)) continue;
            result.add(element);
        }
        return result.toArray(new IWorkingSet[result.size()]);
    }

    private boolean verifyWorkingSet(IWorkingSet workingSetCandidate) {
        return !workingSetCandidate.isAggregateWorkingSet() && Arrays.binarySearch(this.workingSetTypeIds, workingSetCandidate.getId()) >= 0;
    }

    public IWorkingSet[] getSelectedWorkingSets() {
        if (this.enableButton.getSelection()) {
            return this.selectedWorkingSets;
        }
        return EMPTY_WORKING_SET_ARRAY;
    }

    public void createContent(final Composite parent) {
        int numColumn = 3;
        Composite composite = new Composite(parent, 0);
        composite.setLayoutData((Object)new GridData(4, 128, true, false));
        composite.setLayout((Layout)new GridLayout(numColumn, false));
        this.enableButton = new Button(composite, 32);
        this.enableButton.setText(this.addButtonLabel);
        GridData enableData = new GridData(4, 0x1000000, true, false);
        enableData.horizontalSpan = numColumn;
        this.enableButton.setLayoutData((Object)enableData);
        this.enableButton.setSelection(this.selectedWorkingSets.length > 0);
        this.workingSetLabel = new Label(composite, 0);
        this.workingSetLabel.setText(this.comboLabel);
        this.workingSetCombo = new Combo(composite, 2056);
        GridData textData = new GridData(4, 0x1000000, true, false);
        textData.horizontalSpan = numColumn - 2;
        textData.horizontalIndent = 0;
        this.workingSetCombo.setLayoutData((Object)textData);
        this.selectButton = new Button(composite, 8);
        this.selectButton.setText(this.selectLabel);
        this.setButtonLayoutData(this.selectButton);
        this.selectButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                SimpleWorkingSetSelectionDialog dialog = new SimpleWorkingSetSelectionDialog(parent.getShell(), WorkingSetConfigurationBlock.this.workingSetTypeIds, WorkingSetConfigurationBlock.this.selectedWorkingSets, false);
                dialog.setMessage(WorkbenchMessages.WorkingSetGroup_WorkingSetSelection_message);
                if (dialog.open() == 0) {
                    IWorkingSet[] result = dialog.getSelection();
                    if (result != null && result.length > 0) {
                        WorkingSetConfigurationBlock.this.selectedWorkingSets = result;
                        PlatformUI.getWorkbench().getWorkingSetManager().addRecentWorkingSet(result[0]);
                    } else {
                        WorkingSetConfigurationBlock.this.selectedWorkingSets = EMPTY_WORKING_SET_ARRAY;
                    }
                    WorkingSetConfigurationBlock.this.updateWorkingSetSelection();
                }
            }
        });
        this.enableButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WorkingSetConfigurationBlock.this.updateEnableState(WorkingSetConfigurationBlock.this.enableButton.getSelection());
            }
        });
        this.updateEnableState(this.enableButton.getSelection());
        this.workingSetCombo.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WorkingSetConfigurationBlock.this.updateSelectedWorkingSets();
            }
        });
        this.workingSetCombo.setItems(this.getHistoryEntries());
        if (this.selectedWorkingSets.length == 0 && this.selectionHistory.size() > 0) {
            this.workingSetCombo.select(this.historyIndex((String)this.selectionHistory.get(0)));
            this.updateSelectedWorkingSets();
        } else {
            this.updateWorkingSetSelection();
        }
    }

    private void updateEnableState(boolean enabled) {
        this.workingSetLabel.setEnabled(enabled);
        this.workingSetCombo.setEnabled(enabled && (this.selectedWorkingSets.length > 0 || this.getHistoryEntries().length > 0));
        this.selectButton.setEnabled(enabled);
    }

    private void updateWorkingSetSelection() {
        if (this.selectedWorkingSets.length > 0) {
            this.workingSetCombo.setEnabled(true);
            StringBuffer buf = new StringBuffer();
            buf.append(this.selectedWorkingSets[0].getLabel());
            int i = 1;
            while (i < this.selectedWorkingSets.length) {
                IWorkingSet ws = this.selectedWorkingSets[i];
                buf.append(',').append(' ');
                buf.append(ws.getLabel());
                ++i;
            }
            String currentSelection = buf.toString();
            int index = this.historyIndex(currentSelection);
            this.historyInsert(currentSelection);
            if (index >= 0) {
                this.workingSetCombo.select(index);
            } else {
                this.workingSetCombo.setItems(this.getHistoryEntries());
                this.workingSetCombo.select(this.historyIndex(currentSelection));
            }
        } else {
            this.enableButton.setSelection(false);
            this.updateEnableState(false);
        }
    }

    private String[] getHistoryEntries() {
        String[] history = this.selectionHistory.toArray(new String[this.selectionHistory.size()]);
        Arrays.sort(history, new Comparator(){

            public int compare(Object o1, Object o2) {
                return Collator.getInstance().compare(o1, o2);
            }
        });
        return history;
    }

    private void historyInsert(String entry) {
        this.selectionHistory.remove(entry);
        this.selectionHistory.add(0, entry);
        this.storeSelectionHistory(this.dialogSettings);
    }

    private int historyIndex(String entry) {
        int i = 0;
        while (i < this.workingSetCombo.getItemCount()) {
            if (this.workingSetCombo.getItem(i).equals(entry)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    private String[] split(String value, String delimiters) {
        StringTokenizer tokenizer = new StringTokenizer(value, delimiters);
        int size = tokenizer.countTokens();
        String[] tokens = new String[size];
        int i = 0;
        while (i < size) {
            tokens[i++] = tokenizer.nextToken();
        }
        return tokens;
    }

    private void updateSelectedWorkingSets() {
        String item = this.workingSetCombo.getItem(this.workingSetCombo.getSelectionIndex());
        String[] workingSetNames = this.split(item, ", ");
        IWorkingSetManager workingSetManager = PlatformUI.getWorkbench().getWorkingSetManager();
        this.selectedWorkingSets = new IWorkingSet[workingSetNames.length];
        int i = 0;
        while (i < workingSetNames.length) {
            IWorkingSet set = workingSetManager.getWorkingSet(workingSetNames[i]);
            Assert.isNotNull((Object)set);
            this.selectedWorkingSets[i] = set;
            ++i;
        }
    }

    private void storeSelectionHistory(IDialogSettings settings) {
        String[] history;
        if (this.selectionHistory.size() > 5) {
            List subList = this.selectionHistory.subList(0, 5);
            history = subList.toArray(new String[subList.size()]);
        } else {
            history = this.selectionHistory.toArray(new String[this.selectionHistory.size()]);
        }
        settings.put(WORKINGSET_SELECTION_HISTORY, history);
    }

    private ArrayList loadSelectionHistory(IDialogSettings settings, String[] workingSetIds) {
        String[] strings = settings.getArray(WORKINGSET_SELECTION_HISTORY);
        if (strings == null || strings.length == 0) {
            return new ArrayList();
        }
        ArrayList<String> result = new ArrayList<String>();
        HashSet<String> workingSetIdsSet = new HashSet<String>(Arrays.asList(workingSetIds));
        IWorkingSetManager workingSetManager = PlatformUI.getWorkbench().getWorkingSetManager();
        int i = 0;
        while (i < strings.length) {
            String[] workingSetNames = this.split(strings[i], ", ");
            boolean valid = true;
            int j = 0;
            while (j < workingSetNames.length && valid) {
                IWorkingSet workingSet = workingSetManager.getWorkingSet(workingSetNames[j]);
                if (workingSet == null) {
                    valid = false;
                } else if (!workingSetIdsSet.contains(workingSet.getId())) {
                    valid = false;
                }
                ++j;
            }
            if (valid) {
                result.add(strings[i]);
            }
            ++i;
        }
        return result;
    }

    private GridData setButtonLayoutData(Button button) {
        button.setFont(JFaceResources.getDialogFont());
        GC gc = new GC((Drawable)button);
        gc.setFont(button.getFont());
        FontMetrics fontMetrics = gc.getFontMetrics();
        gc.dispose();
        GridData data = new GridData(256);
        int widthHint = Dialog.convertHorizontalDLUsToPixels((FontMetrics)fontMetrics, (int)61);
        Point minSize = button.computeSize(-1, -1, true);
        data.widthHint = Math.max(widthHint, minSize.x);
        button.setLayoutData((Object)data);
        return data;
    }
}

