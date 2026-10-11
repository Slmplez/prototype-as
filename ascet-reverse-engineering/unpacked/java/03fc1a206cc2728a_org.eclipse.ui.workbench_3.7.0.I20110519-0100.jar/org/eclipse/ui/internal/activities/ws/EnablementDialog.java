/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.viewers.CheckStateChangedEvent
 *  org.eclipse.jface.viewers.CheckboxTableViewer
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.ICheckStateListener
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.activities.ws;

import com.ibm.icu.text.MessageFormat;
import java.util.Collection;
import java.util.HashSet;
import java.util.Properties;
import java.util.ResourceBundle;
import java.util.Set;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.viewers.CheckStateChangedEvent;
import org.eclipse.jface.viewers.CheckboxTableViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ICheckStateListener;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.IActivity;
import org.eclipse.ui.activities.IActivityManager;
import org.eclipse.ui.activities.NotDefinedException;
import org.eclipse.ui.activities.WorkbenchTriggerPointAdvisor;
import org.eclipse.ui.internal.activities.ws.ActivityContentProvider;
import org.eclipse.ui.internal.activities.ws.ActivityLabelProvider;

public class EnablementDialog
extends Dialog {
    private static final ResourceBundle RESOURCE_BUNDLE;
    private Button dontAskButton;
    private Set activitiesToEnable = new HashSet(7);
    private Collection activityIds;
    private boolean dontAsk;
    private Button detailsButton;
    boolean showDetails = false;
    private Composite detailsComposite;
    private Label detailsLabel;
    private String selectedActivity;
    private Text detailsText;
    private Properties strings;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.activities.ws.EnablementDialog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = ResourceBundle.getBundle(clazz.getName());
    }

    public EnablementDialog(Shell parentShell, Collection activityIds, Properties strings) {
        super(parentShell);
        this.activityIds = activityIds;
        this.strings = strings;
    }

    protected Control createDialogArea(Composite parent) {
        Composite composite = (Composite)super.createDialogArea(parent);
        Font dialogFont = parent.getFont();
        composite.setFont(dialogFont);
        Label text = new Label(composite, 0);
        text.setLayoutData((Object)new GridData(768));
        text.setFont(dialogFont);
        IActivityManager manager = PlatformUI.getWorkbench().getActivitySupport().getActivityManager();
        if (this.activityIds.size() == 1) {
            String activityText;
            String activityId = (String)this.activityIds.iterator().next();
            this.activitiesToEnable.add(activityId);
            this.selectedActivity = activityId;
            IActivity activity = manager.getActivity(activityId);
            try {
                activityText = activity.getName();
            }
            catch (NotDefinedException notDefinedException) {
                activityText = activity.getId();
            }
            text.setText(MessageFormat.format((String)RESOURCE_BUNDLE.getString("requiresSingle"), (Object[])new Object[]{activityText}));
            text = new Label(composite, 0);
            text.setText(this.strings.getProperty(WorkbenchTriggerPointAdvisor.PROCEED_SINGLE, RESOURCE_BUNDLE.getString(WorkbenchTriggerPointAdvisor.PROCEED_SINGLE)));
            text.setLayoutData((Object)new GridData(768));
            text.setFont(dialogFont);
        } else {
            text.setText(RESOURCE_BUNDLE.getString("requiresMulti"));
            HashSet activityIdsCopy = new HashSet(this.activityIds);
            CheckboxTableViewer viewer = CheckboxTableViewer.newCheckList((Composite)composite, (int)2084);
            viewer.setContentProvider((IContentProvider)new ActivityContentProvider());
            viewer.setLabelProvider((IBaseLabelProvider)new ActivityLabelProvider(manager));
            viewer.setInput(activityIdsCopy);
            viewer.setCheckedElements(activityIdsCopy.toArray());
            viewer.addCheckStateListener(new ICheckStateListener(){

                public void checkStateChanged(CheckStateChangedEvent event) {
                    if (event.getChecked()) {
                        EnablementDialog.this.activitiesToEnable.add(event.getElement());
                    } else {
                        EnablementDialog.this.activitiesToEnable.remove(event.getElement());
                    }
                    EnablementDialog.this.getButton(0).setEnabled(!EnablementDialog.this.activitiesToEnable.isEmpty());
                }
            });
            viewer.addSelectionChangedListener(new ISelectionChangedListener(){

                public void selectionChanged(SelectionChangedEvent event) {
                    EnablementDialog.this.selectedActivity = (String)((IStructuredSelection)event.getSelection()).getFirstElement();
                    EnablementDialog.this.setDetails();
                }
            });
            this.activitiesToEnable.addAll(activityIdsCopy);
            viewer.getControl().setLayoutData((Object)new GridData(768));
            viewer.getControl().setFont(dialogFont);
            text = new Label(composite, 0);
            text.setText(this.strings.getProperty(WorkbenchTriggerPointAdvisor.PROCEED_MULTI, RESOURCE_BUNDLE.getString(WorkbenchTriggerPointAdvisor.PROCEED_MULTI)));
            text.setLayoutData((Object)new GridData(768));
            text.setFont(dialogFont);
        }
        Label seperator = new Label(composite, 258);
        seperator.setLayoutData((Object)new GridData(768));
        this.dontAskButton = new Button(composite, 32);
        this.dontAskButton.setSelection(false);
        this.dontAskButton.setLayoutData((Object)new GridData(768));
        this.dontAskButton.setText(this.strings.getProperty(WorkbenchTriggerPointAdvisor.DONT_ASK, RESOURCE_BUNDLE.getString(WorkbenchTriggerPointAdvisor.DONT_ASK)));
        this.dontAskButton.setFont(dialogFont);
        this.detailsComposite = new Composite(composite, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        this.detailsComposite.setLayout((Layout)layout);
        this.detailsLabel = new Label(this.detailsComposite, 0);
        this.detailsLabel.setLayoutData((Object)new GridData(768));
        this.detailsLabel.setFont(dialogFont);
        this.detailsText = new Text(this.detailsComposite, 2632);
        this.detailsText.setLayoutData((Object)new GridData(1808));
        this.detailsText.setFont(dialogFont);
        this.setDetails();
        GridData data = new GridData(1808);
        this.detailsComposite.setLayoutData((Object)data);
        this.setDetailHints();
        return composite;
    }

    protected void setDetails() {
        if (this.selectedActivity == null) {
            this.detailsLabel.setText(this.strings.getProperty(WorkbenchTriggerPointAdvisor.NO_DETAILS, RESOURCE_BUNDLE.getString(WorkbenchTriggerPointAdvisor.NO_DETAILS)));
            this.detailsText.setText("");
        } else {
            String desc;
            String name;
            IActivity activity = PlatformUI.getWorkbench().getActivitySupport().getActivityManager().getActivity(this.selectedActivity);
            try {
                name = activity.getName();
            }
            catch (NotDefinedException notDefinedException) {
                name = this.selectedActivity;
            }
            try {
                desc = activity.getDescription();
            }
            catch (NotDefinedException notDefinedException) {
                desc = RESOURCE_BUNDLE.getString("noDescAvailable");
            }
            this.detailsLabel.setText(MessageFormat.format((String)RESOURCE_BUNDLE.getString("detailsLabel"), (Object[])new Object[]{name}));
            this.detailsText.setText(desc);
        }
    }

    protected void setDetailHints() {
        GridData data = (GridData)this.detailsComposite.getLayoutData();
        if (this.showDetails) {
            Composite parent = this.detailsComposite.getParent();
            data.widthHint = parent.getSize().x - ((GridLayout)parent.getLayout()).marginWidth * 2;
            data.heightHint = this.convertHeightInCharsToPixels(5);
        } else {
            data.widthHint = 0;
            data.heightHint = 0;
        }
    }

    private void setDetailButtonLabel() {
        if (!this.showDetails) {
            this.detailsButton.setText(RESOURCE_BUNDLE.getString("showDetails"));
        } else {
            this.detailsButton.setText(RESOURCE_BUNDLE.getString("hideDetails"));
        }
    }

    protected void configureShell(Shell newShell) {
        super.configureShell(newShell);
        newShell.setText(RESOURCE_BUNDLE.getString("title"));
    }

    public boolean getDontAsk() {
        return this.dontAsk;
    }

    public Set getActivitiesToEnable() {
        return this.activitiesToEnable;
    }

    protected void okPressed() {
        this.dontAsk = this.dontAskButton.getSelection();
        super.okPressed();
    }

    protected void createButtonsForButtonBar(Composite parent) {
        super.createButtonsForButtonBar(parent);
        this.detailsButton = this.createButton(parent, 13, "", false);
        this.setDetailButtonLabel();
    }

    protected void buttonPressed(int buttonId) {
        if (buttonId == 13) {
            this.detailsPressed();
            return;
        }
        super.buttonPressed(buttonId);
    }

    private void detailsPressed() {
        this.showDetails = !this.showDetails;
        this.setDetailButtonLabel();
        this.setDetailHints();
        this.setDetails();
        ((Composite)this.getDialogArea()).layout(true);
        this.getShell().setSize(this.getShell().computeSize(-1, -1));
    }
}

