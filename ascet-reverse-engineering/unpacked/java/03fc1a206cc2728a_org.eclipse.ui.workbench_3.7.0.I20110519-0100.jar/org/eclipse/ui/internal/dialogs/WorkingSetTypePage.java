/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.DeviceResourceDescriptor
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.jface.resource.ResourceManager
 *  org.eclipse.jface.viewers.ArrayContentProvider
 *  org.eclipse.jface.viewers.DoubleClickEvent
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.IDoubleClickListener
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.wizard.WizardPage
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.resource.DeviceResourceDescriptor;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.jface.viewers.ArrayContentProvider;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.wizard.WizardPage;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.WorkingSetDescriptor;

public class WorkingSetTypePage
extends WizardPage {
    private static final int SIZING_SELECTION_WIDGET_WIDTH = 50;
    private static final int SIZING_SELECTION_WIDGET_HEIGHT = 200;
    private TableViewer typesListViewer;
    private WorkingSetDescriptor[] descriptors;

    public WorkingSetTypePage() {
        this(WorkbenchPlugin.getDefault().getWorkingSetRegistry().getNewPageWorkingSetDescriptors());
    }

    public WorkingSetTypePage(WorkingSetDescriptor[] descriptors) {
        super("workingSetTypeSelectionPage", WorkbenchMessages.WorkingSetTypePage_description, WorkbenchImages.getImageDescriptor("IMG_WIZBAN_WORKINGSET_WIZ"));
        this.descriptors = descriptors;
    }

    public boolean canFlipToNextPage() {
        return this.isPageComplete();
    }

    public void createControl(Composite parent) {
        Font font = parent.getFont();
        Composite composite = new Composite(parent, 0);
        composite.setLayout((Layout)new GridLayout());
        composite.setLayoutData((Object)new GridData(256));
        this.setControl((Control)composite);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)composite, "org.eclipse.ui.working_set_type_page");
        Label typesLabel = new Label(composite, 0);
        typesLabel.setText(WorkbenchMessages.WorkingSetTypePage_typesLabel);
        GridData data = new GridData(768);
        typesLabel.setLayoutData((Object)data);
        typesLabel.setFont(font);
        this.typesListViewer = new TableViewer(composite, 2052);
        data = new GridData(1808);
        data.heightHint = 200;
        data.widthHint = 50;
        this.typesListViewer.getTable().setLayoutData((Object)data);
        this.typesListViewer.getTable().setFont(font);
        this.typesListViewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                WorkingSetTypePage.this.handleSelectionChanged();
            }
        });
        this.typesListViewer.addDoubleClickListener(new IDoubleClickListener(){

            public void doubleClick(DoubleClickEvent event) {
                WorkingSetTypePage.this.handleDoubleClick();
            }
        });
        this.typesListViewer.setContentProvider((IContentProvider)new ArrayContentProvider());
        this.typesListViewer.setLabelProvider((IBaseLabelProvider)new LabelProvider(){
            private ResourceManager images = new LocalResourceManager(JFaceResources.getResources());

            public String getText(Object element) {
                return ((WorkingSetDescriptor)element).getName();
            }

            public void dispose() {
                this.images.dispose();
                super.dispose();
            }

            public Image getImage(Object element) {
                ImageDescriptor imageDescriptor = ((WorkingSetDescriptor)element).getIcon();
                return imageDescriptor == null ? null : (Image)this.images.get((DeviceResourceDescriptor)imageDescriptor);
            }
        });
        this.typesListViewer.setInput((Object)this.descriptors);
        this.setPageComplete(false);
    }

    public void dispose() {
        super.dispose();
    }

    public String getSelection() {
        WorkingSetDescriptor descriptor = this.getSelectedWorkingSet();
        if (descriptor != null) {
            return descriptor.getId();
        }
        return null;
    }

    private WorkingSetDescriptor getSelectedWorkingSet() {
        ISelection selection = this.typesListViewer.getSelection();
        boolean hasSelection = selection != null && !selection.isEmpty();
        WorkingSetDescriptor descriptor = null;
        if (hasSelection && selection instanceof IStructuredSelection) {
            descriptor = (WorkingSetDescriptor)((IStructuredSelection)selection).getFirstElement();
        }
        return descriptor;
    }

    private void handleDoubleClick() {
        this.handleSelectionChanged();
        this.getContainer().showPage(this.getNextPage());
    }

    private void handleSelectionChanged() {
        ISelection selection = this.typesListViewer.getSelection();
        boolean hasSelection = selection != null && !selection.isEmpty();
        WorkingSetDescriptor descriptor = this.getSelectedWorkingSet();
        this.setDescription(descriptor == null ? "" : descriptor.getDescription());
        this.setPageComplete(hasSelection);
    }
}

