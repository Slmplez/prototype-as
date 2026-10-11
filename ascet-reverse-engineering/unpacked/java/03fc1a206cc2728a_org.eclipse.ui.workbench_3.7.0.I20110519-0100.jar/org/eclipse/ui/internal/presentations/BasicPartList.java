/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Util
 *  org.eclipse.jface.viewers.ColumnLabelProvider
 *  org.eclipse.jface.viewers.ColumnViewer
 *  org.eclipse.jface.viewers.ColumnViewerToolTipSupport
 *  org.eclipse.jface.viewers.ContentViewer
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 */
package org.eclipse.ui.internal.presentations;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.jface.util.Util;
import org.eclipse.jface.viewers.ColumnLabelProvider;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.ColumnViewerToolTipSupport;
import org.eclipse.jface.viewers.ContentViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.internal.presentations.AbstractTableInformationControl;
import org.eclipse.ui.internal.presentations.PresentablePart;
import org.eclipse.ui.internal.presentations.defaultpresentation.DefaultTabItem;
import org.eclipse.ui.internal.presentations.util.AbstractTabItem;
import org.eclipse.ui.internal.presentations.util.PresentablePartFolder;
import org.eclipse.ui.internal.tweaklets.TabBehaviour;
import org.eclipse.ui.internal.tweaklets.Tweaklets;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IStackPresentationSite;

public class BasicPartList
extends AbstractTableInformationControl {
    private PresentablePartFolder folder;
    private IStackPresentationSite site;

    public BasicPartList(Shell parent, int shellStyle, int treeStyle, IStackPresentationSite site, PresentablePartFolder folder) {
        super(parent, shellStyle, treeStyle);
        this.site = site;
        this.folder = folder;
    }

    protected TableViewer createTableViewer(Composite parent, int style) {
        Table table = new Table(parent, 4 | style & 0xFFFFFFFD);
        table.setLayoutData((Object)new GridData(2));
        TableViewer tableViewer = new TableViewer(table){

            protected void internalRefresh(Object element) {
                boolean usingMotif = Util.isMotif();
                try {
                    if (usingMotif) {
                        this.getTable().setRedraw(false);
                    }
                    super.internalRefresh(element);
                }
                finally {
                    if (usingMotif) {
                        this.getTable().setRedraw(true);
                    }
                }
            }
        };
        tableViewer.addFilter((ViewerFilter)new AbstractTableInformationControl.NamePatternFilter());
        tableViewer.setContentProvider((IContentProvider)new BasicStackListContentProvider());
        if (((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).sortEditorListAlphabetically()) {
            tableViewer.setComparator((ViewerComparator)new BasicStackListViewerComparator());
        }
        tableViewer.setLabelProvider((IBaseLabelProvider)new BasicStackListLabelProvider());
        ColumnViewerToolTipSupport.enableFor((ColumnViewer)tableViewer);
        return tableViewer;
    }

    public void setInput(Object information) {
        PresentablePartFolder newFolder = (PresentablePartFolder)information;
        this.inputChanged(newFolder, newFolder.getCurrent());
    }

    protected void gotoSelectedElement() {
        Object selectedElement = this.getSelectedElement();
        this.dispose();
        if (selectedElement instanceof IPresentablePart) {
            this.site.selectPart((IPresentablePart)selectedElement);
        }
    }

    protected boolean deleteSelectedElements() {
        IStructuredSelection structuredSelection = this.getSelectedElements();
        if (structuredSelection != null) {
            ArrayList<IPresentablePart> list = new ArrayList<IPresentablePart>(structuredSelection.size());
            Iterator iterator = structuredSelection.iterator();
            while (iterator.hasNext()) {
                IPresentablePart presentablePart = (IPresentablePart)iterator.next();
                list.add(presentablePart);
            }
            this.site.close(list.toArray(new IPresentablePart[list.size()]));
        }
        if (this.folder.isDisposed()) {
            this.fComposite.dispose();
            return true;
        }
        return false;
    }

    private class BasicStackListContentProvider
    implements IStructuredContentProvider {
        public void dispose() {
        }

        public Object[] getElements(Object inputElement) {
            if (BasicPartList.this.folder == null) {
                return new IPresentablePart[0];
            }
            return BasicPartList.this.folder.getPartList();
        }

        public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
            BasicPartList.this.folder = (PresentablePartFolder)newInput;
        }
    }

    private class BasicStackListLabelProvider
    extends ColumnLabelProvider {
        private Font visibleEditorsFont;
        private Font invisibleEditorsFont;
        private Color visibleEditorsColor;

        public String getText(Object element) {
            IPresentablePart presentablePart = (IPresentablePart)element;
            if (presentablePart.isDirty()) {
                return String.valueOf(DefaultTabItem.DIRTY_PREFIX) + presentablePart.getName();
            }
            return presentablePart.getName();
        }

        public Image getImage(Object element) {
            IPresentablePart presentablePart = (IPresentablePart)element;
            return presentablePart.getTitleImage();
        }

        public Font getFont(Object element) {
            IPresentablePart presentablePart = (IPresentablePart)element;
            AbstractTabItem item = BasicPartList.this.folder.getTab(presentablePart);
            Control control = BasicPartList.this.folder.getTabFolder().getControl();
            if (item != null && item.isShowing()) {
                return this.getVisibleEditorsFont(control.getDisplay(), control.getFont());
            }
            return this.getInvisibleEditorsFont(control.getDisplay(), control.getFont());
        }

        private Color getVisibleEditorsColor(Display display, RGB originalForeground, RGB originalBackground) {
            if (this.visibleEditorsColor == null) {
                this.visibleEditorsColor = ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).createVisibleEditorsColor(display, originalForeground, originalBackground);
            }
            return this.visibleEditorsColor;
        }

        private Font getVisibleEditorsFont(Display display, Font font) {
            if (this.visibleEditorsFont == null) {
                this.visibleEditorsFont = ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).createVisibleEditorsFont(display, font);
            }
            return this.visibleEditorsFont;
        }

        private Font getInvisibleEditorsFont(Display display, Font font) {
            if (this.invisibleEditorsFont == null) {
                this.invisibleEditorsFont = ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).createInvisibleEditorsFont(display, font);
            }
            return this.invisibleEditorsFont;
        }

        public void dispose() {
            super.dispose();
            if (this.visibleEditorsColor != null) {
                this.visibleEditorsColor.dispose();
            }
            if (this.visibleEditorsFont != null) {
                this.visibleEditorsFont.dispose();
            }
            if (this.invisibleEditorsFont != null) {
                this.invisibleEditorsFont.dispose();
            }
        }

        public Color getForeground(Object element) {
            IPresentablePart presentablePart = (IPresentablePart)element;
            AbstractTabItem item = BasicPartList.this.folder.getTab(presentablePart);
            Control control = BasicPartList.this.folder.getTabFolder().getControl();
            if (item != null && item.isShowing()) {
                return this.getVisibleEditorsColor(control.getDisplay(), control.getForeground().getRGB(), control.getBackground().getRGB());
            }
            return null;
        }

        public String getToolTipText(Object element) {
            if (element instanceof PresentablePart) {
                PresentablePart part = (PresentablePart)element;
                IWorkbenchPartReference reference = part.getPane().getPartReference();
                return reference.getTitleToolTip();
            }
            return null;
        }

        public boolean useNativeToolTip(Object object) {
            return true;
        }
    }

    private class BasicStackListViewerComparator
    extends ViewerComparator {
        public int compare(Viewer viewer, Object e1, Object e2) {
            String name2;
            String name1;
            int cat2;
            int cat1 = this.category(e1);
            if (cat1 != (cat2 = this.category(e2))) {
                return cat1 - cat2;
            }
            if (viewer == null || !(viewer instanceof ContentViewer)) {
                name1 = e1.toString();
                name2 = e2.toString();
            } else {
                IBaseLabelProvider prov = ((ContentViewer)viewer).getLabelProvider();
                if (prov instanceof ILabelProvider) {
                    ILabelProvider lprov = (ILabelProvider)prov;
                    name1 = lprov.getText(e1);
                    name2 = lprov.getText(e2);
                    String prefix = DefaultTabItem.DIRTY_PREFIX;
                    if (name1.startsWith(prefix)) {
                        name1 = name1.substring(prefix.length());
                    }
                    if (name2.startsWith(prefix)) {
                        name2 = name2.substring(prefix.length());
                    }
                } else {
                    name1 = e1.toString();
                    name2 = e2.toString();
                }
            }
            if (name1 == null) {
                name1 = "";
            }
            if (name2 == null) {
                name2 = "";
            }
            return this.getComparator().compare(name1, name2);
        }

        public int category(Object element) {
            IPresentablePart part = (IPresentablePart)element;
            AbstractTabItem tabItem = BasicPartList.this.folder.getTab(part);
            if (tabItem != null && tabItem.isShowing()) {
                return 1;
            }
            return 0;
        }
    }
}

