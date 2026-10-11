/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DefaultPositionUpdater
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.DocumentRewriteSession
 *  org.eclipse.jface.text.DocumentRewriteSessionEvent
 *  org.eclipse.jface.text.DocumentRewriteSessionType
 *  org.eclipse.jface.text.FindReplaceDocumentAdapter
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentExtension
 *  org.eclipse.jface.text.IDocumentExtension2
 *  org.eclipse.jface.text.IDocumentExtension4
 *  org.eclipse.jface.text.IDocumentInformationMapping
 *  org.eclipse.jface.text.IDocumentInformationMappingExtension2
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.IDocumentRewriteSessionListener
 *  org.eclipse.jface.text.IPositionUpdater
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ISlaveDocumentManager
 *  org.eclipse.jface.text.ITypedRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.SlaveDocumentEvent
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.jface.text.projection.ChildDocument
 *  org.eclipse.jface.text.projection.ChildDocumentManager
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.jface.util.OpenStrategy
 *  org.eclipse.jface.viewers.IPostSelectionProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.custom.LineBackgroundEvent
 *  org.eclipse.swt.custom.LineBackgroundListener
 *  org.eclipse.swt.custom.MovementEvent
 *  org.eclipse.swt.custom.MovementListener
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.custom.StyledTextContent
 *  org.eclipse.swt.custom.StyledTextPrintOptions
 *  org.eclipse.swt.custom.VerifyKeyListener
 *  org.eclipse.swt.dnd.Clipboard
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.events.VerifyEvent
 *  org.eclipse.swt.events.VerifyListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.printing.PrintDialog
 *  org.eclipse.swt.printing.Printer
 *  org.eclipse.swt.printing.PrinterData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.ScrollBar
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jface.text;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.PatternSyntaxException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.internal.text.NonDeletingPositionUpdater;
import org.eclipse.jface.internal.text.SelectionProcessor;
import org.eclipse.jface.internal.text.StickyHoverManager;
import org.eclipse.jface.text.AbstractInformationControlManager;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.BlockTextSelection;
import org.eclipse.jface.text.DefaultDocumentAdapter;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.jface.text.DocumentCommand;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.DocumentRewriteSession;
import org.eclipse.jface.text.DocumentRewriteSessionEvent;
import org.eclipse.jface.text.DocumentRewriteSessionType;
import org.eclipse.jface.text.FindReplaceDocumentAdapter;
import org.eclipse.jface.text.IAutoEditStrategy;
import org.eclipse.jface.text.IAutoIndentStrategy;
import org.eclipse.jface.text.IBlockTextSelection;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentAdapter;
import org.eclipse.jface.text.IDocumentAdapterExtension;
import org.eclipse.jface.text.IDocumentExtension;
import org.eclipse.jface.text.IDocumentExtension2;
import org.eclipse.jface.text.IDocumentExtension4;
import org.eclipse.jface.text.IDocumentInformationMapping;
import org.eclipse.jface.text.IDocumentInformationMappingExtension2;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IDocumentRewriteSessionListener;
import org.eclipse.jface.text.IEditingSupport;
import org.eclipse.jface.text.IEditingSupportRegistry;
import org.eclipse.jface.text.IEventConsumer;
import org.eclipse.jface.text.IFindReplaceTarget;
import org.eclipse.jface.text.IFindReplaceTargetExtension;
import org.eclipse.jface.text.IFindReplaceTargetExtension3;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.IPainter;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.IRewriteTarget;
import org.eclipse.jface.text.ISlaveDocumentManager;
import org.eclipse.jface.text.ITextDoubleClickStrategy;
import org.eclipse.jface.text.ITextHover;
import org.eclipse.jface.text.ITextInputListener;
import org.eclipse.jface.text.ITextListener;
import org.eclipse.jface.text.ITextOperationTarget;
import org.eclipse.jface.text.ITextOperationTargetExtension;
import org.eclipse.jface.text.ITextPresentationListener;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension;
import org.eclipse.jface.text.ITextViewerExtension2;
import org.eclipse.jface.text.ITextViewerExtension4;
import org.eclipse.jface.text.ITextViewerExtension6;
import org.eclipse.jface.text.ITextViewerExtension7;
import org.eclipse.jface.text.ITextViewerExtension8;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.IUndoManager;
import org.eclipse.jface.text.IViewportListener;
import org.eclipse.jface.text.IWidgetTokenKeeper;
import org.eclipse.jface.text.IWidgetTokenKeeperExtension;
import org.eclipse.jface.text.IWidgetTokenOwner;
import org.eclipse.jface.text.IWidgetTokenOwnerExtension;
import org.eclipse.jface.text.JFaceTextMessages;
import org.eclipse.jface.text.JFaceTextUtil;
import org.eclipse.jface.text.MarkSelection;
import org.eclipse.jface.text.PaintManager;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.SlaveDocumentEvent;
import org.eclipse.jface.text.TextEvent;
import org.eclipse.jface.text.TextPresentation;
import org.eclipse.jface.text.TextSelection;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.TextViewerHoverManager;
import org.eclipse.jface.text.hyperlink.HyperlinkManager;
import org.eclipse.jface.text.hyperlink.IHyperlinkDetector;
import org.eclipse.jface.text.hyperlink.IHyperlinkDetectorExtension;
import org.eclipse.jface.text.hyperlink.IHyperlinkPresenter;
import org.eclipse.jface.text.projection.ChildDocument;
import org.eclipse.jface.text.projection.ChildDocumentManager;
import org.eclipse.jface.util.Geometry;
import org.eclipse.jface.util.OpenStrategy;
import org.eclipse.jface.viewers.IPostSelectionProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.LineBackgroundEvent;
import org.eclipse.swt.custom.LineBackgroundListener;
import org.eclipse.swt.custom.MovementEvent;
import org.eclipse.swt.custom.MovementListener;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.StyledTextContent;
import org.eclipse.swt.custom.StyledTextPrintOptions;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.events.VerifyListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.printing.PrintDialog;
import org.eclipse.swt.printing.Printer;
import org.eclipse.swt.printing.PrinterData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.text.edits.TextEdit;

public class TextViewer
extends Viewer
implements ITextViewer,
ITextViewerExtension,
ITextViewerExtension2,
ITextViewerExtension4,
ITextViewerExtension6,
ITextViewerExtension7,
ITextViewerExtension8,
IEditingSupportRegistry,
ITextOperationTarget,
ITextOperationTargetExtension,
IWidgetTokenOwner,
IWidgetTokenOwnerExtension,
IPostSelectionProvider {
    public static final boolean TRACE_ERRORS = false;
    private static final boolean TRACE_DOUBLE_CLICK = false;
    private static final boolean REDRAW_BUG_158746 = true;
    private static final int TEXT_HOVER_WIDTH_CHARS = 100;
    private static final int TEXT_HOVER_HEIGHT_CHARS = 12;
    protected static final int SCROLLER = 1;
    protected static final int MOUSE = 2;
    protected static final int MOUSE_END = 3;
    protected static final int KEY = 4;
    protected static final int RESIZE = 5;
    protected static final int INTERNAL = 6;
    protected static final String SHIFTING = "__TextViewer_shifting";
    private static final String SELECTION_POSITION_CATEGORY = "_textviewer_selection_category";
    private static PrinterData fgPrinterData = null;
    private StyledText fTextWidget;
    private IDocument fDocument;
    private IDocument fVisibleDocument;
    private IDocumentAdapter fDocumentAdapter;
    private ISlaveDocumentManager fSlaveDocumentManager;
    private TextDoubleClickStrategyConnector fDoubleClickStrategyConnector;
    private ViewportGuard fViewportGuard;
    private int fTopInset = 0;
    private WidgetCommand fWidgetCommand = new WidgetCommand();
    private ScrollBar fScroller;
    private VisibleDocumentListener fVisibleDocumentListener = new VisibleDocumentListener();
    private TextVerifyListener fVerifyListener = new TextVerifyListener();
    private DocumentCommand fDocumentCommand = new DocumentCommand();
    private IFindReplaceTarget fFindReplaceTarget;
    private TextViewerHoverManager fTextHoverManager;
    private IWidgetTokenKeeper fWidgetTokenKeeper;
    private VerifyKeyListenersManager fVerifyKeyListenersManager = new VerifyKeyListenersManager();
    protected Position fMarkPosition;
    private final String MARK_POSITION_CATEGORY = "__mark_category_" + this.hashCode();
    private final IPositionUpdater fMarkPositionUpdater = new DefaultPositionUpdater(this.MARK_POSITION_CATEGORY);
    private int fRedrawCounter = 0;
    private IRewriteTarget fRewriteTarget;
    private CursorListener fCursorListener;
    private IRegion fLastSentSelectionChange;
    private List fPostSelectionChangedListeners;
    private final int[] fNumberOfPostSelectionChangedEvents = new int[1];
    private IRegion fLastSentPostSelectionChange;
    private Set fEditorHelpers = new HashSet();
    private DocumentRewriteSessionListener fDocumentRewriteSessionListener = new DocumentRewriteSessionListener();
    protected boolean fIgnoreAutoIndent = false;
    protected Map fIndentChars;
    protected Map fDefaultPrefixChars;
    protected Map fDoubleClickStrategies;
    protected IUndoManager fUndoManager;
    protected Map fAutoIndentStrategies;
    protected Map fTextHovers;
    protected List fViewportListeners;
    protected int fLastTopPixel;
    protected List fTextListeners;
    protected List fTextInputListeners;
    protected IEventConsumer fEventConsumer;
    protected boolean fReplaceTextPresentation = false;
    protected IInformationControlCreator fHoverControlCreator;
    protected IDocumentInformationMapping fInformationMapping;
    protected PaintManager fPaintManager;
    protected String fPartitioning;
    protected List fTextPresentationListeners;
    protected FindReplaceDocumentAdapter fFindReplaceDocumentAdapter;
    protected IHyperlinkDetector[] fHyperlinkDetectors;
    protected IHyperlinkPresenter fHyperlinkPresenter;
    protected HyperlinkManager fHyperlinkManager;
    protected int fHyperlinkStateMask;
    private ViewerState fViewerState;
    private IAutoEditStrategy fTabsToSpacesConverter;
    private int fLastEventTime;

    private void print(MovementEvent e) {
        System.out.println("line offset: " + e.lineOffset);
        System.out.println("line: " + e.lineText);
        System.out.println("type: " + e.movement);
        System.out.println("offset: " + e.offset);
        System.out.println("newOffset: " + e.newOffset);
    }

    protected TextViewer() {
    }

    public TextViewer(Composite parent, int styles) {
        this.createControl(parent, styles);
    }

    protected StyledText createTextWidget(Composite parent, int styles) {
        StyledText styledText = new StyledText(parent, styles);
        styledText.setLeftMargin(Math.max(styledText.getLeftMargin(), 2));
        return styledText;
    }

    protected IDocumentAdapter createDocumentAdapter() {
        return new DefaultDocumentAdapter();
    }

    protected void createControl(Composite parent, int styles) {
        this.fTextWidget = this.createTextWidget(parent, styles);
        this.fTextWidget.addListener(37, new Listener(){

            public void handleEvent(Event event) {
                if ((event.stateMask & SWT.MOD1) == 0) {
                    return;
                }
                int topIndex = TextViewer.this.fTextWidget.getTopIndex();
                int bottomIndex = JFaceTextUtil.getBottomIndex(TextViewer.this.fTextWidget);
                if (event.count > 0) {
                    TextViewer.this.fTextWidget.setTopIndex(2 * topIndex - bottomIndex);
                } else {
                    TextViewer.this.fTextWidget.setTopIndex(bottomIndex);
                }
                TextViewer.this.updateViewportListeners(6);
            }
        });
        this.fTextWidget.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                TextViewer.this.handleDispose();
            }
        });
        this.fTextWidget.setFont(parent.getFont());
        this.fTextWidget.setDoubleClickEnabled(true);
        this.fTextWidget.addTraverseListener(new TraverseListener(){

            public void keyTraversed(TraverseEvent e) {
                if (131072 == e.stateMask && '\t' == e.character) {
                    e.doit = false;
                }
            }
        });
        this.fTopInset = -this.fTextWidget.computeTrim((int)0, (int)0, (int)0, (int)0).y;
        this.fVerifyListener.forward(true);
        this.fTextWidget.addVerifyListener((VerifyListener)this.fVerifyListener);
        this.fTextWidget.addSelectionListener(new SelectionListener(){

            public void widgetDefaultSelected(SelectionEvent event) {
                TextViewer.this.selectionChanged(event.x, event.y - event.x);
            }

            public void widgetSelected(SelectionEvent event) {
                TextViewer.this.selectionChanged(event.x, event.y - event.x);
            }
        });
        this.fCursorListener = new CursorListener();
        this.fCursorListener.install();
        this.initializeViewportUpdate();
    }

    public Control getControl() {
        return this.fTextWidget;
    }

    public void activatePlugins() {
        if (this.fDoubleClickStrategies != null && !this.fDoubleClickStrategies.isEmpty() && this.fDoubleClickStrategyConnector == null) {
            this.fDoubleClickStrategyConnector = new TextDoubleClickStrategyConnector();
            this.fTextWidget.addWordMovementListener((MovementListener)this.fDoubleClickStrategyConnector);
            this.fTextWidget.addMouseListener((MouseListener)this.fDoubleClickStrategyConnector);
        }
        this.ensureHoverControlManagerInstalled();
        this.ensureHyperlinkManagerInstalled();
        if (this.fUndoManager != null) {
            this.fUndoManager.connect(this);
            this.fUndoManager.reset();
        }
    }

    private void ensureHoverControlManagerInstalled() {
        if (this.fTextHovers != null && !this.fTextHovers.isEmpty() && this.fHoverControlCreator != null && this.fTextHoverManager == null) {
            this.fTextHoverManager = new TextViewerHoverManager(this, this.fHoverControlCreator);
            this.fTextHoverManager.install((Control)this.getTextWidget());
            this.fTextHoverManager.setSizeConstraints(100, 12, false, true);
            this.fTextHoverManager.setInformationControlReplacer(new StickyHoverManager(this));
        }
    }

    public void resetPlugins() {
        if (this.fUndoManager != null) {
            this.fUndoManager.reset();
        }
    }

    protected void handleDispose() {
        this.setDocument(null);
        if (this.fPaintManager != null) {
            this.fPaintManager.dispose();
            this.fPaintManager = null;
        }
        this.removeViewPortUpdate();
        this.fViewportGuard = null;
        if (this.fViewportListeners != null) {
            this.fViewportListeners.clear();
            this.fViewportListeners = null;
        }
        if (this.fTextListeners != null) {
            this.fTextListeners.clear();
            this.fTextListeners = null;
        }
        if (this.fTextInputListeners != null) {
            this.fTextInputListeners.clear();
            this.fTextInputListeners = null;
        }
        if (this.fPostSelectionChangedListeners != null) {
            this.fPostSelectionChangedListeners.clear();
            this.fPostSelectionChangedListeners = null;
        }
        if (this.fAutoIndentStrategies != null) {
            this.fAutoIndentStrategies.clear();
            this.fAutoIndentStrategies = null;
        }
        if (this.fUndoManager != null) {
            this.fUndoManager.disconnect();
            this.fUndoManager = null;
        }
        if (this.fDoubleClickStrategies != null) {
            this.fDoubleClickStrategies.clear();
            this.fDoubleClickStrategies = null;
        }
        if (this.fTextHovers != null) {
            this.fTextHovers.clear();
            this.fTextHovers = null;
        }
        this.fDoubleClickStrategyConnector = null;
        if (this.fTextHoverManager != null) {
            this.fTextHoverManager.dispose();
            this.fTextHoverManager = null;
        }
        if (this.fVisibleDocumentListener != null) {
            if (this.fVisibleDocument != null) {
                this.fVisibleDocument.removeDocumentListener((IDocumentListener)this.fVisibleDocumentListener);
            }
            this.fVisibleDocumentListener = null;
        }
        if (this.fDocumentAdapter != null) {
            this.fDocumentAdapter.setDocument(null);
            this.fDocumentAdapter = null;
        }
        if (this.fSlaveDocumentManager != null) {
            if (this.fVisibleDocument != null) {
                this.fSlaveDocumentManager.freeSlaveDocument(this.fVisibleDocument);
            }
            this.fSlaveDocumentManager = null;
        }
        if (this.fCursorListener != null) {
            this.fCursorListener.uninstall();
            this.fCursorListener = null;
        }
        if (this.fHyperlinkManager != null) {
            this.fHyperlinkManager.uninstall();
            this.fHyperlinkManager = null;
        }
        this.fHyperlinkDetectors = null;
        this.fVisibleDocument = null;
        this.fDocument = null;
        this.fScroller = null;
        this.fTextWidget = null;
    }

    public StyledText getTextWidget() {
        return this.fTextWidget;
    }

    protected int getEmptySelectionChangedEventDelay() {
        return OpenStrategy.getPostSelectionDelay();
    }

    public void setAutoIndentStrategy(IAutoIndentStrategy strategy, String contentType) {
        this.setAutoEditStrategies(new IAutoEditStrategy[]{strategy}, contentType);
    }

    protected final void setAutoEditStrategies(IAutoEditStrategy[] strategies, String contentType) {
        if (this.fAutoIndentStrategies == null) {
            this.fAutoIndentStrategies = new HashMap();
        }
        ArrayList<IAutoEditStrategy> autoEditStrategies = (ArrayList<IAutoEditStrategy>)this.fAutoIndentStrategies.get(contentType);
        if (strategies == null) {
            if (autoEditStrategies == null) {
                return;
            }
            this.fAutoIndentStrategies.put(contentType, null);
        } else {
            if (autoEditStrategies == null) {
                autoEditStrategies = new ArrayList<IAutoEditStrategy>();
                this.fAutoIndentStrategies.put(contentType, autoEditStrategies);
            }
            autoEditStrategies.clear();
            autoEditStrategies.addAll(Arrays.asList(strategies));
        }
    }

    public void prependAutoEditStrategy(IAutoEditStrategy strategy, String contentType) {
        ArrayList<IAutoEditStrategy> autoEditStrategies;
        if (strategy == null || contentType == null) {
            throw new IllegalArgumentException();
        }
        if (this.fAutoIndentStrategies == null) {
            this.fAutoIndentStrategies = new HashMap();
        }
        if ((autoEditStrategies = (ArrayList<IAutoEditStrategy>)this.fAutoIndentStrategies.get(contentType)) == null) {
            autoEditStrategies = new ArrayList<IAutoEditStrategy>();
            this.fAutoIndentStrategies.put(contentType, autoEditStrategies);
        }
        autoEditStrategies.add(0, strategy);
    }

    public void removeAutoEditStrategy(IAutoEditStrategy strategy, String contentType) {
        if (this.fAutoIndentStrategies == null) {
            return;
        }
        List autoEditStrategies = (List)this.fAutoIndentStrategies.get(contentType);
        if (autoEditStrategies == null) {
            return;
        }
        Iterator iterator = autoEditStrategies.iterator();
        while (iterator.hasNext()) {
            if (!iterator.next().equals(strategy)) continue;
            iterator.remove();
            break;
        }
        if (autoEditStrategies.isEmpty()) {
            this.fAutoIndentStrategies.put(contentType, null);
        }
    }

    public void setEventConsumer(IEventConsumer consumer) {
        this.fEventConsumer = consumer;
    }

    public void setIndentPrefixes(String[] indentPrefixes, String contentType) {
        int i = -1;
        boolean ok = indentPrefixes != null;
        while (ok && ++i < indentPrefixes.length) {
            boolean bl = ok = indentPrefixes[i] != null;
        }
        if (ok) {
            if (this.fIndentChars == null) {
                this.fIndentChars = new HashMap();
            }
            this.fIndentChars.put(contentType, indentPrefixes);
        } else if (this.fIndentChars != null) {
            this.fIndentChars.remove(contentType);
        }
    }

    public int getTopInset() {
        return this.fTopInset;
    }

    public boolean isEditable() {
        if (this.fTextWidget == null) {
            return false;
        }
        return this.fTextWidget.getEditable();
    }

    public void setEditable(boolean editable) {
        if (this.fTextWidget != null) {
            this.fTextWidget.setEditable(editable);
        }
    }

    public void setDefaultPrefixes(String[] defaultPrefixes, String contentType) {
        if (defaultPrefixes != null && defaultPrefixes.length > 0) {
            if (this.fDefaultPrefixChars == null) {
                this.fDefaultPrefixChars = new HashMap();
            }
            this.fDefaultPrefixChars.put(contentType, defaultPrefixes);
        } else if (this.fDefaultPrefixChars != null) {
            this.fDefaultPrefixChars.remove(contentType);
        }
    }

    public void setUndoManager(IUndoManager undoManager) {
        this.fUndoManager = undoManager;
    }

    public IUndoManager getUndoManager() {
        return this.fUndoManager;
    }

    public void setTextHover(ITextHover hover, String contentType) {
        this.setTextHover(hover, contentType, 255);
    }

    public void setTextHover(ITextHover hover, String contentType, int stateMask) {
        TextHoverKey key = new TextHoverKey(contentType, stateMask);
        if (hover != null) {
            if (this.fTextHovers == null) {
                this.fTextHovers = new HashMap();
            }
            this.fTextHovers.put(key, hover);
        } else if (this.fTextHovers != null) {
            this.fTextHovers.remove(key);
        }
        this.ensureHoverControlManagerInstalled();
    }

    public void removeTextHovers(String contentType) {
        if (this.fTextHovers == null) {
            return;
        }
        Iterator iter = new HashSet(this.fTextHovers.keySet()).iterator();
        while (iter.hasNext()) {
            TextHoverKey key = (TextHoverKey)iter.next();
            if (!key.fContentType.equals(contentType)) continue;
            this.fTextHovers.remove(key);
        }
    }

    protected ITextHover getTextHover(int offset) {
        return this.getTextHover(offset, 255);
    }

    protected ITextHover getTextHover(int offset, int stateMask) {
        if (this.fTextHovers == null) {
            return null;
        }
        IDocument document = this.getDocument();
        if (document == null) {
            return null;
        }
        try {
            TextHoverKey key = new TextHoverKey(TextUtilities.getContentType((IDocument)document, (String)this.getDocumentPartitioning(), (int)offset, (boolean)true), stateMask);
            Object textHover = this.fTextHovers.get(key);
            if (textHover == null) {
                key.setStateMask(255);
                textHover = this.fTextHovers.get(key);
            }
            return (ITextHover)textHover;
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
    }

    protected AbstractInformationControlManager getTextHoveringController() {
        return this.fTextHoverManager;
    }

    public void setHoverControlCreator(IInformationControlCreator creator) {
        this.fHoverControlCreator = creator;
    }

    public void setHoverEnrichMode(ITextViewerExtension8.EnrichMode mode) {
        if (this.fTextHoverManager == null) {
            return;
        }
        this.fTextHoverManager.setHoverEnrichMode(mode);
    }

    public boolean requestWidgetToken(IWidgetTokenKeeper requester) {
        if (this.fTextWidget != null) {
            if (this.fWidgetTokenKeeper != null) {
                if (this.fWidgetTokenKeeper == requester) {
                    return true;
                }
                if (this.fWidgetTokenKeeper.requestWidgetToken(this)) {
                    this.fWidgetTokenKeeper = requester;
                    return true;
                }
            } else {
                this.fWidgetTokenKeeper = requester;
                return true;
            }
        }
        return false;
    }

    public boolean requestWidgetToken(IWidgetTokenKeeper requester, int priority) {
        if (this.fTextWidget != null) {
            if (this.fWidgetTokenKeeper != null) {
                if (this.fWidgetTokenKeeper == requester) {
                    return true;
                }
                boolean accepted = false;
                if (this.fWidgetTokenKeeper instanceof IWidgetTokenKeeperExtension) {
                    IWidgetTokenKeeperExtension extension = (IWidgetTokenKeeperExtension)((Object)this.fWidgetTokenKeeper);
                    accepted = extension.requestWidgetToken(this, priority);
                } else {
                    accepted = this.fWidgetTokenKeeper.requestWidgetToken(this);
                }
                if (accepted) {
                    this.fWidgetTokenKeeper = requester;
                    return true;
                }
            } else {
                this.fWidgetTokenKeeper = requester;
                return true;
            }
        }
        return false;
    }

    public void releaseWidgetToken(IWidgetTokenKeeper tokenKeeper) {
        if (this.fWidgetTokenKeeper == tokenKeeper) {
            this.fWidgetTokenKeeper = null;
        }
    }

    public Point getSelectedRange() {
        if (!this.redraws() && this.fViewerState != null) {
            return this.fViewerState.getSelection();
        }
        if (this.fTextWidget != null) {
            Point p = this.fTextWidget.getSelectionRange();
            if ((p = this.widgetSelection2ModelSelection(p)) != null) {
                return p;
            }
        }
        return new Point(-1, -1);
    }

    public void setSelectedRange(int selectionOffset, int selectionLength) {
        if (!this.redraws()) {
            if (this.fViewerState != null) {
                this.fViewerState.updateSelection(selectionOffset, selectionLength);
            }
            return;
        }
        if (this.fTextWidget == null) {
            return;
        }
        IRegion widgetSelection = this.modelRange2ClosestWidgetRange((IRegion)new Region(selectionOffset, selectionLength));
        if (widgetSelection != null) {
            int[] selectionRange = new int[]{widgetSelection.getOffset(), widgetSelection.getLength()};
            this.validateSelectionRange(selectionRange);
            if (selectionRange[0] >= 0) {
                this.fTextWidget.setSelectionRange(selectionRange[0], selectionRange[1]);
                this.selectionChanged(selectionRange[0], selectionRange[1]);
            }
        }
    }

    protected void validateSelectionRange(int[] selectionRange) {
        int delta;
        IDocument document = this.getVisibleDocument();
        if (document == null) {
            selectionRange[0] = -1;
            selectionRange[1] = -1;
            return;
        }
        int documentLength = document.getLength();
        int offset = selectionRange[0];
        int length = selectionRange[1];
        if (length < 0) {
            length = -length;
            offset -= length;
        }
        if (offset < 0) {
            offset = 0;
        }
        if (offset > documentLength) {
            offset = documentLength;
        }
        if ((delta = offset + length - documentLength) > 0) {
            length -= delta;
        }
        try {
            int end;
            int lineNumber = document.getLineOfOffset(offset);
            IRegion lineInformation = document.getLineInformation(lineNumber);
            int lineEnd = lineInformation.getOffset() + lineInformation.getLength();
            delta = offset - lineEnd;
            if (delta > 0) {
                offset = lineEnd;
                length += delta;
                String delimiter = document.getLineDelimiter(lineNumber);
                if (delimiter != null) {
                    int delimiterLength = delimiter.length();
                    offset += delimiterLength;
                    length -= delimiterLength;
                }
            }
            if ((delta = (end = offset + length) - (lineEnd = (lineInformation = document.getLineInformationOfOffset(end)).getOffset() + lineInformation.getLength())) > 0) {
                length -= delta;
            }
        }
        catch (BadLocationException badLocationException) {
            selectionRange[0] = -1;
            selectionRange[1] = -1;
            return;
        }
        if (selectionRange[1] < 0) {
            selectionRange[0] = offset + length;
            selectionRange[1] = -length;
        } else {
            selectionRange[0] = offset;
            selectionRange[1] = length;
        }
    }

    public void setSelection(ISelection selection, boolean reveal) {
        if (selection instanceof IBlockTextSelection && this.getTextWidget().getBlockSelection()) {
            IBlockTextSelection s = (IBlockTextSelection)selection;
            try {
                int startLine = s.getStartLine();
                int endLine = s.getEndLine();
                IRegion startLineInfo = this.fDocument.getLineInformation(startLine);
                int startLineLength = startLineInfo.getLength();
                int startVirtuals = Math.max(0, s.getStartColumn() - startLineLength);
                IRegion endLineInfo = this.fDocument.getLineInformation(endLine);
                int endLineLength = endLineInfo.getLength();
                int endVirtuals = Math.max(0, s.getEndColumn() - endLineLength);
                Region startRegion = new Region(startLineInfo.getOffset() + s.getStartColumn() - startVirtuals, 0);
                int startOffset = this.modelRange2ClosestWidgetRange((IRegion)startRegion).getOffset();
                Region endRegion = new Region(endLineInfo.getOffset() + s.getEndColumn() - endVirtuals, 0);
                int endOffset = this.modelRange2ClosestWidgetRange((IRegion)endRegion).getOffset();
                Point clientAreaOrigin = new Point(this.fTextWidget.getHorizontalPixel(), this.fTextWidget.getTopPixel());
                Point startLocation = Geometry.add((Point)clientAreaOrigin, (Point)this.fTextWidget.getLocationAtOffset(startOffset));
                int averageCharWidth = this.getAverageCharWidth();
                startLocation.x += startVirtuals * averageCharWidth;
                Point endLocation = Geometry.add((Point)clientAreaOrigin, (Point)this.fTextWidget.getLocationAtOffset(endOffset));
                endLocation.x += endVirtuals * averageCharWidth;
                endLocation.y += this.fTextWidget.getLineHeight(endOffset);
                int widgetLength = endOffset - startOffset;
                int[] widgetSelection = new int[]{startOffset, widgetLength};
                this.validateSelectionRange(widgetSelection);
                if (widgetSelection[0] >= 0) {
                    this.fTextWidget.setBlockSelectionBounds(Geometry.createRectangle((Point)startLocation, (Point)Geometry.subtract((Point)endLocation, (Point)startLocation)));
                    this.selectionChanged(startOffset, widgetLength);
                }
            }
            catch (BadLocationException badLocationException) {
                this.setSelectedRange(s.getOffset(), s.getLength());
            }
            if (reveal) {
                this.revealRange(s.getOffset(), s.getLength());
            }
        } else if (selection instanceof ITextSelection) {
            ITextSelection s = (ITextSelection)selection;
            this.setSelectedRange(s.getOffset(), s.getLength());
            if (reveal) {
                this.revealRange(s.getOffset(), s.getLength());
            }
        }
    }

    public ISelection getSelection() {
        if (this.fTextWidget != null && this.fTextWidget.getBlockSelection()) {
            int[] ranges = this.fTextWidget.getSelectionRanges();
            int startOffset = ranges[0];
            int endOffset = ranges[ranges.length - 2] + ranges[ranges.length - 1];
            Rectangle bounds = this.fTextWidget.getBlockSelectionBounds();
            int clientAreaX = this.fTextWidget.getHorizontalPixel();
            int startX = bounds.x - clientAreaX;
            int endX = bounds.x + bounds.width - clientAreaX;
            int avgCharWidth = this.getAverageCharWidth();
            int startVirtuals = this.computeVirtualChars(startOffset, startX, avgCharWidth);
            int endVirtuals = this.computeVirtualChars(endOffset, endX, avgCharWidth);
            IDocument document = this.getDocument();
            Point modelSelection = this.widgetSelection2ModelSelection(new Point(startOffset, endOffset - startOffset));
            if (modelSelection == null) {
                return TextSelection.emptySelection();
            }
            startOffset = modelSelection.x;
            endOffset = modelSelection.x + modelSelection.y;
            try {
                int startLine = document.getLineOfOffset(startOffset);
                int endLine = document.getLineOfOffset(endOffset);
                int startColumn = startOffset - document.getLineOffset(startLine) + startVirtuals;
                int endColumn = endOffset - document.getLineOffset(endLine) + endVirtuals;
                if (startLine == -1 || endLine == -1) {
                    return TextSelection.emptySelection();
                }
                return new BlockTextSelection(document, startLine, startColumn, endLine, endColumn, this.fTextWidget.getTabs());
            }
            catch (BadLocationException badLocationException) {
                return TextSelection.emptySelection();
            }
        }
        Point p = this.getSelectedRange();
        if (p.x == -1 || p.y == -1) {
            return TextSelection.emptySelection();
        }
        return new TextSelection(this.getDocument(), p.x, p.y);
    }

    private int computeVirtualChars(int offset, int x, int avgCharWidth) {
        int diff = x - this.fTextWidget.getLocationAtOffset((int)offset).x;
        return diff > 0 ? diff / avgCharWidth : 0;
    }

    public ISelectionProvider getSelectionProvider() {
        return this;
    }

    public void addPostSelectionChangedListener(ISelectionChangedListener listener) {
        Assert.isNotNull((Object)listener);
        if (this.fPostSelectionChangedListeners == null) {
            this.fPostSelectionChangedListeners = new ArrayList();
        }
        if (!this.fPostSelectionChangedListeners.contains(listener)) {
            this.fPostSelectionChangedListeners.add(listener);
        }
    }

    public void removePostSelectionChangedListener(ISelectionChangedListener listener) {
        Assert.isNotNull((Object)listener);
        if (this.fPostSelectionChangedListeners != null) {
            this.fPostSelectionChangedListeners.remove(listener);
            if (this.fPostSelectionChangedListeners.size() == 0) {
                this.fPostSelectionChangedListeners = null;
            }
        }
    }

    private Display getDisplay() {
        if (this.fTextWidget == null || this.fTextWidget.isDisposed()) {
            return null;
        }
        Display display = this.fTextWidget.getDisplay();
        if (display != null && display.isDisposed()) {
            return null;
        }
        return display;
    }

    private void queuePostSelectionChanged(final boolean fireEqualSelection) {
        Display display = this.getDisplay();
        if (display == null) {
            return;
        }
        this.fNumberOfPostSelectionChangedEvents[0] = this.fNumberOfPostSelectionChangedEvents[0] + 1;
        display.timerExec(this.getEmptySelectionChangedEventDelay(), new Runnable(){
            final int id;
            {
                this.id = TextViewer.this.fNumberOfPostSelectionChangedEvents[0];
            }

            public void run() {
                Point selection;
                if (this.id == TextViewer.this.fNumberOfPostSelectionChangedEvents[0] && TextViewer.this.getDisplay() != null && (selection = TextViewer.this.fTextWidget.getSelectionRange()) != null) {
                    IRegion r = TextViewer.this.widgetRange2ModelRange((IRegion)new Region(selection.x, selection.y));
                    if (fireEqualSelection || r != null && !r.equals(TextViewer.this.fLastSentPostSelectionChange) || r == null) {
                        TextViewer.this.fLastSentPostSelectionChange = r;
                        TextViewer.this.firePostSelectionChanged(selection.x, selection.y);
                    }
                }
            }
        });
    }

    protected void firePostSelectionChanged(int offset, int length) {
        if (this.redraws()) {
            IRegion r = this.widgetRange2ModelRange((IRegion)new Region(offset, length));
            ITextSelection selection = r != null ? new TextSelection(this.getDocument(), r.getOffset(), r.getLength()) : TextSelection.emptySelection();
            SelectionChangedEvent event = new SelectionChangedEvent((ISelectionProvider)this, (ISelection)selection);
            this.firePostSelectionChanged(event);
        }
    }

    protected void selectionChanged(int offset, int length) {
        this.queuePostSelectionChanged(true);
        this.fireSelectionChanged(offset, length);
    }

    protected void fireSelectionChanged(int offset, int length) {
        if (this.redraws()) {
            IRegion r;
            if (length < 0) {
                length = -length;
                offset += length;
            }
            if ((r = this.widgetRange2ModelRange((IRegion)new Region(offset, length))) != null && !r.equals(this.fLastSentSelectionChange) || r == null) {
                this.fLastSentSelectionChange = r;
                ITextSelection selection = r != null ? new TextSelection(this.getDocument(), r.getOffset(), r.getLength()) : TextSelection.emptySelection();
                SelectionChangedEvent event = new SelectionChangedEvent((ISelectionProvider)this, (ISelection)selection);
                this.fireSelectionChanged(event);
            }
        }
    }

    private void firePostSelectionChanged(SelectionChangedEvent event) {
        ArrayList listeners = this.fPostSelectionChangedListeners;
        if (listeners != null) {
            listeners = new ArrayList(listeners);
            int i = 0;
            while (i < listeners.size()) {
                ISelectionChangedListener l = (ISelectionChangedListener)listeners.get(i);
                l.selectionChanged(event);
                ++i;
            }
        }
    }

    protected void markChanged(int offset, int length) {
        if (this.redraws()) {
            if (offset != -1) {
                IRegion r = this.widgetRange2ModelRange((IRegion)new Region(offset, length));
                offset = r.getOffset();
                length = r.getLength();
            }
            MarkSelection selection = new MarkSelection(this.getDocument(), offset, length);
            SelectionChangedEvent event = new SelectionChangedEvent((ISelectionProvider)this, (ISelection)selection);
            this.fireSelectionChanged(event);
        }
    }

    public void addTextListener(ITextListener listener) {
        Assert.isNotNull((Object)listener);
        if (this.fTextListeners == null) {
            this.fTextListeners = new ArrayList();
        }
        if (!this.fTextListeners.contains(listener)) {
            this.fTextListeners.add(listener);
        }
    }

    public void removeTextListener(ITextListener listener) {
        Assert.isNotNull((Object)listener);
        if (this.fTextListeners != null) {
            this.fTextListeners.remove(listener);
            if (this.fTextListeners.size() == 0) {
                this.fTextListeners = null;
            }
        }
    }

    protected void updateTextListeners(WidgetCommand cmd) {
        ArrayList textListeners = this.fTextListeners;
        if (textListeners != null) {
            textListeners = new ArrayList(textListeners);
            DocumentEvent event = cmd.event;
            if (event instanceof SlaveDocumentEvent) {
                event = ((SlaveDocumentEvent)event).getMasterEvent();
            }
            TextEvent e = new TextEvent(cmd.start, cmd.length, cmd.text, cmd.preservedText, event, this.redraws());
            int i = 0;
            while (i < textListeners.size()) {
                ITextListener l = (ITextListener)textListeners.get(i);
                l.textChanged(e);
                ++i;
            }
        }
    }

    public void addTextInputListener(ITextInputListener listener) {
        Assert.isNotNull((Object)listener);
        if (this.fTextInputListeners == null) {
            this.fTextInputListeners = new ArrayList();
        }
        if (!this.fTextInputListeners.contains(listener)) {
            this.fTextInputListeners.add(listener);
        }
    }

    public void removeTextInputListener(ITextInputListener listener) {
        Assert.isNotNull((Object)listener);
        if (this.fTextInputListeners != null) {
            this.fTextInputListeners.remove(listener);
            if (this.fTextInputListeners.size() == 0) {
                this.fTextInputListeners = null;
            }
        }
    }

    protected void fireInputDocumentAboutToBeChanged(IDocument oldInput, IDocument newInput) {
        List listener = this.fTextInputListeners;
        if (listener != null) {
            int i = 0;
            while (i < listener.size()) {
                ITextInputListener l = (ITextInputListener)listener.get(i);
                l.inputDocumentAboutToBeChanged(oldInput, newInput);
                ++i;
            }
        }
    }

    protected void fireInputDocumentChanged(IDocument oldInput, IDocument newInput) {
        List listener = this.fTextInputListeners;
        if (listener != null) {
            int i = 0;
            while (i < listener.size()) {
                ITextInputListener l = (ITextInputListener)listener.get(i);
                l.inputDocumentChanged(oldInput, newInput);
                ++i;
            }
        }
    }

    public Object getInput() {
        return this.getDocument();
    }

    public IDocument getDocument() {
        return this.fDocument;
    }

    public void setInput(Object input) {
        IDocument document = null;
        if (input instanceof IDocument) {
            document = (IDocument)input;
        }
        this.setDocument(document);
    }

    public void setDocument(IDocument document) {
        this.fReplaceTextPresentation = true;
        this.fireInputDocumentAboutToBeChanged(this.fDocument, document);
        IDocument oldDocument = this.fDocument;
        this.fDocument = document;
        this.setVisibleDocument(this.fDocument);
        this.resetPlugins();
        this.inputChanged(this.fDocument, oldDocument);
        this.fireInputDocumentChanged(oldDocument, this.fDocument);
        this.fLastSentSelectionChange = null;
        this.fReplaceTextPresentation = false;
    }

    public void setDocument(IDocument document, int modelRangeOffset, int modelRangeLength) {
        this.fReplaceTextPresentation = true;
        this.fireInputDocumentAboutToBeChanged(this.fDocument, document);
        IDocument oldDocument = this.fDocument;
        this.fDocument = document;
        try {
            IDocument slaveDocument = this.createSlaveDocument(document);
            this.updateSlaveDocument(slaveDocument, modelRangeOffset, modelRangeLength);
            this.setVisibleDocument(slaveDocument);
        }
        catch (BadLocationException badLocationException) {
            throw new IllegalArgumentException(JFaceTextMessages.getString("TextViewer.error.invalid_visible_region_1"));
        }
        this.resetPlugins();
        this.inputChanged(this.fDocument, oldDocument);
        this.fireInputDocumentChanged(oldDocument, this.fDocument);
        this.fLastSentSelectionChange = null;
        this.fReplaceTextPresentation = false;
    }

    protected IDocument createSlaveDocument(IDocument document) {
        ISlaveDocumentManager manager = this.getSlaveDocumentManager();
        if (manager != null) {
            if (manager.isSlaveDocument(document)) {
                return document;
            }
            return manager.createSlaveDocument(document);
        }
        return document;
    }

    protected boolean updateVisibleDocument(IDocument visibleDocument, int visibleRegionOffset, int visibleRegionLength) throws BadLocationException {
        if (visibleDocument instanceof ChildDocument) {
            ChildDocument childDocument = (ChildDocument)visibleDocument;
            IDocument document = childDocument.getParentDocument();
            int line = document.getLineOfOffset(visibleRegionOffset);
            int offset = document.getLineOffset(line);
            int length = visibleRegionOffset - offset + visibleRegionLength;
            Position parentRange = childDocument.getParentDocumentRange();
            if (offset != parentRange.getOffset() || length != parentRange.getLength()) {
                childDocument.setParentDocumentRange(offset, length);
                return true;
            }
        }
        return false;
    }

    protected boolean updateSlaveDocument(IDocument slaveDocument, int modelRangeOffset, int modelRangeLength) throws BadLocationException {
        return this.updateVisibleDocument(slaveDocument, modelRangeOffset, modelRangeLength);
    }

    private void initializeViewportUpdate() {
        if (this.fViewportGuard != null) {
            return;
        }
        if (this.fTextWidget != null) {
            this.fViewportGuard = new ViewportGuard();
            this.fLastTopPixel = -1;
            this.fTextWidget.addKeyListener((KeyListener)this.fViewportGuard);
            this.fTextWidget.addMouseListener((MouseListener)this.fViewportGuard);
            this.fScroller = this.fTextWidget.getVerticalBar();
            if (this.fScroller != null) {
                this.fScroller.addSelectionListener((SelectionListener)this.fViewportGuard);
            }
        }
    }

    private void removeViewPortUpdate() {
        if (this.fTextWidget != null) {
            this.fTextWidget.removeKeyListener((KeyListener)this.fViewportGuard);
            this.fTextWidget.removeMouseListener((MouseListener)this.fViewportGuard);
            if (this.fScroller != null && !this.fScroller.isDisposed()) {
                this.fScroller.removeSelectionListener((SelectionListener)this.fViewportGuard);
                this.fScroller = null;
            }
            this.fViewportGuard = null;
        }
    }

    public void addViewportListener(IViewportListener listener) {
        if (this.fViewportListeners == null) {
            this.fViewportListeners = new ArrayList();
            this.initializeViewportUpdate();
        }
        if (!this.fViewportListeners.contains(listener)) {
            this.fViewportListeners.add(listener);
        }
    }

    public void removeViewportListener(IViewportListener listener) {
        if (this.fViewportListeners != null) {
            this.fViewportListeners.remove(listener);
        }
    }

    protected void updateViewportListeners(int origin) {
        int topPixel;
        if (this.redraws() && (topPixel = this.fTextWidget.getTopPixel()) >= 0 && topPixel != this.fLastTopPixel) {
            if (this.fViewportListeners != null) {
                int i = 0;
                while (i < this.fViewportListeners.size()) {
                    IViewportListener l = (IViewportListener)this.fViewportListeners.get(i);
                    l.viewportChanged(topPixel);
                    ++i;
                }
            }
            this.fLastTopPixel = topPixel;
        }
    }

    public int getTopIndex() {
        if (this.fTextWidget != null) {
            int top = this.fTextWidget.getTopIndex();
            return this.widgetLine2ModelLine(top);
        }
        return -1;
    }

    public void setTopIndex(int index) {
        if (this.fTextWidget != null) {
            int widgetLine = this.modelLine2WidgetLine(index);
            if (widgetLine == -1) {
                widgetLine = this.getClosestWidgetLineForModelLine(index);
            }
            if (widgetLine > -1) {
                this.fTextWidget.setTopIndex(widgetLine);
                this.updateViewportListeners(6);
            }
        }
    }

    protected int getVisibleLinesInViewport() {
        Rectangle clArea;
        if (this.fTextWidget != null && !(clArea = this.fTextWidget.getClientArea()).isEmpty()) {
            return clArea.height / this.fTextWidget.getLineHeight();
        }
        return -1;
    }

    public int getBottomIndex() {
        if (this.fTextWidget == null) {
            return -1;
        }
        int widgetBottom = JFaceTextUtil.getBottomIndex(this.fTextWidget);
        return this.widgetLine2ModelLine(widgetBottom);
    }

    public int getTopIndexStartOffset() {
        if (this.fTextWidget != null) {
            int top = this.fTextWidget.getTopIndex();
            try {
                top = this.getVisibleDocument().getLineOffset(top);
                return this.widgetOffset2ModelOffset(top);
            }
            catch (BadLocationException badLocationException) {}
        }
        return -1;
    }

    public int getBottomIndexEndOffset() {
        IRegion coverage;
        int bottomEndOffset;
        block3: {
            try {
                IRegion line = this.getDocument().getLineInformation(this.getBottomIndex());
                bottomEndOffset = line.getOffset() + line.getLength() - 1;
                coverage = this.getModelCoverage();
                if (coverage != null) break block3;
                return -1;
            }
            catch (BadLocationException badLocationException) {
                return this.getDocument().getLength() - 1;
            }
        }
        int coverageEndOffset = coverage.getOffset() + coverage.getLength() - 1;
        return Math.min(coverageEndOffset, bottomEndOffset);
    }

    public void revealRange(int start, int length) {
        if (this.fTextWidget == null || !this.redraws()) {
            return;
        }
        Region modelRange = new Region(start, length);
        IRegion widgetRange = this.modelRange2ClosestWidgetRange((IRegion)modelRange);
        if (widgetRange != null) {
            int[] range = new int[]{widgetRange.getOffset(), widgetRange.getLength()};
            this.validateSelectionRange(range);
            if (range[0] >= 0) {
                this.internalRevealRange(range[0], range[0] + range[1]);
            }
        } else {
            IRegion coverage = this.getModelCoverage();
            int cursor = coverage == null || start < coverage.getOffset() ? 0 : this.getVisibleDocument().getLength();
            this.internalRevealRange(cursor, cursor);
        }
    }

    protected void internalRevealRange(int start, int end) {
        try {
            IDocument doc = this.getVisibleDocument();
            int startLine = doc.getLineOfOffset(start);
            int endLine = doc.getLineOfOffset(end);
            int top = this.fTextWidget.getTopIndex();
            if (top > -1) {
                IRegion extent;
                int bottom = JFaceTextUtil.getBottomIndex(this.fTextWidget);
                int lines = bottom - top;
                if (startLine < top || startLine > bottom || endLine < top || endLine > bottom) {
                    int delta = Math.max(0, lines - (endLine - startLine));
                    this.fTextWidget.setTopIndex(startLine - delta / 3);
                    this.updateViewportListeners(6);
                }
                if (endLine < startLine) {
                    endLine += startLine;
                    startLine = endLine - startLine;
                    endLine -= startLine;
                }
                int startPixel = -1;
                int endPixel = -1;
                if (endLine > startLine) {
                    extent = this.getExtent(start, start);
                    endPixel = startPixel = extent.getOffset() + this.fTextWidget.getHorizontalPixel();
                } else {
                    extent = this.getExtent(start, end);
                    startPixel = extent.getOffset() + this.fTextWidget.getHorizontalPixel();
                    endPixel = startPixel + extent.getLength();
                }
                int visibleStart = this.fTextWidget.getHorizontalPixel();
                int visibleEnd = visibleStart + this.fTextWidget.getClientArea().width;
                if (startPixel < visibleStart || visibleEnd < endPixel) {
                    int bufferZone = 10;
                    int newOffset = visibleStart;
                    int visibleWidth = visibleEnd - visibleStart;
                    int selectionPixelWidth = endPixel - startPixel;
                    newOffset = startPixel < visibleStart ? startPixel : (selectionPixelWidth + bufferZone < visibleWidth ? endPixel + bufferZone - visibleWidth : startPixel);
                    float index = (float)newOffset / (float)this.getAverageCharWidth();
                    this.fTextWidget.setHorizontalIndex(Math.round(index));
                }
            }
        }
        catch (BadLocationException badLocationException) {
            throw new IllegalArgumentException(JFaceTextMessages.getString("TextViewer.error.invalid_range"));
        }
    }

    protected final int getWidthInPixels(String text) {
        GC gc = new GC((Drawable)this.fTextWidget);
        gc.setFont(this.fTextWidget.getFont());
        Point extent = gc.textExtent(text);
        gc.dispose();
        return extent.x;
    }

    protected final IRegion getExtent(int start, int end) {
        if (end > 0 && start < end) {
            Rectangle bounds = this.fTextWidget.getTextBounds(start, end - 1);
            return new Region(bounds.x, bounds.width);
        }
        return new Region(this.fTextWidget.getLocationAtOffset((int)start).x, 0);
    }

    protected final int getWidthInPixels(int offset, int length) {
        return this.getExtent(offset, offset + length).getLength();
    }

    protected final int getAverageCharWidth() {
        return JFaceTextUtil.getAverageCharWidth((Control)this.getTextWidget());
    }

    public void refresh() {
        this.setDocument(this.getDocument());
    }

    protected ISlaveDocumentManager getSlaveDocumentManager() {
        if (this.fSlaveDocumentManager == null) {
            this.fSlaveDocumentManager = this.createSlaveDocumentManager();
        }
        return this.fSlaveDocumentManager;
    }

    protected ISlaveDocumentManager createSlaveDocumentManager() {
        return new ChildDocumentManager();
    }

    public final void invalidateTextPresentation() {
        if (this.fVisibleDocument != null) {
            this.fWidgetCommand.event = null;
            this.fWidgetCommand.start = 0;
            this.fWidgetCommand.length = this.fVisibleDocument.getLength();
            this.fWidgetCommand.text = this.fVisibleDocument.get();
            this.updateTextListeners(this.fWidgetCommand);
        }
    }

    public final void invalidateTextPresentation(int offset, int length) {
        IRegion widgetRange;
        if (this.fVisibleDocument != null && (widgetRange = this.modelRange2WidgetRange((IRegion)new Region(offset, length))) != null) {
            this.fWidgetCommand.event = null;
            this.fWidgetCommand.start = widgetRange.getOffset();
            this.fWidgetCommand.length = widgetRange.getLength();
            try {
                this.fWidgetCommand.text = this.fVisibleDocument.get(widgetRange.getOffset(), widgetRange.getLength());
                this.updateTextListeners(this.fWidgetCommand);
            }
            catch (BadLocationException badLocationException) {}
        }
    }

    private void initializeWidgetContents() {
        if (this.fTextWidget != null && this.fVisibleDocument != null) {
            if (this.fDocumentAdapter == null) {
                this.fDocumentAdapter = this.createDocumentAdapter();
            }
            this.fDocumentAdapter.setDocument(this.fVisibleDocument);
            this.fTextWidget.setContent((StyledTextContent)this.fDocumentAdapter);
            this.invalidateTextPresentation();
        }
    }

    protected void freeSlaveDocument(IDocument slave) {
        ISlaveDocumentManager manager = this.getSlaveDocumentManager();
        if (manager != null && manager.isSlaveDocument(slave)) {
            manager.freeSlaveDocument(slave);
        }
    }

    protected void setVisibleDocument(IDocument document) {
        if (this.fVisibleDocument == document && this.fVisibleDocument instanceof ChildDocument) {
            return;
        }
        if (this.fVisibleDocument != null) {
            if (this.fVisibleDocumentListener != null) {
                this.fVisibleDocument.removeDocumentListener((IDocumentListener)this.fVisibleDocumentListener);
            }
            if (this.fVisibleDocument != document) {
                this.freeSlaveDocument(this.fVisibleDocument);
            }
        }
        this.fVisibleDocument = document;
        this.initializeDocumentInformationMapping(this.fVisibleDocument);
        this.initializeWidgetContents();
        this.fFindReplaceDocumentAdapter = null;
        if (this.fVisibleDocument != null && this.fVisibleDocumentListener != null) {
            this.fVisibleDocument.addDocumentListener((IDocumentListener)this.fVisibleDocumentListener);
        }
    }

    protected void handleVisibleDocumentAboutToBeChanged(DocumentEvent event) {
    }

    protected void handleVisibleDocumentChanged(DocumentEvent event) {
    }

    protected void initializeDocumentInformationMapping(IDocument visibleDocument) {
        ISlaveDocumentManager manager = this.getSlaveDocumentManager();
        this.fInformationMapping = manager == null ? null : manager.createMasterSlaveMapping(visibleDocument);
    }

    protected IDocument getVisibleDocument() {
        return this.fVisibleDocument;
    }

    protected int _getVisibleRegionOffset() {
        IDocument document = this.getVisibleDocument();
        if (document instanceof ChildDocument) {
            ChildDocument cdoc = (ChildDocument)document;
            return cdoc.getParentDocumentRange().getOffset();
        }
        return 0;
    }

    public IRegion getVisibleRegion() {
        IDocument document = this.getVisibleDocument();
        if (document instanceof ChildDocument) {
            Position p = ((ChildDocument)document).getParentDocumentRange();
            return new Region(p.getOffset(), p.getLength());
        }
        return new Region(0, document == null ? 0 : document.getLength());
    }

    public boolean overlapsWithVisibleRegion(int start, int length) {
        IDocument document = this.getVisibleDocument();
        if (document instanceof ChildDocument) {
            ChildDocument cdoc = (ChildDocument)document;
            return cdoc.getParentDocumentRange().overlapsWith(start, length);
        }
        if (document != null) {
            int size = document.getLength();
            return start >= 0 && length >= 0 && start + length <= size;
        }
        return false;
    }

    public void setVisibleRegion(int start, int length) {
        IRegion region = this.getVisibleRegion();
        if (start == region.getOffset() && length == region.getLength()) {
            return;
        }
        this.setRedraw(false);
        try {
            try {
                IDocument slaveDocument = this.createSlaveDocument(this.getVisibleDocument());
                if (this.updateSlaveDocument(slaveDocument, start, length)) {
                    this.setVisibleDocument(slaveDocument);
                }
            }
            catch (BadLocationException badLocationException) {
                throw new IllegalArgumentException(JFaceTextMessages.getString("TextViewer.error.invalid_visible_region_2"));
            }
        }
        finally {
            this.setRedraw(true);
        }
    }

    public void resetVisibleRegion() {
        IDocument slave;
        IDocument master;
        ISlaveDocumentManager manager = this.getSlaveDocumentManager();
        if (manager != null && (master = manager.getMasterDocument(slave = this.getVisibleDocument())) != null) {
            this.setVisibleDocument(master);
            manager.freeSlaveDocument(slave);
        }
    }

    public void setTextDoubleClickStrategy(ITextDoubleClickStrategy strategy, String contentType) {
        if (strategy != null) {
            if (this.fDoubleClickStrategies == null) {
                this.fDoubleClickStrategies = new HashMap();
            }
            this.fDoubleClickStrategies.put(contentType, strategy);
        } else if (this.fDoubleClickStrategies != null) {
            this.fDoubleClickStrategies.remove(contentType);
        }
    }

    protected Object selectContentTypePlugin(int offset, Map plugins) {
        IDocument document = this.getDocument();
        if (document == null) {
            return null;
        }
        try {
            return this.selectContentTypePlugin(TextUtilities.getContentType((IDocument)document, (String)this.getDocumentPartitioning(), (int)offset, (boolean)true), plugins);
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
    }

    private Object selectContentTypePlugin(String type, Map plugins) {
        if (plugins == null) {
            return null;
        }
        return plugins.get(type);
    }

    protected void customizeDocumentCommand(DocumentCommand command) {
        ArrayList strategies;
        if (this.isIgnoringAutoEditStrategies()) {
            return;
        }
        IDocument document = this.getDocument();
        if (this.fTabsToSpacesConverter != null) {
            this.fTabsToSpacesConverter.customizeDocumentCommand(document, command);
        }
        if ((strategies = (ArrayList)this.selectContentTypePlugin(command.offset, this.fAutoIndentStrategies)) == null) {
            return;
        }
        switch (strategies.size()) {
            case 0: {
                break;
            }
            case 1: {
                ((IAutoEditStrategy)strategies.iterator().next()).customizeDocumentCommand(document, command);
                break;
            }
            default: {
                strategies = new ArrayList(strategies);
                Iterator iterator = strategies.iterator();
                while (iterator.hasNext()) {
                    ((IAutoEditStrategy)iterator.next()).customizeDocumentCommand(document, command);
                }
                break block0;
            }
        }
    }

    protected void handleVerifyEvent(VerifyEvent e) {
        if (this.fEventConsumer != null) {
            this.fEventConsumer.processEvent(e);
            if (!e.doit) {
                return;
            }
        }
        if (this.fTextWidget.getBlockSelection() && (e.text == null || e.text.length() < 2)) {
            Point sel = this.fTextWidget.getSelection();
            if (this.fTextWidget.getLineAtOffset(sel.x) != this.fTextWidget.getLineAtOffset(sel.y)) {
                this.verifyEventInBlockSelection(e);
                return;
            }
        }
        IRegion modelRange = this.event2ModelRange(e);
        this.fDocumentCommand.setEvent(e, modelRange);
        this.customizeDocumentCommand(this.fDocumentCommand);
        if (!this.fDocumentCommand.fillEvent(e, modelRange)) {
            boolean compoundChange = this.fDocumentCommand.getCommandCount() > 1;
            try {
                try {
                    this.fVerifyListener.forward(false);
                    if (compoundChange && this.fUndoManager != null) {
                        this.fUndoManager.beginCompoundChange();
                    }
                    this.fDocumentCommand.execute(this.getDocument());
                    if (this.fTextWidget != null) {
                        IRegion region;
                        int widgetCaret;
                        int documentCaret = this.fDocumentCommand.caretOffset;
                        if (documentCaret == -1) {
                            documentCaret = this.fDocumentCommand.offset + (this.fDocumentCommand.text == null ? 0 : this.fDocumentCommand.text.length());
                        }
                        if ((widgetCaret = this.modelOffset2WidgetOffset(documentCaret)) == -1 && (region = this.getModelCoverage()) != null) {
                            if (documentCaret <= region.getOffset()) {
                                widgetCaret = 0;
                            } else if (documentCaret >= region.getOffset() + region.getLength()) {
                                widgetCaret = this.getVisibleRegion().getLength();
                            }
                        }
                        if (widgetCaret != -1) {
                            this.fTextWidget.setCaretOffset(widgetCaret);
                        }
                        this.fTextWidget.showSelection();
                    }
                }
                catch (BadLocationException badLocationException) {
                    if (compoundChange && this.fUndoManager != null) {
                        this.fUndoManager.endCompoundChange();
                    }
                    this.fVerifyListener.forward(true);
                }
            }
            finally {
                if (compoundChange && this.fUndoManager != null) {
                    this.fUndoManager.endCompoundChange();
                }
                this.fVerifyListener.forward(true);
            }
        }
    }

    private void verifyEventInBlockSelection(final VerifyEvent e) {
        e.doit = false;
        boolean isFirst = e.time != this.fLastEventTime;
        this.fLastEventTime = e.time;
        if (isFirst) {
            this.wrapCompoundChange(new Runnable(){

                public void run() {
                    SelectionProcessor processor = new SelectionProcessor(TextViewer.this);
                    try {
                        ISelection selection = TextViewer.this.getSelection();
                        int length = e.text.length();
                        if (length == 0 && e.character == '\u0000') {
                            TextEdit edit = processor.backspace(selection);
                            edit.apply(TextViewer.this.fDocument, 2);
                            ISelection empty = processor.makeEmpty(selection, true);
                            TextViewer.this.setSelection(empty);
                        } else {
                            int lines = processor.getCoveredLines(selection);
                            String delim = TextViewer.this.fDocument.getLegalLineDelimiters()[0];
                            StringBuffer text = new StringBuffer(lines * length + (lines - 1) * delim.length());
                            text.append(e.text);
                            int i = 0;
                            while (i < lines - 1) {
                                text.append(delim);
                                text.append(e.text);
                                ++i;
                            }
                            processor.doReplace(selection, text.toString());
                        }
                    }
                    catch (BadLocationException badLocationException) {}
                }
            });
        }
    }

    private boolean isMarkedRegionEmpty() {
        return this.fTextWidget == null || this.fMarkPosition == null || this.fMarkPosition.isDeleted() || this.modelRange2WidgetRange(this.fMarkPosition) == null;
    }

    public boolean canDoOperation(int operation) {
        if (this.fTextWidget == null || !this.redraws()) {
            return false;
        }
        switch (operation) {
            case 3: {
                return this.isEditable() && (this.fTextWidget.getSelectionCount() > 0 || !this.isMarkedRegionEmpty());
            }
            case 4: {
                return this.fTextWidget.getSelectionCount() > 0 || !this.isMarkedRegionEmpty();
            }
            case 5: 
            case 6: {
                return this.isEditable();
            }
            case 7: {
                return true;
            }
            case 8: 
            case 9: {
                return this.isEditable() && this.fIndentChars != null && this.areMultipleLinesSelected();
            }
            case 11: 
            case 12: {
                return this.isEditable() && this.fDefaultPrefixChars != null;
            }
            case 1: {
                return this.fUndoManager != null && this.fUndoManager.undoable();
            }
            case 2: {
                return this.fUndoManager != null && this.fUndoManager.redoable();
            }
            case 10: {
                return this.isPrintable();
            }
            case 23: {
                return this.fHyperlinkManager != null;
            }
        }
        return false;
    }

    public void doOperation(int operation) {
        if (this.fTextWidget == null || !this.redraws()) {
            return;
        }
        Point selection = null;
        switch (operation) {
            case 1: {
                if (this.fUndoManager == null) break;
                this.ignoreAutoEditStrategies(true);
                this.fUndoManager.undo();
                this.ignoreAutoEditStrategies(false);
                break;
            }
            case 2: {
                if (this.fUndoManager == null) break;
                this.ignoreAutoEditStrategies(true);
                this.fUndoManager.redo();
                this.ignoreAutoEditStrategies(false);
                break;
            }
            case 3: {
                if (this.fTextWidget.getSelectionCount() == 0) {
                    this.copyMarkedRegion(true);
                } else {
                    this.wrapCompoundChange(new Runnable(){

                        public void run() {
                            TextViewer.this.fTextWidget.cut();
                        }
                    });
                }
                selection = this.fTextWidget.getSelectionRange();
                this.fireSelectionChanged(selection.x, selection.y);
                break;
            }
            case 4: {
                if (this.fTextWidget.getSelectionCount() == 0) {
                    this.copyMarkedRegion(false);
                    break;
                }
                this.fTextWidget.copy();
                break;
            }
            case 5: {
                this.paste();
                break;
            }
            case 6: {
                this.delete();
                break;
            }
            case 7: {
                IDocument doc = this.getDocument();
                if (doc == null) break;
                if (this.fTextWidget.getBlockSelection()) {
                    this.setSelection(new BlockTextSelection(doc, 0, 0, doc.getNumberOfLines() - 1, 1000, this.fTextWidget.getTabs()));
                    break;
                }
                this.setSelectedRange(0, doc.getLength());
                break;
            }
            case 8: {
                this.shift(false, true, false);
                break;
            }
            case 9: {
                this.shift(false, false, false);
                break;
            }
            case 11: {
                this.shift(true, true, true);
                break;
            }
            case 12: {
                this.shift(true, false, true);
                break;
            }
            case 10: {
                this.print();
                break;
            }
            case 23: {
                boolean atleastOneLinkOpened = this.fHyperlinkManager.openHyperlink();
                if (!atleastOneLinkOpened) {
                    MessageDialog.openInformation((Shell)this.getControl().getShell(), (String)JFaceTextMessages.getString("TextViewer.open_hyperlink_error_title"), (String)JFaceTextMessages.getString("TextViewer.open_hyperlink_error_message"));
                }
                return;
            }
        }
    }

    private void delete() {
        if (!this.fTextWidget.getBlockSelection()) {
            this.fTextWidget.invokeAction(127);
        } else {
            this.wrapCompoundChange(new Runnable(){

                public void run() {
                    try {
                        new SelectionProcessor(TextViewer.this).doDelete(TextViewer.this.getSelection());
                    }
                    catch (BadLocationException badLocationException) {}
                }
            });
        }
        Point selection = this.fTextWidget.getSelectionRange();
        this.fireSelectionChanged(selection.x, selection.y);
    }

    private void paste() {
        if (!this.fTextWidget.getBlockSelection()) {
            this.fTextWidget.paste();
        } else {
            this.wrapCompoundChange(new Runnable(){

                public void run() {
                    SelectionProcessor processor = new SelectionProcessor(TextViewer.this);
                    Clipboard clipboard = new Clipboard(TextViewer.this.getDisplay());
                    try {
                        try {
                            String toInsert;
                            ISelection selection = TextViewer.this.getSelection();
                            TextTransfer plainTextTransfer = TextTransfer.getInstance();
                            String contents = (String)clipboard.getContents((Transfer)plainTextTransfer, 1);
                            if (TextUtilities.indexOf((String[])TextViewer.this.fDocument.getLegalLineDelimiters(), (String)contents, (int)0)[0] != -1) {
                                toInsert = contents;
                            } else {
                                int length = contents.length();
                                int lines = processor.getCoveredLines(selection);
                                String delim = TextViewer.this.fDocument.getLegalLineDelimiters()[0];
                                StringBuffer text = new StringBuffer(lines * length + (lines - 1) * delim.length());
                                text.append(contents);
                                int i = 0;
                                while (i < lines - 1) {
                                    text.append(delim);
                                    text.append(contents);
                                    ++i;
                                }
                                toInsert = text.toString();
                            }
                            processor.doReplace(selection, toInsert);
                        }
                        catch (BadLocationException badLocationException) {
                            clipboard.dispose();
                        }
                    }
                    finally {
                        clipboard.dispose();
                    }
                }
            });
        }
        Point selection = this.fTextWidget.getSelectionRange();
        this.fireSelectionChanged(selection.x, selection.y);
    }

    private void wrapCompoundChange(Runnable runnable) {
        if (!this.fTextWidget.getBlockSelection()) {
            runnable.run();
            return;
        }
        IRewriteTarget target = this.getRewriteTarget();
        target.beginCompoundChange();
        try {
            runnable.run();
        }
        finally {
            target.endCompoundChange();
        }
    }

    protected void ignoreAutoEditStrategies(boolean ignore) {
        if (this.fIgnoreAutoIndent == ignore) {
            return;
        }
        this.fIgnoreAutoIndent = ignore;
        IDocument document = this.getDocument();
        if (document instanceof IDocumentExtension2) {
            IDocumentExtension2 extension = (IDocumentExtension2)document;
            if (ignore) {
                extension.ignorePostNotificationReplaces();
            } else {
                extension.acceptPostNotificationReplaces();
            }
        }
    }

    protected boolean isIgnoringAutoEditStrategies() {
        return this.fIgnoreAutoIndent;
    }

    public void enableOperation(int operation, boolean enable) {
    }

    protected void copyMarkedRegion(boolean delete) {
        if (this.fTextWidget == null) {
            return;
        }
        if (this.fMarkPosition == null || this.fMarkPosition.isDeleted() || this.modelRange2WidgetRange(this.fMarkPosition) == null) {
            return;
        }
        int widgetMarkOffset = this.modelOffset2WidgetOffset(this.fMarkPosition.offset);
        Point selection = this.fTextWidget.getSelection();
        if (selection.x <= widgetMarkOffset) {
            this.fTextWidget.setSelection(selection.x, widgetMarkOffset);
        } else {
            this.fTextWidget.setSelection(widgetMarkOffset, selection.x);
        }
        if (delete) {
            this.wrapCompoundChange(new Runnable(){

                public void run() {
                    TextViewer.this.fTextWidget.cut();
                }
            });
        } else {
            this.fTextWidget.copy();
            this.fTextWidget.setSelection(selection.x);
        }
    }

    protected void deleteText() {
        this.fTextWidget.invokeAction(127);
    }

    protected boolean isBlockSelected() {
        Point s = this.getSelectedRange();
        if (s.y == 0) {
            return false;
        }
        try {
            IDocument document = this.getDocument();
            int line = document.getLineOfOffset(s.x);
            int start = document.getLineOffset(line);
            return s.x == start;
        }
        catch (BadLocationException badLocationException) {
            return false;
        }
    }

    protected boolean areMultipleLinesSelected() {
        Point s = this.getSelectedRange();
        if (s.y == 0) {
            return false;
        }
        try {
            IDocument document = this.getDocument();
            int startLine = document.getLineOfOffset(s.x);
            int endLine = document.getLineOfOffset(s.x + s.y);
            IRegion line = document.getLineInformation(startLine);
            return startLine != endLine || s.x == line.getOffset() && s.y == line.getLength();
        }
        catch (BadLocationException badLocationException) {
            return false;
        }
    }

    private int getFirstCompleteLineOfRegion(IRegion region) {
        try {
            IDocument d = this.getDocument();
            int startLine = d.getLineOfOffset(region.getOffset());
            int offset = d.getLineOffset(startLine);
            if (offset >= region.getOffset()) {
                return startLine;
            }
            offset = d.getLineOffset(startLine + 1);
            return offset > region.getOffset() + region.getLength() ? -1 : startLine + 1;
        }
        catch (BadLocationException badLocationException) {
            return -1;
        }
    }

    private IRegion getTextBlockFromSelection(ITextSelection selection) throws BadLocationException {
        IDocument document = this.getDocument();
        int start = document.getLineOffset(selection.getStartLine());
        int endLine = selection.getEndLine();
        int end = document.getNumberOfLines() > endLine + 1 ? document.getLineOffset(endLine + 1) : document.getLength();
        return new Region(start, end - start);
    }

    protected void shift(boolean useDefaultPrefixes, boolean right) {
        this.shift(useDefaultPrefixes, right, false);
    }

    protected void shift(boolean useDefaultPrefixes, boolean right, boolean ignoreWhitespace) {
        block27: {
            if (this.fUndoManager != null) {
                this.fUndoManager.beginCompoundChange();
            }
            IDocument d = this.getDocument();
            Map partitioners = null;
            DocumentRewriteSession rewriteSession = null;
            try {
                try {
                    ITextSelection selection = (ITextSelection)this.getSelection();
                    IRegion block = this.getTextBlockFromSelection(selection);
                    ITypedRegion[] regions = TextUtilities.computePartitioning((IDocument)d, (String)this.getDocumentPartitioning(), (int)block.getOffset(), (int)block.getLength(), (boolean)false);
                    int lineCount = 0;
                    int[] lines = new int[regions.length * 2];
                    int i = 0;
                    int j = 0;
                    while (i < regions.length) {
                        lines[j] = this.getFirstCompleteLineOfRegion((IRegion)regions[i]);
                        int length = regions[i].getLength();
                        int offset = regions[i].getOffset() + length;
                        if (length > 0) {
                            --offset;
                        }
                        lines[j + 1] = lines[j] == -1 ? -1 : d.getLineOfOffset(offset);
                        lineCount += lines[j + 1] - lines[j] + 1;
                        ++i;
                        j += 2;
                    }
                    if (d instanceof IDocumentExtension4) {
                        IDocumentExtension4 extension = (IDocumentExtension4)d;
                        rewriteSession = extension.startRewriteSession(DocumentRewriteSessionType.SEQUENTIAL);
                    } else {
                        this.setRedraw(false);
                        this.startSequentialRewriteMode(true);
                    }
                    if (lineCount >= 20) {
                        partitioners = TextUtilities.removeDocumentPartitioners((IDocument)d);
                    }
                    Map map = useDefaultPrefixes ? this.fDefaultPrefixChars : this.fIndentChars;
                    int i2 = 0;
                    int j2 = 0;
                    while (i2 < regions.length) {
                        String[] prefixes = (String[])this.selectContentTypePlugin(regions[i2].getType(), map);
                        if (prefixes != null && prefixes.length > 0 && lines[j2] >= 0 && lines[j2 + 1] >= 0) {
                            if (right) {
                                this.shiftRight(lines[j2], lines[j2 + 1], prefixes[0]);
                            } else {
                                this.shiftLeft(lines[j2], lines[j2 + 1], prefixes, ignoreWhitespace);
                            }
                        }
                        ++i2;
                        j2 += 2;
                    }
                }
                catch (BadLocationException badLocationException) {
                    if (partitioners != null) {
                        TextUtilities.addDocumentPartitioners((IDocument)d, partitioners);
                    }
                    if (d instanceof IDocumentExtension4) {
                        IDocumentExtension4 extension = (IDocumentExtension4)d;
                        extension.stopRewriteSession(rewriteSession);
                    } else {
                        this.stopSequentialRewriteMode();
                        this.setRedraw(true);
                    }
                    if (this.fUndoManager != null) {
                        this.fUndoManager.endCompoundChange();
                    }
                    break block27;
                }
            }
            catch (Throwable throwable) {
                if (partitioners != null) {
                    TextUtilities.addDocumentPartitioners((IDocument)d, partitioners);
                }
                if (d instanceof IDocumentExtension4) {
                    IDocumentExtension4 extension = (IDocumentExtension4)d;
                    extension.stopRewriteSession(rewriteSession);
                } else {
                    this.stopSequentialRewriteMode();
                    this.setRedraw(true);
                }
                if (this.fUndoManager != null) {
                    this.fUndoManager.endCompoundChange();
                }
                throw throwable;
            }
            if (partitioners != null) {
                TextUtilities.addDocumentPartitioners((IDocument)d, (Map)partitioners);
            }
            if (d instanceof IDocumentExtension4) {
                IDocumentExtension4 extension = (IDocumentExtension4)d;
                extension.stopRewriteSession(rewriteSession);
            } else {
                this.stopSequentialRewriteMode();
                this.setRedraw(true);
            }
            if (this.fUndoManager != null) {
                this.fUndoManager.endCompoundChange();
            }
        }
    }

    private void shiftRight(int startLine, int endLine, String prefix) {
        try {
            IDocument d = this.getDocument();
            while (startLine <= endLine) {
                d.replace(d.getLineOffset(startLine++), 0, prefix);
            }
        }
        catch (BadLocationException badLocationException) {}
    }

    private void shiftLeft(int startLine, int endLine, String[] prefixes, boolean ignoreWhitespace) {
        IDocument d = this.getDocument();
        try {
            IRegion[] occurrences = new IRegion[endLine - startLine + 1];
            int i = 0;
            while (i < occurrences.length) {
                int length;
                IRegion line = d.getLineInformation(startLine + i);
                String text = d.get(line.getOffset(), line.getLength());
                int index = -1;
                int[] found = TextUtilities.indexOf((String[])prefixes, (String)text, (int)0);
                if (found[0] != -1) {
                    if (ignoreWhitespace) {
                        String s = d.get(line.getOffset(), found[0]);
                        if ((s = s.trim()).length() == 0) {
                            index = line.getOffset() + found[0];
                        }
                    } else if (found[0] == 0) {
                        index = line.getOffset();
                    }
                }
                if (index > -1) {
                    length = prefixes[found[1]].length();
                    if (length == 0 && !ignoreWhitespace && line.getLength() > 0) {
                        return;
                    }
                } else {
                    return;
                }
                occurrences[i] = new Region(index, length);
                ++i;
            }
            int decrement = 0;
            int i2 = 0;
            while (i2 < occurrences.length) {
                IRegion r = occurrences[i2];
                d.replace(r.getOffset() - decrement, r.getLength(), "");
                decrement += r.getLength();
                ++i2;
            }
        }
        catch (BadLocationException badLocationException) {}
    }

    protected boolean isPrintable() {
        return true;
    }

    public void print(StyledTextPrintOptions options) {
        Shell shell = this.fTextWidget.getShell();
        if (Printer.getPrinterList().length == 0) {
            String title = JFaceTextMessages.getString("TextViewer.warning.noPrinter.title");
            String msg = JFaceTextMessages.getString("TextViewer.warning.noPrinter.message");
            MessageDialog.openWarning((Shell)shell, (String)title, (String)msg);
            return;
        }
        PrintDialog dialog = new PrintDialog(shell, 32768);
        dialog.setPrinterData(fgPrinterData);
        PrinterData data = dialog.open();
        if (data != null) {
            final Printer printer = new Printer(data);
            final Runnable styledTextPrinter = this.fTextWidget.print(printer, options);
            Thread printingThread = new Thread("Printing"){

                public void run() {
                    styledTextPrinter.run();
                    printer.dispose();
                }
            };
            printingThread.start();
            fgPrinterData = data;
            TextViewer.fgPrinterData.startPage = 1;
            TextViewer.fgPrinterData.endPage = 1;
            TextViewer.fgPrinterData.scope = 0;
            TextViewer.fgPrinterData.copyCount = 1;
        }
    }

    protected void print() {
        StyledTextPrintOptions options = new StyledTextPrintOptions();
        options.printTextFontStyle = true;
        options.printTextForeground = true;
        this.print(options);
    }

    protected boolean canPerformFind() {
        IDocument d = this.getVisibleDocument();
        return this.fTextWidget != null && d != null && d.getLength() > 0;
    }

    protected int findAndSelect(int startPosition, String findString, boolean forwardSearch, boolean caseSensitive, boolean wholeWord) {
        try {
            return this.findAndSelect(startPosition, findString, forwardSearch, caseSensitive, wholeWord, false);
        }
        catch (IllegalStateException illegalStateException) {
            return -1;
        }
        catch (PatternSyntaxException patternSyntaxException) {
            return -1;
        }
    }

    protected int findAndSelect(int startPosition, String findString, boolean forwardSearch, boolean caseSensitive, boolean wholeWord, boolean regExSearch) {
        if (this.fTextWidget == null) {
            return -1;
        }
        try {
            int widgetOffset = startPosition == -1 ? startPosition : this.modelOffset2WidgetOffset(startPosition);
            FindReplaceDocumentAdapter adapter = this.getFindReplaceDocumentAdapter();
            IRegion matchRegion = adapter.find(widgetOffset, findString, forwardSearch, caseSensitive, wholeWord, regExSearch);
            if (matchRegion != null) {
                int widgetPos = matchRegion.getOffset();
                int length = matchRegion.getLength();
                char startChar = adapter.charAt(widgetPos);
                char endChar = adapter.charAt(widgetPos + length - 1);
                boolean borderHasLineDelimiter = startChar == '\n' || startChar == '\r' || endChar == '\n' || endChar == '\r';
                boolean redraws = this.redraws();
                if (borderHasLineDelimiter && redraws) {
                    this.setRedraw(false);
                }
                if (this.redraws()) {
                    this.fTextWidget.setSelectionRange(widgetPos, length);
                    this.internalRevealRange(widgetPos, widgetPos + length);
                    this.selectionChanged(widgetPos, length);
                } else {
                    this.setSelectedRange(this.widgetOffset2ModelOffset(widgetPos), length);
                    if (redraws) {
                        this.setRedraw(true);
                    }
                }
                return this.widgetOffset2ModelOffset(widgetPos);
            }
        }
        catch (BadLocationException badLocationException) {}
        return -1;
    }

    protected int findAndSelectInRange(int startPosition, String findString, boolean forwardSearch, boolean caseSensitive, boolean wholeWord, int rangeOffset, int rangeLength, boolean regExSearch) {
        int modelPos;
        int widgetOffset;
        block11: {
            if (this.fTextWidget == null) {
                return -1;
            }
            try {
                int modelOffset = forwardSearch && (startPosition == -1 || startPosition < rangeOffset) ? rangeOffset : (!forwardSearch && (startPosition == -1 || startPosition > rangeOffset + rangeLength) ? rangeOffset + rangeLength : startPosition);
                widgetOffset = this.modelOffset2WidgetOffset(modelOffset);
                if (widgetOffset != -1) break block11;
                return -1;
            }
            catch (BadLocationException badLocationException) {}
        }
        FindReplaceDocumentAdapter adapter = this.getFindReplaceDocumentAdapter();
        IRegion matchRegion = adapter.find(widgetOffset, findString, forwardSearch, caseSensitive, wholeWord, regExSearch);
        int widgetPos = -1;
        int length = 0;
        if (matchRegion != null) {
            widgetPos = matchRegion.getOffset();
            length = matchRegion.getLength();
        }
        int n = modelPos = widgetPos == -1 ? -1 : this.widgetOffset2ModelOffset(widgetPos);
        if (widgetPos != -1 && (modelPos < rangeOffset || modelPos + length > rangeOffset + rangeLength)) {
            widgetPos = -1;
        }
        if (widgetPos > -1) {
            char startChar = adapter.charAt(widgetPos);
            char endChar = adapter.charAt(widgetPos + length - 1);
            boolean borderHasLineDelimiter = startChar == '\n' || startChar == '\r' || endChar == '\n' || endChar == '\r';
            boolean redraws = this.redraws();
            if (borderHasLineDelimiter && redraws) {
                this.setRedraw(false);
            }
            if (this.redraws()) {
                this.fTextWidget.setSelectionRange(widgetPos, length);
                this.internalRevealRange(widgetPos, widgetPos + length);
                this.selectionChanged(widgetPos, length);
            } else {
                this.setSelectedRange(modelPos, length);
                if (redraws) {
                    this.setRedraw(true);
                }
            }
            return modelPos;
        }
        return -1;
    }

    public void setTextColor(Color color) {
        if (color != null) {
            this.setTextColor(color, 0, this.getDocument().getLength(), true);
        }
    }

    public void setTextColor(Color color, int start, int length, boolean controlRedraw) {
        if (this.fTextWidget != null) {
            StyleRange s = new StyleRange();
            s.foreground = color;
            s.start = start;
            s.length = length;
            if ((s = this.modelStyleRange2WidgetStyleRange(s)) != null) {
                if (controlRedraw) {
                    this.fTextWidget.setRedraw(false);
                }
                try {
                    this.fTextWidget.setStyleRange(s);
                }
                finally {
                    if (controlRedraw) {
                        this.fTextWidget.setRedraw(true);
                    }
                }
            }
        }
    }

    private void addPresentation(TextPresentation presentation) {
        StyleRange range = presentation.getDefaultStyleRange();
        if (range != null) {
            if ((range = this.modelStyleRange2WidgetStyleRange(range)) != null) {
                this.fTextWidget.setStyleRange(range);
            }
            ArrayList<StyleRange> ranges = new ArrayList<StyleRange>(presentation.getDenumerableRanges());
            Iterator e = presentation.getNonDefaultStyleRangeIterator();
            while (e.hasNext()) {
                range = (StyleRange)e.next();
                if ((range = this.modelStyleRange2WidgetStyleRange(range)) == null) continue;
                ranges.add(range);
            }
            if (!ranges.isEmpty()) {
                this.fTextWidget.replaceStyleRanges(0, 0, ranges.toArray(new StyleRange[ranges.size()]));
            }
        } else {
            IRegion region = this.modelRange2WidgetRange(presentation.getCoverage());
            if (region == null) {
                return;
            }
            ArrayList<StyleRange> list = new ArrayList<StyleRange>(presentation.getDenumerableRanges());
            Iterator e = presentation.getAllStyleRangeIterator();
            while (e.hasNext()) {
                range = (StyleRange)e.next();
                if ((range = this.modelStyleRange2WidgetStyleRange(range)) == null) continue;
                list.add(range);
            }
            if (!list.isEmpty()) {
                StyleRange[] ranges = new StyleRange[list.size()];
                list.toArray(ranges);
                this.fTextWidget.replaceStyleRanges(region.getOffset(), region.getLength(), ranges);
            }
        }
    }

    private void applyTextPresentation(TextPresentation presentation) {
        ArrayList<StyleRange> list = new ArrayList<StyleRange>(presentation.getDenumerableRanges());
        Iterator e = presentation.getAllStyleRangeIterator();
        while (e.hasNext()) {
            StyleRange range = (StyleRange)e.next();
            if ((range = this.modelStyleRange2WidgetStyleRange(range)) == null) continue;
            list.add(range);
        }
        if (!list.isEmpty()) {
            StyleRange[] ranges = new StyleRange[list.size()];
            list.toArray(ranges);
            this.fTextWidget.setStyleRanges(ranges);
        }
    }

    protected IRegion _internalGetVisibleRegion() {
        IDocument document = this.getVisibleDocument();
        if (document instanceof ChildDocument) {
            Position p = ((ChildDocument)document).getParentDocumentRange();
            return new Region(p.getOffset(), p.getLength());
        }
        return null;
    }

    public void changeTextPresentation(TextPresentation presentation, boolean controlRedraw) {
        if (presentation == null || !this.redraws()) {
            return;
        }
        if (this.fTextWidget == null) {
            return;
        }
        if (this.fTextPresentationListeners != null) {
            ArrayList listeners = new ArrayList(this.fTextPresentationListeners);
            int i = 0;
            int size = listeners.size();
            while (i < size) {
                ITextPresentationListener listener = (ITextPresentationListener)listeners.get(i);
                listener.applyTextPresentation(presentation);
                ++i;
            }
        }
        if (presentation.isEmpty()) {
            return;
        }
        if (controlRedraw) {
            this.fTextWidget.setRedraw(false);
        }
        if (this.fReplaceTextPresentation) {
            this.applyTextPresentation(presentation);
        } else {
            this.addPresentation(presentation);
        }
        if (controlRedraw) {
            this.fTextWidget.setRedraw(true);
        }
    }

    public IFindReplaceTarget getFindReplaceTarget() {
        if (this.fFindReplaceTarget == null) {
            this.fFindReplaceTarget = new FindReplaceTarget();
        }
        return this.fFindReplaceTarget;
    }

    protected FindReplaceDocumentAdapter getFindReplaceDocumentAdapter() {
        if (this.fFindReplaceDocumentAdapter == null) {
            this.fFindReplaceDocumentAdapter = new FindReplaceDocumentAdapter(this.getVisibleDocument());
        }
        return this.fFindReplaceDocumentAdapter;
    }

    public ITextOperationTarget getTextOperationTarget() {
        return this;
    }

    public void appendVerifyKeyListener(VerifyKeyListener listener) {
        int index = this.fVerifyKeyListenersManager.numberOfListeners();
        this.fVerifyKeyListenersManager.insertListener(listener, index);
    }

    public void prependVerifyKeyListener(VerifyKeyListener listener) {
        this.fVerifyKeyListenersManager.insertListener(listener, 0);
    }

    public void removeVerifyKeyListener(VerifyKeyListener listener) {
        this.fVerifyKeyListenersManager.removeListener(listener);
    }

    public int getMark() {
        return this.fMarkPosition == null || this.fMarkPosition.isDeleted() ? -1 : this.fMarkPosition.getOffset();
    }

    public void setMark(int offset) {
        if (offset == -1) {
            IDocument document;
            if (this.fMarkPosition != null && !this.fMarkPosition.isDeleted() && (document = this.getDocument()) != null) {
                document.removePosition(this.fMarkPosition);
            }
            this.fMarkPosition = null;
            this.markChanged(-1, 0);
        } else {
            IDocument document = this.getDocument();
            if (document == null) {
                this.fMarkPosition = null;
                return;
            }
            if (this.fMarkPosition != null) {
                document.removePosition(this.fMarkPosition);
            }
            this.fMarkPosition = null;
            try {
                Position position = new Position(offset);
                document.addPosition(this.MARK_POSITION_CATEGORY, position);
                this.fMarkPosition = position;
            }
            catch (BadLocationException badLocationException) {
                return;
            }
            catch (BadPositionCategoryException badPositionCategoryException) {
                return;
            }
            this.markChanged(this.modelOffset2WidgetOffset(this.fMarkPosition.offset), 0);
        }
    }

    protected void inputChanged(Object newInput, Object oldInput) {
        IDocument newDocument;
        IDocumentExtension4 document;
        IDocument oldDocument = (IDocument)oldInput;
        if (oldDocument != null) {
            if (this.fMarkPosition != null && !this.fMarkPosition.isDeleted()) {
                oldDocument.removePosition(this.fMarkPosition);
            }
            try {
                oldDocument.removePositionUpdater(this.fMarkPositionUpdater);
                oldDocument.removePositionCategory(this.MARK_POSITION_CATEGORY);
            }
            catch (BadPositionCategoryException badPositionCategoryException) {}
        }
        this.fMarkPosition = null;
        if (oldDocument instanceof IDocumentExtension4) {
            document = (IDocumentExtension4)oldDocument;
            document.removeDocumentRewriteSessionListener((IDocumentRewriteSessionListener)this.fDocumentRewriteSessionListener);
        }
        super.inputChanged(newInput, oldInput);
        if (newInput instanceof IDocumentExtension4) {
            document = (IDocumentExtension4)newInput;
            document.addDocumentRewriteSessionListener((IDocumentRewriteSessionListener)this.fDocumentRewriteSessionListener);
        }
        if ((newDocument = (IDocument)newInput) != null) {
            newDocument.addPositionCategory(this.MARK_POSITION_CATEGORY);
            newDocument.addPositionUpdater(this.fMarkPositionUpdater);
        }
    }

    private void fireRedrawChanged() {
        this.fWidgetCommand.start = 0;
        this.fWidgetCommand.length = 0;
        this.fWidgetCommand.text = null;
        this.fWidgetCommand.event = null;
        this.updateTextListeners(this.fWidgetCommand);
    }

    protected void enabledRedrawing() {
        this.enabledRedrawing(-1);
    }

    protected void enabledRedrawing(int topIndex) {
        if (this.fDocumentAdapter instanceof IDocumentAdapterExtension) {
            IDocumentAdapterExtension extension = (IDocumentAdapterExtension)((Object)this.fDocumentAdapter);
            StyledText textWidget = this.getTextWidget();
            if (textWidget != null && !textWidget.isDisposed()) {
                extension.resumeForwardingDocumentChanges();
                if (topIndex > -1) {
                    try {
                        this.setTopIndex(topIndex);
                    }
                    catch (IllegalArgumentException illegalArgumentException) {}
                }
            }
        }
        if (this.fViewerState != null) {
            this.fViewerState.restore(topIndex == -1);
            this.fViewerState = null;
        }
        if (this.fTextWidget != null && !this.fTextWidget.isDisposed()) {
            this.fTextWidget.setRedraw(true);
        }
        this.fireRedrawChanged();
    }

    protected void disableRedrawing() {
        if (this.fViewerState == null) {
            this.fViewerState = new ViewerState();
        }
        if (this.fDocumentAdapter instanceof IDocumentAdapterExtension) {
            IDocumentAdapterExtension extension = (IDocumentAdapterExtension)((Object)this.fDocumentAdapter);
            extension.stopForwardingDocumentChanges();
        }
        if (this.fTextWidget != null && !this.fTextWidget.isDisposed()) {
            this.fTextWidget.setRedraw(false);
        }
        this.fireRedrawChanged();
    }

    public final void setRedraw(boolean redraw) {
        this.setRedraw(redraw, -1);
    }

    protected final void setRedraw(boolean redraw, int topIndex) {
        if (!redraw) {
            ++this.fRedrawCounter;
            if (this.fRedrawCounter == 1) {
                this.disableRedrawing();
            }
        } else {
            --this.fRedrawCounter;
            if (this.fRedrawCounter == 0) {
                if (topIndex == -1) {
                    this.enabledRedrawing();
                } else {
                    this.enabledRedrawing(topIndex);
                }
            }
        }
    }

    protected final boolean redraws() {
        return this.fRedrawCounter <= 0;
    }

    protected final void startSequentialRewriteMode(boolean normalized) {
        IDocument document = this.getDocument();
        if (document instanceof IDocumentExtension) {
            IDocumentExtension extension = (IDocumentExtension)document;
            extension.startSequentialRewrite(normalized);
        }
    }

    protected final void stopSequentialRewriteMode() {
        IDocument document = this.getDocument();
        if (document instanceof IDocumentExtension) {
            IDocumentExtension extension = (IDocumentExtension)document;
            extension.stopSequentialRewrite();
        }
    }

    public IRewriteTarget getRewriteTarget() {
        if (this.fRewriteTarget == null) {
            this.fRewriteTarget = new RewriteTarget();
        }
        return this.fRewriteTarget;
    }

    public ITextHover getCurrentTextHover() {
        if (this.fTextHoverManager == null) {
            return null;
        }
        return this.fTextHoverManager.getCurrentTextHover();
    }

    public Point getHoverEventLocation() {
        if (this.fTextHoverManager == null) {
            return null;
        }
        return this.fTextHoverManager.getHoverEventLocation();
    }

    protected PaintManager getPaintManager() {
        if (this.fPaintManager == null) {
            this.fPaintManager = new PaintManager(this);
        }
        return this.fPaintManager;
    }

    public void addPainter(IPainter painter) {
        this.getPaintManager().addPainter(painter);
    }

    public void removePainter(IPainter painter) {
        this.getPaintManager().removePainter(painter);
    }

    public int modelLine2WidgetLine(int modelLine) {
        if (this.fInformationMapping == null) {
            return modelLine;
        }
        try {
            return this.fInformationMapping.toImageLine(modelLine);
        }
        catch (BadLocationException badLocationException) {
            return -1;
        }
    }

    public int modelOffset2WidgetOffset(int modelOffset) {
        if (this.fInformationMapping == null) {
            return modelOffset;
        }
        try {
            return this.fInformationMapping.toImageOffset(modelOffset);
        }
        catch (BadLocationException badLocationException) {
            return -1;
        }
    }

    public IRegion modelRange2WidgetRange(IRegion modelRange) {
        if (this.fInformationMapping == null) {
            return modelRange;
        }
        try {
            Region reversed;
            IRegion result;
            if (modelRange.getLength() < 0 && (result = this.fInformationMapping.toImageRegion((IRegion)(reversed = new Region(modelRange.getOffset() + modelRange.getLength(), -modelRange.getLength())))) != null) {
                return new Region(result.getOffset() + result.getLength(), -result.getLength());
            }
            return this.fInformationMapping.toImageRegion(modelRange);
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
    }

    protected IRegion modelRange2ClosestWidgetRange(IRegion modelRange) {
        if (!(this.fInformationMapping instanceof IDocumentInformationMappingExtension2)) {
            return this.modelRange2WidgetRange(modelRange);
        }
        try {
            Region reversed;
            IRegion result;
            if (modelRange.getLength() < 0 && (result = ((IDocumentInformationMappingExtension2)this.fInformationMapping).toClosestImageRegion((IRegion)(reversed = new Region(modelRange.getOffset() + modelRange.getLength(), -modelRange.getLength())))) != null) {
                return new Region(result.getOffset() + result.getLength(), -result.getLength());
            }
            return ((IDocumentInformationMappingExtension2)this.fInformationMapping).toClosestImageRegion(modelRange);
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
    }

    public int widgetlLine2ModelLine(int widgetLine) {
        return this.widgetLine2ModelLine(widgetLine);
    }

    public int widgetLine2ModelLine(int widgetLine) {
        if (this.fInformationMapping == null) {
            return widgetLine;
        }
        try {
            return this.fInformationMapping.toOriginLine(widgetLine);
        }
        catch (BadLocationException badLocationException) {
            return -1;
        }
    }

    public int widgetOffset2ModelOffset(int widgetOffset) {
        if (this.fInformationMapping == null) {
            return widgetOffset;
        }
        try {
            return this.fInformationMapping.toOriginOffset(widgetOffset);
        }
        catch (BadLocationException badLocationException) {
            if (widgetOffset == this.getVisibleDocument().getLength()) {
                IRegion coverage = this.fInformationMapping.getCoverage();
                return coverage.getOffset() + coverage.getLength();
            }
            return -1;
        }
    }

    public IRegion widgetRange2ModelRange(IRegion widgetRange) {
        if (this.fInformationMapping == null) {
            return widgetRange;
        }
        try {
            if (widgetRange.getLength() < 0) {
                Region reveresed = new Region(widgetRange.getOffset() + widgetRange.getLength(), -widgetRange.getLength());
                IRegion result = this.fInformationMapping.toOriginRegion((IRegion)reveresed);
                return new Region(result.getOffset() + result.getLength(), -result.getLength());
            }
            return this.fInformationMapping.toOriginRegion(widgetRange);
        }
        catch (BadLocationException badLocationException) {
            int modelEndOffset;
            int modelOffset = this.widgetOffset2ModelOffset(widgetRange.getOffset());
            if (modelOffset > -1 && (modelEndOffset = this.widgetOffset2ModelOffset(widgetRange.getOffset() + widgetRange.getLength())) > -1) {
                return new Region(modelOffset, modelEndOffset - modelOffset);
            }
            return null;
        }
    }

    public IRegion getModelCoverage() {
        if (this.fInformationMapping == null) {
            IDocument document = this.getDocument();
            if (document == null) {
                return null;
            }
            return new Region(0, document.getLength());
        }
        return this.fInformationMapping.getCoverage();
    }

    protected int getClosestWidgetLineForModelLine(int modelLine) {
        if (this.fInformationMapping == null) {
            return modelLine;
        }
        try {
            return this.fInformationMapping.toClosestImageLine(modelLine);
        }
        catch (BadLocationException badLocationException) {
            return -1;
        }
    }

    protected StyleRange modelStyleRange2WidgetStyleRange(StyleRange range) {
        IRegion region = this.modelRange2WidgetRange((IRegion)new Region(range.start, range.length));
        if (region != null) {
            StyleRange result = (StyleRange)range.clone();
            result.start = region.getOffset();
            result.length = region.getLength();
            return result;
        }
        return null;
    }

    protected IRegion modelRange2WidgetRange(Position modelPosition) {
        return this.modelRange2WidgetRange((IRegion)new Region(modelPosition.getOffset(), modelPosition.getLength()));
    }

    protected IRegion event2ModelRange(VerifyEvent event) {
        Region region = null;
        region = event.start <= event.end ? new Region(event.start, event.end - event.start) : new Region(event.end, event.start - event.end);
        return this.widgetRange2ModelRange((IRegion)region);
    }

    protected Point widgetSelection2ModelSelection(Point widgetSelection) {
        Region region = new Region(widgetSelection.x, widgetSelection.y);
        return (region = this.widgetRange2ModelRange((IRegion)region)) == null ? null : new Point(region.getOffset(), region.getLength());
    }

    protected Point modelSelection2WidgetSelection(Point modelSelection) {
        if (this.fInformationMapping == null) {
            return modelSelection;
        }
        try {
            Region region = new Region(modelSelection.x, modelSelection.y);
            region = this.fInformationMapping.toImageRegion((IRegion)region);
            if (region != null) {
                return new Point(region.getOffset(), region.getLength());
            }
        }
        catch (BadLocationException badLocationException) {}
        return null;
    }

    public int widgetLineOfWidgetOffset(int widgetOffset) {
        IDocument document = this.getVisibleDocument();
        if (document != null) {
            try {
                return document.getLineOfOffset(widgetOffset);
            }
            catch (BadLocationException badLocationException) {}
        }
        return -1;
    }

    public boolean moveFocusToWidgetToken() {
        if (this.fWidgetTokenKeeper instanceof IWidgetTokenKeeperExtension) {
            IWidgetTokenKeeperExtension extension = (IWidgetTokenKeeperExtension)((Object)this.fWidgetTokenKeeper);
            return extension.setFocus(this);
        }
        return false;
    }

    public void setDocumentPartitioning(String partitioning) {
        this.fPartitioning = partitioning;
    }

    protected String getDocumentPartitioning() {
        return this.fPartitioning;
    }

    public void addTextPresentationListener(ITextPresentationListener listener) {
        Assert.isNotNull((Object)listener);
        if (this.fTextPresentationListeners == null) {
            this.fTextPresentationListeners = new ArrayList();
        }
        if (!this.fTextPresentationListeners.contains(listener)) {
            this.fTextPresentationListeners.add(listener);
        }
    }

    public void removeTextPresentationListener(ITextPresentationListener listener) {
        Assert.isNotNull((Object)listener);
        if (this.fTextPresentationListeners != null) {
            this.fTextPresentationListeners.remove(listener);
            if (this.fTextPresentationListeners.size() == 0) {
                this.fTextPresentationListeners = null;
            }
        }
    }

    public void register(IEditingSupport helper) {
        Assert.isLegal((helper != null ? 1 : 0) != 0);
        this.fEditorHelpers.add(helper);
    }

    public void unregister(IEditingSupport helper) {
        this.fEditorHelpers.remove(helper);
    }

    public IEditingSupport[] getRegisteredSupports() {
        return this.fEditorHelpers.toArray(new IEditingSupport[this.fEditorHelpers.size()]);
    }

    public void setHyperlinkDetectors(IHyperlinkDetector[] hyperlinkDetectors, int eventStateMask) {
        if (this.fHyperlinkDetectors != null) {
            int i = 0;
            while (i < this.fHyperlinkDetectors.length) {
                if (this.fHyperlinkDetectors[i] instanceof IHyperlinkDetectorExtension) {
                    ((IHyperlinkDetectorExtension)((Object)this.fHyperlinkDetectors[i])).dispose();
                }
                ++i;
            }
        }
        boolean enable = hyperlinkDetectors != null && hyperlinkDetectors.length > 0;
        this.fHyperlinkStateMask = eventStateMask;
        this.fHyperlinkDetectors = hyperlinkDetectors;
        if (enable) {
            if (this.fHyperlinkManager != null) {
                this.fHyperlinkManager.setHyperlinkDetectors(this.fHyperlinkDetectors);
                this.fHyperlinkManager.setHyperlinkStateMask(this.fHyperlinkStateMask);
            }
            this.ensureHyperlinkManagerInstalled();
        } else {
            if (this.fHyperlinkManager != null) {
                this.fHyperlinkManager.uninstall();
            }
            this.fHyperlinkManager = null;
        }
    }

    public void setHyperlinkPresenter(IHyperlinkPresenter hyperlinkPresenter) throws IllegalStateException {
        if (this.fHyperlinkManager != null) {
            throw new IllegalStateException();
        }
        this.fHyperlinkPresenter = hyperlinkPresenter;
        this.ensureHyperlinkManagerInstalled();
    }

    private void ensureHyperlinkManagerInstalled() {
        if (this.fHyperlinkDetectors != null && this.fHyperlinkDetectors.length > 0 && this.fHyperlinkPresenter != null && this.fHyperlinkManager == null) {
            HyperlinkManager.DETECTION_STRATEGY strategy = this.fHyperlinkPresenter.canShowMultipleHyperlinks() ? HyperlinkManager.ALL : HyperlinkManager.FIRST;
            this.fHyperlinkManager = new HyperlinkManager(strategy);
            this.fHyperlinkManager.install(this, this.fHyperlinkPresenter, this.fHyperlinkDetectors, this.fHyperlinkStateMask);
        }
    }

    public void setTabsToSpacesConverter(IAutoEditStrategy converter) {
        this.fTabsToSpacesConverter = converter;
    }

    private static final class ColumnPosition
    extends Position {
        int fStartColumn;
        int fEndColumn;

        ColumnPosition(int offset, int length, int startColumn, int endColumn) {
            super(offset, length);
            this.fStartColumn = startColumn;
            this.fEndColumn = endColumn;
        }
    }

    private class CursorListener
    implements KeyListener,
    MouseListener {
        private CursorListener() {
        }

        private void install() {
            if (TextViewer.this.fTextWidget != null && !TextViewer.this.fTextWidget.isDisposed()) {
                TextViewer.this.fTextWidget.addKeyListener((KeyListener)this);
                TextViewer.this.fTextWidget.addMouseListener((MouseListener)this);
            }
        }

        private void uninstall() {
            if (TextViewer.this.fTextWidget != null && !TextViewer.this.fTextWidget.isDisposed()) {
                TextViewer.this.fTextWidget.removeKeyListener((KeyListener)this);
                TextViewer.this.fTextWidget.removeMouseListener((MouseListener)this);
            }
        }

        public void keyPressed(KeyEvent event) {
        }

        public void keyReleased(KeyEvent e) {
            if (TextViewer.this.fTextWidget.getSelectionCount() == 0) {
                TextViewer.this.fLastSentSelectionChange = null;
                TextViewer.this.queuePostSelectionChanged(e.character == '\u007f');
            }
        }

        public void mouseDoubleClick(MouseEvent e) {
        }

        public void mouseDown(MouseEvent e) {
        }

        public void mouseUp(MouseEvent event) {
            if (TextViewer.this.fTextWidget.getSelectionCount() == 0) {
                TextViewer.this.queuePostSelectionChanged(false);
            }
        }
    }

    private class DocumentRewriteSessionListener
    implements IDocumentRewriteSessionListener {
        private DocumentRewriteSessionListener() {
        }

        public void documentRewriteSessionChanged(DocumentRewriteSessionEvent event) {
            boolean viewportStabilize;
            IRewriteTarget target = TextViewer.this.getRewriteTarget();
            boolean toggleRedraw = true;
            boolean bl = viewportStabilize = !toggleRedraw;
            if (DocumentRewriteSessionEvent.SESSION_START == event.getChangeType()) {
                if (toggleRedraw) {
                    target.setRedraw(false);
                }
                target.beginCompoundChange();
                if (viewportStabilize && TextViewer.this.fViewerState == null) {
                    TextViewer.this.fViewerState = new ViewerState();
                }
            } else if (DocumentRewriteSessionEvent.SESSION_STOP == event.getChangeType()) {
                if (viewportStabilize && TextViewer.this.fViewerState != null) {
                    TextViewer.this.fViewerState.restore(true);
                    TextViewer.this.fViewerState = null;
                }
                target.endCompoundChange();
                if (toggleRedraw) {
                    target.setRedraw(true);
                }
            }
        }
    }

    class FindReplaceRange
    implements LineBackgroundListener,
    ITextListener,
    IPositionUpdater {
        private static final String RANGE_CATEGORY = "org.eclipse.jface.text.TextViewer.find.range";
        private Color fHighlightColor;
        private Position fPosition;

        public FindReplaceRange(IRegion range) {
            this.setRange(range);
        }

        public void setRange(IRegion range) {
            this.fPosition = new Position(range.getOffset(), range.getLength());
        }

        public IRegion getRange() {
            return new Region(this.fPosition.getOffset(), this.fPosition.getLength());
        }

        public void setHighlightColor(Color color) {
            this.fHighlightColor = color;
            this.paint();
        }

        public void lineGetBackground(LineBackgroundEvent event) {
            int offset;
            if (TextViewer.this.fTextWidget != null && this.fPosition.includes(offset = TextViewer.this.widgetOffset2ModelOffset(event.lineOffset))) {
                event.lineBackground = this.fHighlightColor;
            }
        }

        public void install() {
            TextViewer.this.addTextListener(this);
            TextViewer.this.fTextWidget.addLineBackgroundListener((LineBackgroundListener)this);
            IDocument document = TextViewer.this.getDocument();
            try {
                document.addPositionCategory(RANGE_CATEGORY);
                document.addPosition(RANGE_CATEGORY, this.fPosition);
                document.addPositionUpdater((IPositionUpdater)this);
            }
            catch (BadPositionCategoryException badPositionCategoryException) {
            }
            catch (BadLocationException badLocationException) {}
            this.paint();
        }

        public void uninstall() {
            IDocument document = TextViewer.this.getDocument();
            if (document != null) {
                document.removePositionUpdater((IPositionUpdater)this);
                document.removePosition(this.fPosition);
            }
            if (TextViewer.this.fTextWidget != null && !TextViewer.this.fTextWidget.isDisposed()) {
                TextViewer.this.fTextWidget.removeLineBackgroundListener((LineBackgroundListener)this);
            }
            TextViewer.this.removeTextListener(this);
            this.clear();
        }

        private void clear() {
            if (TextViewer.this.fTextWidget != null && !TextViewer.this.fTextWidget.isDisposed()) {
                TextViewer.this.fTextWidget.redraw();
            }
        }

        private void paint() {
            int count;
            int length;
            IRegion widgetRegion = TextViewer.this.modelRange2WidgetRange(this.fPosition);
            int offset = widgetRegion.getOffset();
            if (offset + (length = widgetRegion.getLength()) >= (count = TextViewer.this.fTextWidget.getCharCount())) {
                length = count - offset;
                Point upperLeft = TextViewer.this.fTextWidget.getLocationAtOffset(offset);
                Point lowerRight = TextViewer.this.fTextWidget.getLocationAtOffset(offset + length);
                int width = ((TextViewer)TextViewer.this).fTextWidget.getClientArea().width;
                int height = TextViewer.this.fTextWidget.getLineHeight(offset + length) + lowerRight.y - upperLeft.y;
                TextViewer.this.fTextWidget.redraw(upperLeft.x, upperLeft.y, width, height, false);
            }
            TextViewer.this.fTextWidget.redrawRange(offset, length, true);
        }

        public void textChanged(TextEvent event) {
            if (event.getViewerRedrawState()) {
                this.paint();
            }
        }

        public void update(DocumentEvent event) {
            int offset = event.getOffset();
            int length = event.getLength();
            int delta = event.getText().length() - length;
            if (offset < this.fPosition.getOffset()) {
                this.fPosition.setOffset(this.fPosition.getOffset() + delta);
            } else if (offset < this.fPosition.getOffset() + this.fPosition.getLength()) {
                this.fPosition.setLength(this.fPosition.getLength() + delta);
            }
        }
    }

    class FindReplaceTarget
    implements IFindReplaceTarget,
    IFindReplaceTargetExtension,
    IFindReplaceTargetExtension3 {
        private FindReplaceRange fRange;
        private Color fScopeHighlightColor;
        private Map fRememberedPartitioners;
        private DocumentRewriteSession fRewriteSession;

        FindReplaceTarget() {
        }

        public String getSelectionText() {
            Point s = TextViewer.this.getSelectedRange();
            if (s.x > -1 && s.y > -1) {
                try {
                    IDocument document = TextViewer.this.getDocument();
                    return document.get(s.x, s.y);
                }
                catch (BadLocationException badLocationException) {}
            }
            return "";
        }

        public void replaceSelection(String text) {
            this.replaceSelection(text, false);
        }

        public void replaceSelection(String text, boolean regExReplace) {
            Point s = TextViewer.this.getSelectedRange();
            if (s.x > -1 && s.y > -1) {
                try {
                    IRegion matchRegion = TextViewer.this.getFindReplaceDocumentAdapter().replace(text, regExReplace);
                    int length = -1;
                    if (matchRegion != null) {
                        length = matchRegion.getLength();
                    }
                    if (text != null && length > 0) {
                        TextViewer.this.setSelectedRange(s.x, length);
                    }
                }
                catch (BadLocationException badLocationException) {}
            }
        }

        public boolean isEditable() {
            return TextViewer.this.isEditable();
        }

        public Point getSelection() {
            Point modelSelection = TextViewer.this.getSelectedRange();
            Point widgetSelection = TextViewer.this.modelSelection2WidgetSelection(modelSelection);
            return widgetSelection != null ? widgetSelection : new Point(-1, -1);
        }

        public int findAndSelect(int widgetOffset, String findString, boolean searchForward, boolean caseSensitive, boolean wholeWord) {
            try {
                return this.findAndSelect(widgetOffset, findString, searchForward, caseSensitive, wholeWord, false);
            }
            catch (PatternSyntaxException patternSyntaxException) {
                return -1;
            }
        }

        public int findAndSelect(int widgetOffset, String findString, boolean searchForward, boolean caseSensitive, boolean wholeWord, boolean regExSearch) {
            int modelOffset;
            int n = modelOffset = widgetOffset == -1 ? -1 : TextViewer.this.widgetOffset2ModelOffset(widgetOffset);
            if (this.fRange != null) {
                IRegion range = this.fRange.getRange();
                modelOffset = TextViewer.this.findAndSelectInRange(modelOffset, findString, searchForward, caseSensitive, wholeWord, range.getOffset(), range.getLength(), regExSearch);
            } else {
                modelOffset = TextViewer.this.findAndSelect(modelOffset, findString, searchForward, caseSensitive, wholeWord, regExSearch);
            }
            widgetOffset = modelOffset == -1 ? -1 : TextViewer.this.modelOffset2WidgetOffset(modelOffset);
            return widgetOffset;
        }

        public boolean canPerformFind() {
            return TextViewer.this.canPerformFind();
        }

        public void beginSession() {
            this.fRange = null;
        }

        public void endSession() {
            if (this.fRange != null) {
                this.fRange.uninstall();
                this.fRange = null;
            }
        }

        public IRegion getScope() {
            return this.fRange == null ? null : this.fRange.getRange();
        }

        public Point getLineSelection() {
            Point point = TextViewer.this.getSelectedRange();
            try {
                IDocument document = TextViewer.this.getDocument();
                int line = document.getLineOfOffset(point.x);
                int offset = document.getLineOffset(line);
                IRegion lastLineInfo = document.getLineInformationOfOffset(point.x + point.y);
                int lastLine = document.getLineOfOffset(point.x + point.y);
                int length = lastLineInfo.getOffset() == point.x + point.y && lastLine > 0 ? document.getLineOffset(lastLine - 1) + document.getLineLength(lastLine - 1) - offset : lastLineInfo.getOffset() + lastLineInfo.getLength() - offset;
                return new Point(offset, length);
            }
            catch (BadLocationException badLocationException) {
                return new Point(point.x, 0);
            }
        }

        public void setSelection(int modelOffset, int modelLength) {
            TextViewer.this.setSelectedRange(modelOffset, modelLength);
        }

        public void setScope(IRegion scope) {
            if (this.fRange != null) {
                this.fRange.uninstall();
            }
            if (scope == null) {
                this.fRange = null;
                return;
            }
            this.fRange = new FindReplaceRange(scope);
            this.fRange.setHighlightColor(this.fScopeHighlightColor);
            this.fRange.install();
        }

        public void setScopeHighlightColor(Color color) {
            if (this.fRange != null) {
                this.fRange.setHighlightColor(color);
            }
            this.fScopeHighlightColor = color;
        }

        public void setReplaceAllMode(boolean replaceAll) {
            IDocument document = TextViewer.this.getDocument();
            if (replaceAll) {
                if (document instanceof IDocumentExtension4) {
                    IDocumentExtension4 extension = (IDocumentExtension4)document;
                    this.fRewriteSession = extension.startRewriteSession(DocumentRewriteSessionType.SEQUENTIAL);
                } else {
                    TextViewer.this.setRedraw(false);
                    TextViewer.this.startSequentialRewriteMode(false);
                    if (TextViewer.this.fUndoManager != null) {
                        TextViewer.this.fUndoManager.beginCompoundChange();
                    }
                    this.fRememberedPartitioners = TextUtilities.removeDocumentPartitioners((IDocument)document);
                }
            } else if (document instanceof IDocumentExtension4) {
                IDocumentExtension4 extension = (IDocumentExtension4)document;
                extension.stopRewriteSession(this.fRewriteSession);
            } else {
                TextViewer.this.setRedraw(true);
                TextViewer.this.stopSequentialRewriteMode();
                if (TextViewer.this.fUndoManager != null) {
                    TextViewer.this.fUndoManager.endCompoundChange();
                }
                if (this.fRememberedPartitioners != null) {
                    TextUtilities.addDocumentPartitioners((IDocument)document, (Map)this.fRememberedPartitioners);
                }
            }
        }
    }

    class RewriteTarget
    implements IRewriteTarget {
        RewriteTarget() {
        }

        public void beginCompoundChange() {
            if (TextViewer.this.fUndoManager != null) {
                TextViewer.this.fUndoManager.beginCompoundChange();
            }
        }

        public void endCompoundChange() {
            if (TextViewer.this.fUndoManager != null) {
                TextViewer.this.fUndoManager.endCompoundChange();
            }
        }

        public IDocument getDocument() {
            return TextViewer.this.getDocument();
        }

        public void setRedraw(boolean redraw) {
            TextViewer.this.setRedraw(redraw);
        }
    }

    static class ShiftPositionUpdater
    extends DefaultPositionUpdater {
        protected ShiftPositionUpdater(String category) {
            super(category);
        }

        protected void adaptToInsert() {
            int myStart = this.fPosition.offset;
            int myEnd = this.fPosition.offset + this.fPosition.length - 1;
            myEnd = Math.max(myStart, myEnd);
            int yoursStart = this.fOffset;
            int yoursEnd = this.fOffset + this.fReplaceLength - 1;
            yoursEnd = Math.max(yoursStart, yoursEnd);
            if (myEnd < yoursStart) {
                return;
            }
            if (myStart <= yoursStart) {
                this.fPosition.length += this.fReplaceLength;
                return;
            }
            if (myStart > yoursStart) {
                this.fPosition.offset += this.fReplaceLength;
            }
        }
    }

    class TextDoubleClickStrategyConnector
    extends MouseAdapter
    implements MovementListener {
        private Point fDoubleClickSelection;

        TextDoubleClickStrategyConnector() {
        }

        public void mouseUp(MouseEvent e) {
            this.fDoubleClickSelection = null;
        }

        public void getNextOffset(MovementEvent event) {
            if (event.movement != 8) {
                return;
            }
            if (this.fDoubleClickSelection != null && this.fDoubleClickSelection.x <= event.offset && event.offset <= this.fDoubleClickSelection.y) {
                event.newOffset = this.fDoubleClickSelection.y;
            }
        }

        public void getPreviousOffset(MovementEvent event) {
            if (event.movement != 16) {
                return;
            }
            if (this.fDoubleClickSelection == null) {
                ITextDoubleClickStrategy s = (ITextDoubleClickStrategy)TextViewer.this.selectContentTypePlugin(TextViewer.this.getSelectedRange().x, TextViewer.this.fDoubleClickStrategies);
                if (s != null) {
                    StyledText textWidget = TextViewer.this.getTextWidget();
                    s.doubleClicked(TextViewer.this);
                    this.fDoubleClickSelection = textWidget.getSelection();
                    event.newOffset = this.fDoubleClickSelection.x;
                }
            } else if (this.fDoubleClickSelection.x <= event.offset && event.offset <= this.fDoubleClickSelection.y) {
                event.newOffset = this.fDoubleClickSelection.x;
            }
        }
    }

    protected class TextHoverKey {
        private String fContentType;
        private int fStateMask;

        protected TextHoverKey(String contentType, int stateMask) {
            Assert.isNotNull((Object)contentType);
            this.fContentType = contentType;
            this.fStateMask = stateMask;
        }

        public boolean equals(Object obj) {
            if (obj == null || obj.getClass() != this.getClass()) {
                return false;
            }
            TextHoverKey textHoverKey = (TextHoverKey)obj;
            return textHoverKey.fContentType.equals(this.fContentType) && textHoverKey.fStateMask == this.fStateMask;
        }

        public int hashCode() {
            return this.fStateMask << 16 | this.fContentType.hashCode();
        }

        private void setStateMask(int stateMask) {
            this.fStateMask = stateMask;
        }
    }

    class TextVerifyListener
    implements VerifyListener {
        private boolean fForward = true;

        TextVerifyListener() {
        }

        public void forward(boolean forward) {
            this.fForward = forward;
        }

        public void verifyText(VerifyEvent e) {
            if (this.fForward) {
                TextViewer.this.handleVerifyEvent(e);
            }
        }
    }

    class VerifyKeyListenersManager
    implements VerifyKeyListener {
        private List fListeners = new ArrayList();
        private List fBatched = new ArrayList();
        private int fReentranceCount = 0;

        VerifyKeyListenersManager() {
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public void verifyKey(VerifyEvent event) {
            if (this.fListeners.isEmpty()) {
                return;
            }
            try {
                ++this.fReentranceCount;
                Iterator iterator = this.fListeners.iterator();
                while (iterator.hasNext() && event.doit) {
                    VerifyKeyListener listener = (VerifyKeyListener)iterator.next();
                    listener.verifyKey(event);
                }
            }
            finally {
                --this.fReentranceCount;
            }
            if (this.fReentranceCount == 0) {
                this.processBatchedRequests();
            }
        }

        private void processBatchedRequests() {
            if (!this.fBatched.isEmpty()) {
                Iterator e = this.fBatched.iterator();
                while (e.hasNext()) {
                    Batch batch = (Batch)e.next();
                    this.insertListener(batch.listener, batch.index);
                }
                this.fBatched.clear();
            }
        }

        public int numberOfListeners() {
            return this.fListeners.size();
        }

        public void insertListener(VerifyKeyListener listener, int index) {
            if (index == -1) {
                this.removeListener(listener);
            } else if (listener != null) {
                if (this.fReentranceCount > 0) {
                    this.fBatched.add(new Batch(listener, index));
                } else {
                    int idx = -1;
                    int size = this.fListeners.size();
                    int i = 0;
                    while (i < size) {
                        if (listener == this.fListeners.get(i)) {
                            idx = i;
                            break;
                        }
                        ++i;
                    }
                    if (idx != index) {
                        if (idx != -1) {
                            this.fListeners.remove(idx);
                        }
                        if (index > this.fListeners.size()) {
                            this.fListeners.add(listener);
                        } else {
                            this.fListeners.add(index, listener);
                        }
                    }
                    if (size == 0) {
                        this.install();
                    }
                }
            }
        }

        public void removeListener(VerifyKeyListener listener) {
            if (listener == null) {
                return;
            }
            if (this.fReentranceCount > 0) {
                this.fBatched.add(new Batch(listener, -1));
            } else {
                int size = this.fListeners.size();
                int i = 0;
                while (i < size) {
                    if (listener == this.fListeners.get(i)) {
                        this.fListeners.remove(i);
                        if (size == 1) {
                            this.uninstall();
                        }
                        return;
                    }
                    ++i;
                }
            }
        }

        private void install() {
            StyledText textWidget = TextViewer.this.getTextWidget();
            if (textWidget != null && !textWidget.isDisposed()) {
                textWidget.addVerifyKeyListener((VerifyKeyListener)this);
            }
        }

        private void uninstall() {
            StyledText textWidget = TextViewer.this.getTextWidget();
            if (textWidget != null && !textWidget.isDisposed()) {
                textWidget.removeVerifyKeyListener((VerifyKeyListener)this);
            }
        }

        class Batch {
            int index;
            VerifyKeyListener listener;

            public Batch(VerifyKeyListener l, int i) {
                this.listener = l;
                this.index = i;
            }
        }
    }

    private final class ViewerState {
        private Position fSelection;
        private boolean fReverseSelection;
        private boolean fSelectionSet;
        private Position fStableLine;
        private int fStablePixel;
        private IPositionUpdater fUpdater;
        private IDocument fUpdaterDocument;
        private String fUpdaterCategory;

        public ViewerState() {
            IDocument document = TextViewer.this.getDocument();
            if (document != null) {
                this.connect(document);
            }
        }

        public Point getSelection() {
            if (this.fSelection == null) {
                return new Point(-1, -1);
            }
            return new Point(this.fSelection.getOffset(), this.fSelection.getLength());
        }

        public void updateSelection(int offset, int length) {
            this.fSelectionSet = true;
            if (this.fSelection == null) {
                this.fSelection = new Position(offset, length);
            } else {
                this.updatePosition(this.fSelection, offset, length);
            }
        }

        public void restore(boolean restoreViewport) {
            if (this.isConnected()) {
                this.disconnect();
            }
            if (this.fSelection != null) {
                if (this.fSelection instanceof ColumnPosition) {
                    ColumnPosition cp = (ColumnPosition)this.fSelection;
                    IDocument document = TextViewer.this.fDocument;
                    try {
                        int startLine = document.getLineOfOffset(this.fSelection.getOffset());
                        int startLineOffset = document.getLineOffset(startLine);
                        int selectionEnd = this.fSelection.getOffset() + this.fSelection.getLength();
                        int endLine = document.getLineOfOffset(selectionEnd);
                        int endLineOffset = document.getLineOffset(endLine);
                        int tabs = TextViewer.this.getTextWidget().getTabs();
                        int startColumn = this.fSelection.getOffset() - startLineOffset + cp.fStartColumn;
                        int endColumn = selectionEnd - endLineOffset + cp.fEndColumn;
                        TextViewer.this.setSelection(new BlockTextSelection(document, startLine, startColumn, endLine, endColumn, tabs));
                    }
                    catch (BadLocationException badLocationException) {
                        TextViewer.this.setSelectedRange(cp.getOffset(), cp.getLength());
                    }
                } else {
                    int offset = this.fSelection.getOffset();
                    int length = this.fSelection.getLength();
                    if (this.fReverseSelection) {
                        offset -= length;
                        length = -length;
                    }
                    TextViewer.this.setSelectedRange(offset, length);
                }
                if (restoreViewport) {
                    this.updateViewport();
                }
            }
        }

        private void updateViewport() {
            if (this.fSelectionSet) {
                TextViewer.this.revealRange(this.fSelection.getOffset(), this.fSelection.getLength());
            } else if (this.fStableLine != null) {
                int stableLine;
                try {
                    stableLine = this.fUpdaterDocument.getLineOfOffset(this.fStableLine.getOffset());
                }
                catch (BadLocationException badLocationException) {
                    return;
                }
                int stableWidgetLine = TextViewer.this.getClosestWidgetLineForModelLine(stableLine);
                if (stableWidgetLine == -1) {
                    return;
                }
                int linePixel = TextViewer.this.getTextWidget().getLinePixel(stableWidgetLine);
                int delta = this.fStablePixel - linePixel;
                int topPixel = TextViewer.this.getTextWidget().getTopPixel();
                TextViewer.this.getTextWidget().setTopPixel(topPixel - delta);
            }
        }

        private void connect(IDocument document) {
            Assert.isLegal((document != null ? 1 : 0) != 0);
            Assert.isLegal((!this.isConnected() ? 1 : 0) != 0);
            this.fUpdaterDocument = document;
            try {
                this.fUpdaterCategory = TextViewer.SELECTION_POSITION_CATEGORY + this.hashCode();
                this.fUpdater = new NonDeletingPositionUpdater(this.fUpdaterCategory);
                this.fUpdaterDocument.addPositionCategory(this.fUpdaterCategory);
                this.fUpdaterDocument.addPositionUpdater(this.fUpdater);
                ISelection selection = TextViewer.this.getSelection();
                if (selection instanceof IBlockTextSelection) {
                    IBlockTextSelection bts = (IBlockTextSelection)selection;
                    int startVirtual = Math.max(0, bts.getStartColumn() - document.getLineInformationOfOffset(bts.getOffset()).getLength());
                    int endVirtual = Math.max(0, bts.getEndColumn() - document.getLineInformationOfOffset(bts.getOffset() + bts.getLength()).getLength());
                    this.fSelection = new ColumnPosition(bts.getOffset(), bts.getLength(), startVirtual, endVirtual);
                } else {
                    int length;
                    int offset;
                    Point selectionRange = TextViewer.this.getSelectedRange();
                    boolean bl = this.fReverseSelection = selectionRange.y < 0;
                    if (this.fReverseSelection) {
                        offset = selectionRange.x + selectionRange.y;
                        length = -selectionRange.y;
                    } else {
                        offset = selectionRange.x;
                        length = selectionRange.y;
                    }
                    this.fSelection = new Position(offset, length);
                }
                this.fSelectionSet = false;
                this.fUpdaterDocument.addPosition(this.fUpdaterCategory, this.fSelection);
                int stableLine = this.getStableLine();
                int stableWidgetLine = TextViewer.this.modelLine2WidgetLine(stableLine);
                this.fStablePixel = TextViewer.this.getTextWidget().getLinePixel(stableWidgetLine);
                IRegion stableLineInfo = this.fUpdaterDocument.getLineInformation(stableLine);
                this.fStableLine = new Position(stableLineInfo.getOffset(), stableLineInfo.getLength());
                this.fUpdaterDocument.addPosition(this.fUpdaterCategory, this.fStableLine);
            }
            catch (BadPositionCategoryException badPositionCategoryException) {
                Assert.isTrue((boolean)false);
            }
            catch (BadLocationException badLocationException) {
                this.disconnect();
            }
        }

        private void updatePosition(Position position, int offset, int length) {
            position.setOffset(offset);
            position.setLength(length);
            position.isDeleted = false;
        }

        private int getStableLine() {
            int caretLine = TextViewer.this.getTextWidget().getLineAtOffset(TextViewer.this.getTextWidget().getCaretOffset());
            int stableLine = caretLine < JFaceTextUtil.getPartialTopIndex(TextViewer.this.getTextWidget()) || caretLine > JFaceTextUtil.getPartialBottomIndex(TextViewer.this.getTextWidget()) ? JFaceTextUtil.getPartialTopIndex(TextViewer.this) : TextViewer.this.widgetLine2ModelLine(caretLine);
            return stableLine;
        }

        private boolean isConnected() {
            return this.fUpdater != null;
        }

        private void disconnect() {
            Assert.isTrue((boolean)this.isConnected());
            try {
                this.fUpdaterDocument.removePosition(this.fUpdaterCategory, this.fSelection);
                this.fUpdaterDocument.removePosition(this.fUpdaterCategory, this.fStableLine);
                this.fUpdaterDocument.removePositionUpdater(this.fUpdater);
                this.fUpdater = null;
                this.fUpdaterDocument.removePositionCategory(this.fUpdaterCategory);
                this.fUpdaterCategory = null;
            }
            catch (BadPositionCategoryException badPositionCategoryException) {
                Assert.isTrue((boolean)false);
            }
        }
    }

    class ViewportGuard
    extends MouseAdapter
    implements ControlListener,
    KeyListener,
    SelectionListener {
        ViewportGuard() {
        }

        public void controlResized(ControlEvent e) {
            TextViewer.this.updateViewportListeners(5);
        }

        public void controlMoved(ControlEvent e) {
        }

        public void keyReleased(KeyEvent e) {
            TextViewer.this.updateViewportListeners(4);
        }

        public void keyPressed(KeyEvent e) {
            TextViewer.this.updateViewportListeners(4);
        }

        public void mouseUp(MouseEvent e) {
            if (TextViewer.this.fTextWidget != null) {
                TextViewer.this.fTextWidget.removeSelectionListener((SelectionListener)this);
            }
            TextViewer.this.updateViewportListeners(3);
        }

        public void mouseDown(MouseEvent e) {
            if (TextViewer.this.fTextWidget != null) {
                TextViewer.this.fTextWidget.addSelectionListener((SelectionListener)this);
            }
        }

        public void widgetSelected(SelectionEvent e) {
            if (e.widget == TextViewer.this.fScroller) {
                TextViewer.this.updateViewportListeners(1);
            } else {
                TextViewer.this.updateViewportListeners(2);
            }
        }

        public void widgetDefaultSelected(SelectionEvent e) {
        }
    }

    class VisibleDocumentListener
    implements IDocumentListener {
        VisibleDocumentListener() {
        }

        public void documentAboutToBeChanged(DocumentEvent e) {
            if (e.getDocument() == TextViewer.this.getVisibleDocument()) {
                TextViewer.this.fWidgetCommand.setEvent(e);
            }
            TextViewer.this.handleVisibleDocumentAboutToBeChanged(e);
        }

        public void documentChanged(DocumentEvent e) {
            if (((TextViewer)TextViewer.this).fWidgetCommand.event == e) {
                TextViewer.this.updateTextListeners(TextViewer.this.fWidgetCommand);
            }
            TextViewer.this.fLastSentSelectionChange = null;
            TextViewer.this.handleVisibleDocumentChanged(e);
        }
    }

    protected class WidgetCommand {
        public DocumentEvent event;
        public int start;
        public int length;
        public String text;
        public String preservedText;

        protected WidgetCommand() {
        }

        public void setEvent(DocumentEvent e) {
            block6: {
                this.event = e;
                this.start = e.getOffset();
                this.length = e.getLength();
                this.text = e.getText();
                if (this.length != 0) {
                    try {
                        if (e instanceof SlaveDocumentEvent) {
                            SlaveDocumentEvent slave = (SlaveDocumentEvent)e;
                            DocumentEvent master = slave.getMasterEvent();
                            if (master != null) {
                                this.preservedText = master.getDocument().get(master.getOffset(), master.getLength());
                            }
                            break block6;
                        }
                        this.preservedText = e.getDocument().get(e.getOffset(), e.getLength());
                    }
                    catch (BadLocationException badLocationException) {
                        this.preservedText = null;
                    }
                } else {
                    this.preservedText = null;
                }
            }
        }
    }
}

