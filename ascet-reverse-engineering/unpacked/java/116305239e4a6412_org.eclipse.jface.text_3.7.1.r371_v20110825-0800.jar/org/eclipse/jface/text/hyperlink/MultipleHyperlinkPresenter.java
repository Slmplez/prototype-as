/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.jface.util.Util
 *  org.eclipse.jface.viewers.ColumnLabelProvider
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.ShellAdapter
 *  org.eclipse.swt.events.ShellEvent
 *  org.eclipse.swt.events.ShellListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.jface.text.hyperlink;

import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.text.AbstractInformationControl;
import org.eclipse.jface.text.AbstractInformationControlManager;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.IInformationControlExtension2;
import org.eclipse.jface.text.IInformationControlExtension3;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextHover;
import org.eclipse.jface.text.ITextHoverExtension;
import org.eclipse.jface.text.ITextHoverExtension2;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.IWidgetTokenKeeper;
import org.eclipse.jface.text.IWidgetTokenKeeperExtension;
import org.eclipse.jface.text.IWidgetTokenOwner;
import org.eclipse.jface.text.IWidgetTokenOwnerExtension;
import org.eclipse.jface.text.JFaceTextUtil;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.hyperlink.DefaultHyperlinkPresenter;
import org.eclipse.jface.text.hyperlink.HyperlinkMessages;
import org.eclipse.jface.text.hyperlink.IHyperlink;
import org.eclipse.jface.text.hyperlink.IHyperlinkPresenterExtension2;
import org.eclipse.jface.util.Geometry;
import org.eclipse.jface.util.Util;
import org.eclipse.jface.viewers.ColumnLabelProvider;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.ShellAdapter;
import org.eclipse.swt.events.ShellEvent;
import org.eclipse.swt.events.ShellListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;

public class MultipleHyperlinkPresenter
extends DefaultHyperlinkPresenter
implements IHyperlinkPresenterExtension2 {
    private static final boolean IS_OLD_WINDOWS;
    private static final boolean IS_MAC;
    private static final boolean IS_GTK;
    private ITextViewer fTextViewer;
    private IHyperlink[] fHyperlinks;
    private Region fSubjectRegion;
    private MultipleHyperlinkHoverManager fManager;
    private int fCursorOffset;

    static {
        int majorIndex;
        String osVersion;
        int majorVersion = Integer.MAX_VALUE;
        if (Util.isWin32() && (osVersion = System.getProperty("os.version")) != null && (majorIndex = osVersion.indexOf(46)) != -1) {
            osVersion = osVersion.substring(0, majorIndex);
            try {
                majorVersion = Integer.parseInt(osVersion);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        IS_OLD_WINDOWS = majorVersion < 6;
        IS_MAC = Util.isMac();
        IS_GTK = Util.isGtk();
    }

    public MultipleHyperlinkPresenter(IPreferenceStore store) {
        super(store);
    }

    public MultipleHyperlinkPresenter(RGB color) {
        super(color);
    }

    public void install(ITextViewer viewer) {
        super.install(viewer);
        this.fTextViewer = viewer;
        this.fManager = new MultipleHyperlinkHoverManager(new MultipleHyperlinkHover(), this.fTextViewer, this);
        this.fManager.install((Control)viewer.getTextWidget());
        this.fManager.setSizeConstraints(100, 12, false, true);
    }

    public void uninstall() {
        super.uninstall();
        if (this.fTextViewer != null) {
            this.fManager.dispose();
            this.fTextViewer = null;
        }
    }

    public boolean canShowMultipleHyperlinks() {
        return true;
    }

    public boolean canHideHyperlinks() {
        return !this.fManager.isInformationControlVisible();
    }

    public void hideHyperlinks() {
        super.hideHyperlinks();
        this.fHyperlinks = null;
    }

    public void showHyperlinks(IHyperlink[] hyperlinks) {
        this.showHyperlinks(hyperlinks, false);
    }

    public void showHyperlinks(IHyperlink[] activeHyperlinks, boolean takesFocusWhenVisible) {
        this.fManager.takesFocusWhenVisible(takesFocusWhenVisible);
        super.showHyperlinks(new IHyperlink[]{activeHyperlinks[0]});
        this.fSubjectRegion = null;
        this.fHyperlinks = activeHyperlinks;
        if (activeHyperlinks.length == 1) {
            return;
        }
        int start = activeHyperlinks[0].getHyperlinkRegion().getOffset();
        int end = start + activeHyperlinks[0].getHyperlinkRegion().getLength();
        int i = 1;
        while (i < activeHyperlinks.length) {
            int hstart = activeHyperlinks[i].getHyperlinkRegion().getOffset();
            int hend = hstart + activeHyperlinks[i].getHyperlinkRegion().getLength();
            start = Math.min(start, hstart);
            end = Math.max(end, hend);
            ++i;
        }
        this.fSubjectRegion = new Region(start, end - start);
        this.fCursorOffset = JFaceTextUtil.getOffsetForCursorLocation(this.fTextViewer);
        this.fManager.showInformation();
    }

    private void setCaret() {
        Point selectedRange = this.fTextViewer.getSelectedRange();
        if (this.fCursorOffset != -1 && (this.fSubjectRegion.getOffset() > selectedRange.x || selectedRange.x + selectedRange.y > this.fSubjectRegion.getOffset() + this.fSubjectRegion.getLength())) {
            this.fTextViewer.setSelectedRange(this.fCursorOffset, 0);
        }
    }

    static /* synthetic */ ITextViewer access$5(MultipleHyperlinkPresenter multipleHyperlinkPresenter) {
        return multipleHyperlinkPresenter.fTextViewer;
    }

    static /* synthetic */ MultipleHyperlinkHoverManager access$6(MultipleHyperlinkPresenter multipleHyperlinkPresenter) {
        return multipleHyperlinkPresenter.fManager;
    }

    private static class LinkListInformationControl
    extends AbstractInformationControl
    implements IInformationControlExtension2 {
        private final MultipleHyperlinkHoverManager fManager;
        private IHyperlink[] fInput;
        private Composite fParent;
        private Table fTable;
        private final Color fForegroundColor;
        private final Color fBackgroundColor;

        public LinkListInformationControl(Shell parentShell, MultipleHyperlinkHoverManager manager, Color foregroundColor, Color backgroundColor) {
            super(parentShell, false);
            this.fManager = manager;
            this.fForegroundColor = foregroundColor;
            this.fBackgroundColor = backgroundColor;
            this.create();
        }

        public void setInformation(String information) {
        }

        public void setInput(Object input) {
            this.fInput = (IHyperlink[])input;
            this.deferredCreateContent(this.fParent);
        }

        protected void createContent(Composite parent) {
            this.fParent = parent;
            GridLayout layout = new GridLayout();
            if (IS_OLD_WINDOWS) {
                layout.marginWidth = 0;
                layout.marginHeight = 4;
                layout.marginRight = 4;
            } else if (IS_MAC) {
                layout.marginWidth = 4;
                layout.marginHeight = 0;
                layout.marginTop = 4;
                layout.marginBottom = 3;
            } else if (IS_GTK) {
                layout.marginWidth = 4;
                layout.marginHeight = 0;
                layout.marginTop = 4;
                layout.marginBottom = 2;
            } else {
                layout.marginWidth = 4;
                layout.marginHeight = 4;
            }
            this.fParent.setLayout((Layout)layout);
            this.fParent.setForeground(this.fForegroundColor);
            this.fParent.setBackground(this.fBackgroundColor);
        }

        public Point computeSizeHint() {
            int height;
            int width;
            Point preferedSize = this.getShell().computeSize(-1, -1, true);
            Point constraints = this.getSizeConstraints();
            if (constraints == null) {
                return preferedSize;
            }
            if (this.fTable.getVerticalBar() == null || this.fTable.getHorizontalBar() == null) {
                return Geometry.min((Point)constraints, (Point)preferedSize);
            }
            int scrollBarWidth = this.fTable.getVerticalBar().getSize().x;
            int scrollBarHeight = this.fTable.getHorizontalBar().getSize().y;
            if (preferedSize.y - scrollBarHeight <= constraints.y) {
                width = preferedSize.x - scrollBarWidth;
                this.fTable.getVerticalBar().setVisible(false);
            } else {
                width = Math.min(preferedSize.x, constraints.x);
            }
            if (preferedSize.x - scrollBarWidth <= constraints.x) {
                height = preferedSize.y - scrollBarHeight;
                this.fTable.getHorizontalBar().setVisible(false);
            } else {
                height = Math.min(preferedSize.y, constraints.y);
            }
            return new Point(width, height);
        }

        private void deferredCreateContent(Composite parent) {
            this.fTable = new Table(parent, 65540);
            this.fTable.setLinesVisible(false);
            this.fTable.setHeaderVisible(false);
            this.fTable.setForeground(this.fForegroundColor);
            this.fTable.setBackground(this.fBackgroundColor);
            this.fTable.setFont(JFaceResources.getDialogFont());
            GridData data = new GridData(1, 1, true, true);
            this.fTable.setLayoutData((Object)data);
            TableViewer viewer = new TableViewer(this.fTable);
            viewer.setContentProvider((IContentProvider)new LinkContentProvider());
            viewer.setLabelProvider((IBaseLabelProvider)new LinkLabelProvider());
            viewer.setInput((Object)this.fInput);
            this.fTable.setSelection(0);
            this.registerTableListeners();
            this.getShell().addShellListener((ShellListener)new ShellAdapter(this, viewer){
                final /* synthetic */ LinkListInformationControl this$1;
                private final /* synthetic */ TableViewer val$viewer;
                {
                    this.this$1 = linkListInformationControl;
                    this.val$viewer = tableViewer;
                }

                public void shellActivated(ShellEvent e) {
                    if (this.val$viewer.getTable().getSelectionCount() == 0) {
                        this.val$viewer.getTable().setSelection(0);
                    }
                    this.val$viewer.getTable().setFocus();
                }
            });
        }

        private void registerTableListeners() {
            this.fTable.addMouseMoveListener(new MouseMoveListener(this){
                TableItem fLastItem;
                final /* synthetic */ LinkListInformationControl this$1;
                {
                    this.this$1 = linkListInformationControl;
                    this.fLastItem = null;
                }

                public void mouseMove(MouseEvent e) {
                    if (LinkListInformationControl.access$0(this.this$1).equals(e.getSource())) {
                        TableItem o;
                        if (this.fLastItem == null ^ (o = LinkListInformationControl.access$0(this.this$1).getItem(new Point(e.x, e.y))) == null) {
                            LinkListInformationControl.access$0(this.this$1).setCursor(o == null ? null : LinkListInformationControl.access$0(this.this$1).getDisplay().getSystemCursor(21));
                        }
                        if (o instanceof TableItem) {
                            int index;
                            TableItem item = o;
                            if (!o.equals(this.fLastItem)) {
                                this.fLastItem = o;
                                LinkListInformationControl.access$0(this.this$1).setSelection(new TableItem[]{this.fLastItem});
                            } else if (e.y < LinkListInformationControl.access$0(this.this$1).getItemHeight() / 4) {
                                int index2 = LinkListInformationControl.access$0(this.this$1).indexOf(item);
                                if (index2 > 0) {
                                    this.fLastItem = LinkListInformationControl.access$0(this.this$1).getItem(index2 - 1);
                                    LinkListInformationControl.access$0(this.this$1).setSelection(new TableItem[]{this.fLastItem});
                                }
                            } else if (e.y > LinkListInformationControl.access$0((LinkListInformationControl)this.this$1).getBounds().height - LinkListInformationControl.access$0(this.this$1).getItemHeight() / 4 && (index = LinkListInformationControl.access$0(this.this$1).indexOf(item)) < LinkListInformationControl.access$0(this.this$1).getItemCount() - 1) {
                                this.fLastItem = LinkListInformationControl.access$0(this.this$1).getItem(index + 1);
                                LinkListInformationControl.access$0(this.this$1).setSelection(new TableItem[]{this.fLastItem});
                            }
                        } else if (o == null) {
                            this.fLastItem = null;
                        }
                    }
                }
            });
            this.fTable.addSelectionListener((SelectionListener)new SelectionAdapter(this){
                final /* synthetic */ LinkListInformationControl this$1;
                {
                    this.this$1 = linkListInformationControl;
                }

                public void widgetDefaultSelected(SelectionEvent e) {
                    LinkListInformationControl.access$1(this.this$1);
                }
            });
            this.fTable.addMouseListener((MouseListener)new MouseAdapter(this){
                final /* synthetic */ LinkListInformationControl this$1;
                {
                    this.this$1 = linkListInformationControl;
                }

                public void mouseUp(MouseEvent e) {
                    if (LinkListInformationControl.access$0(this.this$1).getSelectionCount() < 1) {
                        return;
                    }
                    if (e.button != 1) {
                        return;
                    }
                    if (LinkListInformationControl.access$0(this.this$1).equals(e.getSource())) {
                        TableItem o = LinkListInformationControl.access$0(this.this$1).getItem(new Point(e.x, e.y));
                        TableItem selection = LinkListInformationControl.access$0(this.this$1).getSelection()[0];
                        if (selection.equals(o)) {
                            LinkListInformationControl.access$1(this.this$1);
                        }
                    }
                }
            });
            this.fTable.addTraverseListener(new TraverseListener(this){
                final /* synthetic */ LinkListInformationControl this$1;
                {
                    this.this$1 = linkListInformationControl;
                }

                public void keyTraversed(TraverseEvent e) {
                    if (e.keyCode == 27) {
                        LinkListInformationControl.access$2(this.this$1).hideInformationControl();
                    }
                }
            });
        }

        public boolean hasContents() {
            return true;
        }

        private void openSelectedLink() {
            if (this.fTable.getSelectionCount() < 1) {
                return;
            }
            TableItem selection = this.fTable.getSelection()[0];
            IHyperlink link = (IHyperlink)selection.getData();
            this.fManager.hideInformationControl();
            this.fManager.setCaret();
            link.open();
        }

        static /* synthetic */ Table access$0(LinkListInformationControl linkListInformationControl) {
            return linkListInformationControl.fTable;
        }

        static /* synthetic */ void access$1(LinkListInformationControl linkListInformationControl) {
            linkListInformationControl.openSelectedLink();
        }

        static /* synthetic */ MultipleHyperlinkHoverManager access$2(LinkListInformationControl linkListInformationControl) {
            return linkListInformationControl.fManager;
        }

        private static final class LinkContentProvider
        implements IStructuredContentProvider {
            private LinkContentProvider() {
            }

            public Object[] getElements(Object inputElement) {
                return (Object[])inputElement;
            }

            public void dispose() {
            }

            public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
            }
        }

        private static final class LinkLabelProvider
        extends ColumnLabelProvider {
            private LinkLabelProvider() {
            }

            public String getText(Object element) {
                IHyperlink link = (IHyperlink)element;
                String text = link.getHyperlinkText();
                if (text != null) {
                    return text;
                }
                return HyperlinkMessages.getString("LinkListInformationControl.unknownLink");
            }
        }
    }

    private class MultipleHyperlinkHover
    implements ITextHover,
    ITextHoverExtension,
    ITextHoverExtension2 {
        private MultipleHyperlinkHover() {
        }

        public String getHoverInfo(ITextViewer textViewer, IRegion hoverRegion) {
            return null;
        }

        public IRegion getHoverRegion(ITextViewer textViewer, int offset) {
            return MultipleHyperlinkPresenter.this.fSubjectRegion;
        }

        public Object getHoverInfo2(ITextViewer textViewer, IRegion hoverRegion) {
            return MultipleHyperlinkPresenter.this.fHyperlinks;
        }

        public IInformationControlCreator getHoverControlCreator() {
            return new IInformationControlCreator(this){
                final /* synthetic */ MultipleHyperlinkHover this$1;
                {
                    this.this$1 = multipleHyperlinkHover;
                }

                public IInformationControl createInformationControl(Shell parent) {
                    Color foregroundColor = MultipleHyperlinkPresenter.access$5(MultipleHyperlinkHover.access$1(this.this$1)).getTextWidget().getForeground();
                    Color backgroundColor = MultipleHyperlinkPresenter.access$5(MultipleHyperlinkHover.access$1(this.this$1)).getTextWidget().getBackground();
                    return new LinkListInformationControl(parent, MultipleHyperlinkPresenter.access$6(MultipleHyperlinkHover.access$1(this.this$1)), foregroundColor, backgroundColor);
                }
            };
        }

        static /* synthetic */ MultipleHyperlinkPresenter access$1(MultipleHyperlinkHover multipleHyperlinkHover) {
            return multipleHyperlinkHover.MultipleHyperlinkPresenter.this;
        }
    }

    private static class MultipleHyperlinkHoverManager
    extends AbstractInformationControlManager
    implements IWidgetTokenKeeper,
    IWidgetTokenKeeperExtension {
        private static final int WIDGET_TOKEN_PRIORITY = 1;
        private final MultipleHyperlinkHover fHover;
        private final ITextViewer fTextViewer;
        private final MultipleHyperlinkPresenter fHyperlinkPresenter;
        private final Closer fCloser;
        private boolean fIsControlVisible;

        public MultipleHyperlinkHoverManager(MultipleHyperlinkHover hover, ITextViewer viewer, MultipleHyperlinkPresenter hyperlinkPresenter) {
            super(hover.getHoverControlCreator());
            this.fHover = hover;
            this.fTextViewer = viewer;
            this.fHyperlinkPresenter = hyperlinkPresenter;
            this.fCloser = new Closer();
            this.setCloser(this.fCloser);
            this.fIsControlVisible = false;
        }

        protected void computeInformation() {
            IRegion region = this.fHover.getHoverRegion(this.fTextViewer, -1);
            if (region == null) {
                this.setInformation(null, null);
                return;
            }
            Rectangle area = JFaceTextUtil.computeArea(region, this.fTextViewer);
            if (area == null || area.isEmpty()) {
                this.setInformation(null, null);
                return;
            }
            Object information = this.fHover.getHoverInfo2(this.fTextViewer, region);
            this.setCustomInformationControlCreator(this.fHover.getHoverControlCreator());
            this.setInformation(information, area);
        }

        protected Point computeInformationControlLocation(Rectangle subjectArea, Point controlSize) {
            Point result = super.computeInformationControlLocation(subjectArea, controlSize);
            Point cursorLocation = this.fTextViewer.getTextWidget().getDisplay().getCursorLocation();
            if (this.isTakingFocusWhenVisible() || cursorLocation.x <= result.x + controlSize.x) {
                return result;
            }
            result.x = cursorLocation.x + 20 - controlSize.x;
            return result;
        }

        protected void showInformationControl(Rectangle subjectArea) {
            if (this.fTextViewer instanceof IWidgetTokenOwnerExtension) {
                if (((IWidgetTokenOwnerExtension)((Object)this.fTextViewer)).requestWidgetToken(this, 1)) {
                    super.showInformationControl(subjectArea);
                    this.fIsControlVisible = true;
                }
            } else if (this.fTextViewer instanceof IWidgetTokenOwner) {
                if (((IWidgetTokenOwner)((Object)this.fTextViewer)).requestWidgetToken(this)) {
                    super.showInformationControl(subjectArea);
                    this.fIsControlVisible = true;
                }
            } else {
                super.showInformationControl(subjectArea);
                this.fIsControlVisible = true;
            }
        }

        private void setCaret() {
            this.fHyperlinkPresenter.setCaret();
        }

        protected void hideInformationControl() {
            super.hideInformationControl();
            if (this.fTextViewer instanceof IWidgetTokenOwner) {
                ((IWidgetTokenOwner)((Object)this.fTextViewer)).releaseWidgetToken(this);
            }
            this.fIsControlVisible = false;
            this.fHyperlinkPresenter.hideHyperlinks();
        }

        public void disposeInformationControl() {
            super.disposeInformationControl();
            if (this.fTextViewer instanceof IWidgetTokenOwner) {
                ((IWidgetTokenOwner)((Object)this.fTextViewer)).releaseWidgetToken(this);
            }
            this.fIsControlVisible = false;
            this.fHyperlinkPresenter.hideHyperlinks();
        }

        public boolean requestWidgetToken(IWidgetTokenOwner owner) {
            this.hideInformationControl();
            return true;
        }

        public boolean requestWidgetToken(IWidgetTokenOwner owner, int priority) {
            if (priority < 1) {
                return false;
            }
            this.hideInformationControl();
            return true;
        }

        public boolean setFocus(IWidgetTokenOwner owner) {
            return this.isTakingFocusWhenVisible();
        }

        public boolean isInformationControlVisible() {
            return this.fIsControlVisible;
        }

        private class Closer
        implements AbstractInformationControlManager.IInformationControlCloser,
        Listener,
        KeyListener,
        MouseListener {
            private Control fSubjectControl;
            private Display fDisplay;
            private IInformationControl fControl;
            private Rectangle fSubjectArea;

            private Closer() {
            }

            public void setInformationControl(IInformationControl control) {
                this.fControl = control;
            }

            public void setSubjectControl(Control subject) {
                this.fSubjectControl = subject;
            }

            public void start(Rectangle subjectArea) {
                this.fSubjectArea = subjectArea;
                this.fDisplay = this.fSubjectControl.getDisplay();
                if (!this.fDisplay.isDisposed()) {
                    this.fDisplay.addFilter(16, (Listener)this);
                    this.fDisplay.addFilter(5, (Listener)this);
                    MultipleHyperlinkHoverManager.this.fTextViewer.getTextWidget().addKeyListener((KeyListener)this);
                    MultipleHyperlinkHoverManager.this.fTextViewer.getTextWidget().addMouseListener((MouseListener)this);
                }
            }

            public void stop() {
                if (this.fDisplay != null && !this.fDisplay.isDisposed()) {
                    this.fDisplay.removeFilter(16, (Listener)this);
                    this.fDisplay.removeFilter(5, (Listener)this);
                    MultipleHyperlinkHoverManager.this.fTextViewer.getTextWidget().removeKeyListener((KeyListener)this);
                    MultipleHyperlinkHoverManager.this.fTextViewer.getTextWidget().removeMouseListener((MouseListener)this);
                }
                this.fSubjectArea = null;
            }

            public void handleEvent(Event event) {
                switch (event.type) {
                    case 16: {
                        if (this.fControl.isFocusControl()) break;
                        MultipleHyperlinkHoverManager.this.disposeInformationControl();
                        break;
                    }
                    case 5: {
                        this.handleMouseMove(event);
                    }
                }
            }

            private void handleMouseMove(Event event) {
                if (!(event.widget instanceof Control)) {
                    return;
                }
                if (this.fControl.isFocusControl()) {
                    return;
                }
                Control eventControl = (Control)event.widget;
                Point mouseLoc = event.display.map(eventControl, this.fSubjectControl, event.x, event.y);
                if (this.fSubjectArea.contains(mouseLoc)) {
                    return;
                }
                if (this.inKeepUpZone(mouseLoc.x, mouseLoc.y, ((IInformationControlExtension3)((Object)this.fControl)).getBounds())) {
                    return;
                }
                if (!MultipleHyperlinkHoverManager.this.isTakingFocusWhenVisible()) {
                    MultipleHyperlinkHoverManager.this.hideInformationControl();
                }
            }

            private boolean inKeepUpZone(int x, int y, Rectangle controlBounds) {
                if (this.fSubjectArea.contains(x, y)) {
                    return true;
                }
                Rectangle iControlBounds = this.fSubjectControl.getDisplay().map(null, this.fSubjectControl, controlBounds);
                Rectangle totalBounds = Geometry.copy((Rectangle)iControlBounds);
                if (totalBounds.contains(x, y)) {
                    return true;
                }
                int keepUpY = this.fSubjectArea.y + this.fSubjectArea.height;
                Rectangle alsoKeepUp = new Rectangle(this.fSubjectArea.x, keepUpY, this.fSubjectArea.width, totalBounds.y - keepUpY);
                return alsoKeepUp.contains(x, y);
            }

            public void keyPressed(KeyEvent e) {
                MultipleHyperlinkHoverManager.this.hideInformationControl();
            }

            public void keyReleased(KeyEvent e) {
                if (!MultipleHyperlinkHoverManager.this.isTakingFocusWhenVisible()) {
                    MultipleHyperlinkHoverManager.this.hideInformationControl();
                }
            }

            public void mouseDoubleClick(MouseEvent e) {
            }

            public void mouseDown(MouseEvent e) {
            }

            public void mouseUp(MouseEvent e) {
                MultipleHyperlinkHoverManager.this.hideInformationControl();
            }
        }
    }
}

