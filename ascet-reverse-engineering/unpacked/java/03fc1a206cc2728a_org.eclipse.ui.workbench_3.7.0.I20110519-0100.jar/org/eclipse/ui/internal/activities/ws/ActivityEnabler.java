/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.viewers.CheckStateChangedEvent
 *  org.eclipse.jface.viewers.CheckboxTreeViewer
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.ICheckStateListener
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.ViewerComparator
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
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.activities.ws;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.CheckStateChangedEvent;
import org.eclipse.jface.viewers.CheckboxTreeViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ICheckStateListener;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.ViewerComparator;
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
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.activities.IActivity;
import org.eclipse.ui.activities.ICategory;
import org.eclipse.ui.activities.IMutableActivityManager;
import org.eclipse.ui.activities.NotDefinedException;
import org.eclipse.ui.internal.activities.InternalActivityHelper;
import org.eclipse.ui.internal.activities.ws.ActivityCategoryContentProvider;
import org.eclipse.ui.internal.activities.ws.ActivityCategoryLabelProvider;
import org.eclipse.ui.internal.activities.ws.ActivityMessages;
import org.eclipse.ui.internal.activities.ws.CategorizedActivity;

public class ActivityEnabler {
    private static final int ALL = 2;
    private static final int NONE = 0;
    private static final int SOME = 1;
    private ISelectionChangedListener selectionListener = new ISelectionChangedListener(){

        public void selectionChanged(SelectionChangedEvent event) {
            Object element = ((IStructuredSelection)event.getSelection()).getFirstElement();
            try {
                if (element instanceof ICategory) {
                    ActivityEnabler.this.descriptionText.setText(((ICategory)element).getDescription());
                } else if (element instanceof IActivity) {
                    ActivityEnabler.this.descriptionText.setText(((IActivity)element).getDescription());
                }
            }
            catch (NotDefinedException notDefinedException) {
                ActivityEnabler.this.descriptionText.setText("");
            }
        }
    };
    private ICheckStateListener checkListener = new ICheckStateListener(){

        public void checkStateChanged(CheckStateChangedEvent event) {
            HashSet<Object> checked = new HashSet<Object>(Arrays.asList(ActivityEnabler.this.dualViewer.getCheckedElements()));
            Object element = event.getElement();
            if (element instanceof ICategory) {
                ActivityEnabler.this.dualViewer.setSubtreeChecked(element, event.getChecked());
                ActivityEnabler.this.dualViewer.setGrayed(element, false);
                Object[] categoryActivities = ActivityEnabler.this.provider.getChildren(element);
                int index = 0;
                while (index < categoryActivities.length) {
                    this.handleDuplicateActivities(event.getChecked(), categoryActivities[index]);
                    ++index;
                }
            } else {
                this.handleActivityCheck(checked, element);
                this.handleDuplicateActivities(event.getChecked(), element);
            }
        }

        private void handleDuplicateActivities(boolean checkedState, Object element) {
            Object[] duplicateActivities = ActivityEnabler.this.provider.getDuplicateCategoryActivities((CategorizedActivity)element);
            CategorizedActivity activity = null;
            int index = 0;
            while (index < duplicateActivities.length) {
                activity = (CategorizedActivity)duplicateActivities[index];
                ActivityEnabler.this.dualViewer.setChecked((Object)activity, checkedState);
                this.handleActivityCheck(new HashSet<Object>(Arrays.asList(ActivityEnabler.this.dualViewer.getCheckedElements())), activity);
                ++index;
            }
        }

        private void handleActivityCheck(Set checked, Object element) {
            CategorizedActivity proxy = (CategorizedActivity)element;
            Object[] children = ActivityEnabler.this.provider.getChildren(proxy.getCategory());
            int state = 0;
            int count = 0;
            int i = 0;
            while (i < children.length) {
                if (checked.contains(children[i])) {
                    ++count;
                }
                ++i;
            }
            if (count == children.length) {
                state = 2;
            } else if (count != 0) {
                state = 1;
            }
            if (state == 0) {
                checked.remove(proxy.getCategory());
            } else {
                checked.add(proxy.getCategory());
            }
            ActivityEnabler.this.dualViewer.setGrayed((Object)proxy.getCategory(), state == 1);
            ActivityEnabler.this.dualViewer.setCheckedElements(checked.toArray());
            this.handleRequiredActivities(checked, element);
        }

        private void handleRequiredActivities(Set checked, Object element) {
            Object[] requiredActivities = null;
            if (checked.contains(element)) {
                requiredActivities = ActivityEnabler.this.provider.getChildRequiredActivities(((CategorizedActivity)element).getId());
                int index = 0;
                while (index < requiredActivities.length) {
                    if (!checked.contains(requiredActivities[index])) {
                        ActivityEnabler.this.dualViewer.setChecked(requiredActivities[index], true);
                        this.handleActivityCheck(new HashSet<Object>(Arrays.asList(ActivityEnabler.this.dualViewer.getCheckedElements())), requiredActivities[index]);
                    }
                    ++index;
                }
            } else {
                requiredActivities = ActivityEnabler.this.provider.getParentRequiredActivities(((CategorizedActivity)element).getId());
                int index = 0;
                while (index < requiredActivities.length) {
                    if (checked.contains(requiredActivities[index])) {
                        ActivityEnabler.this.dualViewer.setChecked(requiredActivities[index], false);
                        this.handleActivityCheck(new HashSet<Object>(Arrays.asList(ActivityEnabler.this.dualViewer.getCheckedElements())), requiredActivities[index]);
                    }
                    ++index;
                }
            }
        }
    };
    protected CheckboxTreeViewer dualViewer;
    private Set managedActivities = new HashSet(7);
    protected ActivityCategoryContentProvider provider = new ActivityCategoryContentProvider();
    protected Text descriptionText;
    private Properties strings;
    private IMutableActivityManager activitySupport;

    public ActivityEnabler(IMutableActivityManager activitySupport, Properties strings) {
        this.activitySupport = activitySupport;
        this.strings = strings;
    }

    public Control createControl(Composite parent) {
        GC gc = new GC((Drawable)parent);
        gc.setFont(JFaceResources.getDialogFont());
        FontMetrics fontMetrics = gc.getFontMetrics();
        gc.dispose();
        Composite composite = new Composite(parent, 0);
        composite.setLayout((Layout)this.createGridLayoutWithoutMargins(1, fontMetrics));
        new Label(composite, 0).setText(String.valueOf(this.strings.getProperty("activityName", ActivityMessages.ActivityEnabler_activities)) + ':');
        this.dualViewer = new CheckboxTreeViewer(composite);
        this.dualViewer.setComparator(new ViewerComparator());
        this.dualViewer.setLabelProvider((IBaseLabelProvider)new ActivityCategoryLabelProvider());
        this.dualViewer.setContentProvider((IContentProvider)this.provider);
        this.dualViewer.setInput((Object)this.activitySupport);
        GridData data = new GridData(4, 4, true, true);
        this.dualViewer.getControl().setLayoutData((Object)data);
        Composite buttonComposite = new Composite(composite, 0);
        buttonComposite.setLayout((Layout)this.createGridLayoutWithoutMargins(2, fontMetrics));
        Button selectAllButton = new Button(buttonComposite, 8);
        selectAllButton.setText(ActivityMessages.ActivityEnabler_selectAll);
        selectAllButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                ActivityEnabler.this.toggleTreeEnablement(true);
            }
        });
        this.setButtonLayoutData(selectAllButton, fontMetrics);
        Button deselectAllButton = new Button(buttonComposite, 8);
        deselectAllButton.setText(ActivityMessages.ActivityEnabler_deselectAll);
        deselectAllButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                ActivityEnabler.this.toggleTreeEnablement(false);
            }
        });
        this.setButtonLayoutData(deselectAllButton, fontMetrics);
        new Label(composite, 0).setText(ActivityMessages.ActivityEnabler_description);
        this.descriptionText = new Text(composite, 2632);
        data = new GridData(4, 4, true, false);
        data.heightHint = Dialog.convertHeightInCharsToPixels((FontMetrics)fontMetrics, (int)5);
        this.descriptionText.setLayoutData((Object)data);
        this.setInitialStates();
        this.dualViewer.addCheckStateListener(this.checkListener);
        this.dualViewer.addSelectionChangedListener(this.selectionListener);
        this.dualViewer.setSelection((ISelection)new StructuredSelection());
        Dialog.applyDialogFont((Control)composite);
        return composite;
    }

    private GridLayout createGridLayoutWithoutMargins(int nColumns, FontMetrics fontMetrics) {
        GridLayout layout = new GridLayout(nColumns, false);
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        layout.horizontalSpacing = Dialog.convertHorizontalDLUsToPixels((FontMetrics)fontMetrics, (int)4);
        layout.verticalSpacing = Dialog.convertVerticalDLUsToPixels((FontMetrics)fontMetrics, (int)4);
        return layout;
    }

    private GridData setButtonLayoutData(Button button, FontMetrics fontMetrics) {
        GridData data = new GridData(256);
        int widthHint = Dialog.convertHorizontalDLUsToPixels((FontMetrics)fontMetrics, (int)61);
        Point minSize = button.computeSize(-1, -1, true);
        data.widthHint = Math.max(widthHint, minSize.x);
        button.setLayoutData((Object)data);
        return data;
    }

    private void setInitialStates() {
        Set enabledActivities = this.activitySupport.getEnabledActivityIds();
        this.setEnabledStates(enabledActivities);
    }

    private void setEnabledStates(Set enabledActivities) {
        Set categories = this.activitySupport.getDefinedCategoryIds();
        ArrayList<Comparable> checked = new ArrayList<Comparable>(10);
        ArrayList<ICategory> grayed = new ArrayList<ICategory>(10);
        Iterator i = categories.iterator();
        while (i.hasNext()) {
            String categoryId = (String)i.next();
            ICategory category = this.activitySupport.getCategory(categoryId);
            int state = 0;
            Set activities = InternalActivityHelper.getActivityIdsForCategory(this.activitySupport, category);
            int foundCount = 0;
            Iterator j = activities.iterator();
            while (j.hasNext()) {
                String activityId = (String)j.next();
                this.managedActivities.add(activityId);
                if (!enabledActivities.contains(activityId)) continue;
                IActivity activity = this.activitySupport.getActivity(activityId);
                checked.add(new CategorizedActivity(category, activity));
                ++foundCount;
            }
            if (foundCount == activities.size()) {
                state = 2;
            } else if (foundCount > 0) {
                state = 1;
            }
            if (state == 0) continue;
            checked.add(category);
            if (state != 1) continue;
            grayed.add(category);
        }
        this.dualViewer.setCheckedElements(checked.toArray());
        this.dualViewer.setGrayedElements(grayed.toArray());
    }

    public void updateActivityStates() {
        HashSet<String> enabledActivities = new HashSet<String>(this.activitySupport.getEnabledActivityIds());
        enabledActivities.removeAll(this.managedActivities);
        Object[] checked = this.dualViewer.getCheckedElements();
        int i = 0;
        while (i < checked.length) {
            Object element = checked[i];
            if (!(element instanceof ICategory) && !this.dualViewer.getGrayed(element)) {
                enabledActivities.add(((IActivity)element).getId());
            }
            ++i;
        }
        this.activitySupport.setEnabledActivityIds(enabledActivities);
    }

    public void restoreDefaults() {
        HashSet<String> defaultEnabled = new HashSet<String>();
        Set activityIds = this.activitySupport.getDefinedActivityIds();
        Iterator i = activityIds.iterator();
        while (i.hasNext()) {
            String activityId = (String)i.next();
            IActivity activity = this.activitySupport.getActivity(activityId);
            try {
                if (!activity.isDefaultEnabled()) continue;
                defaultEnabled.add(activityId);
            }
            catch (NotDefinedException notDefinedException) {}
        }
        this.setEnabledStates(defaultEnabled);
    }

    protected void toggleTreeEnablement(boolean enabled) {
        Object[] elements = this.provider.getElements(this.activitySupport);
        this.dualViewer.setGrayedElements(new Object[0]);
        int i = 0;
        while (i < elements.length) {
            this.dualViewer.expandToLevel(elements[i], -1);
            this.dualViewer.setSubtreeChecked(elements[i], enabled);
            ++i;
        }
    }
}

