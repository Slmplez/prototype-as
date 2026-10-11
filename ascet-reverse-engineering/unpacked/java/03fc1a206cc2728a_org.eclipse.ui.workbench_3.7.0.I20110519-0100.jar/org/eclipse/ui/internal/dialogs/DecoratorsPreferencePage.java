/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 *  org.eclipse.jface.preference.PreferencePage
 *  org.eclipse.jface.viewers.CheckStateChangedEvent
 *  org.eclipse.jface.viewers.CheckboxTableViewer
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.ICheckStateListener
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.dialogs;

import com.ibm.icu.text.Collator;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.viewers.CheckStateChangedEvent;
import org.eclipse.jface.viewers.CheckboxTableViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ICheckStateListener;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPreferencePage;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.decorators.DecoratorDefinition;
import org.eclipse.ui.internal.decorators.DecoratorManager;

public class DecoratorsPreferencePage
extends PreferencePage
implements IWorkbenchPreferencePage {
    private Text descriptionText;
    private CheckboxTableViewer checkboxViewer;

    protected Control createContents(Composite parent) {
        Font font = parent.getFont();
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)parent, "org.eclipse.ui.decorators_preference_page_context");
        Composite mainComposite = new Composite(parent, 0);
        mainComposite.setLayoutData((Object)new GridData(768));
        mainComposite.setFont(font);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.verticalSpacing = 10;
        mainComposite.setLayout((Layout)layout);
        Label topLabel = new Label(mainComposite, 0);
        topLabel.setText(WorkbenchMessages.DecoratorsPreferencePage_explanation);
        topLabel.setFont(font);
        this.createDecoratorsArea(mainComposite);
        this.createDescriptionArea(mainComposite);
        this.populateDecorators();
        return mainComposite;
    }

    private void createDecoratorsArea(Composite mainComposite) {
        Font mainFont = mainComposite.getFont();
        Composite decoratorsComposite = new Composite(mainComposite, 0);
        decoratorsComposite.setLayoutData((Object)new GridData(1808));
        GridLayout decoratorsLayout = new GridLayout();
        decoratorsLayout.marginWidth = 0;
        decoratorsLayout.marginHeight = 0;
        decoratorsComposite.setLayout((Layout)decoratorsLayout);
        decoratorsComposite.setFont(mainFont);
        Label decoratorsLabel = new Label(decoratorsComposite, 0);
        decoratorsLabel.setText(WorkbenchMessages.DecoratorsPreferencePage_decoratorsLabel);
        decoratorsLabel.setFont(mainFont);
        this.checkboxViewer = CheckboxTableViewer.newCheckList((Composite)decoratorsComposite, (int)2180);
        this.checkboxViewer.getTable().setLayoutData((Object)new GridData(1808));
        this.checkboxViewer.getTable().setFont(decoratorsComposite.getFont());
        this.checkboxViewer.setLabelProvider((IBaseLabelProvider)new LabelProvider(){

            public String getText(Object element) {
                return ((DecoratorDefinition)element).getName();
            }
        });
        this.checkboxViewer.getTable().setFont(mainFont);
        this.checkboxViewer.setContentProvider((IContentProvider)new IStructuredContentProvider(){
            private final Comparator comparer = new Comparator(this){
                private Collator collator;
                final /* synthetic */ 2 this$1;
                {
                    this.this$1 = var1_1;
                    this.collator = Collator.getInstance();
                }

                public int compare(Object arg0, Object arg1) {
                    String s1 = ((DecoratorDefinition)arg0).getName();
                    String s2 = ((DecoratorDefinition)arg1).getName();
                    return this.collator.compare(s1, s2);
                }
            };

            public void dispose() {
            }

            public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
            }

            public Object[] getElements(Object inputElement) {
                Object[] elements = (Object[])inputElement;
                Object[] results = new Object[elements.length];
                System.arraycopy(elements, 0, results, 0, elements.length);
                Collections.sort(Arrays.asList(results), this.comparer);
                return results;
            }
        });
        this.checkboxViewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                if (event.getSelection() instanceof IStructuredSelection) {
                    IStructuredSelection sel = (IStructuredSelection)event.getSelection();
                    DecoratorDefinition definition = (DecoratorDefinition)sel.getFirstElement();
                    if (definition == null) {
                        DecoratorsPreferencePage.this.clearDescription();
                    } else {
                        DecoratorsPreferencePage.this.showDescription(definition);
                    }
                }
            }
        });
        this.checkboxViewer.addCheckStateListener(new ICheckStateListener(){

            public void checkStateChanged(CheckStateChangedEvent event) {
                DecoratorsPreferencePage.this.checkboxViewer.setSelection((ISelection)new StructuredSelection(event.getElement()));
            }
        });
    }

    private void createDescriptionArea(Composite mainComposite) {
        Font mainFont = mainComposite.getFont();
        Composite textComposite = new Composite(mainComposite, 0);
        textComposite.setLayoutData((Object)new GridData(1808));
        GridLayout textLayout = new GridLayout();
        textLayout.marginWidth = 0;
        textLayout.marginHeight = 0;
        textComposite.setLayout((Layout)textLayout);
        textComposite.setFont(mainFont);
        Label descriptionLabel = new Label(textComposite, 0);
        descriptionLabel.setText(WorkbenchMessages.DecoratorsPreferencePage_description);
        descriptionLabel.setFont(mainFont);
        this.descriptionText = new Text(textComposite, 2378);
        this.descriptionText.setLayoutData((Object)new GridData(1808));
        this.descriptionText.setFont(mainFont);
    }

    private void populateDecorators() {
        DecoratorDefinition[] definitions = this.getAllDefinitions();
        this.checkboxViewer.setInput((Object)definitions);
        int i = 0;
        while (i < definitions.length) {
            this.checkboxViewer.setChecked((Object)definitions[i], definitions[i].isEnabled());
            ++i;
        }
    }

    private void showDescription(DecoratorDefinition definition) {
        if (this.descriptionText == null || this.descriptionText.isDisposed()) {
            return;
        }
        String text = definition.getDescription();
        if (text == null || text.length() == 0) {
            this.descriptionText.setText(WorkbenchMessages.PreferencePage_noDescription);
        } else {
            this.descriptionText.setText(text);
        }
    }

    private void clearDescription() {
        if (this.descriptionText == null || this.descriptionText.isDisposed()) {
            return;
        }
        this.descriptionText.setText("");
    }

    protected void performDefaults() {
        super.performDefaults();
        DecoratorManager manager = WorkbenchPlugin.getDefault().getDecoratorManager();
        DecoratorDefinition[] definitions = manager.getAllDecoratorDefinitions();
        int i = 0;
        while (i < definitions.length) {
            this.checkboxViewer.setChecked((Object)definitions[i], definitions[i].getDefaultValue());
            ++i;
        }
    }

    public boolean performOk() {
        if (super.performOk()) {
            DecoratorManager manager = this.getDecoratorManager();
            manager.clearCaches();
            DecoratorDefinition[] definitions = manager.getAllDecoratorDefinitions();
            int i = 0;
            while (i < definitions.length) {
                boolean checked = this.checkboxViewer.getChecked((Object)definitions[i]);
                definitions[i].setEnabled(checked);
                ++i;
            }
            manager.clearCaches();
            manager.updateForEnablementChange();
            return true;
        }
        return false;
    }

    public void init(IWorkbench workbench) {
    }

    private DecoratorDefinition[] getAllDefinitions() {
        return this.getDecoratorManager().getAllDecoratorDefinitions();
    }

    private DecoratorManager getDecoratorManager() {
        return WorkbenchPlugin.getDefault().getDecoratorManager();
    }
}

