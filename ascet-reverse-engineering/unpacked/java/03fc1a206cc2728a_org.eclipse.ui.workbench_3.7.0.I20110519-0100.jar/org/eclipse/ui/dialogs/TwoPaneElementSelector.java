/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.ui.dialogs;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.ui.dialogs.AbstractElementListSelectionDialog;
import org.eclipse.ui.dialogs.ISelectionStatusValidator;
import org.eclipse.ui.dialogs.TwoArrayQuickSorter;

public class TwoPaneElementSelector
extends AbstractElementListSelectionDialog {
    private String fUpperListLabel;
    private String fLowerListLabel;
    private Comparator fLowerListComparator = null;
    private ILabelProvider fQualifierRenderer;
    private Object[] fElements = new Object[0];
    private Table fLowerList;
    private Object[] fQualifierElements;

    public TwoPaneElementSelector(Shell parent, ILabelProvider elementRenderer, ILabelProvider qualifierRenderer) {
        super(parent, elementRenderer);
        this.setSize(50, 15);
        this.setAllowDuplicates(false);
        this.fQualifierRenderer = qualifierRenderer;
    }

    public void setUpperListLabel(String label) {
        this.fUpperListLabel = label;
    }

    public void setLowerListLabel(String label) {
        this.fLowerListLabel = label;
    }

    public void setLowerListComparator(Comparator comparator) {
        this.fLowerListComparator = comparator;
    }

    public void setElements(Object[] elements) {
        this.fElements = elements;
    }

    public Control createDialogArea(Composite parent) {
        Composite contents = (Composite)super.createDialogArea(parent);
        this.createMessageArea(contents);
        this.createFilterText(contents);
        this.createLabel(contents, this.fUpperListLabel);
        this.createFilteredList(contents);
        this.createLabel(contents, this.fLowerListLabel);
        this.createLowerList(contents);
        this.setListElements(this.fElements);
        List initialSelections = this.getInitialElementSelections();
        if (!initialSelections.isEmpty()) {
            Object element = initialSelections.get(0);
            this.setSelection(new Object[]{element});
            this.setLowerSelectedElement(element);
        }
        return contents;
    }

    protected Label createLabel(Composite parent, String name) {
        if (name == null) {
            return null;
        }
        Label label = new Label(parent, 0);
        label.setText(name);
        label.setFont(parent.getFont());
        return label;
    }

    protected Table createLowerList(Composite parent) {
        Table list = new Table(parent, 2816);
        list.addListener(13, new Listener(){

            public void handleEvent(Event evt) {
                TwoPaneElementSelector.this.handleLowerSelectionChanged();
            }
        });
        list.addListener(8, new Listener(){

            public void handleEvent(Event evt) {
                TwoPaneElementSelector.this.handleDefaultSelected();
            }
        });
        list.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                TwoPaneElementSelector.this.fQualifierRenderer.dispose();
            }
        });
        GridData data = new GridData();
        data.widthHint = this.convertWidthInCharsToPixels(50);
        data.heightHint = this.convertHeightInCharsToPixels(5);
        data.grabExcessVerticalSpace = true;
        data.grabExcessHorizontalSpace = true;
        data.horizontalAlignment = 4;
        data.verticalAlignment = 4;
        list.setLayoutData((Object)data);
        list.setFont(parent.getFont());
        this.fLowerList = list;
        return list;
    }

    protected void computeResult() {
        Object[] results = new Object[]{this.getLowerSelectedElement()};
        this.setResult(Arrays.asList(results));
    }

    protected void handleDefaultSelected() {
        if (this.validateCurrentSelection() && this.getLowerSelectedElement() != null) {
            this.buttonPressed(0);
        }
    }

    protected void handleSelectionChanged() {
        this.handleUpperSelectionChanged();
    }

    private void handleUpperSelectionChanged() {
        int[] indices = this.getSelectionIndices();
        this.fLowerList.removeAll();
        int elementCount = 0;
        ArrayList<Object[]> elements = new ArrayList<Object[]>(indices.length * 5);
        int i = 0;
        while (i < indices.length) {
            Object[] foldedElements = this.getFoldedElements(indices[i]);
            if (foldedElements != null) {
                elementCount += foldedElements.length;
                elements.add(this.getFoldedElements(indices[i]));
            }
            ++i;
        }
        if (elementCount > 0) {
            this.fQualifierElements = new Object[elementCount];
            int destPos = 0;
            Iterator iterator = elements.iterator();
            while (iterator.hasNext()) {
                Object[] objects = (Object[])iterator.next();
                System.arraycopy(objects, 0, this.fQualifierElements, destPos, objects.length);
                destPos += objects.length;
            }
            this.updateLowerListWidget(this.fQualifierElements);
        } else {
            this.fQualifierElements = null;
            this.updateLowerListWidget(new Object[0]);
        }
        this.validateCurrentSelection();
    }

    private void handleLowerSelectionChanged() {
        this.validateCurrentSelection();
    }

    protected void setLowerSelectedElement(Object element) {
        if (this.fQualifierElements == null) {
            return;
        }
        int i = 0;
        while (i != this.fQualifierElements.length) {
            if (this.fQualifierElements[i].equals(element)) break;
            ++i;
        }
        if (i != this.fQualifierElements.length) {
            this.fLowerList.setSelection(i);
        }
    }

    protected Object getLowerSelectedElement() {
        int index = this.fLowerList.getSelectionIndex();
        if (index >= 0) {
            return this.fQualifierElements[index];
        }
        return null;
    }

    private void updateLowerListWidget(Object[] elements) {
        int length = elements.length;
        Object[] qualifiers = new String[length];
        int i = 0;
        while (i != length) {
            String text = this.fQualifierRenderer.getText(elements[i]);
            if (text == null) {
                text = "";
            }
            qualifiers[i] = text;
            ++i;
        }
        TwoArrayQuickSorter sorter = this.fLowerListComparator == null ? new TwoArrayQuickSorter(this.isCaseIgnored()) : new TwoArrayQuickSorter(this.fLowerListComparator);
        sorter.sort(qualifiers, elements);
        int i2 = 0;
        while (i2 != length) {
            TableItem item = new TableItem(this.fLowerList, 0);
            item.setText((String)qualifiers[i2]);
            item.setImage(this.fQualifierRenderer.getImage(elements[i2]));
            ++i2;
        }
        if (this.fLowerList.getItemCount() > 0) {
            this.fLowerList.setSelection(0);
        }
    }

    protected void handleEmptyList() {
        super.handleEmptyList();
        this.fLowerList.setEnabled(false);
    }

    protected boolean validateCurrentSelection() {
        ISelectionStatusValidator validator = this.getValidator();
        Object lowerSelection = this.getLowerSelectedElement();
        if (validator != null && lowerSelection != null) {
            IStatus status = validator.validate(new Object[]{lowerSelection});
            this.updateStatus(status);
            return status.isOK();
        }
        return super.validateCurrentSelection();
    }
}

